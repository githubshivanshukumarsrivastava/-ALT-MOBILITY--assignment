DROP TABLE IF EXISTS customer_orders;

CREATE TABLE customer_orders (
    order_id UUID PRIMARY KEY,
    customer_id INT,
    order_amount NUMERIC(10,2),
    order_status VARCHAR(50),
    shipping_address TEXT,
    order_date DATE
);
