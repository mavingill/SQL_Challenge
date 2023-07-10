--drop tables if exist if decide to run entire code
--uncomment when needed
--CREATE DATABASE module9db;
--DROP TABLE IF EXISTS dept CASCADE;
--DROP TABLE IF EXISTS titles CASCADE;
--DROP TABLE IF EXISTS employees CASCADE;
--DROP TABLE IF EXISTS dept_emp CASCADE;
--DROP TABLE IF EXISTS dept_man CASCADE;
--DROP TABLE IF EXISTS salaries CASCADE;

--create tables
CREATE TABLE dept (
    dept_no varchar(6) PRIMARY KEY,
    dept_name varchar(24) NOT NULL
);

CREATE TABLE titles (
    title_id varchar(6) PRIMARY KEY,
    title varchar(24) NOT NULL
);

CREATE TABLE employees (
    emp_no varchar(6) PRIMARY KEY,
    emp_title_id varchar(6),
    birthdate date NOT NULL,
    first_name varchar(35) NOT NULL,
    last_name varchar(35) NOT NULL,
    sex varchar(1) NOT NULL,
    hire_date date NOT NULL
);

CREATE TABLE dept_emp (
    emp_no varchar(6), 
    dept_no varchar(6)
	--FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	--FOREIGN KEY (dept_no) REFERENCES dept(dept_no)
);

CREATE TABLE dept_man (
    emp_no varchar(6),
    dept_no varchar(6)
	--FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	--FOREIGN KEY (dept_no) REFERENCES dept(dept_no)
);

CREATE TABLE salaries (
    emp_no varchar(6),
    salary float NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--datestyle set to match CSV files
SET datestyle TO postgres, mdy;
SHOW datestyle;

SELECT * FROM dept

SELECT * FROM dept_emp

SELECT * FROM dept_man

SELECT * FROM employees

SELECT * FROM salaries

SELECT * FROM titles