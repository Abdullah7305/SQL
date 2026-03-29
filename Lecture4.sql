CREATE DATABASE Academy;
USE Academy;

CREATE TABLE Department (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);

CREATE TABLE Teacher (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    teacher_name VARCHAR(100) NOT NULL,
    subject VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    dept_id INT,
    
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

INSERT INTO Department (dept_name, location) VALUES
('Computer Science', 'Block A'),
('Mathematics', 'Block B'),
('Physics', 'Block C');

INSERT INTO Teacher (teacher_name, subject, email, dept_id) VALUES
('Ali Raza', 'Data Structures', 'ali@college.com', 1),
('Sara Khan', 'Algorithms', 'sara@college.com', 1),
('Ahmed Noor', 'Calculus', 'ahmed@college.com', 2),
('Hina Ali', 'Quantum Physics', 'hina@college.com', 3);

