create database nitt;
use nitt;

CREATE TABLE city(
    cid INT NOT NULL AUTO_INCREMENT,
    cityname VARCHAR(50) NOT NULL,
    PRIMARY KEY (cid)
);

INSERT INTO city(cityname)
VALUES('Patna'),
('Delhi'),
('Bhopal'),
('Jaipur'),
('Noida');


CREATE TABLE department(
    d_id INT NOT NULL AUTO_INCREMENT,
    course_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (d_id)
);

INSERT INTO department(course_name)
VALUES('Btech'),
('BCA'),
('MBA');

CREATE TABLE students(
	id INT NOT NULL,
	name VARCHAR(50) NOT NULL,
    cgpa float NOT NULL,
	age INT NOT NULL,
	gender VARCHAR(1) NOT NULL,
	city INT NOT NULL,
    courses INT NOT NULL,
    PRIMARY KEY (id),
	FOREIGN KEY (city) REFERENCES City (cid),
    FOREIGN KEY (courses) REFERENCES department(d_id)  
);

INSERT INTO students(id,name,cgpa,age,gender,city,courses)
VALUES
(1,"AKASH KUMAR","45","8.13","M",1,1),
(2,"Ankita Gupta","8.56","21","F",2,2),
(3,"ROHIT KUMAR","62","8.20","M",1,1),
(4,"Ruchita Nagar","47","7.18","F",3,1),
(5,"RAHUL DAS","74","7.22","M",1,3),
(6,"Nivedita Jha","7.64","21","F",2,2),
(7,"Dimple Maheshwari","8.52","20","F",1,3);

-- multiple join
select * from students s inner join city c
on s.city = c.cid
inner join department d
on s.courses = d.d_id;

select s.id , s.name , s.age , s.cgpa , s.gender , c.cityname , d.course_name 
from students s inner join city c
on s.city = c.cid
inner join department d
on s.courses = d.d_id;

select s.id , s.name , s.age , s.cgpa , s.gender , c.cityname , d.course_name 
from students s inner join city c
on s.city = c.cid
inner join department d
on s.courses = d.d_id
where s.gender = 'f';


