--https://datalemur.com/questions/uncategorized-calls-percentage

SELECT ROUND((SELECT COUNT(case_id) 
        FROM callers 
        WHERE call_category = 'n/a' OR 
        call_category IS NULL 
        OR call_category = '')*100.0/COUNT(*), 1)
   FROM callers

