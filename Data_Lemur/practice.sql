Which item was purchased first by the customer after they became a member?
-- tables, menu, member, sales

SELECT fs*,
FROM 
(
	SELECT  m.customer_id, s.product_id
FROM sales as s
JOIN members as m
ON s.customer_id = m.customer_id
WHERE s.order_date >= m.join_date
GROUP BY m.customer_id, s.product_id
) AS fs
INNER JOIN menu
ON fs.product_id = menu.product_id

SELECT * FROM
(SELECT *, RANK () OVER (
	PARTITION BY dbe.customer_id
	ORDER BY dbe.order_count DESC) AS product_rank
FROM (
	SELECT sales.customer_id, COUNT(sales.product_id) AS order_count, menu.product_name
FROM sales
INNER JOIN menu
ON sales.product_id = menu.product_id
GROUP BY menu.product_name, sales.customer_id) dbe) AS OP
WHERE op.product_rank = 1

-- new solution

-- join 3 table & ordered after joining

SELECT *, RANK() OVER (
    PARTITION by all_data.customer_id
    ORDER BY all_data.order_date
) AS rank
FROM 
(
    SELECT  m.customer_id , mn.product_name, s.order_date, m.join_date
    FROM sales as s
    JOIN members as m
    ON s.customer_id = m.customer_id
    JOIN menu as mn
    ON s.product_id = mn.product_id
    WHERE s.order_date >= m.join_date
) all_data