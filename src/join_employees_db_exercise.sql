USE employees;

# Write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name AS 'Department', e.first_name AS 'Current Manager'
FROM employees as e
JOIN dept_manager as dm
  ON dm.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';


# Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Departments Managed by Women', CONCAT(e.first_name, ' ', e.gender) AS 'Current Manager'
FROM employees as e
JOIN dept_manager as dm
  ON dm.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';


# Find the current titles of employees currently working in the Customer Service department.
SELECT CONCAT(t.title, ' - ', de.dept_no) AS 'Employee Title', CONCAT(e.first_name, ' ', e.last_name) AS 'Full Name'
FROM employees as e
JOIN dept_emp as de
  ON e.emp_no = de.emp_no
JOIN titles as t
  ON e.emp_no = t.emp_no
WHERE de.dept_no = 'd009' AND de.to_date = '9999-01-01'
ORDER BY title;

# Find the current salary of all current managers.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Manager', s.salary AS 'Current Salary'
FROM employees as e
JOIN dept_manager as dm
  ON e.emp_no = dm.emp_no
JOIN salaries as s
  ON e.emp_no = s.emp_no
WHERE s.to_date = '9999-01-01';


# BONUS:  Find the names of all current employees, their department name, and their current manager's name.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee', d.dept_name AS 'Department', dm.emp_no AS 'Current Manager'
FROM employees as e
JOIN dept_emp as de
  ON e.emp_no = de.emp_no
JOIN departments as d
  ON de.dept_no = d.dept_no
JOIN dept_manager as dm
  ON e.emp_no = dm.emp_no
WHERE de.to_date = '9999-01-01';