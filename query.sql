select CONCAT(name,'(', SUBSTR(occupation,1,1), ')') AS output
FROM occupations ORDER BY name;
SELECT CONCAT('There are a total of ', count(*), 
    CASE WHEN occupation = "Doctor" THEN " doctors."
         WHEN occupation = "Actor" THEN " actors."
         WHEN occupation = 'Professor' THEN ' professors.'
         WHEN occupation = 'Singer' THEN ' singers.'     
    END)
        FROM occupations 
        GROUP BY occupation
        ORDER BY count(*), occupation ASC;
