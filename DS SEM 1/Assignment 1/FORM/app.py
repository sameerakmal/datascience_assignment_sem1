from flask import Flask, render_template, request
import mysql.connector

app = Flask(__name__)


mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Shashu@123",
    database="input_form"
)

mycursor = mydb.cursor()

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        student_name = request.form['studentName']
        father_name = request.form['fatherName']
        mother_name = request.form['motherName']
        phone_number = request.form['phoneNumber']
        email = request.form['email']
        dateofbirth = request.form['dob']
        address = request.form['address']
        blood_group = request.form['bloodGroup']
        department = request.form['department']
        course = request.form['course']
        password = request.form['password']

        
        sql = """
            INSERT INTO user_input
            (student_name, father_name, mother_name, phone_number, email, dateofbirth, address, blood_group, department, course, password)
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
        """
        values = (student_name, father_name, mother_name, phone_number, email, dateofbirth, address, blood_group, department, course, password)
        mycursor.execute(sql, values)
        mydb.commit()

        return "Registration done!"

    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)