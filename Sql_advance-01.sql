USE hr;
select * from employees;
/* Group By - grouping results from a table. */
-- Column specified as group by also must be part of select class.
select department_id, sum(salary) from employees group by department_id;

select department_id, avg(salary) from employees group by department_id;

select department_id, max(salary), min(salary) from employees group by department_id;

select job_id, count(*) from employees group by job_id;

-- multiple columns in group by.
select department_id, job_id, sum(salary) from employees group by department_id, job_id;


/* Having - always followd by group by, it specifies the condition.*/
select job_id, count(*) from employees group by job_id having count(*)>15;
select * from employees;
select count(*) from employees;

-- <> - Not equals, (sequence of syntax is imp).
select department_id, sum(salary) from employees where department_id <> 50 group by department_id having sum(salary)>20000;


/* Order By - orders data*/
select * from employees order by salary DESC;
select * from employees order by department_id;


-- *sequence of execution:- SELECT->FROM->WHERE->Group by->Having->Order by.
SELECT DEPARTMENT_ID, SUM(SALARY) FROM EMPLOYEES 
WHERE DEPARTMENT_ID<>100
GROUP BY DEPARTMENT_ID
HAVING SUM(SALARY)>20000
ORDER BY SUM(SALARY) DESC;


/*SET OPERATORS:- UNION(NO DUPLICATES), UNION ALL(WITH DUPLICATES), INTERSECT, MINUS*/

/*TRY AFTERWARDS:-
SELECT * FROM DEPARTMENTS;
SELECT * FROM EMPLOYEES;

SELECT MANAGER_ID FROM EMPLOYEES UNION SELECT MANAGER_ID FROM DEPARTMENTS;
*/

CREATE TABLE A(SNAME VARCHAR(10), NUM INT(5));
CREATE TABLE B(NUM INT(5), GRADE VARCHAR(3));

INSERT INTO A VALUES('ABC',10);
INSERT INTO A VALUES('XYZ',11);
INSERT INTO A VALUES('V',12);
INSERT INTO A VALUES('R',14);

INSERT INTO B VALUES(11,'A');
INSERT INTO B VALUES(12,'X');
INSERT INTO B VALUES(13,'C');
INSERT INTO B VALUES(15,'D');

SELECT NUM FROM A UNION SELECT NUM FROM B;
SELECT NUM FROM A UNION ALL SELECT NUM FROM B;












