CREATE DATABASE College1;
USE College1;

CREATE TABLE Course(
	id INT PRIMARY KEY,
    crs_name VARCHAR(50)
);


INSERT INTO Course (id,crs_name) VALUES	
(101,'Math'),
(102,'English'),
(103,'Urdu');

CREATE TABLE Student(
	id INT,
    st_name VARCHAR(50),
    crs_id INT,
    PRIMARY KEY(id),
    FOREIGN KEY (crs_id) REFERENCES Course(id) 
);
-- 19:22:38	CREATE TABLE Student(  id INT,     st_name VARCHAR(50),     crs_id INT,     PRIMARY KEY(id),     FOREIGN KEY (crs_id) REFERENCES Course(id)  )	Error Code: 1822. Failed to add the foreign key constraint. Missing index for constraint 'student_ibfk_1' in the referenced table 'course'	0.000 sec

INSERT INTO Student(id,st_name,crs_id) VALUES
(1,'Abdullah',101),
(2,'Ahmed',103),
(3,'Ali',102),
(4,'Haris',102);
