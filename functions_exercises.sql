USE employees;

SELECT *
FROM employees
WHERE (first_name LIKE 'Irena%' OR
  first_name LIKE 'Vidya%' OR
  first_name LIKE 'Maya%')
AND gender = 'M'
ORDER BY first_name ASC;

SELECT *
FROM employees
WHERE (first_name LIKE 'Irena%' OR
       first_name LIKE 'Vidya%' OR
       first_name LIKE 'Maya%')
      AND gender = 'M'
ORDER BY first_name DESC;

SELECT *
FROM employees
WHERE (first_name LIKE 'Irena%' OR
  first_name LIKE 'Vidya%' OR
  first_name LIKE 'Maya%')
AND gender = 'M'
ORDER BY first_name ASC, last_name ASC;

SELECT *
FROM employees
WHERE (first_name LIKE 'Irena%' OR
       first_name LIKE 'Vidya%' OR
       first_name LIKE 'Maya%')
      AND gender = 'M'
ORDER BY first_name DESC, last_name DESC;

SELECT *
FROM employees
WHERE (first_name LIKE 'Irena%' OR
  first_name LIKE 'Vidya%' OR
  first_name LIKE 'Maya%')
AND gender = 'M'
ORDER BY last_name ASC, first_name ASC;

SELECT *
FROM employees
WHERE (first_name LIKE 'Irena%' OR
       first_name LIKE 'Vidya%' OR
       first_name LIKE 'Maya%')
      AND gender = 'M'
ORDER BY last_name DESC, first_name DESC;

SELECT concat(first_name, ' ', last_name) AS 'fullName'
FROM employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%E'
ORDER BY emp_no ASC;


SELECT concat(first_name, ' ', last_name) AS 'fullName'
FROM employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%E'
ORDER BY emp_no DESC;


SELECT DATEDIFF(NOW(), hire_date) AS 'Days at the company'
FROM employees
WHERE birth_date LIKE '%-12-25'
      AND hire_date LIKE '199%';


SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
  ORDER BY birth_date ASC, hire_date DESC;