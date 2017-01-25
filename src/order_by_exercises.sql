USE employees;


# Order by first_name, then last name
SELECT *
FROM employees
WHERE first_name = 'Irena'
      OR first_name = 'Vidya'
      OR first_name = 'Maya'
         AND gender = 'M'
ORDER BY last_name, first_name;


# Order by employee number
SELECT *
FROM employees
WHERE last_name LIKE 'e%'
      OR last_name LIKE '%e'
ORDER BY  emp_no DESC ;

# UPDATE starts AND ends with 'E'
SELECT *
FROM employees
WHERE last_name LIKE 'e%'
      AND last_name LIKE '%e';

# Employees hired in the 90s — 135,214 rows.
  # UPDATE AND born on Christmas
    # ORDER BY oldest first who was hired last
SELECT *
FROM employees
WHERE hire_date LIKE '199%'
    AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC ;

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