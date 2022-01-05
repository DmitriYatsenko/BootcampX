-- select cohort.name as cohort, sum(started_at - created_at) as total_duration
-- from assistance_requests
-- join students on student_id = students.id
-- join cohorts on student.cohort_id = cohorts.id
-- order by total_duration;

SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts on cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration;