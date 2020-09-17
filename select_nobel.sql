SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950;

SELECT winner
FROM nobel
WHERE yr = 1962
  AND subject = 'Literature';

SELECT yr, subject from nobel
where winner = 'Albert Einstein';

select winner
from nobel
where subject = 'Peace' and yr >= 2000;

select *
from nobel
where subject = 'Literature' and yr between 1980 and 1989;

SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'woodrow Wilson',
                  'Jimmy Carter',
                  'Barack Obama');

select winner
from nobel
where winner like 'John %';


select *
from nobel
where subject = 'Physics' and yr = 1980
or subject = 'Chemistry' and yr = 1984;

select *
FROM nobel
where yr = 1980
and subject NOT IN ('Chemistry', 'Medicine');

select *
from nobel
where subject = 'Medicine' and yr < 1910
or subject = 'Literature' and yr >=2004;

select *
from nobel 
where winner = 'PETER GRÜNBERG';

SELECT *
FROM nobel
WHERE winner = 'EUGENE O''NEILL';


SELECT winner, yr, subject
FROM nobel
WHERE winner Like 'Sir%'
order by yr desc, winner;

SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'), subject,winner;
