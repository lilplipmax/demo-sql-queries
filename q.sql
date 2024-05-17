/* 1 */
select (((30*20)/10)+(20*10)) as X

/* 2 */
select street_address 
from locations
where postal_code is not null and postal_code != ''

/* 3 */
select 
first_name as Имя,
last_name as Фамилия,
upper(substring(first_name for 3)||substring(last_name for 2)) as Идентификатор
from employees

/* 4 */
select 
job_id as Должность, 
max(salary) as "Максимальная зарплата",
min(salary) as "Минимальная зарплата",
round(avg(salary), 2) as "Средняя зарплата"
from employees
group by job_id
order by job_id asc
