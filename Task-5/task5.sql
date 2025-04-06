-- Active: 1743788394603@@127.0.0.1@3306@sql_tasks

-- correlated subqueries

SELECT * FROM Employees E WHERE Salary > ( SELECT AVG(Salary) FROM Employees WHERE Department = E.Department);

SELECT FirstName,LastName,Department,Salary,(SELECT AVG(Salary) FROM Employees WHERE Department = E.Department) AS DepartmentAvgSalary FROM Employees E;

-- Non-Correlated Subqueries

SELECT * FROM Employees WHERE Salary > ( SELECT AVG(Salary) FROM Employees);

SELECT * FROM Employees WHERE Department IN ( SELECT Department FROM Employees GROUP BY Department HAVING COUNT(*) > 1);