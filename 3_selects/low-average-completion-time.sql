select students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
, avg(assignments.duration) as average_estimated_duration
from students join assignment_submissions on students.id = student_id 
join assignments on assignment_id = assignments.id 
where students.end_date is null
group by student
having avg(assignment_submissions.duration) < avg(assignments.duration)
order by average_assignment_duration asc;