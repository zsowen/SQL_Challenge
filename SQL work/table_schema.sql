DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;


CREATE TABLE departments(
	dept_no VARCHAR (20) NOT NULL,
	dept_name VARCHAR (30) NOT NULL,
	PRIMARY KEY(dept_no)
);

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY(emp_no)
);

CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR (30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	sex VARCHAR (1) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
	CONSTRAINT fk_employee
		FOREIGN KEY(emp_no)
			REFERENCES salaries(emp_no)
);