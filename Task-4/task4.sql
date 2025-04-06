-- Active: 1743788394603@@127.0.0.1@3306@sql_tasks

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers (CustomerID, FirstName, LastName, Email)
VALUES 
    (1, 'Guru', 'Dev', 'guru01803@example.com'),
    (2, 'Divya', 'Dharshini', 'divya.d@example.com'),
    (3, 'Hemanth', 'Kumar', 'hemanth.k@example.com'),
    (4, 'Dhenu', 'DS', 'dhenu.ds@example.com');

INSERT INTO Orders (OrderID, CustomerID, OrderDate, Amount)
VALUES 
    (101, 1, '2024-01-10', 2500.00),
    (102, 2, '2024-01-15', 1800.00),
    (103, 1, '2024-02-05', 4200.00),
    (104, 3, '2024-03-01', 1500.00);


-- INNER JOIN
SELECT Customers.FirstName,Customers.LastName,Orders.OrderID,Orders.OrderDate,Orders.Amount FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID; 

-- LEFT JOIN

SELECT Customers.FirstName,Customers.LastName,Orders.OrderID,Orders.OrderDate,Orders.Amount FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- Customer who don't have any orders
SELECT Customers.FirstName,Customers.LastName FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID WHERE Orders.OrderID IS NULL;