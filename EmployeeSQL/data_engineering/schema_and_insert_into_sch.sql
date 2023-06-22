-- Create a table of titles
CREATE TABLE titles (
    title_id VARCHAR(255) PRIMARY KEY  NOT NULL,
    title VARCHAR(255) NOT NULL
   );

-- Insert Data into table
INSERT INTO titles(title_id,title)
VALUES()

-- Create a table of departments
CREATE TABLE departments (
    dept_no VARCHAR(255) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(255) NOT NULL
);

-- Insert Data into table
INSERT INTO departments(dept_no,dept_name)
VALUES()

-- Create a table of employees
CREATE TABLE employees (
    emp_no INT PRIMARY KEY NOT NULL,
    emp_title_id VARCHAR(255)   NOT NULL,
	FOREIGN KEY(emp_title_id) REFERENCES titles(title_id),
    birth_date DATE   NOT NULL,
    first_name VARCHAR(255)   NOT NULL,
    last_name VARCHAR(255)  NOT NULL,
    sex CHAR(7)   NOT NULL,
    hire_date DATE  NOT NULL);
	
-- Insert Data into table
INSERT INTO employees(emp_no,emp_title_id,birth_date,first_name,last_name,sex,hire_date)
VALUES()

-- Create a table of salaries
CREATE TABLE salaries (
    emp_no INT   NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
    salary INT   NOT NULL,
	PRIMARY KEY(emp_no)
);
	
-- Insert Data into table
INSERT INTO salaries(emp_no,salary)
VALUES()

-- Create a junction table department employee 
CREATE TABLE dept_emp (
    emp_no INT   NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
    dept_no VARCHAR(255)  NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY(emp_no,dept_no)
	
);
	
-- Insert Data into table
INSERT INTO dept_emp(emp_no,dept_no)
VALUES()

-- Create a junction table department manager	
CREATE TABLE dept_manager (
    dept_no VARCHAR(255)  NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no),
    emp_no INT   NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY(dept_no,emp_no)
);
	
INSERT INTO dept_manager(dept_no,emp_no)
VALUES()


