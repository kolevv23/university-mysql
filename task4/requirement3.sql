SELECT coaches.name
FROM coaches
UNION
SELECT sports.name 
FROM sports
LEFT JOIN sportgroups
ON sportgroups.student_id = (SELECT id 
FROM students 
WHERE name = 'Iliyan Ivanov');
