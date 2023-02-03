select cohorts.name, count(assignment_submissions.id) as total_submissions 
from cohorts 
join students on cohorts.id = cohort_id 
join assignment_submissions on students.id = student_id 
group by cohorts.name 
order by total_submissions desc;

