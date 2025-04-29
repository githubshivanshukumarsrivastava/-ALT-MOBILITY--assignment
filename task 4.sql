SELECT
    co.order_id,
    co.customer_id,
    co.order_date,
    co.order_amount,
    co.order_status,
    p.payment_id,
    p.payment_date,
    p.payment_amount,
    p.payment_status,
    p.payment_method
FROM 
    customer_orders co
LEFT JOIN 
    payments p ON co.order_id = p.order_id
ORDER BY 
    co.order_date;





	SELECT 
    order_id, customer_id, order_amount, order_status
FROM 
    customer_orders
WHERE 
    order_id NOT IN (SELECT order_id FROM payments);

