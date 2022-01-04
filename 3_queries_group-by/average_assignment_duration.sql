-- SELECT student.name as student, sum(assignment_submissions.duration)/count(assignment_submissions.*) as average_assignment_duration
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- GROUP BY student.name
-- ORDER BY average_assignment_duration DESC;

SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;