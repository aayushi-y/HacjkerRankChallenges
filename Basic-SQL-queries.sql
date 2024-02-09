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

/* Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.*/

select name from city where countrycode = "JPN";

/*Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.*/

select distinct city from station where id%2 = 0

/*Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.*/

select count(city) - count(distinct(city)) from station;

/*Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.*/

select distinct city from station where substring(city, 1, 1) = 'a' or
substring(city, 1, 1) = 'e' or substring(city, 1, 1) = 'i' or substring(city, 1, 1) = 'o'or substring(city, 1, 1) = 'u';

/*Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.*/

select distinct city from station where substring(city, length(city), 1) = 'a' or
substring(city, length(city), 1) = 'e' or substring(city, length(city), 1) = 'i' or substring(city, length(city), 1) = 'o'or substring(city, length(city), 1) = 'u';

/*Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.*/

with temp1 as (select city from station where substring(city, 1,1) = 'a' or substring(city, 1,1) = 'e' or substring(city, 1,1) = 'i' or substring(city, 1,1) = 'o' or substring(city, 1,1) = 'u'),
temp2 as (select city from station where substring(city, length(city),1) = 'a' or substring(city,length(city),1) = 'e' or substring(city,length(city),1) = 'i' or substring(city,length(city),1) = 'o'
or substring(city,length(city),1) = 'u')
select temp1.city from temp1 inner join temp2 on temp1.city = temp2.city;
