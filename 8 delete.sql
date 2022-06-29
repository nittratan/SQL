create database nit;
use nit;
create table students
(
	roll int,
    name varchar(150),
    department varchar(50),
    cgpa float,
    age int,
    gender enum('m','f','o'),
    phone varchar(15),
    city varchar(100)
)

insert into students
values
(112,"PIYUSH KUMAR","MBA",8.56,24,"m","9810012345","trichy"),
(122,"DIKSHA MUCHHALA","CA",9.56,23,"f","9810198101","bhopal"),
(162,"PREETI JATAV","CSE",7.56,22,"f","9840012345","patna"),
(142,"ROHIT SINGH ","CIVIL",8.46,21,"m","9894198941","patna"),
(152,"RICHA AGARWAL","CA",8.06,24,"f","9810012345","chennai");

update students set gender = "o" where roll = 142;
select * from students;

update students set name = "anuradha jha", city = " patna" , department = "IT"
where roll = 162;

update students set age = 45 where roll = 142;

update students 
set age = 45 , cgpa = 9.90
where roll = 152;

commit; -- save never undo

update students 
set age = 24 , cgpa = 9.12 , department = 'cse'
where roll = 152;

update students set age = 24 , city = 'kanpur'  where roll = 142;

rollback; -- revert / undo

-- delete command it delete data from table
delete from students 
where roll = 162;

delete from students 
where gender = "m";

delete from students; -- delete all records

delete from students where age > 30;
rollback;