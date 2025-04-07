-- Active: 1743788394603@@127.0.0.1@3306@sql_tasks

CREATE VIEW Top_Selling_Products AS
SELECT p.name AS product_name, SUM(od.quantity) AS total_sold
FROM Products p
JOIN OrderDetails od ON p.product_id = od.product_id
GROUP BY p.product_id
ORDER BY total_sold DESC;


CREATE VIEW User_Order_Summary AS
SELECT u.name, COUNT(o.order_id) AS total_orders, SUM(o.total_amount) AS total_spent
FROM Users u
JOIN Orders o ON u.user_id = o.user_id
GROUP BY u.user_id;
