CREATE DATABASE University;
USE University;

CREATE TABLE Department(
	dept_id INT,
    dept_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (dept_id)
);

ALTER TABLE Department MODIFY COLUMN dept_id INT AUTO_INCREMENT;

CREATE TABLE Student(
	st_id INT,
    st_name VARCHAR(50) NOT NULL,
    st_age TINYINT UNSIGNED NOT NULL,
    city VARCHAR(30),
    marks TINYINT UNSIGNED NOT NULL,
    email VARCHAR(50) UNIQUE,
    dept_id INT,
    PRIMARY KEY (st_id),
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id),
    CHECK (st_age>16),
    CHECK (marks>=0 AND marks<=100)
);
ALTER TABLE Student MODIFY COLUMN st_id INT AUTO_INCREMENT;

INSERT INTO Department(dept_id,dept_name) VALUES
(1, 'CS'),
(2, 'IT'),
(3, 'BBA');

INSERT INTO Student (st_name, st_age, city, marks, email, dept_id) VALUES
('Ali', 20, 'Lahore', 88, 'ali@gmail.com', 1),
('Ayesha', 19, 'Karachi', 76, 'ayesha@gmail.com', 2),
('Bilal', 21, 'Lahore', 65, 'bilal@gmail.com', 3),
('Hassan', 22, 'Islamabad', 91, 'hassan@gmail.com', 1),
('Sara', 20, 'Multan', 84, 'sara@gmail.com', 2),
('Usman', 23, 'Lahore', 58, 'usman@gmail.com', 3),
('Zainab', 18, 'Karachi', 95, 'zainab@gmail.com', 1),
('Ahmed', 21, 'Faisalabad', 70, 'ahmed@gmail.com', 2),
('Mariam', 19, 'Lahore', 82, 'mariam@gmail.com', 3),
('Danish', 22, 'Peshawar', 67, 'danish@gmail.com', 1);


SELECT * FROM Student;
SELECT st_name,city FROM Student;
SELECT st_name FROM Student WHERE city NOT IN ("Lahore");
SELECT st_name ,marks FROM Student ORDER BY marks DESC  LIMIT 3;
SELECT st_name ,city FROM Student ORDER BY city ASC;
SELECT st_name FROM Student WHERE city='LAHORE' AND marks>=80;
SELECT st_name,marks FROM Student WHERE marks BETWEEN 60 AND 85;
SELECT st_name,st_age,city FROM Student ORDER BY marks ASC;
SELECT st_name FROM Student WHERE st_name LIKE '%n' OR st_name LIKE 'A%';
SELECT st_name,dept_id FROM Student WHERE marks NOT BETWEEN 60 AND 80;
