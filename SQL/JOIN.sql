CREATE TABLE Uni (
Uni_id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
department_id INT
);

-- Insert Data into Uni
INSERT INTO Uni (first_name, last_name, department_id)
VALUES
('Rahul', 'Sharma', 101),
('Priya', 'Mehta', 102),
('Ankit', 'Verma', 103),
('Simran', 'Kaur', NULL),
('Aman', 'Singh', 101);

SELECT * FROM Uni;
--------------------------------------------------------------------------

CREATE TABLE Departments (
department_id INT PRIMARY KEY,
department_name VARCHAR(50)
);

-- Insert Data into Departments
INSERT INTO Departments (department_id, department_name)
VALUES
(101, 'Sales'),
(102, 'Marketing'),
(103, 'IT'),
(104, 'HR');

SELECT * FROM Departments;

--------------------------INNER JOIN---------------------------------------------

SELECT u.first_name, u.last_name, d.department_id, D.DEPARTMENT_NAME
FROM Uni u
INNER JOIN
departments d
ON u.department_id = d.department_id

--------------------------LEFT JOIN---------------------------------------------

SELECT u.first_name, u.last_name, d.department_id, D.DEPARTMENT_NAME
FROM Uni u
LEFT JOIN
departments d
ON u.department_id = d.department_id

--------------------------RIGHT JOIN---------------------------------------

SELECT u.first_name, u.last_name, d.department_id, D.DEPARTMENT_NAME
FROM Uni u
RIGHT JOIN
departments d
ON u.department_id = d.department_id

--------------------------FULL OUTER JOIN---------------------------------------

SELECT u.first_name, u.last_name, d.department_id, D.DEPARTMENT_NAME
FROM Uni u
FULL OUTER JOIN
departments d
ON u.department_id = d.department_id

--------------------------CROSS JOIN---------------------------------------

SELECT u.first_name, u.last_name, d.department_id, D.DEPARTMENT_NAME
FROM Uni u
CROSS JOIN
departments d

--------------------------SELF JOIN---------------------------------------

SELECT u.first_name, u2.first_name
FROM Uni u 
JOIN 
Uni u2
ON u.Department_id = u2.Department_id