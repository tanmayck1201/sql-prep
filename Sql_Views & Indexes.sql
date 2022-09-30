/*Views & Indexes*/
USE hr;

select * from employees;

-- Views
create view emp_v1 as 
select first_name, salary, manager_id from employees 
where employee_id between 101 and 125;

select * from emp_v1;

drop view emp_v1;

-- Indexes
create index ids_emps on employees(first_name);

drop index idx_emps on employees;

