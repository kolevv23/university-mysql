DELIMITER |
DROP PROCEDURE IF EXISTS Average_Payment;
CREATE PROCEDURE Average_Payment(IN nameParam VARCHAR(255), yearParam INT)
BEGIN
	IF( (SELECT AVG(paymentAmount) AS average_Payment
		FROM taxespayments
        INNER JOIN students 
                           ON students.id= taxespayments.student_id
		WHERE students.name = nameParam
		AND year = yearParam) IS NOT NULL)
    THEN
		(SELECT AVG(paymentAmount) AS averagePayment
		FROM taxespayments
        INNER JOIN students 
						   ON students.id= taxespayments.student_id
		WHERE students.name = nameParam
		AND year = yearParam) ;
    END IF;
    
END
| DELIMITER ;
CALL Average_Payment('Ivan Iliev Iliev', 2015);
