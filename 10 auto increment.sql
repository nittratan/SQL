create database workspace;
use workspace;
create table employee
(
	id int not null auto_increment,
    name varchar(100) not null,
    age int,
    salary int,
    city varchar(60),
    gender enum('m','f','o'),
    primary key(id)
)
desc employee;
insert into employee (name,age,salary,city,gender) values ("Suraj Kumar",32,25640,"Patna","m");

-- auto generated id
insert into employee (id,name,age,salary,city,gender) values (null,"Suraj Kumar",32,25640,"Patna","m"); 

delete from employee where id = 2;

insert into employee (id,name,age,salary,city,gender) values (200,"Seema singh",26,35640,"Delhi","f"); 

insert into employee (id,name,age,salary,city,gender) values (2,"Preti jha",26,35640,"Delhi","f"); 

insert into employee (name,age,salary,city,gender) values ("Sheetal",27,35540,"Patna","f"); 
-- auto increment generate id after 201


