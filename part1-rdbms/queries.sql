-- Q1: List all customers along with their total order value
SELECT customer_id, SUM(total_amount) AS total_order_value
FROM orders
GROUP BY customer_id;


-- Q2: Find the top 3 customers by total order value
SELECT customer_id, SUM(total_amount) AS total_order_value
FROM orders
GROUP BY customer_id
ORDER BY total_order_value DESC
LIMIT 3;


-- Q3: List all customers and the number of orders they have placed
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id;


-- Q4: Find all orders where the total value exceeds 10000, sorted by value descending
SELECT *
FROM orders
WHERE total_amount > 10000
ORDER BY total_amount DESC;


-- Q5: Identify customers who have placed no orders
SELECT c.customer_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
