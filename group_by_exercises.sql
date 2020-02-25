use employees;

select distinct title from titles;

select distinct first_name, last_name from employees where first_name or last_name like 'e%e' group by first_name, last_name;

select distinct last_name from employees where last_name like '%q%' and not last_name like '%qu%' group by last_name;

SELECT first_name, last_name, COUNT(*)
FROM employees
WHERE (first_name LIKE first_name
    AND last_name LIKE last_name)
GROUP BY first_name, last_name
ORDER BY COUNT(*) DESC;

SELECT COUNT(*), gender
FROM employees
WHERE first_name='Irena' OR first_name='Vidya' OR first_name='Maya'
GROUP BY gender;