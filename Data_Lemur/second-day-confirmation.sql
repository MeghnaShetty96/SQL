--https://datalemur.com/questions/second-day-confirmation

SELECT e.user_id
FROM emails as e
INNER JOIN texts as T
ON e.email_id = T.email_id
WHERE T.signup_action = 'Confirmed' AND
EXTRACT(day FROM T.action_date) - EXTRACT(day FROM e.signup_date) = 1