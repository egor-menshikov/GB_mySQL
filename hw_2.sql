use homework_2;

# Задание 1

DROP TABLE IF EXISTS sales;
CREATE TABLE sales
(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
order_date DATE,
count_product INT
);

INSERT INTO sales (order_date, count_product)
VALUES
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);

# Задание 2

SELECT id AS id_заказа,
CASE WHEN count_product < 100               THEN 'Маленький заказ'
	 WHEN count_product BETWEEN 100 AND 300 THEN 'Средний заказ'
     ELSE                                        'Большой заказ'
     END AS тип_заказа
 FROM sales;
 
 # Задание 3
 
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    employee_id VARCHAR(45),
    amount FLOAT(255, 2),
    order_status ENUM('OPEN', 'CLOSED', 'CANCELLED')
);

INSERT INTO orders (employee_id, amount, order_status)
VALUES
('e03', 15.00, 1),
('e01', 25.50, 1),
('e05', 100.70, 2),
('e02', 22.18, 1),
('e04', 9.50, 3);

SELECT 
    *,
    CASE
        WHEN order_status = 1 THEN 'Order is in open state'
        WHEN order_status = 2 THEN 'Order is closed'
        WHEN order_status = 3 THEN 'Order is cancelled'
    END AS full_order_status
FROM
    orders;

# Задание 4
# Чем 0 отличается от NULL?

# 0 - это конкретное значение, NULL - отсутствие какого-либо значения.