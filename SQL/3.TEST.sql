CREATE TABLE employees (
employee_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
department VARCHAR(50),
salary DECIMAL(10, 2) CHECK (salary > 0),
joining_date DATE NOT NULL,
age INT CHECK (age >= 18)

);

INSERT INTO employees (first_name, last_name, department, salary, joining_date, age)
VALUES
('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35),
('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28),
('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26);


-- Q1: Retrieve all employees' first_names and their departments.

SELECT first_name, department FROM EMPLOYEES;

-- Q2: Update the salary of all employees in the 'IT' department by increasing it by 10%.

UPDATE EMPLOYEES
SET SALARY = SALARY + (SALARY * 0.10) WHERE DEPARTMENT = 'IT';

-- Q3: Delete all employees who are older than 34 years.

DELETE FROM EMPLOYEES 
WHERE AGE > 34;

-- Q4: Add a new column `email' to the `employees' table.

ALTER TABLE EMPLOYEES
ADD COLUMN EMAIL VARCHAR(50);

-- Q5: Rename the 'department column to 'dept_name'.

ALTER TABLE EMPLOYEES
RENAME COLUMN DEPARTMENT TO dept_name;

-- Q6: Retrieve the names of employees who joined after January 1, 2021.

SELECT FIRST_NAME FROM EMPLOYEES
WHERE JOINING_DATE > '2021-01-01';

-- Q7: Change the data type of the `salary' column to 'INTEGER'.

ALTER TABLE EMPLOYEES
ALTER COLUMN SALARY TYPE INT;

-- Q8: List all employees with their age and salary in descending order of salary.

SELECT FIRST_NAME, AGE, SALARY FROM EMPLOYEES
ORDER BY SALARY DESC;

-- Q9: Insert a new employee with the following details: 'Raj', 'Singh', 'Marketing', 60000,'2023-09-15', 30.
 
INSERT INTO EMPLOYEES(first_name, last_name, depT_name, salary, joining_date, age)
VALUES ('CHANDAN', 'ReZ', 'Operation', 55000.00, '2022-01-10', 28);

-- Q10: Update age of employee +1 to every employee

UPDATE EMPLOYEES
SET AGE = AGE +1;

--Q11: Calculate the Annual Salary and Salary Increment by 5% - show the monthly new salary as well

SELECT first_name, salary,
	(salary * 12) AS Annual_Salary,
	(salary * 0.05) AS Increment_salary,
	(salary + (salary * 0.05)) AS new_salary
FROM EMPLOYEES;

-- show date and time
select NOW();

---show only date
select current_date;

-- show only time
select current_time;