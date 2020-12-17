from flask import Flask, render_template, request, redirect, url_for, flash, current_app, session
import random
import os
import requests
from mail import send_mail_to
import json

app = Flask(__name__)
app.secret_key = 'aluaisdcyberhack'
IMG_FOLDER = os.path.join('static', 'img')

app.config['UPLOAD_FOLDER'] = IMG_FOLDER


@app.route('/')
def home():
    # print([i.NAME for i in get_all_student_name()])
    session['quiz_button'] = 'auto'
    session['submit_button'] = 'auto'
    return render_template('home.html')

@app.route('/reg_success')
def reg_success():
    return render_template('registration_success.html')


@app.route('/register', methods=['POST', 'GET'])
def register():
    if request.method == 'GET':
        img_path = os.path.join(app.config['UPLOAD_FOLDER'], 'security.svg')
        return render_template('register.html', design_image=img_path)
    if request.method == 'POST':
        name = request.form['name']
        user_id = random.randint(15687, 40000)
        contact_no = request.form['contact_no']
        email = request.form['email']
        degree = request.form['degree']
        dtype = request.form['dtype']
        institute = request.form['institute']
        url = 'http://alupdduc.in/api/registerStudent.php'
        data = {"name": name, "userid": user_id, "contact_no": contact_no,
                "email": email, "degree": degree, "dtype": dtype, "institute": institute}
        res = requests.post(url, data=data)
        text = res.text
        response = json.loads(text)
        print(response)
        send_mail_to(email, user_id)
        if response['status'] == True:
            flash('Registration Success!')
            return render_template(url_for('reg_success'))
        else:
            flash('Registration Fai!')
            return render_template('register.html')


if __name__ == '__main__':
    app.run(debug=True, host="0.0.0.0")
