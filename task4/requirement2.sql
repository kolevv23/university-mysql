SELECT coaches.name 
FROM coaches 
LEFT JOIN sportgroups 
ON coach_id = sportgroups.sport_id
INNER JOIN sports 
ON sportgroups.id
IN (SELECT id
FROM sports 
WHERE name = 'volleyball');
