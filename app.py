from flask import Flask, flash,render_template, request, redirect, url_for, session
from flask_mysqldb import MySQL

import MySQLdb.cursors

app = Flask(__name__)

app.secret_key = 'TIGER'

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'alappatt'
app.config['MYSQL_DB'] = 'quiz'

mysql = MySQL(app)

@app.route("/")
def home():
    return render_template('index.html')

@app.route("/loginpage")
def loginpage():
    return render_template('signin.html')

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
            return redirect(url_for('home'))
        else:
            msg = 'Incorrect username or password!'
    return render_template('signin.html', value = acc , value1=username , msg=msg)


@app.route("/userhome")
def userhome():
    return ("Hello World")

if __name__=="__main__":
    app.run(debug=True);  