SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia');

SELECT name FROM world
  WHERE continent = 'Europe'
AND gdp/population >
     (SELECT gdp/population FROM world
      WHERE name= 'United Kingdom');

select name, continent
from world
where continent IN (select continent from world where name IN ('Argentina', 'Australia'))
order by name;

select name, population
from world
where population >(select population from world where name = 'Canada')
AND population < (select population from world where name = 'Poland');

select name, concat(round(population/(select population from world where name = 'Germany')*100), '%') AS percentage
from world
where continent = 'Europe';

select name
from world
where gdp > all(select gdp
from world where continent = 'Europe' AND gdp > 0);

SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent);

SELECT continent, name FROM world x
  WHERE name <= ALL
    (SELECT name FROM world y
        WHERE y.continent=x.continent);

select name, continent, population
from world x
where 25000000 > all(SELECT population FROM world y
        WHERE y.continent=x.continent and population > 0);

select name, continent
from world x
where population >= all(select population*3 from world y 
      where y.continent = x.continent and population > 0 and x.population != y.population);
