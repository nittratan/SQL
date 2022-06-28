create database shop;
show databases;
use shop;
create table users
(
	id int,
    name varchar(100),
    email varchar(150),
    contact varchar(25),
    address text,
    dob date,
    gender enum("m","f","o"),
    status boolean
)
insert into users
(id,name,email,contact,address,dob,gender,status)
values
(1,"monu","monu@xyz.com","652345698","siwan","2000-01-10","m",1);

insert into users
(id,name,email,contact,address,dob,gender,status)
values
(2,"sonu","sonu@xyz.com","9522345698","chhapra","1990-01-10","m",0),
(3,"sheetal","sheetal69@gmail.com","98253645612","Kolkata","1998-04-14","f",1),
(4,"sonam","sonam@outlook.com","9522344560","delhi","1999-09-10","f",1),
(5,"suraj","suraj@hotmail.com","996358698","ranchi","1999-11-10","m",1);

select * from users;

insert into users values
(6,"anuradha","anu456@gmail.com","569874122","patna","1995-07-11","f",0),
(7,"raju","raju@outlook.com","7549638957","siwan","1995-05-05","m",1);

select * from users;
select id,name,dob
from users;

select id,name as "Users Name", email from users; 

-- where  clause
select * from users
where address ="siwan";

insert into users values
(8,"ankita","ankita12@gmail.com","949874122","siwan","1999-07-11","f",0),
(9,"amit","amit@outlook.com","9949638957","siwan","1996-06-15","m",1);

select * from users
where gender ="f" and status ="1";


 
 


    