USE employees;

-- Find all the employees with the same hire date as employee 101010 using a sub-query. 69 Rows

SELECT concat(first_name, ' ', last_name) AS 'Employees',
       hire_date AS 'Hire Date'
FROM employees
WHERE hire_date = (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);

-- Find all the titles held by all employees with the first name Aamod. 314 total titles, 6 unique titles

-- SELECT concat(first_name, ' ', last_name) AS 'Name',
--   emp_no AS 'Employee #'
-- FROM employees
-- WHERE first_name = 'Aamod';
--
-- SELECT e.first_name AS 'First Name', t.title AS 'Job Title'
-- FROM employees e
--   JOIN titles t ON e.emp_no = t.emp_no;

SELECT title
FROM titles
WHERE emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE first_name = 'Aamod'
);


-- Find all the current department managers that are female.

SELECT first_name, last_name, gender
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
  WHERE to_date > now()
)
AND gender = 'F';

# Find all the department names that currently have female managers.

SELECT dept_name
FROM departments
WHERE dept_no IN (
  SELECT dept_no
  FROM dept_manager
  WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE to_date > now()
    AND gender = 'F'
  )
);

# Find the first and last name of the employee with the highest salary

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM salaries
  WHERE salary = (
    SELECT MAX(salary)
    FROM salaries
  )
);