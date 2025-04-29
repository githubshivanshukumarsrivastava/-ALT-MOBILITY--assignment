task 1 
---------

1. Order Status Distribution
                    Query: Count of orders by status

 Insight Example:
                    Most orders are in delivered status, showing strong fulfillment.
                    Some orders remain in pending or shipped — room for improving delivery efficiency.
                    Helps prioritize operational improvements in order processing time.

🔹 2. Total Sales (Revenue)
                    Query: SUM(order_amount)

Insight Example:

                    Total revenue generated = ₹[your amount]
                    
                    Indicates healthy sales pipeline from online orders.
                    
                    Can be used to benchmark performance in coming quarters.

🔹 3. Monthly Sales Trend
                    Query: Sales grouped by order_date month

 Insight Example:

                    Peak sales observed in [month with highest value]
                    
                    Dip in sales during [lowest month] suggests seasonal buying behavior.
                    
                    Useful for planning discount campaigns or promotions.

🔹 4. Revenue by Order Status
                    Query: SUM(order_amount) grouped by order_status

 Insight Example:

                      Majority of revenue comes from delivered orders.
                      
                      pending/shipped orders lock capital — improving fulfillment speed can unlock more revenue.





TASK 2
---------
1. Repeat Customers
        Query: Customers with more than one order

Insight Example:

        Found X repeat customers — indicates strong customer retention.
        
        Suggests that users are returning to place more orders — a positive growth signal.


2. Unique Customers
      Query: COUNT(DISTINCT customer_id)

Insight Example:

      The platform served Y unique customers.
      
      A healthy base for segmenting users into loyal vs new categories.



3-Monthly Active Customers
      Query: Customers placing orders per month

 Insight Example:

      Customer activity peaked in [month] — indicates strong marketing or seasonal demand.

      Helps in scheduling future campaigns or offers.


 4. Top 5 Customers by Order Count & Spending
      Query: SUM(order_amount) + COUNT(*) grouped by customer_id

 Insight Example:

      Top 5 customers contributed to a large share of revenue — ideal for VIP rewards or personalized targeting.

TASK 3
----------

 1. Payment Status Distribution
Query: Count by payment_status

Insight Example:
        
        Majority of payments were completed — good transaction success rate.
        
        failed payments were X% — needs investigation (tech issues or card declines).
        
        pending payments may indicate delays in third-party payment confirmations.

🔹 2. Total Revenue from Successful Payments
        Query: SUM(payment_amount) where payment_status = 'completed'
        
         Insight Example:
        
        Total confirmed revenue from successful payments: ₹[amount]

Matches with order revenue — shows healthy payment reconciliation.

🔹 3. Failed Payment Rate
      Query: Failure % of total payments

 Insight Example:

      Failure rate is X% — ideally this should be under 5%.
      
      If it's higher, a technical or user experience issue may be present.

🔹 4. Payment Method Preference
        Query: Count by payment_method

 Insight Example:

        Most used method: PayPal, followed by Credit Card
        
        Insights can be used to optimize checkout flow, reduce friction



TASK 4
---------

1. Combined Order + Payment View
        Query: LEFT JOIN customer_orders + payments

Insight Example:

        Created a unified report showing all orders along with payment status, amount, and method.
        
        Helped identify full customer journey from order → payment.

                      
