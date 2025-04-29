DROP TABLE IF EXISTS payments;

CREATE TABLE payments (
    payment_id UUID PRIMARY KEY,
    order_id UUID,
    payment_amount NUMERIC(10,2),
    payment_method VARCHAR(50),
    payment_status VARCHAR(50),
    payment_date DATE
);
