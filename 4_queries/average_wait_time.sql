-- select avg(started_at - created_at) from assistance_requests
-- group by cohort;

SELECT avg(started_at-created_at) as average_wait_time
FROM assistance_requests;