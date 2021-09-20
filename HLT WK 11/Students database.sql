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

Use Students;
insert into students_details (student_id, first_name, last_name, address, contact_number, year_group, SEND, FSM, Gender)
values (1, "Lucia", "Jones", "B75", 123, 13, 0, 0, "Female"),
(2, "Emma", "Freeman", "B76", 456, 12, 0, 0, "Female"),
(3, "Charlie", "Harris", "N62", 789, 9, 1, 0, "Male"),
(4, "Sophie", "Patrick", "C75", 134, 13, 0, 1, "Female"),
(5, "Neil", "Blackford", "B75", 123, 13, 0, 0, "Male"),
(6, "Lucy", "Smith", "W12", 121, 8, 1, 0, "Female"),
(7, "Eugenia", "Wang", "WS2", 0131, 10, 0, 1, "Female"),
(8, "Kevin", "Kent", "SW12", 0121, 13, 0, 0, "Male"),
(9, "Samantha", "Moore", "N12", 0151, 12, 0, 0, "Female"),
(10, "Stephen", "Ford", "B12", 0181, 7, 1, 0, "Male");
select * from students_details;

update students_details
set last_name = "Stock"
where student_id = 9;

delete from students_details
where student_id = 10;

select * from students_details;

select SEND from students_details;

select FSM, Gender from students_details;

select year_group, SEND, FSM from students_details
order by year_group;

create table students_results(
student_id int not null,
Mathematics enum("Below","Achieving","Exceeding"),
English enum("Below","Achieving","Exceeding"),
Science enum("Below","Achieving","Exceeding"),
Music enum("Below","Achieving","Exceeding"),
Geography enum("Below","Achieving","Exceeding"),
History enum("Below","Achieving","Exceeding"),
Art enum("Below","Achieving","Exceeding"),
Technology enum("Below","Achieving","Exceeding"),
MFL enum("Below","Achieving","Exceeding"),
PE enum("Below","Achieving","Exceeding"),
primary key (student_id)
);

insert into students_results (student_id, Mathematics, English, Science, Music, Geography, History, Art, Technology, MFL, PE)
values (1, "Achieving", "Achieving", "Achieving", "Achieving", "Achieving", "Achieving", "Achieving", "Achieving", "Achieving", "Achieving"),
(2, "Achieving", "Below", "Below", "Exceeding", "Achieving", "Achieving", "Achieving", "Below", "Achieving", "Exceeding"),
(3, "Below", "Exceeding", "Below", "Achieving", "Exceeding", "Exceeding", "Achieving", "Achieving", "Achieving", "Achieving"),
(4, "Below", "Below", "Below", "Below", "Below", "Below", "Below", "Below", "Below", "Below"),
(5, "Exceeding", "Exceeding", "Exceeding", "Exceeding", "Exceeding", "Exceeding", "Exceeding", "Exceeding", "Exceeding", "Exceeding"),
(6, "Achieving", "Exceeding", "Achieving", "Achieving", "Achieving", "Achieving", "Below", "Below", "Achieving", "Achieving"),
(7, "Below", "Below", "Below", "Below", "Below", "Below", "Below", "Below", "Below", "Below"),
(8, "Achieving", "Exceeding", "Achieving", "Exceeding", "Achieving", "Achieving", "Achieving", "Exceeding", "Achieving", "Exceeding"),
(9, "Exceeding", "Achieving", "Exceeding", "Achieving", "Achieving", "Achieving", "Achieving", "Achieving", "Achieving", "Achieving");

select students_details.student_id, students_results.student_id
from students_details
join students_results
on students_details.student_id = students_results.student_id;

select * from students_details, students_results
where students_details.student_id = students_results.student_id;

select * from students_results
where Mathematics="Below" and English="Below";

select * from students_details, students_results
where students_details.student_id = students_results.student_id and students_details.SEND = "1";
