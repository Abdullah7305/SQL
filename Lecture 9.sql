CREATE DATABASE Corporation;
USE Corporation;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50)
);

CREATE TABLE Assignments (
    assignment_id INT PRIMARY KEY,
    employee_id INT,
    project_id INT,
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);

INSERT INTO Employees VALUES
(1, 'Ali', 10),
(2, 'Ayesha', 20),
(3, 'Usman', 10),
(4, 'Fatima', 30);

INSERT INTO Departments VALUES
(10, 'Development'),
(20, 'Marketing'),
(30, 'Design');

INSERT INTO Projects VALUES
(101, 'Website Redesign'),
(102, 'Mobile App'),
(103, 'Social Media Campaign');

INSERT INTO Assignments VALUES
(1, 1, 101),  -- Ali on Website Redesign
(2, 1, 102),  -- Ali on Mobile App
(3, 2, 103),  -- Ayesha on Social Media Campaign
(4, 3, 101);  -- Usman on Website Redesign

SELECT e.emp_name,d.department_name,p.project_name
FROM Assignments a
INNER JOIN Employees e
ON e.employee_id=a.employee_id
INNER JOIN Departments d
ON d.department_id=e.department_id
INNER JOIN Projects p
ON p.project_id=a.project_id;
