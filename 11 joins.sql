create database nitt;
use nitt;
CREATE TABLE city
(
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

CREATE TABLE students(
	id INT NOT NULL,
	name VARCHAR(50) NOT NULL,
	cgpa INT NOT NULL,
	age INT NOT NULL,
	gender VARCHAR(1) NOT NULL,
	city INT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (city) REFERENCES City (cid) -- reference from city table 
);

INSERT INTO students(id,name,CGPA,age,gender,city)
VALUES
(1,"POOJA SHARMA","45","13","F",1),
(2,"Sarita Kumari","56","21","F",2),
(3,"PRERNA NIDHI","62","20","F",1),
(4,"DIKSHA CHAUHAN","47","18","F",3),
(5,"VIVEK SHARMA","74","22","M",1),
(6,"ANURAJ YADAV","64","21","M",2),
(7,"ANKIT KUMAR","52","20","M",1);

-- inner join 
select * from students inner join city
on students.city = city.cid;

select * from students s  inner join city c  -- aliases
on s.city = c.cid;

select s.id , s.name , s.cgpa , s.gender , c.cityname
from students s inner join city c
on s.city = c.cid;

select s.id , s.name , s.cgpa , s.gender , c.cityname
from students s inner join city c
on s.city = c.cid
where c.cityname = 'patna';

select s.id , s.name , s.cgpa , s.gender , c.cityname
from students s inner join city c
on s.city = c.cid
where c.cityname = 'patna'
order by s.name;

-- inner join can also written an join 
select s.id , s.name , s.cgpa , s.gender , c.cityname
from students s  join city c
on s.city = c.cid
where c.cityname = 'patna'
order by s.name;

-- left join
select * from students left join city
on students.city = city.cid;

select * from students inner join city  -- it show common records only
on students.city = city.cid;

select * from students s left join city c
on s.city = c.cid;

select s.id , s.name, s.age , c.cityname
from students s left join city c
on s.city = c.cid;

select s.id , s.name, s.age , c.cityname
from students s left join city c
on s.city = c.cid
where gender = 'm';

select s.id , s.name, s.age , c.cityname
from students s left join city c
on s.city = c.cid
where gender = 'm'
order by name desc;


-- right join 
select * from students right join city
on students.city = city.cid; -- it also show jaipur and noida

SELECT * FROM students p RIGHT JOIN city c
ON p.city = c.cid;

SELECT p.id,p.name,p.cgpa,p.age,p.gender,c.cityname
FROM students p RIGHT JOIN city c
ON p.city = c.cid;


-- cross join
-- cross join is combinations of tables
-- in case of cross join no need of primary and foreign key 
-- in practical life no use of cross join

select * from students cross join city;

select s.name, s.age , c.cityname
from students s cross join city c;

select s.name as "name of student", s.age , c.cityname
from students s cross join city c;

select s.name, s.age , c.cityname
from students s , city c; -- , is also same result as cross join

