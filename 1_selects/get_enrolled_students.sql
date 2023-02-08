select name, id, cohort_id
from students
where end_date is null
order by cohort_id;