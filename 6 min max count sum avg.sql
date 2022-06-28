create database myDB;
use myDB;
CREATE TABLE employee(
     id VARCHAR(8),
     name VARCHAR(20),
     designation VARCHAR(20),
     age INT,
     salary int
);
INSERT INTO employee 
VALUES
('E40001','PRADEEP','H.R',36,65400),
('E40002','ASHOK','MANAGER',28,35498),
('E40003','PAVAN KUMAR','ASST MANAGER',28,65423),
('E40004','SANTHOSH','STORE MANAGER',25,45900),
('E40005','SHIVAM','GENERAL MANAGER',26,65400);

select count(name) from employee;
select count(*) from employee; -- count total number of records
select count(age) as employee_age from employee;

select max(salary) as Max_salary from employee;
select min(salary) as Min_salary from employee;

select sum(salary) as total_salary from employee;

select avg(salary) as avarage_salary from employee;
