USE employees;

SELECT concat(last_name, ', ', first_name) AS full_name
FROM employees
LIMIT 10;

SELECT concat(last_name, ', ', first_name) AS full_name,
    birth_date AS DOB
FROM employees
LIMIT 10;

SELECT concat(emp_no, ' - ', last_name, ', ', first_name) AS full_name,
    birth_date AS DOB
FROM employees
LIMIT 10;

