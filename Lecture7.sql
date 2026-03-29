CREATE DATABASE MySchool;
USE MySchool;

CREATE TABLE Student(
	id INT PRIMARY KEY,
    st_name VARCHAR(50) NOT NULL
);

CREATE TABLE Teacher(
	id INT PRIMARY KEY,
    teacher_name VARCHAR(50) NOT NULL
);

CREATE TABLE Course(
	id INT PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    teacherId INT,
    FOREIGN KEY (teacherId) REFERENCES Teacher(id)
);

CREATE TABLE Enrollment(
	id INT,
    stId INT,
    courseId INT,
    FOREIGN KEY (stId) REFERENCES Student(id),
    FOREIGN KEY (courseId) REFERENCES Course(id)
);

INSERT INTO Student (id, st_name) VALUES
(1, 'Ali'),
(2, 'Ayesha'),
(3, 'Usman'),
(4, 'Fatima');

INSERT INTO Teacher (id, teacher_name) VALUES
(101, 'Mr. Khan'),
(102, 'Ms. Noor');

INSERT INTO Course (id, course_name, teacherId) VALUES
(201, 'Math', 101),
(202, 'Physics', 102),
(203, 'Computer Science', 101);

INSERT INTO Enrollment (id, stId, courseId) VALUES
(1, 1, 201),
(2, 1, 203),
(3, 2, 202),
(4, 3, 201);

SELECT s.st_name,c.course_name,t.teacher_name
FROM Enrollment e
INNER JOIN Student s
ON e.stId=s.id
INNER JOIN Course c
ON e.courseId=c.id
INNER JOIN Teacher t
ON t.id=c.teacherId;