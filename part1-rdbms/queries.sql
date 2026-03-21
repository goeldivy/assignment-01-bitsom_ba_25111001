-- Q1: List all customers from Mumbai along with their total order value
SELECT c.name, SUM(od.quantity * od.price) AS total_order_value
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Order_Details od ON o.order_id = od.order_id
WHERE c.city = 'Mumbai'
GROUP BY c.customer_id, c.name;

-- Q2: Find the top 3 products by total quantity sold
SELECT p.product_name, SUM(od.quantity) AS total_quantity
FROM Products p
JOIN Order_Details od ON p.product_id = od.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity DESC
LIMIT 3;

-- Q3: List all sales representatives and the number of unique customers they have handled
SELECT sr.rep_name, COUNT(DISTINCT o.customer_id) AS total_customers
FROM Sales_Representatives sr
JOIN Orders o ON sr.rep_id = o.rep_id
GROUP BY sr.rep_id, sr.rep_name;

-- Q4: Find all orders where the total value exceeds 10,000, sorted by value descending
SELECT o.order_id, SUM(od.quantity * od.price) AS total_value
FROM Orders o
JOIN Order_Details od ON o.order_id = od.order_id
GROUP BY o.order_id
HAVING SUM(od.quantity * od.price) > 10000
ORDER BY total_value DESC;


-- Q5: Identify any products that have never been ordered
SELECT p.product_name
FROM Products p
LEFT JOIN Order_Details od ON p.product_id = od.product_id
WHERE od.product_id IS NULL;
