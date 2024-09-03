create database school;

use school;

create table student(
r_no int primary key,
stu_name varchar(20),
mark int,
grade varchar(20) );

desc student;

alter table student add column contact int;
desc student;
alter table student drop column grade;

rename table student to classten;

truncate table classten;
desc classten;

drop table classten;
