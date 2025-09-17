  DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    birthdate DATE NOT NULL,
    city VARCHAR(50),
    district VARCHAR(50),
    gender CHAR(1),
    nation VARCHAR(50)
);
