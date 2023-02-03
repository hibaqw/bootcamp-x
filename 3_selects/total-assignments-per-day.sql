select assignments.day, count(*) as total_assignments 
from assignments
 group by assignments.day 
 order by day;
