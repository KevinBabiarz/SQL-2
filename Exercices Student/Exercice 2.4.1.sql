--2.4.1
-- oui, d 'une certaine maniere

--2.4.2
--FAux, apres

--2.4.3
--

--2.4.4
--Faux, le classement croissement peut etre fait par un order by. le group by regroupe les elements en fonction d une certaine condition

--2.4.5
--Vrai

--2.4.6
select section_id, count(last_name)
from student
group by section_id

select section_id, AVG(year_result)
from student
group by section_id

select section_id, avg(year_result)
from student
where year_result > 10
group by section_id

--2.4.7
select section_id, max(year_result) as "Résultat maximum"
from student
group by section_id

--2.4.8
select section_id, avg(convert(float, year_result)) as "Moyenne"
from student
where section_id like '10%'
group by section_id 

--2.4.9
select month(birth_date) as "Mois de naissance", avg(year_result) as "Moyenne"
from student
where year(birth_date) between 1970 and 1985
group by month(birth_date)

--2.4.10
select section_id, avg(convert(float, year_result)) as "Moyenne"
from student
group by section_id
having count(*)>3

--2.4.11
select section_id, avg(year_result) as "Moyenne", max(year_result) as "MAx"
from student
group by section_id
having avg(year_result)>8


--JOINTURES


--2.6.1
select c.course_name, s.section_name, p.professor_name
from section s join professor p
on s.section_id = p.section_id
join course c 
on p.professor_id = c.professor_id
order by p.professor_id


--2.6.2
select s.section_id, s.section_name, e.last_name
from section s join student e
on e.student_id = s.delegate_id
order by s.section_id desc

--2.6.3
select s.section_id, s.section_name, p.professor_name
from section s left join professor p
on s.section_id = p.section_id

--2.6.4
select s.section_id, s.section_name, p.professor_name
from section s join professor p
on s.section_id = p.section_id

--2.6.5
select e.last_name, e.year_result, g.grade
from student e join grade g
on e.year_result between g.lower_bound and g.upper_bound
where e.year_result >=12
order by g.grade asc

--2.6.6

select p.professor_name, s.section_name, c.course_name, c.course_ects
from professor p left join section s
on s.section_id = p.section_id
left join course c
on c.professor_id = p.professor_id
order by course_ects desc

--2.6.7

select p.professor_id, sum(c.course_ects) as ects_tot
from professor p left join course c
on p.professor_id = c.professor_id
group by p.professor_id
order by sum(course_ects) desc

--2.6.8

select first_name as 'Prenom', last_name as 'Nom', 'S' as 'Catégorie'
from student
where len(last_name) > 8
union
select professor_surname, professor_name, 'p'
from professor
where len(professor_name) > 8

--2.6.9

select s.section_id
from section s
except 
select p.section_id
from professor p

