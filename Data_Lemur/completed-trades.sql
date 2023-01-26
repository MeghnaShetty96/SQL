--https://datalemur.com/questions/completed-trades

SELECT COUNT(status) AS total_orders, u.city
FROM trades as T
INNER JOIN users as u     
ON T.user_id = u.user_id
WHERE T.status = 'Completed'
GROUP BY u.city
ORDER BY COUNT(status) DESC
LIMIT 3