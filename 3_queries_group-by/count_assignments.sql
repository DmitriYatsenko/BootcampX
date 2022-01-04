-- select count(*) from assignments
-- group by day;

SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
ORDER BY day;