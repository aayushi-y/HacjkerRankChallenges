/* 
Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a 
parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).

Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following 
format: There are a total of [occupation_count] [occupation]s. where [occupation_count] is the number of occurrences of an occupation in 
OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be 
ordered alphabetically.

Note: There will be at least two entries in the table for each type of occupation.

*/

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
