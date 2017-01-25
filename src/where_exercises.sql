USE employees;

# Employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
  # UPDATE and is Male
SELECT *
FROM employees
WHERE emp_no > 1
  AND (first_name IN ('Irena', 'Vidya', 'Maya')
      AND gender = 'M'
      );


# Employees whose last name starts with 'E' — 7,330 rows.
  # UPDATE starts OR ends with 'E'
SELECT *
FROM employees
WHERE last_name LIKE 'e%'
  OR last_name LIKE '%e';

  # UPDATE starts AND ends with 'E'
SELECT *
FROM employees
WHERE last_name LIKE 'e%'
      AND last_name LIKE '%e';

# Employees hired in the 90s — 135,214 rows.
  # UPDATE AND born on Christmas
SELECT *
FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%12-25';

# Employees born on Christmas — 842 rows.
SELECT *
FROM employees
WHERE birth_date LIKE '%12-25';

# Employees with a 'q' in their last name
  # UPDATE but not 'qu'
SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND NOT last_name LIKE '%qu%';