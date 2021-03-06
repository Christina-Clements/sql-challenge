-- 1.
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	e.gender,
	s.salary
FROM
	employees e,
	salaries s
WHERE
	e.emp_no = s.emp_no;
-- 2.
SELECT
	e.emp_no,
	e.first_name,
	e.last_name,
	e.hire_date
FROM
	employees e
WHERE
	EXTRACT(YEAR FROM e.hire_date) =  '1986';
-- 3.
SELECT
	mgr.dept_no,
	d.dept_name,
	e.emp_no,
	e.last_name,
	e.first_name,
	mgr.from_date,
	mgr.to_date
FROM	
	employees e,
	dept_manager mgr,
	departments d
WHERE
	mgr.dept_no = d.dept_no
AND mgr.emp_no = e.emp_no;
-- 4.
SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM	
	employees e,
	departments d,
	dept_emp de
WHERE
	e.emp_no = de.emp_no
AND de.dept_no = d.dept_no;
-- 5.
SELECT	
	e.first_name,
	e.last_name
FROM
	employees e
WHERE
	e.first_name = 'Hercules'
AND last_name LIKE 'B%';
-- 6.
SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM	
	employees e,
	departments d,
	dept_emp de
WHERE
	e.emp_no = de.emp_no
AND de.dept_no = d.dept_no
AND d.dept_name = 'Sales';
-- 7.
SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM	
	employees e,
	departments d,
	dept_emp de
WHERE
	e.emp_no = de.emp_no
AND de.dept_no = d.dept_no
AND d.dept_name IN ('Sales', 'Development');
-- 8.
SELECT 
	e.last_name,
	COUNT(e.last_name)
FROM
	employees e
GROUP BY e.last_name
ORDER BY count(last_name) DESC;