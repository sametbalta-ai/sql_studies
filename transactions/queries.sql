SELECT * FROM transactions;

--Aggregate Functions & GROUP BY

-- 1) Basic aggregates
SELECT MIN(total_price) AS min_price,
       MAX(total_price) AS max_price,
       COUNT(*)         AS order_count, 
       SUM(total_price) AS total_revenue,
       ROUND(AVG(total_price),2) AS avg_price
FROM transactions;       

-- 2) Total revenue per city
SELECT customer_city, SUM(total_price) AS total_revenue
FROM transactions
GROUP BY customer_city
ORDER BY total_revenue DESC;

-- 3) Average order value per brand
SELECT brand, ROUND(AVG(total_price),2) AS avg_order_value
FROM transactions
GROUP BY brand
ORDER BY avg_order_value DESC;

-- 4) Cities with revenue greater than 1000
SELECT customer_city, SUM(total_price) AS total_revenue
FROM transactions
GROUP BY customer_city
HAVING SUM(total_price) > 1000
ORDER BY total_revenue DESC;

-- 5) Orders count and revenue (combined example)
SELECT customer_city, COUNT(*) AS order_count, SUM(total_price) AS total_revenue
FROM transactions
GROUP BY customer_city
HAVING SUM(total_price) > 1000
ORDER BY total_revenue DESC;
