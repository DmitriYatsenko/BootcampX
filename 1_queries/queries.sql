select id, name
from students
where cohort_id = 1
order by name;
-- ///////////////////
SELECT count(*)
FROM students 
WHERE cohort_id <= 3;
-- ///////////////////
SELECT name, id, cohort_id
FROM students
WHERE email IS NULL
OR phone IS NULL;
-- ///////////////////
SELECT name, email, id, cohort_id
FROM students
WHERE email not like '%@gmail.com'
AND phone is NULL;
-- ///////////////////
select name, id, cohort_id
from students
where end_date is null
order by cohort_id;
-- ///////////////////
SELECT name, email, phone
FROM students
WHERE github IS NULL
AND end_date IS NOT NULL;
-- ///////////////////
