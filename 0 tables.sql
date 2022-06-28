create database myDB;
use myDB;
CREATE TABLE `users` (
	`u_id` INT(20) unsigned,
	`name` VARCHAR(150),
	`gender` VARCHAR(20),
	`age` INT(20) unsigned,
	`contact` VARCHAR(20),
	`address` VARCHAR(255)
);
insert into users
values
(123,'suraj','male',29,'9536782410','ranchi'),
(173,'Divya','female',19,'97635782410','patna'),
(223,'anuradha','female',25,'959658631','patna'),
(423,'suresh','male',39,'94569821510','lucknow'),
(13,'sheetal','female',20,'8524697852','delhi'),
(53,'simran','female',25,'569874125','delhi'),
(163,'akash','male',22,'9569874125','patna');

CREATE TABLE students (
	roll INT(20) unsigned,
	name VARCHAR(200),
	department VARCHAR(150),
	gender VARCHAR(20),
    age int,
	mobile VARCHAR(20),
	city varchar(200),
	email VARCHAR(200)
);
use myDB;
insert into students
values
(205,"kishan","cse","male",24,"7352000000","prayagraj","kishan@nitt.edu"),
(204,"VIVEK","ca","male",22,"9525099999","ranch","VIVEK@nitt.edu"),
(215,"DEEPA","mba","female",24,"9525199999","patna","DEEPA@nitt.edu"),
(225,"DIVYA","ca","female",23,"9576599999","delhi","DIVYA@nitt.edu"),
(235,"MEGHNA","cse","female",23,"8228900000","patna","MEGHNA@nitt.edu"),
(265,"NAMAN","it","male",20,"9708899999 ","kolkata","NAMAN@nitt.edu"),
(285,"ANKIT","civi","male",21,"9576999999","patna","ANKIT@nitt.edu"),
(305,"POOJA","mba","female",22,"8578999999","kanpur","POOJA@nitt.edu"),
(105,"PRERNA","ca","female",24,"7352800000","trichy","PRERNA@nitt.edu"),
(405,"PRATIK","civil","male",23,"9852756369","trichy","PRATIK@nitt.edu");

CREATE TABLE EMPLOYEE (
	emp_no INT(20) unsigned,
	name VARCHAR(200),
	designation VARCHAR(200),
	hire_date DATE,
	city VARCHAR(200),
	contact VARCHAR(20),
	email VARCHAR(200),
	age INT(20),
    gender enum('m','f','o'),
	salary INT(20)
);
insert into EMPLOYEE
values
(122,"Neha","Marketing","2017-05-12","patna","7352800000","neha@hotmail.com",28,"f",45000),
(132,"sumit","Product Manager","2016-06-1","delhi","95528587456","sumit@gmail.com",38,"m",65000),
(112,"Pallavi","Project Leader","2020-06-12","delhi","9552800000","pallavi@outlook.com",26,"f",55000),
(142,"mukesh","Programmer","2022-04-11","ranchi","8084222483","mukesh@gmail.com",29,"m",48000),
(152,"sheetal","HR","2017-06-10","Bhopal","8252801040","sheetal@yahoo.com",26,"f",75000),
(102,"sanjeet","Software Engineer","2016-05-1","patna","9536789652","sanjeet@hgmail.com",32,"f",55000);