-- Active: 1743788394603@@127.0.0.1@3306@sql_tasks

SELECT FirstName,LastName,Department,Salary,ROW_NUMBER() OVER (PARTITION BY Department ORDER BY Salary ASC) AS RowNumInDept FROM Employees;

SELECT FirstName,LastName,Department,Salary,RANK() OVER (PARTITION BY Department ORDER BY Salary ASC) AS SalaryRank FROM Employees;

SELECT FirstName,LastName,Department,Salary,DENSE_RANK() OVER (PARTITION BY Department ORDER BY Salary ASC) AS DenseSalaryRank FROM Employees;

SELECT FirstName,LastName,Department,Salary,LAG(Salary) OVER (PARTITION BY Department ORDER BY Salary DESC) AS PreviousSalary FROM Employees;

SELECT FirstName,LastName,Department,Salary,LEAD(Salary) OVER (PARTITION BY Department ORDER BY Salary DESC) AS PreviousSalary FROM Employees;