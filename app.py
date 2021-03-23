  
from flask import Flask, flash,render_template, request, redirect, url_for, session
from flask_mysqldb import MySQL

import MySQLdb.cursors

app = Flask(__name__)

app.secret_key = 'TIGER'

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'vincent98'
app.config['MYSQL_DB'] = 'quiz'

mysql = MySQL(app)

@app.route("/")
def home():
    return "Hello, Flask!"

if __name__=="__main__":
    app.run(debug=True);  