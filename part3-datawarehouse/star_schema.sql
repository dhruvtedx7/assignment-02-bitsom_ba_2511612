-- =========================
-- DIMENSION TABLES
-- =========================

-- dim_date
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE NOT NULL,
    month INT NOT NULL,
    year INT NOT NULL
);

-- dim_store
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

-- dim_product
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL
);


-- =========================
-- FACT TABLE
-- =========================

CREATE TABLE fact_sales (
    sales_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    quantity INT NOT NULL,
    sales_amount INT NOT NULL,

    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);


-- =========================
-- INSERT CLEANED DATA
-- =========================

-- dim_date (cleaned format)
INSERT INTO dim_date VALUES
(1, '2023-01-01', 1, 2023),
(2, '2023-02-01', 2, 2023),
(3, '2023-03-01', 3, 2023),
(4, '2023-04-01', 4, 2023),
(5, '2023-05-01', 5, 2023);

-- dim_store (fixed casing)
INSERT INTO dim_store VALUES
(1, 'Store A', 'Mumbai'),
(2, 'Store B', 'Delhi'),
(3, 'Store C', 'Bangalore');

-- dim_product (standardized category names)
INSERT INTO dim_product VALUES
(1, 'Laptop', 'Electronics'),
(2, 'T-Shirt', 'Clothing'),
(3, 'Milk', 'Groceries');


-- fact_sales (at least 10 rows)
INSERT INTO fact_sales VALUES
(1, 1, 1, 1, 2, 120000),
(2, 2, 2, 2, 5, 5000),
(3, 3, 3, 3, 10, 600),
(4, 4, 1, 2, 3, 3000),
(5, 5, 2, 1, 1, 60000),
(6, 1, 3, 3, 8, 480),
(7, 2, 1, 1, 2, 120000),
(8, 3, 2, 2, 6, 6000),
(9, 4, 3, 3, 7, 420),
(10, 5, 1, 2, 4, 4000);
