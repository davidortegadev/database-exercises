use employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name LIKE 'M%'
LIMIT 25 OFFSET 75;

SELECT DISTINCT last_name FROM employees order by last_name desc limit 10;

SELECT * FROM employees
WHERE (hire_date > '1990' AND hire_date < '2000')
  AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC
limit 5 offset 45;