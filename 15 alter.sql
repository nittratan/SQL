-- alter command
	-- add column
	-- changing datatype of column 
	-- change column name
	-- adding constraints to a column
	-- changing column postion
	-- delete column
	-- renamming tables
create database baapginfotech;
use baapginfotech;
create table employee
(
	id int not null unique,
    name varchar(150),
    salary int
)
insert into employee
values
(100,"Bikky",52000),
(101,"Anuradha",42000),
(105,"anand",32000);
select * from employee;

-- add new column
alter table employee
add gender enum('m','f','o');

-- reorder coloumn
alter table employee
modify gender varchar(20)
after name;

desc employee;

-- modify datatype
alter table employee
modify gender text(10);

-- add constraints
alter table employee
add unique(name); 

-- rename column
alter table employee
change id emp_id int;

-- delete column
alter table employee
drop column salary; 

-- raname table
alter table employee
rename emp;


