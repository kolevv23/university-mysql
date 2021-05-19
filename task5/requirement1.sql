DELIMITER |
CREATE PROCEDURE Coaches_Info ( IN nameParam VARCHAR (50))
BEGIN
SELECT 
students.name, 
students.phone,
sportgroups.location,
sportgroups.dayOfWeek, 
sportgroups.hourOfTraining,
sports.name
    FROM students 
    JOIN student_sport 
                ON students.id = student_sport.student_id 
    JOIN sportgroups
				ON sportgroups.id = student_sport.sportGroup_id
    JOIN sports 
                ON sports.id = sportgroups.sport_id
    JOIN coaches
				ON coaches.id = sportgroups.coach_id;
SET @coachName = nameParam;
END
 | DELIMITER ;
 
CALL Coaches_Info('Ivan Todorov Petkov');
SELECT * from coaches
WHERE name = @coachName;
