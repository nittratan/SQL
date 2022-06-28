-- order by asc and desc
create database nit;
use nit;
create table students
(
	name varchar(150),
    age int,
    gender varchar(20),
    city varchar(150)
)
insert into students
values
("Rohit kumar",26,"m","patna"),
("Ankita singh",18,"f","delhi"),
("Kishan Kumar",22,"m","patna"),
("Bikky Sharma",24,"m","ranchi"),
("Priya Singh",23,"f","kolkata"),
("Ratan Sharma",24,"m","patna"),
("monu Kumar",24,"m","delhi"),
("sheetal sing",23,"f","ranchi");

select * from students
order by name asc;

select * from students
order by name desc;

select * from students
where age = 23
order by gender;

select * from students
order by age;	-- default order ascending

select * from students
order by name , age;

-- select data with Distinct

select distinct city
from students;

select distinct age
from students;

select distinct age from students order by age;
