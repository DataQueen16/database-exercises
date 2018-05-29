USE employees;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
JOIN dept_manager de ON de.emp_no = e.emp_no
JOIN departments d ON d.dept_no = de.dept_no
WHERE de.to_date >= curdate()
ORDER BY d.dept_name;

SELECT
  d.dept_name AS 'Department',
  concat(e.first_name, ' ', e.last_name) AS 'Manager'
FROM employees e


SELECT
  t.title
  count(t.emp_no) AS 'COUNT'
FROM titles t
  JOIN dept_emp de ON de.emp_no = t.emp_no
  JOIN departments d ON d.dept_no = de.dept_no
WHERE t.to_date >= curdate()
  AND d.dept_name = 'Customer Service'
  AND de.to_date >= curdate()
GROUP BY t.title;

select * from titles limit 5;

-- salaries -> employees (emp_no)
-- employees -> dept_manager (emp_no)
-- dept_manager .> departments (dept_no)

SELECT
  d.dept_name AS 'Department Name',
  concat(e.first_name, ' ', e.last_name) AS 'Department Manager',
  s.salary
FROM employees e
  JOIN dept_manager dm ON dm.emp_no = e.emp_no
  JOIN salaries s ON s.emp_no = e.emp_no
  JOIN departments d ON d.dept_no = dm.dept_no
WHERE dm.to_date >- currdate() AND s.to_date >= curdate()
ORDER BY d.dept_name;

-- Bonus
-- Find names of all current emplees, their department name, and current
-- managers name

SELECT
  CONCAT(e.first_name, ' ', e.last_name) AS 'Employee',
  d.dept_name AS 'Department',
  CONCAT(mgmt.first_name, ' ', mgmt.last_name) AS 'Manager'
FROM employees e
  JOIN


SELECT e.first_name, e.last_name, e.birth_date
FROM dept_manager dm
JOIN employees e ON dm.emp_no = e.emp_no
LIMIT 10;

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
)
LIMIT 10;


-- Codeup records example

SELECT s.name, s.email, s.github_username
FROM students s
JOIN cohorts c ON s.cohort_id = c.id
WHERE c.name = 'Ulysses';

SELECT name, email, github_username
FROM students
WHERE cohort_id = (
  SELECT id FROM cohorts WHERE name = 'Ulysses'
);


-- Who manages the customer service department?
SELECT
  CONCAT(e.last_name, ', ', e.first_name) AS name
FROM employees e
JOIN dept_manager dm ON dm.emp_no = e.emp_no
JOIN departments d ON dm.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'
  AND dm.to_date > now();


SELECT first_name, last_name
FROM employees
WHERE emp_no = (
  SELECT *
  FROM dept_manager
  WHERE to_date > currdate()
  AND dept_no = (
    SELECT * FROM departments
    WHERE dept_name = 'Customer Service'
  );
);

