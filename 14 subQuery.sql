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

CREATE TABLE courses(
    course_id INT NOT NULL AUTO_INCREMENT,
    course_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (course_id)
);

INSERT INTO courses(course_name)
VALUES('Btech'),
('BCA'),
('MBA');

CREATE TABLE students(
	id INT NOT NULL,
	name VARCHAR(50) NOT NULL,
    cgpa INT NOT NULL,
	age INT NOT NULL,
	gender VARCHAR(1) NOT NULL,
	city INT NOT NULL,
    courses INT NOT NULL,
    PRIMARY KEY (id),
	FOREIGN KEY (city) REFERENCES City (cid),
    FOREIGN KEY (courses) REFERENCES Courses (course_id)  
)

INSERT INTO students(id,name,cgpa,age,gender,city,courses)
VALUES
(1,"Ravi Kumar","7.45","23","M",1,1),
(2,"Sarita Kumari","8.56","19","F",2,2),
(3,"PANKAJ CHANDEL","9.62","16","M",1,1),
(4,"Ruchita Nagar","8.47","18","F",3,1),
(5,"NIDHI JHA","8.74","22","F",1,3),
(6,"NIKHIL SAINI","8.64","21","M",2,2),
(7,"AMAN SHUKLA","7.52","20","M",1,3);

-- subQuery

select name from students
where courses = (select course_id from courses where course_name = 'mba');

select name from students
where courses in (select course_id from courses where course_name in ('mba','bca'));

select name from students
where courses not in (select course_id from courses where course_name in ('mba','bca'));

-- -- exists clause
select name from students
where exists (select course_id from courses where course_name in ('mba'));

select name from students
where exists (select course_id from courses where course_name in ('mtech')); -- no record will display

-- not exists
select name from students
where  not exists (select course_id from courses where course_name in ('mtech'));

select name from students
where not exists (select course_id from courses where course_name in ('mba')); -- no record will display
