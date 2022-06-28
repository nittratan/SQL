-- SQL constraints
create database nitt;
use nitt;
create table Test    -- Not NULL
(
	RollNo int not null,
    Name varchar(150),
    Department varchar(100)
)

insert into Test(RollNo,Name,Department) values(110,'Sumit','CA');
insert into Test(Name,Department) values('Suraj','CA'); -- Error
insert into Test(RollNo,Department) values(111,'CSE');
insert into Test(RollNo,Name,Department) values(110,'Sumit','CA');
insert into Test(RollNo,Name,Department) values(110,'Suraj','Civil');
select * from Test;

create table Test2  -- Use of Unique all the values in column must be unique
(
	RollNo int not null unique,
    Name varchar(150),
    Department varchar(100)
)
desc Test2;
insert into Test2(RollNo,Name,Department) values(110,'Sumit','CA');
insert into Test2(RollNo,Name,Department) values(110,'Suraj','Civil'); -- error duplicate entry


create table students
(
	id int not null unique,
    name varchar(100) not null,
    email varchar(150) not null unique,
    age int check (age >= 18),
    status boolean default 1
)

insert into students
(id,name,email,age) values (10,"Ratan",'ratan@nitt.edu',24);

-- insert into students
-- (id,name,email,age) values (10,"Raju",'Raju@nitt.edu',14)  error

