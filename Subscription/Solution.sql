WITH orders AS (
	SELECT 
		order_id
		, customer_id
		, order_dt
		, LAG(order_dt) OVER(PARTITION BY customer_id ORDER BY order_dt) AS prev_order_dt
		, LEAD(order_dt) OVER(PARTITION BY customer_id ORDER BY order_dt) AS next_order_dt
	FROM t_orders
)
SELECT customer_id
FROM orders 
WHERE prev_order_dt IS NOT NULL
	AND next_order_dt IS NOT NULL
	AND DATEDIFF(DD, prev_order_dt, order_dt ) <= 31
	AND DATEDIFF(DD, order_dt, next_order_dt ) <= 31
