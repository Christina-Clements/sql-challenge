DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;

CREATE TABLE employees(emp_no FLOAT PRIMARY KEY NOT NULL,
					   birth_date DATE,
					   first_name VARCHAR(100),
					   last_name VARCHAR(100),
					   gender VARCHAR(10),
					   hire_date DATE);
CREATE TABLE departments(dept_no VARCHAR(50) PRIMARY KEY NOT NULL,
						 dept_name VARCHAR(100));
CREATE TABLE dept_emp (emp_no FLOAT NOT NULL,
						dept_no VARCHAR NOT NULL,
						from_date DATE,
						to_date DATE);
CREATE TABLE dept_manager (dept_no VARCHAR NOT NULL,
							emp_no FLOAT NOT NULL,
							from_date DATE,
							to_date DATE);
CREATE TABLE salaries (emp_no FLOAT NOT NULL,
						salary DEC,
						from_date DATE,
						to_date DATE);
CREATE TABLE titles (emp_no FLOAT NOT NULL,
						title VARCHAR,
						from_date DATE,
						to_date DATE);

SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries;
SELECT * FROM titles;