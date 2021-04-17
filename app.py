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
app.config['MYSQL_PASSWORD'] = 'vincent98'
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

@app.route("/python", methods=['GET', 'POST'])
def python():
    if 'loggedin' in session:
        cursor = mysql.connection.cursor()
        cursor.execute('SELECT * FROM py ')
        py1 = cursor.fetchall()
        #print(py1)
        pyqs=[]
        for q in py1:
            pyqs.append(q[0])
        #print(pyqs)
        my_list=[]
        counter=(1,2,3,4,5)
        for (item,num) in zip(range(5) ,counter):
            qr=random.choice(pyqs)
            cursor.execute('SELECT * FROM py where qs = %s ',(qr,))
            value=cursor.fetchall()
            value=list(value)
            value.append(num)
            my_list.append(value)
        #print(my_list)
        #print(my_list[0][0])
        
        # my_list.append(counter)
        # print(my_list)
        return render_template('pyqspage1.html', value=my_list , counterhtml=counter)
        #print(qr)
    return ('Home')

@app.route("/checkanswer", methods=['GET', 'POST'])
def check():
    print('***********', request ,request.json)
    if 'loggedin' in session:
        if request.method == "POST":
            data = request.json
            print(data)

            return jsonify(data)

# @app.route("/checkanswer", methods=['GET', 'POST'])
# def check():
#     print(request)
#     if 'loggedin' in session:
#         if request.method == "POST" and "userans" in request.form :
#             print(request)
#             uopt=request.form["userans"]
#             # ans=request.form["ans"]
#             print(request.form)
#             print(uopt)
#             return "check"



if __name__=="__main__":
    app.run(debug=True); 


