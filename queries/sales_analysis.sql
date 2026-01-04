CREATE TABLE sales (
    order_id INT,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50),
    product VARCHAR(50),
    brand VARCHAR(50),
    quantity INT,
    price DECIMAL(10 , 2 ),
    status VARCHAR(20),
    order_date DATETIME(6),
    rating VARCHAR(5),
    total_amount DECIMAL(12 , 2 )
);
SELECT 
    COUNT(*) AS total_rows
FROM
    sales;
SELECT 
    *
FROM
    sales
LIMIT 10;

SELECT 
    *
FROM
    sales;   
SELECT 
    customer_name, product, total_amount
FROM
    sales;
SELECT 
    *
FROM
    sales
WHERE
    city = 'Mumbai';
SELECT 
    *
FROM
    sales
WHERE
    total_amount > 5000;
SELECT 
    *
FROM
    sales
ORDER BY total_amount DESC;
SELECT 
    customer_name, SUM(total_amount) AS total_sales
FROM
    sales
GROUP BY customer_name;
SELECT 
    customer_name, SUM(total_amount) AS total_spent
FROM
    sales
GROUP BY customer_name
HAVING SUM(total_amount) > 8000;
SELECT 
    customer_name, SUM(total_amount) AS total_spent
FROM
    sales
GROUP BY customer_name
HAVING SUM(total_amount) > 8000;
SELECT 
    city, COUNT(*) AS total_orders
FROM
    sales
GROUP BY city;
SELECT 
    *
FROM
    sales
WHERE
    rating IN ('PG' , 'G');
SELECT 
    COUNT(*) AS total_orders
FROM
    sales;
    
SELECT 
    *
FROM
    sales
LIMIT 100;
