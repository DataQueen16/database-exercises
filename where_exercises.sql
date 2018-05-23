USE employees;

SELECT *
FROM employees
WHERE (first_name LIKE 'Irena%' OR
  first_name LIKE 'Vidya%' OR
  first_name LIKE 'Maya%')
AND gender = 'M';

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';


SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25'
  AND hire_date LIKE '199%';


SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%' ;