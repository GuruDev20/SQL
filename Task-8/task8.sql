-- Active: 1743788394603@@127.0.0.1@3306@sql_tasks

WITH DeptAvg AS (
    SELECT Department, AVG(Salary) AS AvgSalary
    FROM Employees
    GROUP BY Department
)
SELECT * FROM DeptAvg WHERE AvgSalary > 70000;

WITH RECURSIVE EmployeeHierarchy AS (
    SELECT 
        EmployeeID,
        Name,
        ManagerID,
        1 AS Level
    FROM OrgChart
    WHERE ManagerID IS NULL

    UNION ALL

    SELECT 
        E.EmployeeID,
        E.Name,
        E.ManagerID,
        EH.Level + 1
    FROM OrgChart E
    INNER JOIN EmployeeHierarchy EH ON E.ManagerID = EH.EmployeeID
)

SELECT * 
FROM EmployeeHierarchy
ORDER BY Level, EmployeeID
