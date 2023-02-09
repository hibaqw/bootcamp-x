select distinct teachers.name as teacher, cohorts.name as cohort, count(assistance_requests.id) total_assistances
from teachers join assistance_requests on teachers.id = teacher_id
join students on students.id = assistance_requests.student_id
join cohorts on cohorts.id = students.cohort_id 
where cohorts.name = 'JUL02' 
group by cohorts.name, teachers.name 
order by teachers.name;