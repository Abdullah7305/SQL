CREATE DATABASE School;
USE School;


CREATE TABLE CustomerPayments (
    customer_id INT PRIMARY KEY,
    customer VARCHAR(50) NOT NULL,
    payment_mode VARCHAR(20) NOT NULL,
    city VARCHAR(50) NOT NULL
);

CREATE TABLE Student(
    st_id INT AUTO_INCREMENT PRIMARY KEY,
    st_name VARCHAR(50) NOT NULL,
    st_age TINYINT UNSIGNED NOT NULL,
    city VARCHAR(30),
    marks TINYINT UNSIGNED NOT NULL,
    email VARCHAR(50) UNIQUE,
    phone VARCHAR(15),
    course VARCHAR(50),
    grade CHAR(2),
    enrollment_year YEAR,
    gender VARCHAR(10),
    CHECK (st_age > 16),
    CHECK (marks >= 0 AND marks <= 100)
);

INSERT INTO Student (st_name, st_age, city, marks, email, phone, course, grade, enrollment_year, gender) VALUES
('Ali Khan', 20, 'Lahore', 88, 'ali1@gmail.com', '03001234567', 'Computer Science', 'A', 2022, 'Male'),
('Ayesha Noor', 19, 'Karachi', 92, 'ayesha1@gmail.com', '03007654321', 'Business', 'A', 2023, 'Female'),
('Bilal Ahmed', 21, 'Lahore', 67, 'bilal1@gmail.com', '03004567891', 'Engineering', 'C', 2021, 'Male'),
('Hassan Raza', 22, 'Islamabad', 95, 'hassan1@gmail.com', '03009876543', 'Computer Science', 'A+', 2022, 'Male'),
('Sara Malik', 20, 'Multan', 78, 'sara1@gmail.com', '03002345678', 'Business', 'B', 2023, 'Female'),
('Usman Tariq', 23, 'Lahore', 55, 'usman1@gmail.com', '03003456789', 'Engineering', 'D', 2021, 'Male'),
('Zainab Ali', 18, 'Karachi', 90, 'zainab1@gmail.com', '03005678912', 'Computer Science', 'A', 2023, 'Female'),
('Ahmed Raza', 21, 'Faisalabad', 72, 'ahmed1@gmail.com', '03006789123', 'Business', 'C', 2022, 'Male'),
('Mariam Khan', 19, 'Lahore', 85, 'mariam1@gmail.com', '03007891234', 'Engineering', 'B+', 2023, 'Female'),
('Danish Iqbal', 22, 'Peshawar', 60, 'danish1@gmail.com', '03008912345', 'Computer Science', 'D', 2022, 'Male'),

('Hamza Ali', 20, 'Lahore', 91, 'hamza1@gmail.com', '03009123456', 'Business', 'A', 2023, 'Male'),
('Fatima Zahra', 19, 'Karachi', 89, 'fatima1@gmail.com', '03001239876', 'Engineering', 'B+', 2023, 'Female'),
('Saad Khan', 21, 'Islamabad', 77, 'saad1@gmail.com', '03004321098', 'Computer Science', 'B', 2022, 'Male'),
('Hira Noor', 22, 'Multan', 83, 'hira1@gmail.com', '03005432109', 'Business', 'B+', 2022, 'Female'),
('Taha Ahmed', 20, 'Lahore', 68, 'taha1@gmail.com', '03006543210', 'Engineering', 'C', 2023, 'Male'),
('Iqra Malik', 18, 'Karachi', 94, 'iqra1@gmail.com', '03007654321', 'Computer Science', 'A', 2023, 'Female'),
('Omar Farooq', 21, 'Faisalabad', 73, 'omar1@gmail.com', '03008765432', 'Business', 'C', 2022, 'Male'),
('Laiba Khan', 19, 'Lahore', 87, 'laiba1@gmail.com', '03009876543', 'Engineering', 'A', 2023, 'Female'),
('Zeeshan Ali', 22, 'Peshawar', 66, 'zeeshan1@gmail.com', '03001234567', 'Computer Science', 'C', 2022, 'Male'),
('Nida Tariq', 20, 'Islamabad', 79, 'nida1@gmail.com', '03002345678', 'Business', 'B', 2023, 'Female'),

