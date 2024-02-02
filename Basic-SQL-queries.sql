/*Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.*/

select * from city where countrycode = 'USA' and population > 100000;

/*Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.*/

select name from city where countrycode = 'USA' and population > 120000;

/*Query all columns (attributes) for every row in the CITY table.*/

select * from city;

/*Query all columns for a city in CITY with the ID 1661.*/

select * from city where id = 1661;

/*Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.*/

select * from city where countrycode = 'JPN';

/*Query a list of CITY and STATE from the STATION table.*/

select city, state from station;
