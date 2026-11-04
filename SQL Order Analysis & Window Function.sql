CREATE DATABASE oodi;
USE oodi;

CREATE TABLE orderrssz(
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
amount INT
);

INSERT INTO orderrssz(order_id,customer_id,order_date,amount) VALUES
(1,101,'2026-06-24',1500),
(2,121,'2025-03-26',1500),
(3,343,'2026-04-24',2599),
(4,456,'2024-04-28',5000),
(5,123,'2024-05-30',4000);

SELECT * FROM orderrssz;

SELECT customer_id,amount,
ROW_NUMBER() OVER(ORDER BY amount ASC) AS row_num
FROM orderrssz;

SELECT customer_id,amount,
RANK() OVER(ORDER BY amount ASC) AS rank_num
FROM orderrssz;


SELECT customer_id,amount,
DENSE_RANK() OVER(ORDER BY amount ASC) AS rank_num
FROM orderrssz;


SELECT order_id,order_date,amount,
SUM(amount) OVER (ORDER BY order_date) AS runningtotal
FROM orderrssz;