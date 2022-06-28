-- logical Operator
create database operator;
use operator;

-- Logical Operator
-- Operators - AND  , OR , NOT

create table students
(
	roll int not null unique,
    name varchar(150) not null,
    department varchar(100),
    age int not null,
    email varchar(100) not null unique,
    city varchar(50) not null,
    cgpa float
)

insert into students
values
(15,"amit","ca",20,"amit@nitt.edu","gorakhpur",9.35),
(16,"AMAR","cse",23,"amar@nitt.edu","Kolkata",9.65),
(25,"Bikky","ca",24,"bikky@nitt.edu","Patna",8.35);

insert into students
values
(13,"Raju","cse",26,"pndt@nitt.edu","Patna",7.35),
(90,"Ratan","ca",24,"ratans@nitt.edu","Patna",7.94),
(12,"Sudhanshu","ca",25,"sudha@nitt.edu","Patna",9.35),
(150,"Kishan","civil",24,"kishan@nitt.edu","Prayagraj",9.35),
(106,"monu","EEE",23,"monu@nitt.edu","banaras",9.65),
(325,"shivam","Msc",26,"shivam@nitt.edu","banaras",8.35),
(151,"alok","ECE",22,"alok@nitt.edu","ranchi",9.35),
(169,"Kanchu","IT",27,"Kanchu@nitt.edu","patna",9.65),
(225,"Nitesh","civil",22,"meena@nitt.edu","Patna",8.35);

select * from students;
select * from students
where age >= 18 and age <= 24

select * from students
where age >= 18 and age <= 24 and city = "patna" 

select * from students 
where age >= 20 and cgpa >= 9 or city = 'patna'

select * from students 
where city <> 'patna' and cgpa >= 9

-- in oeprator
select * from students
where age in(20,22,23) 

select * from students
where age in('patna','ranchi',20,22,23) 

-- like operator
select * from students
where name like "%n"  -- end with n

select * from students
where name like "r%"  -- start with r

select * from students
where email like '%nitt%' -- in between


