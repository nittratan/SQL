create database emp;
use emp;
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
(112,"Pallavi","Project Leader","2020-06-12","delhi","9552800000","pallavi@outlook.com",26,"f",65000),
(162,"Shivali","Team Leader","2020-06-22","Patna","9555630000","shiv@outlook.com",27,"f",75000),
(142,"mukesh","Programmer","2022-04-11","ranchi","8084222483","mukesh@gmail.com",29,"m",48000),
(152,"sheetal","HR","2017-06-10","Bhopal","8252801040","sheetal@yahoo.com",26,"f",75000),
(102,"sanjeet","Software Engineer","2016-05-1","patna","9536789652","sanjeet@hgmail.com",32,"f",55000);

select * from employee;
select salary from employee order by salary asc;

-- 2nd max salary using sub query 
-- method 1
select max(salary) 
from employee
where salary < (select max(salary) from employee);

-- method 2 
-- 3rd higest using nested sub query
select max(salary) 
from employee
where salary < (select max(salary) from employee where salary < (select max(salary) from employee));

-- Using Limit Clause
select salary
from employee
order by salary desc
limit 3,1;  -- 3 is offset and 1 is how many row to show

-- in general we can write query for nth selary 
-- select salary
-- from employee
-- order by salary desc
-- limit n-1 ,1;   if we want to find 3 salary n=3 so n-1 = 2

-- above query fail when repeatation of values

-- by solving the problem use distinct 
select distinct(salary)
from employee
order by salary desc
limit 2,1;

-- in general we can write the query
-- select distinct(salary)
-- from employee
-- order by salary desc
-- limit n-1,1; if we want to find 3 salary n=3 so n-1 = 2 that is in place of n need to write 2