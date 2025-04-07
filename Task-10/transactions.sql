-- Active: 1743788394603@@127.0.0.1@3306@sql_tasks

START TRANSACTION;

INSERT INTO Orders (user_id, order_date, status, total_amount)
VALUES (1, CURDATE(), 'Processing', 300.00);

INSERT INTO OrderDetails (order_id, product_id, quantity, price)
VALUES (LAST_INSERT_ID(), 1, 2, 150.00);

INSERT INTO Payments (order_id, amount, payment_method, payment_date)
VALUES (LAST_INSERT_ID(), 300.00, 'Card', CURDATE());

COMMIT;