/*
result:
customer_id = 1
*/


DELETE FROM t_orders ;

INSERT INTO  t_orders (order_id , customer_id, order_dt , order_amount)
VALUES(1, 1, CAST('2023-01-01' AS DATE), 100);

INSERT INTO  t_orders (order_id , customer_id, order_dt , order_amount)
VALUES(2, 1, CAST('2023-02-01' AS DATE), 100);

INSERT INTO  t_orders (order_id , customer_id, order_dt , order_amount)
VALUES(3, 1, CAST('2023-03-01' AS DATE), 150);

-- customer_id = 2: 2 orders  + 1 
INSERT INTO  t_orders (order_id , customer_id, order_dt , order_amount)
VALUES(4, 2, CAST('2023-01-01' AS DATE), 150);

INSERT INTO  t_orders (order_id , customer_id, order_dt , order_amount)
VALUES(5, 2, CAST('2023-02-01' AS DATE), 120);

INSERT INTO  t_orders (order_id , customer_id, order_dt , order_amount)
VALUES(6, 2, CAST('2023-04-30' AS DATE), 120);

-- send to customer 1 and do not send to customer 2

