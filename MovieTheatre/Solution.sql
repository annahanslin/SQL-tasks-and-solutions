WITH sales_time AS 
(	SELECT 
		show_id
		, m_name
		, start_time
		,ISNULL(LAG(DATEADD ( minute , -9 , start_time)) OVER (ORDER BY start_time), '00:00') AS ticket_sales_starts
		,DATEADD ( minute , -10 , start_time) AS ticket_sales_ends
	FROM t_showtimes 
)
SELECT s.show_id , COUNT(v.visitor_id) AS visitors_cnt 
FROM sales_time s
	JOIN t_visitors v
	ON v.came_at >= ticket_sales_starts
	AND v.came_at <= ticket_sales_ends
GROUP BY  s.show_id
ORDER BY  s.show_id

 



