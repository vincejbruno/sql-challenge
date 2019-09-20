SELECT employees.first_name,
employees.last_name,
employees.gender,
employees.emp_no,
salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

SELECT * FROM employees
WHERE hire_date LIKE '1986%'

SELECT dept_manager.dept_no,
departments.dept_name,
dept_manager.emp_no,
dept_manager.from_date,
dept_manager.to_date,
employees.first_name,
employees.last_name
FROM dept_manager
INNER JOIN employees ON
(dept_manager.emp_no = employees.emp_no)
INNER JOIN departments ON
(dept_manager.dept_no = departments.dept_no)

SELECT dept_employee.emp_no,
employees.first_name,
employees.last_name,
departments.dept_name
FROM dept_employee
INNER JOIN employees ON
(dept_employee.emp_no = employees.emp_no)
INNER JOIN departments ON
(dept_employee.dept_no = departments.dept_no)

SELECT * FROM employees
WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%'

SELECT dept_employee.emp_no,
employees.first_name,
employees.last_name,
departments.dept_name
FROM dept_employee
INNER JOIN employees ON
(dept_employee.emp_no = employees.emp_no)
INNER JOIN departments ON
(dept_employee.dept_no = departments.dept_no)
	WHERE departments.dept_name = 'Sales'

SELECT dept_employee.emp_no,
employees.first_name,
employees.last_name,
departments.dept_name
FROM dept_employee
INNER JOIN employees ON
(dept_employee.emp_no = employees.emp_no)
INNER JOIN departments ON
(dept_employee.dept_no = departments.dept_no)
	WHERE departments.dept_name = 'Sales'
	OR departments.dept_name = 'Development'

SELECT last_name, COUNT(last_name)AS Frequency
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC


