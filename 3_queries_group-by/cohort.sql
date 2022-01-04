-- select cohort_name, student_count
-- from assignments
-- group by cohort_name
-- having student_count >= 18
-- order by student_count;

SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name 
HAVING count(students.*) >= 18
ORDER BY student_count;