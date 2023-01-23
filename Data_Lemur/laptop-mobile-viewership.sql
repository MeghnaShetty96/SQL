-- https://datalemur.com/questions/laptop-mobile-viewership

SELECT COUNT(device_type) AS laptop_views,
(SELECT COUNT(device_type) AS mobile_views FROM viewership WHERE device_type IN('phone','tablet'))
FROM viewership
WHERE device_type = 'laptop'