/*SQL Joins*/
USE mydb;
create table tab1(NUMID INT(3));
create table tab2(NUMID INT(3));

insert into tab1 values(10);
insert into tab1 values(11);
insert into tab1 values(12);
insert into tab1 values(14);

insert into tab2 values(11);
insert into tab2 values(12);
insert into tab2 values(13);
insert into tab2 values(15);

select * from tab1;
select * from tab2;

-- inner, left, right join.
select * from tab1 inner join tab2 on tab1.numid = tab2.numid;
select * from tab1 left outer join tab2 on tab1.numid = tab2.numid;
select * from tab1 right outer join tab2 on tab1.numid = tab2.numid;

-- full join not supported in mysql.
select * from tab1 full join tab2 on tab1.numid = tab2.numid;


-- On HR table
USE hr;
select * from employees;
select * from departments;

-- Inner join
select *, employees.department_id as emp_id, departments.department_id as dept_id from employees inner join departments
on
employees.department_id  = departments.department_id;

-- Selecting specific columns for inner join
select first_name, salary, departments.department_id from employees inner join departments
on
employees.department_id  = departments.department_id;

-- Selecting some specific columns for left join
select employee_id, first_name, job_id, departments.department_id, department_name, location_id
from employees left join departments
on
employees.department_id  = departments.department_id;

-- Selecting some specific columns for right join
select employee_id, first_name, job_id, departments.department_id, department_name, location_id
from employees right join departments
on
employees.department_id  = departments.department_id;

-- Self Join
select E.employee_id, M.manager_id, E.first_name from employees E, employees M
where E.employee_id = M.manager_id;


/*Subqueries*/
-- FOLLOWING ARE SINGLE ROW SUB'S. ONLY.
-- Display employees whose salary is less than the of Ellen's salary.
SELECT * FROM EMPLOYEES WHERE SALARY<(SELECT SALARY FROM EMPLOYEES WHERE FIRST_NAME = 'ELLEN');

-- 2ND MAX SALARY FRO EMPLOYEE (EXECUTION ORDER IS RIGHT TO LEFT)
SELECT FIRST_NAME, MAX(SALARY) FROM EMPLOYEES WHERE SALARY<(SELECT MAX(SALARY) FROM EMPLOYEES);
 
-- 3RD MAX SALARY FRO EMPLOYEE (EXECUTION ORDER IS RIGHT TO LEFT)
SELECT FIRST_NAME, MAX(SALARY) FROM EMPLOYEES WHERE SALARY
<(SELECT MAX(SALARY) FROM EMPLOYEES WHERE SALARY
<(SELECT MAX(SALARY) FROM EMPLOYEES));

-- *SINGLE ROW SUBQUERIES(<=, >=, !=)*
-- GET EMPLOYEES WHOSE SALARY ARE GREATER THAN 150 EMPLOYEE_ID'S SALARY.
SELECT FIRST_NAME, SALARY FROM EMPLOYEES WHERE SALARY>(SELECT SALARY FROM EMPLOYEES WHERE EMPLOYEE_ID=150);

-- DISPLAY EMPLOYEES WHO ALL ARE EARNING THE HIGHEST SALARY.
SELECT * FROM EMPLOYEES WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES);

-- *MULTIROW SUBQUERIES (IN, ANY, ALL)*
-- DISPLAY EMPLOYEES WHOSE SALARY IS EQUAL TO SALARY OF ATLEAST ONE EMLOYEE IN DEPARTMENT ID 30.
SELECT FIRST_NAME, SALARY FROM EMPLOYEES WHERE SALARY IN (SELECT SALARY FROM EMPLOYEES WHERE DEPARTMENT_ID=30);

-- DISPLAY EMPLOYEES WHOSE SALARY IS GREATER THAN ATLEAST ONE EMLOYEE IN DEPARTMENT ID 30.
SELECT FIRST_NAME, SALARY FROM EMPLOYEES WHERE SALARY >ANY (SELECT SALARY FROM EMPLOYEES WHERE DEPARTMENT_ID=30);

-- DISPLAY EMPLOYEES WHOSE SALARY IS LESS THAN ATLEAST ONE EMLOYEE IN DEPARTMENT ID 30.
SELECT FIRST_NAME, SALARY FROM EMPLOYEES WHERE SALARY <ANY (SELECT SALARY FROM EMPLOYEES WHERE DEPARTMENT_ID=30);

-- DISPLAY EMPLOYEES WHOSE SALARY IS LESS THAN ALL EMLOYEES IN DEPARTMENT ID 30.
SELECT FIRST_NAME, SALARY FROM EMPLOYEES WHERE SALARY <ALL (SELECT SALARY FROM EMPLOYEES WHERE DEPARTMENT_ID=30);

-- *MORE COMPLEX*
-- QUERY TO GET DEPARTMENT NAME OF THE EMPLOYEE. (VIMP)
SELECT FIRST_NAME, EMPLOYEE_ID, DEPARTMENT_ID,
(SELECT DEPARTMENT_NAME FROM DEPARTMENTS WHERE EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID) DNAME
FROM EMPLOYEES;

-- LIST OUT EMPLOYEES WHO ARE HAVING SALARY LESS THAN THE MAX SALARY 
-- & ALSO HAVING HIRE DATE GREATER THAN THE HIRE DATE OF AN EMPLOYEE WHO IS HAVING MAX SALARY. (VIMP)
SELECT EMPLOYEE_ID, FIRST_NAME, SALARY, HIRE_DATE FROM EMPLOYEES WHERE SALARY
<(SELECT MAX(SALARY) FROM EMPLOYEES) 
AND 
HIRE_DATE > (SELECT HIRE_DATE FROM EMPLOYEES 
WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES));









