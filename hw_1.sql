--# Задание 1
DROP TABLE IF EXISTS mobile_phones;
CREATE TABLE mobile_phones (
id INT NOT NULL,
product_name VARCHAR(45),
manufacturer VARCHAR(45),
product_count INT,
price INT,
PRIMARY KEY(id)
);

INSERT INTO mobile_phones (id, product_name, manufacturer, product_count, price)
VALUES
(1, 'iPhone X',  'Apple',   3, 76000),
(2, 'iPhone 8',  'Apple',   2, 51000),
(3, 'Galaxy S9', 'Samsung', 2, 56000),
(4, 'Galaxy S8', 'Samsung',  1, 41000),
(5, 'P20 Pro',   'Huawei',  5, 36000);

--# Задание 2
SELECT product_name, manufacturer, price
FROM mobile_phones
WHERE product_count > 2;

--#  Задание 3
SELECT *
FROM mobile_phones
WHERE manufacturer = 'Samsung';