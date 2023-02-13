--2.1.1

select last_name, first_name as [F name]
FROM student					
select last_name lname, first_name as fname
from student
select last_name +' _ '+ first_name as name
from student
select last_name+first_name as name, (year_result*10) as result
from student

--2.1.2

select last_name, birth_date, course_id, year_result
from student

--2.1.3

select last_name+ '_'+first_name as nom_complet, student_id, birth_date
from student

--2.1.4

select concat_ws(' | ', student_id, first_name, last_name, birth_date, section_id, year_result, course_id) as "Info_Etudiant"
from student

--2.2.1

select login, year_result
from student
where year_result >16

--2.2.2

select last_name, section_id
from student
where first_name = 'Georges'

--2.2.3

select last_name, year_result
from student
where year_result between 12 and 16

--2.2.4

select last_name, section_id, year_result
from student
where section_id not in ('1010','1020','1110')

--2.2.5

select last_name, section_id
from student
where last_name like '%r'

--2.2.6

select last_name, year_result
from student
where last_name like '__n%'
and year_result > 10

--2.2.7

select last_name, year_result
from student
where year_result <= 3
order by year_result desc

--2.2.8

select concat_ws(' ',last_name, first_name) as 'Nom complet'
from student
where section_id like '1010'
order by year_result asc

--2.2.9
select last_name,section_id,year_result 
from student
where section_id in(1010,1020) and (year_result < 12 or year_result >18)
order by section_id 

--2.2.10
select last_name,section_id,year_result *5 as 'Résultat sur 100'
from student
where section_id like '13%' and year_result*5 <= 60
order by year_result*10 desc

--2.3.1

-- Car elles renvoient un nombre

--2.3.2

-- Car elle renvoie les nombre total de données contenues dans la table -> INTEGER

--2.3.3

-- Faux, ce sont le valeurs contenues dans une colonne

--2.3.4

-- Vrai

--2.3.5

-- Compte toutes les colonnes ( donc toutes les lignes aussi)

--2.3.6

select count(*)
from student

select count(student_id), login
from student
group by login

select min(year_result), max(birth_date)
from student
where year_result > 12

--2.3.7

select avg(year_result)
from student

--2.3.8

select max(year_result)
from student

--2.3.9

select sum(year_result)
from student

--2.3.10

select min(year_result)
from student

--2.3.11

select count(student_id)
from student

--2.3.12

select login, datepart(YEAR,birth_date)
from student
where datepart(YEAR,birth_date) > 1970

--2.3.13

select login, last_name
from student
where len(last_name)>=8

--2.3.14

select upper(last_name) as 'Nom de famille', first_name, year_result
from student
where year_result >=16
order by year_result desc

--2.3.15

select first_name, last_name, login, substring(lower(first_name), 1,2)+substring(lower(last_name), 1,4) as 'Nouveau login'
from student
where year_result >=6 and year_result<=10

--2.3.16

select first_name, last_name, login, substring(first_name, len(first_name)-2,3)+convert(varchar,(year(sysdatetime())-year(birth_date))) as 'Nouveau login'
from student
where year_result in(10, 12, 14)

--2.3.17

select last_name, login, year_result
from student
where last_name like'D%' or last_name like 'M%' or last_name like 'S%'
-- where left(last_name, 1) in ('M', 'D', 'S')









