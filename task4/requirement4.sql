SELECT paymentAmount
FROM taxespayments
ORDER BY taxespayments.month
WHERE paymentAmount > 700
INNER JOIN sportGroups 
ON coach_id
IN (SELECT id
FROM coaches 
WHERE egn ='7509041245');
