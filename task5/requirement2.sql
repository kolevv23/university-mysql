DELIMITER |
CREATE PROCEDURE Sports_Info(IN SIParam INT)
BEGIN
	SET @sportID = SIParam;
END
| DELIMITER ;
CALL Sports_Info(1);
SELECT DISTINCT 
 sports.name AS sport,
 students.name AS students_name,
 coaches.name AS coaches_name
    FROM sports 
    JOIN sportgroups
                    ON sportgroups.sport_id = sports.id
    JOIN coaches 
                    ON coaches.id = sportgroups.coach_id
    JOIN student_sport 
                    ON student_sport.sportGroup_id = sportgroups.id
    JOIN students 
                    ON  students.id = student_sport.student_id 
WHERE sports.id = @sportID;
