-- Active: 1743788394603@@127.0.0.1@3306@sql_tasks

DELIMITER //

CREATE TRIGGER update_stock_after_order
AFTER INSERT ON OrderDetails
FOR EACH ROW

BEGIN
    UPDATE Products SET stock = stock - NEW.quantity WHERE product_id = NEW.product_id;
END //

DELIMITER ;


DELIMITER //

CREATE TRIGGER log_stock_change
AFTER UPDATE ON Products
FOR EACH ROW

BEGIN
    IF OLD.stock <> NEW.stock THEN
        INSERT INTO Product_Log (product_id, action, old_stock, new_stock, updated_at)
        VALUES (OLD.product_id, 'Stock Updated', OLD.stock, NEW.stock, NOW());
    END IF;
END //

DELIMITER ;
