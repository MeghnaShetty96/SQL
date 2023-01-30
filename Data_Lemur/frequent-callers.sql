--https://datalemur.com/questions/frequent-callers

SELECT COUNT(policy_holder_id) OVER() AS member_count
FROM callers
GROUP BY policy_holder_id
HAVING COUNT(case_id) >= 3
LIMIT 1