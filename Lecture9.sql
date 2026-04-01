DROP DATABASE IF EXISTS ORGNEW;
CREATE DATABASE ORGNEW;
USE ORGNEW;

-- 1. Create Worker Table
CREATE TABLE Worker ( 
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT,
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

-- 2. Create Bonus Table
CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT,
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

-- 3. Create Title Table
CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

-- 4. Insert expanded data into Worker
INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '2014-04-11 09:00:00', 'Admin'),
		(009, 'Sahil', 'Luthra', 120000, '2015-05-01 10:00:00', 'IT'),
		(010, 'Ananya', 'Pandey', 95000, '2015-07-15 11:30:00', 'IT'),
		(011, 'Siddharth', 'Malhotra', 150000, '2016-01-10 09:00:00', 'Manager'),
		(012, 'Kriti', 'Sanon', 110000, '2016-03-22 14:00:00', 'HR');

-- 5. Insert expanded data into Bonus
INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '2016-02-20'),
		(002, 3000, '2016-06-11'),
		(003, 4000, '2016-02-20'),
		(001, 4500, '2016-02-20'),
		(002, 3500, '2016-06-11'),
		(009, 2000, '2016-12-01'),
		(010, 2500, '2016-12-01');

-- 6. Insert expanded data into Title
INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
        (001, 'Manager', '2016-02-20 00:00:00'),
        (002, 'Executive', '2016-06-11 00:00:00'),
        (008, 'Executive', '2016-06-11 00:00:00'),
        (005, 'Manager', '2016-06-11 00:00:00'),
        (004, 'Asst. Manager', '2016-06-11 00:00:00'),
        (007, 'Executive', '2016-06-11 00:00:00'),
        (006, 'Lead', '2016-06-11 00:00:00'),
        (003, 'Lead', '2016-06-11 00:00:00'),
        (009, 'Senior Developer', '2017-01-01 00:00:00'),
        (010, 'Developer', '2017-01-01 00:00:00');

-- 7. Final Select to show the data
SELECT * FROM Worker;

-- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
SELECT FIRST_NAME FROM Worker AS WORKER_NAME;

-- Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
SELECT UPPER(FIRST_NAME) FROM Worker;

-- Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
SELECT DISTINCT department FROM Worker;

-- Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
SELECT SUBSTR(FIRST_NAME,1,3) FROM Worker;

-- Q-5. Write an SQL query to find the position of the alphabet (‘b’) in the first name column ‘Amitabh’ INSIDE  Worker
SELECT INSTR(FIRST_NAME,'b') FROM Worker WHERE FIRST_NAME='Amitabh';

-- Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
SELECT RTRIM(FIRST_NAME) FROM Worker;

-- Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
SELECT LTRIM(DEPARTMENT) FROM Worker;

-- Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
SELECT DISTINCT DEPARTMENT ,LENGTH(DEPARTMENT) FROM Worker;

-- Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
SELECT REPLACE(FIRST_NAME,'a','A') FROM Worker;

-- Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME.
SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS COMPLETE_NAME FROM WORKER;

-- Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
SELECT Worker.* FROM Worker ORDER BY FIRST_NAME;

-- Q-12. Write an SQL query to print all Worker details from the Worker table order by 
-- FIRST_NAME Ascending and DEPARTMENT Descending.
SELECT WORKER.* FROM WORKER ORDER BY FIRST_NAME ASC,DEPARTMENT DESC;

-- Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
SELECT WORKER.* FROM WORKER WHERE FIRST_NAME IN ("Vipul","Satish");

-- Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
SELECT WORKER.* FROM WORKER WHERE FIRST_NAME NOT IN ("Vipul","Satish");

-- Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin*”.
SELECT WORKER.* FROM WORKER WHERE DEPARTMENT='Admin';

-- Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
SELECT WORKER.* FROM WORKER WHERE FIRST_NAME LIKE 'a%';

-- Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
SELECT WORKER.* FROM WORKER WHERE FIRST_NAME LIKE '%a';

-- Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
SELECT WORKER.* FROM WORKER WHERE FIRST_NAME LIKE '_____h';

-- Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
SELECT WORKER.* FROM WORKER WHERE SALARY BETWEEN 100000 AND 500000;

-- Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014.
SELECT * FROM WORKER WHERE YEAR(JOINING_DATE)=2014 AND MONTH(JOINING_DATE)=02;

-- Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.
SELECT COUNT(WORKER_ID),DEPARTMENT FROM WORKER GROUP BY DEPARTMENT;

-- Q-22. Write an SQL query to fetch worker full names with salaries >= 50000 and <= 100000.
SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS FULL_NAME,SALARY FROM WORKER WHERE SALARY BETWEEN 50000 AND 100000;

-- Q-23. Write an SQL query to fetch the no. of workers for each department in the descending order.
SELECT COUNT(WORKER_ID),DEPARTMENT FROM WORKER GROUP BY DEPARTMENT;

-- Q-24. Write an SQL query to print details of the Workers who are also Managers.
SELECT W.*,T.WORKER_TITLE FROM worker AS W LEFT JOIN TITLE T ON W.WORKER_ID=T.WORKER_REF_ID WHERE T.WORKER_TITLE='Manager';

-- Q-25. Write an SQL query to fetch number (more than 1) of same titles in the ORG of different types.
SELECT T.WORKER_TITLE,COUNT(T.WORKER_TITLE) AS TITLE_COUNT FROM TITLE T GROUP BY T.WORKER_TITLE HAVING TITLE_COUNT>1;

-- Q-26. Write an SQL query to show only odd rows from a table.
SELECT W.* FROM Worker W WHERE MOD(W.WORKER_ID,2)!=0;

-- Q-27. Write an SQL query to show only even rows from a table. 
SELECT W.* FROM WORKER W WHERE MOD(W.WORKER_ID,2)=0;

-- Q-28. Write an SQL query to clone a new table from another table.
CREATE TABLE WORKER_CLONE LIKE WORKER;
INSERT INTO WORKER_CLONE SELECT * FROM WORKER; 
SELECT * FROM WORKER_CLONE;

-- Q-29. Write an SQL query to fetch intersecting records of two tables.
SELECT DISTINCT W.FIRST_NAME FROM WORKER W INNER JOIN TITLE T;

-- Q-30. Write an SQL query to show records from one table that another table does not have.
SELECT W.* FROM Worker W LEFT JOIN WORKER_CLONE WC ON W.WORKER_ID=WC.WORKER_ID WHERE WC.WORKER_ID IS NULL;

-- Q-31. Write an SQL query to show the current date and time.
SELECT CURDATE();

-- Q-32. Write an SQL query to show the top n (say 5) records of a table order by descending salary.
SELECT W.FIRST_NAME,W.SALARY FROM Worker W ORDER BY SALARY DESC LIMIT 5;

-- Q-33. Write an SQL query to determine the nth (say n=5) highest salary from a table.
SELECT W.FIRST_NAME,W.SALARY FROM Worker W ORDER BY W.SALARY DESC LIMIT 5,1;

-- Q-34. Write an SQL query to determine the 5th highest salary without using LIMIT keyword.
SELECT w1.SALARY FROM Worker w1
WHERE 5=(
	SELECT COUNT(DISTINCT w2.SALARY)
    FROM Worker w2
    WHERE w2.SALARY>=w1.SALARY
);

-- Q-35. Write an SQL query to fetch the list of employees with the same salary.
SELECT w1.FIRST_NAME,w2.FIRST_NAME FROM Worker w1 ,Worker w2 WHERE w1.SALARY=W2.SALARY AND w1.WORKER_ID!=w2.WORKER_ID;

-- Q-36. Write an SQL query to show the second highest salary from a table using sub-query.