('Shahzaib Khan', 21, 'Lahore', 82, 'shahzaib1@gmail.com', '03003456789', 'Engineering', 'B', 2022, 'Male'),
('Areeba Noor', 19, 'Karachi', 96, 'areeba1@gmail.com', '03004567890', 'Computer Science', 'A+', 2023, 'Female'),
('Imran Ali', 23, 'Multan', 58, 'imran1@gmail.com', '03005678901', 'Business', 'D', 2021, 'Male'),
('Kiran Malik', 20, 'Lahore', 84, 'kiran1@gmail.com', '03006789012', 'Engineering', 'B+', 2023, 'Female'),
('Asad Raza', 22, 'Islamabad', 75, 'asad1@gmail.com', '03007890123', 'Computer Science', 'C', 2022, 'Male'),
('Mehwish Khan', 18, 'Karachi', 93, 'mehwish1@gmail.com', '03008901234', 'Business', 'A', 2023, 'Female'),
('Sohail Ahmed', 21, 'Faisalabad', 69, 'sohail1@gmail.com', '03009123456', 'Engineering', 'C', 2022, 'Male'),
('Rabia Noor', 19, 'Lahore', 88, 'rabia1@gmail.com', '03001239876', 'Computer Science', 'A', 2023, 'Female'),
('Farhan Ali', 22, 'Peshawar', 62, 'farhan1@gmail.com', '03004321098', 'Business', 'D', 2022, 'Male'),
('Sidra Malik', 20, 'Islamabad', 81, 'sidra1@gmail.com', '03005432109', 'Engineering', 'B+', 2023, 'Female'),

('Adnan Khan', 21, 'Lahore', 86, 'adnan1@gmail.com', '03006543210', 'Computer Science', 'A', 2022, 'Male'),
('Hafsa Noor', 19, 'Karachi', 97, 'hafsa1@gmail.com', '03007654321', 'Business', 'A+', 2023, 'Female'),
('Yasir Ali', 23, 'Multan', 59, 'yasir1@gmail.com', '03008765432', 'Engineering', 'D', 2021, 'Male'),
('Bushra Malik', 20, 'Lahore', 80, 'bushra1@gmail.com', '03009876543', 'Computer Science', 'B', 2023, 'Female'),
('Salman Raza', 22, 'Islamabad', 74, 'salman1@gmail.com', '03001234567', 'Business', 'C', 2022, 'Male'),
('Amna Khan', 18, 'Karachi', 91, 'amna1@gmail.com', '03002345678', 'Engineering', 'A', 2023, 'Female'),
('Waqar Ahmed', 21, 'Faisalabad', 70, 'waqar1@gmail.com', '03003456789', 'Computer Science', 'C', 2022, 'Male'),
('Sadia Noor', 19, 'Lahore', 89, 'sadia1@gmail.com', '03004567890', 'Business', 'B+', 2023, 'Female'),
('Noman Ali', 22, 'Peshawar', 65, 'noman1@gmail.com', '03005678901', 'Engineering', 'C', 2022, 'Male'),
('Uzma Malik', 20, 'Islamabad', 83, 'uzma1@gmail.com', '03006789012', 'Computer Science', 'B+', 2023, 'Female');

INSERT INTO CustomerPayments (customer_id, customer, payment_mode, city) VALUES
(101, 'Olivia Barrett', 'Netbanking', 'Portland'),
(102, 'Ethan Sinclair', 'Credit Card', 'Miami'),
(103, 'Maya Hernandez', 'Credit Card', 'Seattle'),
(104, 'Liam Donovan', 'Netbanking', 'Denver'),
(105, 'Sophia Nguyen', 'Credit Card', 'New Orleans'),
(106, 'Caleb Foster', 'Debit Card', 'Minneapolis'),
(107, 'Ava Patel', 'Debit Card', 'Phoenix'),
(108, 'Lucas Carter', 'Netbanking', 'Boston'),
(109, 'Isabella Martinez', 'Netbanking', 'Nashville'),
(110, 'Jackson Brooks', 'Credit Card', 'Boston');

SELECT city,count(st_id) FROM Student GROUP BY city;
SELECT city,avg(marks) FROM Student GROUP BY city;
SELECT payment_mode,count(customer) FROM CustomerPayments GROUP BY payment_mode;
-- here i tried to use the AS and the HAVING the 'HAVING' can apply the condition on the group like ther where cluase that we use to appky the condition on the roes

SELECT grade,count(st_id) AS st_count FROM Student GROUP BY grade HAVING st_count>=10;

SELECT city,MAX(marks) FROM Student GROUP BY city HAVING MAX(marks)>90;
SELECT city,MAX(marks),grade FROM Student WHERE grade='A' GROUP BY city HAVING MAX(marks)>90;

-- to use safe mode we need to set the safemode in the sql to be null to use it 
SET SQL_SAFE_UPDATES=0;

SELECT * FROM Student LIMIT 5;
UPDATE Student SET marks =90 WHERE grade='A';
SELECT * FROM Student;
SELECT * FROM Student WHERE marks<60;
DELETE FROM Student WHERE marks<60;

