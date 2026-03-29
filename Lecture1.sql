CREATE DATABASE College;
USE College;

CREATE TABLE Student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    address VARCHAR(100),
    contact VARCHAR(15),
    city VARCHAR(50),
    marks INT,
    grade CHAR(2)
);

INSERT INTO Student (id, name, age, address, contact, city, marks, grade)
VALUES
(1, 'Abdullah', 18, 'Street 1', '03001234567', 'Lahore', 89, 'A'),
(2, 'Ali', 19, 'Street 2', '03011234567', 'Karachi', 75, 'B'),
(3, 'Ahmed', 18, 'Street 3', '03021234567', 'Islamabad', 92, 'A'),
(4, 'Usman', 20, 'Street 4', '03031234567', 'Faisalabad', 68, 'C'),
(5, 'Hassan', 19, 'Street 5', '03041234567', 'Multan', 81, 'A'),
(6, 'Hamza', 18, 'Street 6', '03051234567', 'Lahore', 77, 'B'),
(7, 'Bilal', 21, 'Street 7', '03061234567', 'Karachi', 85, 'A'),
(8, 'Zain', 18, 'Street 8', '03071234567', 'Islamabad', 90, 'A'),
(9, 'Saad', 20, 'Street 9', '03081234567', 'Peshawar', 73, 'B'),
(10, 'Taha', 19, 'Street 10', '03091234567', 'Quetta', 88, 'A'),
(11, 'Ayan', 18, 'Street 11', '03101234567', 'Lahore', 67, 'C'),
(12, 'Ibrahim', 21, 'Street 12', '03111234567', 'Karachi', 94, 'A'),
(13, 'Omar', 20, 'Street 13', '03121234567', 'Islamabad', 79, 'B'),
(14, 'Farhan', 19, 'Street 14', '03131234567', 'Faisalabad', 82, 'A'),
(15, 'Kashan', 18, 'Street 15', '03141234567', 'Multan', 70, 'B'),
(16, 'Daniyal', 20, 'Street 16', '03151234567', 'Lahore', 86, 'A'),
(17, 'Shayan', 19, 'Street 17', '03161234567', 'Karachi', 91, 'A'),
(18, 'Huzaifa', 18, 'Street 18', '03171234567', 'Islamabad', 76, 'B'),
(19, 'Rayyan', 20, 'Street 19', '03181234567', 'Peshawar', 84, 'A'),
(20, 'Muzammil', 21, 'Street 20', '03191234567', 'Quetta', 69, 'C'),
(21, 'Talha', 18, 'Street 21', '03201234567', 'Lahore', 88, 'A'),
(22, 'Sameer', 19, 'Street 22', '03211234567', 'Karachi', 74, 'B'),
(23, 'Adnan', 20, 'Street 23', '03221234567', 'Islamabad', 91, 'A'),
(24, 'Rizwan', 21, 'Street 24', '03231234567', 'Faisalabad', 65, 'C'),
(25, 'Imran', 19, 'Street 25', '03241234567', 'Multan', 80, 'A'),
(26, 'Noman', 18, 'Street 26', '03251234567', 'Lahore', 78, 'B'),
(27, 'Yasir', 20, 'Street 27', '03261234567', 'Karachi', 83, 'A'),
(28, 'Shahzaib', 21, 'Street 28', '03271234567', 'Islamabad', 89, 'A'),
(29, 'Adeel', 19, 'Street 29', '03281234567', 'Peshawar', 72, 'B'),
(30, 'Kamran', 20, 'Street 30', '03291234567', 'Quetta', 87, 'A'),
(31, 'Asad', 18, 'Street 31', '03301234567', 'Lahore', 66, 'C'),
(32, 'Waqas', 19, 'Street 32', '03311234567', 'Karachi', 92, 'A'),
(33, 'Jawad', 21, 'Street 33', '03321234567', 'Islamabad', 81, 'A'),
(34, 'Fahad', 20, 'Street 34', '03331234567', 'Faisalabad', 77, 'B'),
(35, 'Arsalan', 19, 'Street 35', '03341234567', 'Multan', 85, 'A'),
(36, 'Sami', 18, 'Street 36', '03351234567', 'Lahore', 73, 'B'),
(37, 'Zubair', 20, 'Street 37', '03361234567', 'Karachi', 90, 'A'),
(38, 'Basit', 21, 'Street 38', '03371234567', 'Islamabad', 88, 'A'),
(39, 'Haris', 19, 'Street 39', '03381234567', 'Peshawar', 79, 'B'),
(40, 'Rehan', 18, 'Street 40', '03391234567', 'Quetta', 68, 'C'),
(41, 'Shahid', 20, 'Street 41', '03401234567', 'Lahore', 84, 'A'),
(42, 'Azan', 19, 'Street 42', '03411234567', 'Karachi', 76, 'B'),
(43, 'Umair', 21, 'Street 43', '03421234567', 'Islamabad', 93, 'A'),
(44, 'Hammad', 20, 'Street 44', '03431234567', 'Faisalabad', 82, 'A'),
(45, 'Rameez', 19, 'Street 45', '03441234567', 'Multan', 71, 'B'),
(46, 'Salman', 18, 'Street 46', '03451234567', 'Lahore', 86, 'A'),
(47, 'Junaid', 20, 'Street 47', '03461234567', 'Karachi', 78, 'B'),
(48, 'Nabeel', 21, 'Street 48', '03471234567', 'Islamabad', 91, 'A'),
(49, 'Qasim', 19, 'Street 49', '03481234567', 'Peshawar', 74, 'B'),
(50, 'Faraz', 18, 'Street 50', '03491234567', 'Quetta', 80, 'A');

SELECT name,city,marks,grade 
FROM Student
WHERE city IN ("Lahore","Islamabad") AND marks BETWEEN 85 AND 90 ORDER BY marks DESC LIMIT 4;

SELECT AVG(marks) FROM Student;
SELECT MIN(marks) FROM Student;
SELECT name FROM Student WHERE marks=94 ;