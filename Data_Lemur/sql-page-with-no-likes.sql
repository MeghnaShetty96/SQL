-- https://datalemur.com/questions/sql-page-with-no-likes
SELECT p.page_id
FROM pages AS p
LEFT JOIN page_likes AS b
ON p.page_id = b.page_id
WHERE b.liked_date is NULL
ORDER BY p.page_id