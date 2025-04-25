USE EMPLOYEES;
SELECT*FROM EMPLOYEES
WHERE birth_date>='1955-01-01' AND gender="M";



SELECT*FROM EMPLOYEES
WHERE gender="M" AND hire_date>='2000-01-01';

SELECT*FROM EMPLOYEES
WHERE gender="f" AND hire_date>='2000-01-01';

SELECT*FROM EMPLOYEES
WHERE gender="M" OR hire_date>='2000-01-01';

SELECT*FROM EMPLOYEES
WHERE FIRST_NAME IN("VIDYA","PARTO","GEORGI");


SELECT*FROM EMPLOYEES
WHERE gender="M" and hire_date IN ("1986-08-28","1992-12-27");

SELECT*FROM EMPLOYEES
WHERE first_name like "_a%";  #second charcter will be 'a'

SELECT*FROM EMPLOYEES
WHERE first_name like "__a";  #three charcter words ending with "a"

SELECT*FROM EMPLOYEES
WHERE first_name like "GE%";  #starting with "GI"

SELECT*FROM EMPLOYEES
WHERE first_name between "ge%" AND "%GY";

SELECT*FROM EMPLOYEES
WHERE hire_date between "1985-01-01" AND "2000-01-01";


SELECT*FROM EMPLOYEES
WHERE gender is not null;

SELECT*FROM EMPLOYEES
WHERE gender is null;

SELECT DISTINCT gender 
FROM employees;

SELECT DISTINCT gender,hire_date 
FROM employees;

SELECT DISTINCT gender,hire_date 
FROM employees
where gender="M";

SELECT 
    COUNT(DISTINCT gender, hire_date)
FROM
    employees
WHERE
    gender = 'M';


SELECT 
    *
FROM
    employees
WHERE
    gender = 'M'
ORDER BY birth_date;


SELECT 
    FIRST_NAME,COUNT(FIRST_NAME) as count
FROM
    EMPLOYEES
GROUP BY FIRST_NAME;



SELECT gender,hire_date,COUNT(GENDER)
FROM employees
GROUP BY GENDER,HIRE_DATE
ORDER BY HIRE_DATE;

SELECT gender,hire_date,COUNT(GENDER)
FROM employees
WHERE GENDER="M"
GROUP BY GENDER,HIRE_DATE
ORDER BY HIRE_DATE;

SELECT emp_no,sum(salary) as sum
from salaries
group by emp_no
having sum>10000;



create table sales(
year int not null,
country varchar(10) not null,
sales decimal(10,2) not null);
insert into sales
values("2020","india","20"),
("2021","india","21"),
("2020","china","19");

select*from sales

create table sales2(
year int not null,
country varchar(10) not null,
sales decimal(10,2) not null);

insert into sales2
values("2021","india","21"),
("2020","china","19"),
("2020","bangladesh","19");

select *from sales2

insert into sales
select*from sales2
where country="bangladesh" ;

CREATE TABLE TEST(
FIRST_NAME VARCHAR(10),
MIDDLE_NAME VARCHAR(10),
LAST_NAME VARCHAR(10));


INSERT INTO TEST
VALUES("PAVAN","K","KALYAN"),
(NULL,"SHIVA","KUMAR"),
("PAVAN",NULL,"KUMAR"),
("MAHESH","BABU",NULL);

SELECT*FROM Test;


SELECT *,CONCAT(FIRST_NAME, " ",MIDDLE_NAME, " ",LAST_NAME) FROM TEST

SELECT *, CONCAT(COALESCE(FIRST_NAME, ''), ' ', COALESCE(MIDDLE_NAME, ''), ' ', COALESCE(LAST_NAME, ''))FROM TEST;
SELECT *, CONCAT(COALESCE(FIRST_NAME, ''), ' ', COALESCE(MIDDLE_NAME, ''), ' ', COALESCE(LAST_NAME, '')) AS FULL_NAME 
FROM TEST;


SELECT CAST(200 AS CHAR)

SELECT CAST('2022-09-23' AS TIME)


SELECT CAST('20:12:23' AS TIME);

set sql_safe_updates=0
USE EMPLOYEES
create table departments2 as select*from departments;
select *from departments2
delete from departments2 where dept_no='d001';


alter table departments2
modify dept_no char(4)

update departments2
set dept_no=null
where dept_no='d002'


create table dept_manager2 as select*from dept_manager
select*from dept_manager2

alter table dept_manager2
modify dept_no char(4)

update dept_manager2
set dept_no=null
where dept_no='d008'

select *from dept_manager2


select *from departments2;
select*from dept_manager2;

select departments2.dept_no,departments2.dept_name,dept_manager2.emp_no
from departments2
inner join dept_manager2 on departments2.dept_no=dept_manager2.dept_no


select a.dept_name,a.dept_no,b.emp_no
from departments2 a
join dept_manager2  b on a.dept_no=b.dept_no
where dept_name="production"
order by dept_name


SELECT 
    a.dept_name, a.dept_no, b.emp_no
FROM
    departments2 a
        LEFT JOIN
    dept_manager2 b ON a.dept_no = b.dept_no
    
    select x.dept_no,x.dept_name,y.emp_no
    from departments2 x
    right join dept_manager2 y on x.dept_no=y.dept_no
    
    
    
    SELECT EMP_NO FROM SALARIES
   
    WHERE SALARY<(SELECT AVG(SALARY)FROM SALARIES); 
    
    
    
    








