SELECT 
    customer_id,
    COUNT(*) AS total_orders
FROM 
    customer_orders
GROUP BY 
    customer_id
HAVING 
    COUNT(*) > 1
ORDER BY 
    total_orders DESC;



SELECT 
    COUNT(DISTINCT customer_id) AS unique_customers
FROM 
    customer_orders;




	SELECT 
    DATE_TRUNC('month', order_date) AS month,
    COUNT(DISTINCT customer_id) AS active_customers
FROM 
    customer_orders
GROUP BY 
    month
ORDER BY 
    month;




	SELECT 
    customer_id,
    COUNT(*) AS total_orders,
    SUM(order_amount) AS total_spent
FROM 
    customer_orders
GROUP BY 
    customer_id
ORDER BY 
    total_orders DESC
LIMIT 5;


