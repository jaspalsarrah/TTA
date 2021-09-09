show databases;
create database students;
use students;
create table students_details(
student_id int not null,
first_name varchar (20) not null,
last_name varchar (20) not null,
address varchar (100) not null,
contact_number int not null,
year_group int not null,
SEND bool,
FSM bool,
Gender enum("Male","Female") not null,
primary key (student_id)
);
explain students_details;

alter table students_details
modify SEND bool not null,
modify FSM bool not null;

explain students_details;

