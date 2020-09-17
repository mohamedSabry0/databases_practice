SELECT id, title
 FROM movie
 WHERE yr=1962;

select yr
from movie
where title = 'Citizen Kane';

SELECT id, title, yr
from movie
where title like '%Star Trek%'
order by yr;

select id
from actor
where name = 'Glenn Close';

SELECT id
FROM movie
where title = 'Casablanca';

select name
from movie
join casting on movie.id = movieid
join actor on actorid = actor.id
where title = 'Casablanca';

select name
from movie
join casting on movie.id = movieid
join actor on actorid = actor.id
where title = 'Alien';

select title
from actor
join casting on actor.id = actorid
join movie on movieid = movie.id
where name = 'Harrison Ford';

select title
from actor
join casting on actor.id = actorid
join movie on movieid = movie.id
where name = 'Harrison Ford' and ord > 1;

select title, name
from actor
join casting on actor.id = actorid
join movie on movieid = movie.id
where  yr = 1962 and ord = 1;

SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
        JOIN actor   ON actorid=actor.id
WHERE name='Rock Hudson'
GROUP BY yr
HAVING COUNT(title) > 2;

select distinct title, name
from (SELECT movie.id as m_id, title
 FROM casting
join movie on movieid = movie.id
WHERE actorid IN (
  SELECT id FROM actor
  WHERE name='Julie Andrews')) as x
join casting
on m_id = movieid
join actor
on actorid = actor.id
where ord = 1;

SELECT name FROM
  movie JOIN casting ON movie.id=movieid
        JOIN actor   ON actorid=actor.id
WHERE ord= 1
GROUP BY name
HAVING COUNT(title) >= 15;

SELECT title, count(actorid) FROM
  movie JOIN casting ON movie.id=movieid
        JOIN actor   ON actorid=actor.id
WHERE yr= 1978
group by title
order by count(actorid) desc, title;

select name
from (SELECT movie.id as m_id, title
 FROM casting
join movie on movieid = movie.id
WHERE actorid IN (
  SELECT id FROM actor
  WHERE name='Art Garfunkel')) as x
join casting
on m_id = movieid
join actor
on actorid = actor.id
where name != 'Art Garfunkel';


