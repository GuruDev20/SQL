-- Active: 1743788394603@@127.0.0.1@3306@sql_tasks

SELECT FirstName,LastName,HireDate,DATEDIFF(CURDATE(), HireDate) AS DaysSinceHired FROM Employees;

SELECT * FROM Orders WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY;

SELECT OrderID,OrderDate,DATE_ADD(OrderDate, INTERVAL 60 DAY) AS ExpectedDeliveryDate FROM Orders;

SELECT FirstName,LastName,DATE_FORMAT(HireDate, '%d/%m/%Y') AS FormattedHireDate FROM Employees;