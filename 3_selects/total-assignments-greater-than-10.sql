select assignments.day, count(*) as total_assignments 
from assignments group by assignments.day 
having count(*) >= 10 
order by day;