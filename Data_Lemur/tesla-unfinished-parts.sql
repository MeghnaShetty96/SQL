-- https://datalemur.com/questions/tesla-unfinished-parts

SELECT DISTINCT part FROM parts_assembly
WHERE finish_date is NULL AND assembly_step > 1 ;