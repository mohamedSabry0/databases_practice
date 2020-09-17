SELECT name, case when dept = 1 or dept = 2 then 'Sci'
Else 'Art' end cat
 from teacher;

SELECT teacher.name, dept.name
 FROM teacher INNER JOIN dept
           ON (teacher.dept=dept.id);

select teacher.name, dept.name
from teacher left join dept
on (teacher.dept = dept.id);

select teacher.name, dept.name
from teacher right join dept
on (teacher.dept = dept.id);

select name, coalesce(mobile, '07986 444 2266')
from teacher;

select teacher.name, coalesce(dept.name, 'None')
from teacher left join dept
on (teacher.dept = dept.id);

select count(name), count(mobile)
from teacher;

select dept.name, count(teacher.name)
from teacher right join dept
on (teacher.dept = dept.id)
group by dept.name;

SELECT name, case when dept = 1 or dept = 2 then 'Sci'
Else 'Art' end cat
 from teacher;

SELECT name, case when dept = 1 or dept = 2 then 'Sci'
when dept = 3 then 'Art'
Else 'None' end
 from teacher;
