-- 1. Display the names of all companies that did not place an order between 15.11.1996 and 18.02.1997

-- Solution 1: Using LEFT JOIN
SELECT c.customer_name FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id AND o.order_date BETWEEN '1996-11-15' AND '1997-02-18'
WHERE o.order_id is null;

-- Solution 2: Using NOT IN
SELECT customer_name
FROM customers
WHERE customer_id NOT IN (
SELECT customer_id
FROM orders
WHERE order_date BETWEEN '1996-11-15'::DATE AND '1997-02-18'::DATE
);

-- 2. Display the names of companies located in Mexico D.F.
SELECT customer_name, city
FROM customers
WHERE city = 'Mexico D.F.';

-- 3. Display only those orders that were placed between 12.12.1996 and 18.02.1997.

SELECT order_id, order_date
FROM orders
WHERE order_date BETWEEN '1996-12-12'::DATE AND '1997-02-18'::DATE;

-- 4. Display only those customers whose company names start with ‘An’.
SELECT customer_name
FROM customers
WHERE customer_name LIKE 'An%';

-- 5. Retrieve the names of companies along with the details of orders they placed where the quantity ordered exceeds 100. Utilize table joins.
SELECT c.customer_name, o.order_id, od.quantity
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
WHERE od.quantity > 100;

-- 6. Display the following columns: customer name, quantity ordered. Sort the results by customers in descending order.
SELECT c.customer_name, od.quantity
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
ORDER BY c.customer_name DESC;

-- 7. Display the following columns: customer name, order date. Display the results in such a way that all customers from table 'customers' are shown in the results. 
SELECT c.customer_name, o.order_date
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;
