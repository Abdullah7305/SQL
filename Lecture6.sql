CREATE DATABASE Company;
USE Company;

CREATE TABLE Employee(
	id INT,
    emp_name VARCHAR(60),
    salary DECIMAL(8,4),
    expereince TINYINT UNSIGNED,
    PRIMARY KEY (id)
);

-- we will Alter the employee table by adding ,dropping,renaming the cols;
ALTER TABLE Employee ADD COLUMN contact TINYINT UNSIGNED;-- ADD
ALTER TABLE Employee CHANGE COLUMN salary emp_salary DECIMAL(8,5) NOT NULL;-- CHANGES 
ALTER TABLE Employee MODIFY COLUMN emp_salary  DECIMAL(8,6) NOT NULL;-- MODIFY
ALTER TABLE Employee RENAME TO Employees;
ALTER TABLE Employees MODIFY COLUMN id INT AUTO_INCREMENT;
ALTER TABLE Employees CHANGE COLUMN expereince experience TINYINT UNSIGNED;
ALTER TABLE Employees MODIFY COLUMN emp_salary INT NOT NULL;
ALTER TABLE Employees ADD COLUMN email VARCHAR(100) NOT NULL UNIQUE;
ALTER TABLE Employees MODIFY COLUMN contact VARCHAR(15);-- ADD
--  We can also drp a column too

INSERT INTO Employees(emp_name,emp_salary,experience) VALUES
('Ali',120000,3);
UPDATE Employees
SET contact='032112345678',email='abdullah@gmail.com'
WHERE id=1;

INSERT INTO Employees (emp_name, emp_salary, experience, contact, email) VALUES
('Ali Khan', 50000, 2, '03001234567', 'ali.khan@gmail.com'),
('Ayesha Noor', 65000, 3, '03111234567', 'ayesha.noor@gmail.com'),
('Usman Tariq', 45000, 1, '03221234567', 'usman.tariq@gmail.com'),
('Fatima Zahra', 70000, 4, '03331234567', 'fatima.zahra@gmail.com'),
('Hassan Raza', 55000, 2, '03441234567', 'hassan.raza@gmail.com'),
('Zain Ali', 80000, 5, '03551234567', 'zain.ali@gmail.com'),
('Sara Ahmed', 62000, 3, '03661234567', 'sara.ahmed@gmail.com'),
('Bilal Khan', 48000, 1, '03771234567', 'bilal.khan@gmail.com');

SET SQL_SAFE_UPDATES=0;

SELECT* FROM Employees WHERE emp_salary<=50000;
DELETE FROM Employees WHERE emp_salary<=50000;
ALTER TABLE Employees DROP COLUMN contact;
