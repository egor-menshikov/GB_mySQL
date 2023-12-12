-- Создайте процедуру, которая принимает кол-во сек и формат их в кол-во дней часов. Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '

DROP PROCEDURE IF EXISTS convert_time;

DELIMITER //

CREATE PROCEDURE convert_time(in_data INT)

BEGIN

DECLARE result VARCHAR(150);
DECLARE days INT;
DECLARE hours INT;
DECLARE minutes INT;
DECLARE seconds INT;

SET days = in_data / 86400;
SET in_data = in_data % 86400;

SET hours = in_data / 3600;
SET in_data = in_data % 3600;

SET minutes = in_data / 60;
SET seconds = in_data % 60;

SET result = CONCAT(
        days,
        ' days ',
        hours,
        ' hours ',
        minutes,
        ' minutes ',
        seconds,
        ' seconds.'
    );

SELECT result;

END// 

DELIMITER ;



-- Создайте функцию, которая выводит только четные числа от 1 до 10. Пример: 2,4,6,8,10

DROP FUNCTION IF EXISTS even;

DELIMITER //

CREATE FUNCTION even()
RETURNS VARCHAR(150) NO SQL

BEGIN

DECLARE result VARCHAR(150);

SET result ='2,4,6,8,10';

RETURN result;

END//

DELIMITER ;
