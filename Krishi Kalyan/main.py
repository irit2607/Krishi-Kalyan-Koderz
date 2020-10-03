from flask import Flask, render_template, request, session, redirect
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import create_engine
from werkzeug.utils import secure_filename
from flask_mail import Mail
import os
import math
import json
from datetime import datetime

with open('config.json', 'r') as c:
    params = json.load(c)["params"]

local_server = True
app = Flask(__name__)
app.secret_key = 'super-secret-key'

if(local_server):
    app.config['SQLALCHEMY_DATABASE_URI'] = params['local_uri']
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = params['prod_uri']

db = SQLAlchemy(app)
if(local_server):
    engine = create_engine(params['local_uri'])
else:
    engine = create_engine(params['prod_uri'])
connection=engine.raw_connection()

class Contacts(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), nullable=False)
    email = db.Column(db.String(20), nullable=False)
    subject = db.Column(db.String(100), nullable=False)
    msg = db.Column(db.String(120), nullable=False)
    date = db.Column(db.String(12), nullable=True)

class Scheme(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), nullable=False)
    des = db.Column(db.String(120), nullable=False)
    slug = db.Column(db.String(25), nullable=False)
    age = db.Column(db.Integer, nullable=False)
    landsize = db.Column(db.String(12), nullable=False)
    cropins = db.Column(db.Integer, nullable=False)
    soilhealth = db.Column(db.Integer, nullable=False)
    types = db.Column(db.String(30), nullable=False)
    rw = db.Column(db.Integer, nullable=False)
    kcc = db.Column(db.Integer, nullable=False)
    fc = db.Column(db.String(30), nullable=False)


@app.route("/")
def home():
	return render_template('index.html', params=params)

@app.route("/about")
def about():
    return render_template('about.html', params=params)

@app.route("/schemes")
def schemes():
    schemes = Scheme.query.filter_by().all()
    last = math.ceil(len(schemes)/int(params['no_of_schemes']))    
    page = request.args.get('page')
    if(not str(page).isnumeric()):
        page = 1
    page= int(page)
    schemes = schemes[(page-1)*int(params['no_of_schemes']): (page-1)*int(params['no_of_schemes'])+ int(params['no_of_schemes'])]
    if (page==1):
        prev = "#"
        next = "?page="+ str(page+1)
    elif(page==last):
        prev = "?page=" + str(page - 1)
        next = "#"
    else:
        prev = "?page=" + str(page - 1)
        next = "?page=" + str(page + 1)

    return render_template('schemes.html', params=params, schemes=schemes, prev=prev, next=next)

@app.route("/scheme/<string:scheme_slug>", methods=['GET'])
def scheme_route(scheme_slug):
    scheme = Scheme.query.filter_by(slug=scheme_slug).first()
    return render_template('scheme.html', params=params, scheme=scheme)

@app.route("/find")
def find():
    return render_template('find.html', params=params)

@app.route("/result", methods = ['GET', 'POST'])
def result():    
    mycursor=connection.cursor()
    if request.method=='POST':
        result = request.form
        a = result['age']
        if 18<=int(a)<=40:
            a="18"
        b = result['landsize']
        if b == "Less than 2 acres":
            b = "2"
        elif b == "Less than 5 acres":
            b = "5"
        else: 
            b = "1"        
        mycursor.execute("select name,des,slug from scheme where age='"+a+"' or landsize='"+b+"'")
        a = mycursor.fetchall()
        b = one()
        c = two()
        r = a + b + c
        x = len(r)
        mycursor.close()
        return render_template("search.html",r=r,x=x,params=params)

def one():
    mycursor=connection.cursor()
    if request.method=='POST':
        result = request.form
        a = result['kcc']
        if a == "No":
            a  = "1"
        else:
            a = "2"
        b = result['rw']
        if b == "No":
            b  = "1"
        else:
            b = "2"
        c = result['soilhealth']
        if c == "No":
            c  = "1"
        else:
            c = "2"
        mycursor.execute("select name,des,slug from scheme where kcc='"+a+"' or rw='"+b+"' or soilhealth='"+c+"'")
        r = mycursor.fetchall()
        mycursor.close()
        return r

def two():
    mycursor=connection.cursor()
    if request.method=='POST':
        result = request.form
        a = result['farming']
        if a == "Organic farming":
            a  = "organic"
        elif a == "Dairy farming":
            a = "dairy"
        elif a == "Fishery":
            a = "fish"
        else:
            a = "no"
        b = result['failure']
        if (b == "Natural Calamities" or b == "Insects" or b == "Other reason"):
            b  = "1"
        else:
            b = "2"
        c = result['cropins']
        if c == "No":
            c = "1"
        else:
            c = "2"
        mycursor.execute("select name,des,slug from scheme where types='"+a+"' or fc='"+b+"' or cropins='"+c+"'")
        r = mycursor.fetchall()
        mycursor.close()
        return r

@app.route("/contact", methods = ['GET', 'POST'])
def contact():
    if(request.method=='POST'):
        name = request.form.get('name')
        email = request.form.get('email')
        subject = request.form.get('subject')
        message = request.form.get('message')
        entry = Contacts(name=name, email = email, subject = subject, msg = message, date= datetime.now() )
        db.session.add(entry)
        db.session.commit()
    return render_template('contact.html', params=params)

app.run(debug=True)
