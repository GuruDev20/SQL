-- Active: 1743788394603@@127.0.0.1@3306@sql_tasks

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary, HireDate)
VALUES 
    (1, 'Guru', 'Dev', 'Engineering', 75000.00, '2022-03-15'),
    (2, 'Divya', 'Dharshini', 'Marketing', 62000.00, '2021-11-22'),
    (3, 'Hemanth', 'Kumar', 'HR', 58000.00, '2023-01-10'),
    (4, 'Dhenu', 'DS', 'Engineering', 80000.00, '2020-07-19'),
    (5, 'Ananya', 'Raj', 'Finance', 67000.00, '2022-06-01');

SELECT * FROM Employees;