SELECT 
    payment_status,
    COUNT(*) AS total_payments
FROM 
    payments
GROUP BY 
    payment_status
ORDER BY 
    total_payments DESC;



SELECT 
    SUM(payment_amount) AS total_successful_payments
FROM 
    payments
WHERE 
    payment_status = 'completed';



SELECT 
    ROUND(100.0 * COUNT(*) FILTER (WHERE payment_status = 'failed') / COUNT(*), 2) AS failed_payment_percentage
FROM 
    payments;



	SELECT 
    payment_method,
    COUNT(*) AS total_transactions
FROM 
    payments
GROUP BY 
    payment_method
ORDER BY 
    total_transactions DESC;

