select count(assistance_requests) as total_assistances, teachers.name 
from teachers join assistance_requests on teachers.id = teacher_id
group by teachers.name 
having teachers.name = 'Waylon Boehm';