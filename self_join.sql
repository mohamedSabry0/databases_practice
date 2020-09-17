select count(id)
from stops;

select id
from stops
where name = 'Craiglockhart';

select id, name
from route
join stops
on id = stop
where num = '4' and company = 'LRT';

SELECT company, num, COUNT(*)
FROM route WHERE stop=149 OR stop=53
GROUP BY company, num
having count(*) = 2;

SELECT a.company, a.num, a.stop, b.stop
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
WHERE a.stop=53 and b.stop = 149;

SELECT a.company, a.num, stopa.name, stopb.name
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' and stopb.name = 'London Road';

SELECT distinct a.company, a.num
FROM route a JOIN route b ON
  (a.num=b.num)
WHERE a.stop=115 and b.stop = 137;

SELECT a.company, a.num
FROM route a JOIN route b ON
  (a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' and stopb.name = 'Tollcross';

SELECT stopb.name, a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' and a.company = 'LRT';

SELECT a.num, a.company, stopc.name, c.num, c.company
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)

join route c
on (b.stop = c.stop and stopa.name='Craiglockhart')
join route d on
(c.company=d.company AND c.num=d.num)
JOIN stops stopc ON (c.stop=stopc.id)
  JOIN stops stopd ON (d.stop=stopd.id)
where stopd.name = 'Lochend'
order by a.num, a.company, stopc.name, c.num, c.company;
