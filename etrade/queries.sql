SELECT * FROM customers;

SELECT customer_name,
       birthdate,
       EXTRACT(YEAR FROM AGE(birthdate)) AS age
FROM customers;

-- WHERE studies

-- 1) Women customers
SELECT * FROM customers
WHERE gender = 'F';

-- 2) People born after 1980
SELECT * FROM customers
WHERE birthdate > '1980-01-01';

-- 3) People livnig in California
SELECT * FROM customers
WHERE district = 'California';

-- AND / OR studies

-- 1) Women born before 1990
SELECT * FROM customers
WHERE birthdate <= '1990-01-01' AND gender = 'F';

-- 2) People born after 1990 or from South Africa
SELECT * FROM customers
WHERE birthdate >= '1990-01-01' OR nation = 'South Africa';

-- BETWEEN studies

-- 1) Women born between 1960 and 1990
SELECT * FROM customers
WHERE gender = 'F' 
  AND birthdate BETWEEN '1960-01-01' AND '1990-01-01';

-- 2) Customers born in the 1980s
SELECT * FROM customers
WHERE birthdate BETWEEN '1980-01-01' AND '1989-12-31';

-- DISTINCT studies

-- 1) Unique cities
SELECT DISTINCT city
FROM customers;

-- 2) Unique nations
SELECT DISTINCT nation
FROM customers;

-- 3) Unique city-nation combinations
SELECT DISTINCT city, nation
FROM customers;

-- ORDER BY studies

-- 1) Customers sorted by birthdate (oldest to youngest)
SELECT * FROM customers
ORDER BY birthdate ASC;

-- 2) Customers sorted by birthdate (youngest to oldest)
SELECT * FROM customers
ORDER BY birthdate DESC;

-- 3) Customers sorted by nation, then city
SELECT * FROM customers
ORDER BY nation ASC, city ASC;

-- 4) Customers sorted by name alphabetically (A-Z)
SELECT * FROM customers
ORDER BY customer_name ASC;

-- 5) Customers sorted by name in reverse (Z-A)
SELECT * FROM customers
ORDER BY customer_name DESC;

-- LIMIT studies

-- 1) First 5 customers
SELECT * FROM customers
LIMIT 5;

-- 2) First 10 customers sorted by birthdate (oldest to youngest)
SELECT * FROM customers
ORDER BY birthdate ASC
LIMIT 10;

-- 3) First 3 customers sorted by name (A-Z)
SELECT * FROM customers
ORDER BY customer_name ASC
LIMIT 3;
