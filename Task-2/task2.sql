-- Active: 1743788394603@@127.0.0.1@3306@sql_tasks

SELECT * FROM Employees WHERE Department = 'Engineering';

SELECT * FROM Employees ORDER BY LastName ASC;

SELECT * FROM Employees WHERE Salary > 65000;

SELECT * FROM Employees WHERE Department = 'Engineering' AND Salary > 76000;

SELECT * FROM Employees ORDER BY Salary DESC;