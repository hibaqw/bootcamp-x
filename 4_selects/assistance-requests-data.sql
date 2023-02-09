select teachers.name as teacher, students.name as student, assignments.name as assignment, (assistance_requests.completed_at - assistance_requests.started_at) as duration 
from assistance_requests join teachers on teachers.id = teacher_id 
join students on students.id = student_id
join assignments on assignments.id =  assignment_id
order by duration;