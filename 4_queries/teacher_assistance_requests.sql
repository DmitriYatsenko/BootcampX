-- select name, count(assistance_requests(*))
-- from teachers join assistance_requests
-- on teachers.id = assistance_requests.teacher_id

SELECT count(assistance_requests.*) as total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;