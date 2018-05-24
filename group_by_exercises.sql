USE employees;

SELECT DISTINCT title
FROM titles;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%E'
  GROUP BY last_name;

SELECT concat(first_name, ' ', last_name) AS fullName
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY fullName;

SELECT last_name
FROM employees
WHERE last_name LIKE '%Q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT last_name,count(last_name) AS 'Number of ppl with this last name'
FROM employees
WHERE last_name LIKE '%Q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT count(*), gender
FROM employees
WHERE first_name IN ('Vidya', 'Irena', 'Maya')
GROUP BY gender;