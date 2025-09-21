  DROP TABLE IF EXISTS transactions;

CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
    order_date TIMESTAMP NOT NULL,
    item_code VARCHAR(20),
    brand VARCHAR(50),
    category1 VARCHAR(50),
    category2 VARCHAR(50),
    category3 VARCHAR(50),
    category4 VARCHAR(50),
    amount INT,
    total_price NUMERIC(10,2),
    customer_code VARCHAR(20),
    customer_name VARCHAR(100),
    customer_city VARCHAR(50)
);
