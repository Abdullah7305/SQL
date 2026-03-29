-- https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/

# Write your MySQL query statement below
SELECT u.unique_id,e.name
FROM  EmployeeUNI u
RIGHT JOIN Employees e
ON e.id=u.id ; 