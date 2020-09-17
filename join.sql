SELECT matchid, player FROM goal
where teamid = 'GER';

SELECT id,stadium,team1,team2
  FROM game
where id = 1012;

SELECT player, teamid, stadium, mdate
  FROM game JOIN goal ON (id=matchid)
where teamid = 'GER';

SELECT team1, team2, player, teamname
FROM game JOIN goal ON (game.id=matchid)
where player like 'Mario%'
JOIN eteam on (teamid = eteam.id);

SELECT player, teamid, coach, gtime
  FROM goal JOIN eteam on (teamid =id)
 WHERE gtime<=10;

SELECT mdate, teamname
from game join eteam on (team1=eteam.id)
where coach = 'Fernando Santos';

SELECT player
from game join goal on (game.id=matchid)
where stadium = 'National Stadium, Warsaw';

SELECT distinct player
  FROM game JOIN goal ON matchid = id 
    WHERE (team1='GER' OR team2='GER')
and teamid != 'GER';

SELECT teamname, count(gtime) as goals
  FROM eteam JOIN goal ON id=teamid
group by teamname
 ORDER BY teamname;

SELECT stadium, count(gtime) as goals
  FROM game JOIN goal ON id=matchid
group by stadium
 ORDER BY stadium;

SELECT matchid, mdate, count(gtime)
  FROM game JOIN goal ON matchid = id 
 WHERE (team1 = 'POL' OR team2 = 'POL')
group by matchid, mdate;

SELECT matchid, mdate, count(gtime)
  FROM game JOIN goal ON matchid = id 
 WHERE (teamid = 'GER')
group by matchid, mdate;

select mdate, team1, sum(score1) as score1, team2, sum(score2) as score2
from(SELECT matchid, mdate,
  team1,
  CASE WHEN teamid=team1 THEN 1 ELSE 0 END score1,
  team2,
  CASE WHEN teamid=team2 THEN 1 ELSE 0 END score2
  FROM game left JOIN goal ON match;
