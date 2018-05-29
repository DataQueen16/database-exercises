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