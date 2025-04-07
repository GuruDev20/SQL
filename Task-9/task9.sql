-- Active: 1743788394603@@127.0.0.1@3306@sql_tasks

DELIMITER

CREATE PROCEDURE GetOrdersInRange(IN startDate DATE, IN endDate DATE)
BEGIN
    SELECT * 
    FROM Orders
    WHERE OrderDate BETWEEN startDate AND endDate;
END

DELIMITER ;

CALL GetOrdersInRange('2024-01-01', '2024-12-31');



DELIMITER 

CREATE FUNCTION CalculateBonus(salary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE bonus DECIMAL(10,2);

    IF salary > 70000 THEN
        SET bonus = salary * 0.10;
    ELSE
        SET bonus = salary * 0.05;
    END IF;

    RETURN bonus;
END 

DELIMITER ;

SELECT FirstName,LastName,Salary,CalculateBonus(Salary) AS Bonus FROM Employees;
