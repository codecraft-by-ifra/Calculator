CREATE TABLE emp(
emp_id INT PRIMARY KEY,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL,
department VARCHAR(20),
salary NUMERIC(10,2),
joining_date DATE,
age INT
);

--import csv file
COPY emp(emp_id, first_name, last_name, department, salary, joining_date, age)
FROM 'C:\Users\LENOVO\Downloads\emp_dataa.csv'    
DELIMITER ',' CSV HEADER;

SELECT * FROM emp;

