-- Creating table departments 

CREATE TABLE departments(
   dept_no VARCHAR PRIMARY KEY NOT NULL,
   dept_name VARCHAR (30) NOT NULL
);

-- Creating table dept_emp
CREATE TABLE dept_emp(
   emp_no VARCHAR PRIMARY KEY NOT NULL,
   dept_no VARCHAR(30) NOT NULL,
   FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
   FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Creating table dept_manager
CREATE TABLE dept_manager(
   dept_no VARCHAR(30) NOT NULL,
   emp_no VARCHAR PRIMARY KEY NOT NULL,
   FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
   FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


-- Creating table salaries
CREATE TABLE salaries(
   emp_no VARCHAR PRIMARY KEY NOT NULL,
   salary VARCHAR(30) NOT NULL,
   FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);


-- Output to check proper import of CSV files
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;
