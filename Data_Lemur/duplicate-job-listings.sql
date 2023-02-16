--https://datalemur.com/questions/duplicate-job-listings

SELECT COUNT(*)
FROM
(SELECT COUNT(company_id)
FROM job_listings
GROUP BY company_id, title, description
HAVING COUNT(company_id)>1) as co_w_duplicate_jobs
