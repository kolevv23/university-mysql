SELECT COUNT(students.id)
 FROM students 
 LEFT JOIN sportgroups
 ON sportgroups.id = students.id
