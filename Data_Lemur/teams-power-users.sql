--https://datalemur.com/questions/teams-power-users

SELECT sender_id, count(*) as message_count
from messages
where sent_date between '08/01/2022 00:00:00' AND '09/01/2022 00:00:00'
group by sender_id
order by message_count desc
limit 2