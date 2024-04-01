create schema sem1_proj;
-- Question A
select * from sem1_proj.Olympics;
-- Question B
select name, count(medal) from sem1_proj.Olympics
group by name; 
-- Question C
select count(distinct(name)) from sem1_proj.Olympics;
-- Question D
select distinct(name) from sem1_proj.Olympics
where medal="Gold";
-- Question E
select name from sem1_proj.Olympics
where medal='Silver'
order by year;
-- Question F
select team,
sum(medal='Gold'),
sum(medal='Silver'),
sum(medal='Bronze')
from sem1_proj.Olympics
group by team;
-- Question G
select team, sum(medal='Gold') from sem1_proj.Olympics
group by team
having um(medal='Gold');
-- Question H
SELECT country, COUNT(medal) AS total_medals
FROM sem1_proj.Olympics
WHERE population > 10000000
GROUP BY country;
-- Question I
select name, count(medal)
from sme1_proj.Olympics
group by name 
order by count(medal) DESC
limit 1;
-- Question J
select event from sem1_proj.Olympics
where event like '%Freestyle%';
-- Question M
select team from sem1_proj.Olympics
group by team
having sum(season='Summer')<>0 and sum(season='Winter')<>0;

-- Question S
select team from sem1_proj.Olympics
group by team
having count(distinct(sport))>10;

-- Question N
SELECT team, MAX(year) - MIN(year) AS year_difference
FROM sem1_proj.Olympics
GROUP BY team
order by team;

-- Question O
SELECT team, count(medal)/count(distinct(name)) AS avg_medals_per_athlete
FROM sem1_proj.Olympics
group by team;

-- Question R
SELECT DISTINCT sem1_proj.Olympics.athlete
FROM medals m
JOIN coaches c ON m.athlete = c.athlete
WHERE c.year > m.year;








