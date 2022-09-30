/*Built-in functions in Mysql*/
USE hr;

/*String functions*/
-- Converts string to upper case letters to display
SELECT UPPER(First_name) from employees;

-- Converts string to lower case letters to display
SELECT lower(First_name) from employees;

-- Returns length of string
SELECT length('My_db');
SELECT length(First_name) from employees;

-- Print Names of employees whose name has 4 characters.
SELECT * from employees WHERE length(First_name) = 4;

-- Trim - Removes specifies characters from BOTH sides.
select trim('    Tanmay    ');
select trim('p' from 'tanckp');

-- INSTR - Returns the posn. of a character within a string.
select instr('mysql','q');

-- substr/substring - Returns substring of the string.
select substr('oracle',2,3);
select substring('ORACLE',4,3);
select substring(last_name,1,3) from employees;

-- concat - Join 2 strings.
select concat('tan','ck');
select concat(first_name, ' ',last_name) FULLNAME from employees;

/*Numeric functions*/
select abs(-40);
select abs(40);
select sqrt(25);
select MOD(10,3);
select power(2,5);

-- Truncate - truncates a number to specified no. of decimal phases.
select truncate(30.12344,3);
select truncate(533645636,-4);

-- Greatest & least element.
select greatest(122,234,55,433);
select least(122,234,55,433);

-- For aggregate & date functions refer ppt bookmarked or official docx of mysql.





