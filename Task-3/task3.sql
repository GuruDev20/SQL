-- Active: 1743788394603@@127.0.0.1@3306@sql_tasks

SELECT COUNT(*) AS TotalEmployees FROM Employees;

SELECT AVG(Salary) AS AverageSalary FROM Employees;

SELECT Department, SUM(Salary) AS TotalDepartmentSalary FROM Employees GROUP BY Department;

SELECT Department, COUNT(*) AS EmployeeCount FROM Employees GROUP BY Department;

SELECT Department, AVG(Salary) AS AvgSalary FROM Employees GROUP BY Department;

SELECT Department, COUNT(*) AS EmployeeCount FROM Employees GROUP BY Department HAVING COUNT(*) > 1;