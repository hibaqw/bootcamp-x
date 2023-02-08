select name, id, cohort_id
from students
where email NOT LIKE '%gmail%' 
AND phone IS NULL;