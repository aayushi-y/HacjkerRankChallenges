/*Query the difference between the maximum and minimum populations in CITY.*/

with temp as(select max(population) as maximum, min(population) as minimum from city)
select maximum-minimum as difference from temp;
  
