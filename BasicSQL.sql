----Whole Dataset
SELECT * 
FROM populations;

----Population of a certain country
SELECT Country_Name, Population
FROM populations
WHERE Year = 2023 AND Country_Name = 'Nepal';

----Maximum population by country
SELECT Country_Name, MAX(Population) as MaximumPop
FROM populations
GROUP BY Country_Name;

----Population by country and year
SELECT Country_Name, Population
FROM populations
WHERE Year = 2023;

----TOP 10 Highest population on 2023
SELECT TOP 10 Country_Name, Population
FROM populations
WHERE Year = 2023
ORDER BY Population DESC;

----Lowest population on certain year
SELECT TOP 10 Country_Name, Population 
FROM populations
WHERE Year = 2020
ORDER BY Population;

----Average population among countries Between 2 years
SELECT Country_Name, AVG(Population) as AvgPopulation
FROM populations
WHERE Year BETWEEN 2001 AND 2020
GROUP BY Country_Name;

----Population greater than or less than
SELECT Country_Name, Population
FROM populations
WHERE Population < 20000 AND Year = 2023;

----Year with the highest global population
SELECT TOP 1 Year, SUM(Population) AS global_population 
FROM populations 
GROUP BY Year 
ORDER BY global_population DESC;

----Total population of all countries in 2000
SELECT SUM(Population) AS total_population 
FROM populations 
WHERE year = 2000;
