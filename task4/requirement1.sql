SELECT students.name, students.class, students.phone FROM students
LEFT JOIN sportgroups 
ON students.id = sportgroups.sport_id
INNER JOIN sports
ON sportgroups.id 
in (SELECT id From sports 
WHERE name = 'football');
