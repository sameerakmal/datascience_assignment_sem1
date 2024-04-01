create database input_form;
use input_form;
create table user_input (id int, 
student_name varchar(100), 
father_name varchar(100),
mother_name varchar(100),
phone_number varchar(10),
email varchar(100),
dateofbirth date,
address varchar(100),
blood_group varchar(10),
department varchar(100),
course varchar(100),
password varchar(100));

select * from user_input;