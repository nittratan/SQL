create database nit;
use nit;
create table students
(
	roll int not null primary key,
    name varchar(150),
    department varchar(50),
    cgpa float,
    age int,
    gender enum('m','f','o'),
    phone varchar(15),
    city varchar(100)
)

desc students;
insert into students
values
(112,"PIYUSH KUMAR","MBA",8.56,24,"m","9810012345","trichy"),
(122,"DIKSHA MUCHHALA","CA",9.56,23,"f","9810198101","bhopal");

insert into students
value
(112,"PREETI JATAV","CSE",7.56,22,"f","9840012345","patna"), -- error duplicate entry
(142,"ROHIT SINGH ","CIVIL",8.46,21,"m","9894198941","patna"),
(152,"RICHA AGARWAL","CA",8.06,24,"f","9810012345","chennai");

select * from students;

CREATE TABLE personal(
	id INT NOT NULL,
	name VARCHAR(50) NOT NULL,
	percentage INT NOT NULL,
	age INT NOT NULL,
	gender VARCHAR(1) NOT NULL,
	city INT NOT NULL,
	PRIMARY KEY (id)
);
INSERT INTO personal(id,name,percentage,age,gender,city)
VALUES
(1,"Ram Kumar","45","13","M",1),
(2,"Sarita Kumari","56","21","F",2),
(3,"Subodh singh","62","20","M",1),
(4,"Juhi sirvastav","47","18","F",3),
(5,"Anil Kumar","74","22","M",1),
(6,"Alka Jha","64","21","F",2),
(7,"Sumit Kapoor","52","20","M",1);
