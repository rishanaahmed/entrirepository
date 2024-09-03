create database managment_db;
use managment_db;

create table managers(
manager_id int primary key,
first_name varchar(20),
last_name varchar(20),
DOB date,
age int check(age between 25 and 35),
gender varchar(20),
department varchar(20),
salary int not null );

desc managers;

insert Into managers values
(001,"mohan","das","1999-12-03",25,"male","HR",30000),
(002,"alia","bhatt","1995-12-06",29,"female","IT",25000),
(003,"fathima","shifana","1996-11-23",28,"female","SALES",10000),
(004,"ajay","kumar","1997-10-28",27,"male","SALES",15000),
(005,"vijay","sundar","1998-08-15",26,"male","IT",35000),
(006,"varun","dev","1999-04-10",25,"male","HR",20000),
(007,"kabeer","singh","1996-01-12",28,"male","IT",40000),
(008,"deepika","pandey","1992-04-28",32,"female","SALES",20000),
(009,"varun","gupta","1996-07-12",28,"male","SALES",10000),
(010,"ananya","kumari","1990-03-12",34,"female","SALES",40000);

select * from managers; 

select first_name,last_name,DOB,manager_id from managers;

select concat(first_name," ",last_name," ",DOB," ",manager_id) as details from managers;

select * from managers where not first_name="aliya" ;

select * from managers where department="IT" and salary>25000 ;

select * from managers where salary between 10000 and 35000;