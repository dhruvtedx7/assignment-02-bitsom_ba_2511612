CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    -- assuming minimal dataset, only ID available
    -- additional attributes can be added if dataset had more info
    created_at DATE
);

-- Orders Table
CREATE TABLE orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10) NOT NULL,
    order_date DATE NOT NULL,
    status VARCHAR(20) NOT NULL,
    total_amount INT NOT NULL,
    num_items INT NOT NULL,
    
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- INSERT SAMPLE DATA (at least 5 rows)

-- Customers
INSERT INTO customers VALUES 
('CUST028', '2023-01-01'),
('CUST032', '2023-01-01'),
('CUST037', '2023-01-01'),
('CUST003', '2023-01-01'),
('CUST012', '2023-01-01');

-- Orders
INSERT INTO orders VALUES
('ORD2001', 'CUST028', '2023-05-20', 'delivered', 2397, 1),
('ORD2002', 'CUST032', '2023-08-22', 'delivered', 6197, 3),
('ORD2003', 'CUST037', '2023-12-12', 'delivered', 9897, 1),
('ORD2004', 'CUST003', '2023-01-07', 'shipped', 5596, 2),
('ORD2005', 'CUST012', '2023-01-19', 'processing', 15792, 4);
