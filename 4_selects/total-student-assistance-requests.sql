select count(assistance_requests) as total_assistances, students.name 
from students join assistance_requests on students.id = student_id
group by students.name 
having students.name = 'Elliot Dickinson';