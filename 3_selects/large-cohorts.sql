select cohorts.name as cohort_name, count(students.id) as student_count
from cohorts join students on cohorts.id = cohort_id
group by cohorts.name 
having count(students.id) >= 18 order by count(students.id) asc;