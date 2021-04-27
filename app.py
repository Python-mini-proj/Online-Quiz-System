from flask import Flask, flash,render_template, request, redirect, url_for, session, jsonify
from flask_mysqldb import MySQL
import re
import random
import itertools
import sys

import MySQLdb.cursors

app = Flask(__name__)

app.secret_key = 'TIGER'

app.jinja_env.filters['zip'] = zip
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'alappatt'
app.config['MYSQL_DB'] = 'quiz'

mysql = MySQL(app)

@app.route("/")
def home():
    return render_template('index.html')

@app.route('/login', methods=['GET', 'POST'])
def login():
    msg = 'Please enter your username and password'
    if request.method == 'POST' and 'username' in request.form and 'password' in request.form:
        username = request.form['username']
        password = request.form['password']
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * FROM account1 WHERE username = %s AND password = %s', (username, password,))
        acc = cursor.fetchone()
        if acc:
            session['loggedin'] = True
            session['id'] = acc['id']
            session['username'] = acc['username']
            return redirect(url_for('userhome'))
        else:
            msg = 'Incorrect username or password!'
    return render_template('signin.html', msg=msg)

@app.route('/register', methods=['GET', 'POST'])
def register():
    msg = 'Sign up!'
    if request.method == 'POST' and 'username' in request.form and 'password' in request.form and 'email' in request.form:
        username = request.form['username']
        password = request.form['password']
        email = request.form['email']
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * FROM account1 WHERE username = %s', (username,))
        account = cursor.fetchone()
        if account:
            msg = 'Account already exists!'
        elif not re.match(r'[^@]+@[^@]+\.[^@]+', email):
            msg = 'Invalid email address!'
        elif not re.match(r'[A-Za-z0-9]+', username):
            msg = 'Username must contain only characters and numbers!'
        elif not username or not password or not email:
            msg = 'Please fill out the form!'
        else:
            cursor.execute('INSERT INTO account1 VALUES (NULL, %s, %s, %s)', (username, password, email,))
            cursor.execute('INSERT INTO pyscore VALUES (0, %s, 0)', (username,))
            mysql.connection.commit()
            msg = 'You have successfully registered!'
    elif request.method == 'POST':
        msg = 'Please fill out the form!'
    return render_template('register.html', msg=msg)

@app.route("/userhome")
def userhome():
    if 'loggedin' in session:
        return render_template('profile.html', username=session['username'])
    return redirect(url_for('login'))

@app.route("/python")
def python():
    counter=0
    if 'loggedin' in session:
        counter=counter+1
        cursor = mysql.connection.cursor()
        cursor.execute('SELECT * FROM py ')
        py1 = cursor.fetchall()
        #print(py1)
        pyqs=[]
        for q in py1:
            pyqs.append(q[0])
        #print(pyqs)
        my_list=[]
        flag=0
        qsno=0
        for (item,num) in zip(range(10),range(10)):
            qr=random.choice(pyqs)
            for dash in my_list:
                if qr==dash[0][0]:
                    pyqs.remove(qr)
                    flag=-1
                    break
                else:
                    flag=0
            if flag!=-1:
                qsno+=1
                cursor.execute('SELECT * FROM py where qs = %s ',(qr,))
                value=cursor.fetchall()
                value=list(value)
                value.append(qsno)
                my_list.append(value)
            else:
                continue
            if len(my_list)>=5:
                break
        # print("_______")
        # print(pyqs)
        # print(my_list)
        # print(len(my_list))
        #print(my_list[0][0])
        
        # my_list.append(counter)
        # print(my_list)
        return render_template('pyqspage.html', value=my_list)
        #print(qr)
    return ('Home')

@app.route("/checkanswer", methods=['GET', 'POST'])
def check():
    print('***********', request ,request.json)
    if 'loggedin' in session:
        if request.method == "POST":
            data = request.json
            print(data)
            print(data['userans'])
            print(data['cans'])
            score=0
            for (uans,corrans) in zip (data['userans'], data['cans']):
                if uans==corrans:
                    score=score+1
            cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
            cursor.execute('SELECT score FROM pyscore WHERE Name = %s', ( session['username'],))
            prevscore=cursor.fetchone()
            print(prevscore['score'])
            prevscore=prevscore['score']
            cursor.execute('SELECT counter FROM pyscore WHERE Name = %s', ( session['username'],))
            prevcounter=cursor.fetchone()
            prevcounter=prevcounter['counter']
            cursor.execute('UPDATE pyscore SET score = %s ,counter = %s WHERE Name=%s ', (max(score,prevscore),prevcounter+1,session['username'],))
            mysql.connection.commit()
            print("GG Nigga you have scored {} marks " .format(score))
            return render_template("score.html" , counter=prevcounter, score=score )


@app.route("/logout")
def logout():
   session.pop('loggedin', None)
   session.pop('username', None)
   return redirect(url_for('login'))



if __name__=="__main__":
    app.run(debug=True);  


