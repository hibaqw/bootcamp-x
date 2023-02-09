select avg(total_assistance_request_duration) as average_total_duration
from (select sum(assistance_requests.completed_at - assistance_requests.started_at) as total_assistance_request_duration
from assistance_requests join students on students.id = student_id join cohorts on cohorts.id = cohort_id 
group by cohorts.name
order by  total_assistance_request_duration) as average_total_duration;