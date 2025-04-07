-- Active: 1743788394603@@127.0.0.1@3306@sql_tasks

INSERT INTO Categories (name) VALUES ('Electronics');

INSERT INTO Products (name, price, stock, category_id) 
VALUES ('Headphones', 150.00, 50, 1);

INSERT INTO Users (name, email, password, address)
VALUES ('Guru Dev', 'gurudev@gamil.com', 'BlahBlah', 'Tirunelveli,Tamil Nadu,India');

INSERT INTO Orders (user_id, order_date, status, total_amount)
VALUES (1, CURDATE(), 'Processing', 300.00);

INSERT INTO OrderDetails (order_id, product_id, quantity, price)
VALUES (LAST_INSERT_ID(), 1, 2, 150.00);



SELECT * FROM Products WHERE product_id = 1;

SELECT * FROM Product_Log;

CREATE VIEW Top_Selling_Products AS
SELECT p.name AS product_name, SUM(od.quantity) AS total_sold
FROM Products p
JOIN OrderDetails od ON p.product_id = od.product_id
GROUP BY p.product_id
ORDER BY total_sold DESC;

SELECT * FROM Top_Selling_Products;

