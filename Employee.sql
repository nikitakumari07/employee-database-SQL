DROP DATABASE IF EXISTS company_practice;
CREATE DATABASE company_practice;
USE company_practice;

CREATE TABLE employees(
    id INT PRIMARY KEY AUTO_INCREMENT,name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    salary INT, city VARCHAR(50)
);

INSERT INTO employees(name, age, department, salary, city) 
VALUES ('Rahul', 25, 'IT', 60000, 'Delhi'),
('Anita', 28, 'HR', 45000, 'Mumbai'),
('Rohit', 32, 'Sales', 55000, 'Patna'),
('Priya', 30, 'Marketing', 50000, 'Delhi'),
('Amit', 27, 'IT', 70000, 'Bangalore'),
('Neha', 35, 'HR', 48000, 'Delhi'),
('Vikash', 40, 'Sales', 65000, 'Mumbai'),
('Sneha', 29, 'IT', 72000, 'Patna'),
('Arjun', 31, 'Marketing', 52000, 'Delhi'),
('Kajal', 26, 'IT', 58000, 'Delhi'),
('Manish', 38, 'Sales', 75000, 'Delhi'),
('Pooja', 24, 'HR', 40000, 'Patna'),
('Deepak', 33, 'IT', 68000, 'Bangalore'),
('Simran', 29, 'Marketing', 53000, 'Delhi'),
('Saurav', 41, 'Sales', 80000, 'Mumbai'),
('Ritika', 22, 'HR', 35000, 'Delhi'),
('Karan', 36, 'IT', 71000, 'Patna'),
('Meena', 34, 'Marketing', 56000, 'Mumbai'),
('Tushar', 28, 'Sales', 62000, 'Delhi'),
('Alok', 39, 'IT', 77000, 'Bangalore');

SELECT * FROM employees;
SELECT name, salary FROM employees;

SELECT salary FROM employees
ORDER BY salary DESC
LIMIT 5;

SELECT salary FROM employees
ORDER BY salary ASC
LIMIT 3;

SELECT * FROM employees
WHERE department = 'IT';

SELECT salary FROM employees
WHERE salary > 50000;

SELECT age FROM employees
WHERE age BETWEEN 25 AND 30;

SELECT name FROM employees
ORDER BY name ASC;

SELECT salary FROM employees
ORDER BY salary DESC;

SELECT * FROM employees
WHERE department = 'IT'
ORDER BY salary DESC
LIMIT 5;

UPDATE employees
SET salary = salary * 1.10;

UPDATE employees
SET salary = 60000
WHERE name = 'Rahul';

UPDATE employees
SET department = 'Human Resource'
WHERE department = 'HR';

UPDATE employees
SET city = 'Delhi'
WHERE id = 5;

UPDATE employees
SET salary = salary + 5000
WHERE department = 'IT';

UPDATE employees
SET salary = 0
WHERE salary IS NULL;

UPDATE employees
SET age = 30
WHERE name = 'Anita';

UPDATE employees
SET salary =  salary - 2000
WHERE department = 'Sales';

UPDATE employees
SET city = 'Mumbai'
WHERE department = 'Marketing';

UPDATE employees
SET department = 'Support'
WHERE id BETWEEN 10 AND 15;

DELETE FROM employees
WHERE id = 3;

DELETE FROM employees
WHERE department = 'HR';

DELETE FROM employees
WHERE salary <20000;

DELETE FROM employees
WHERE age > 60;

DELETE FROM employees
WHERE city = 'Patna';

DELETE FROM employees
WHERE salary IS NULL;

DELETE FROM employees
WHERE name = 'Rohit';

DELETE FROM employees
WHERE age BETWEEN 18 AND 21;

DELETE FROM employees
WHERE department != 'IT';


SELECT MIN(salary) AS minimum_salary FROM employees;

SELECT MAX(salary) AS maximum_salary FROM employees;

SELECT MIN(age) AS Youngest_employee FROM employees;

SELECT MAX(age) AS Oldest_employee FROM employees;

SELECT MIN(salary) AS minimum_salary FROM employees
WHERE department = 'IT';

SELECT MAX(salary) AS maximum_salary FROM employees
WHERE department = 'Sales';

SELECT MIN(age) AS Lowest_age FROM employees
WHERE department = 'Marketing';

SELECT MAX(salary) AS Highest_salary FROM employees
WHERE city = 'Delhi';

SELECT SUM(salary) AS total_salary FROM employees;

SELECT SUM(salary) AS total_salary FROM employees
WHERE department = 'IT';

SELECt SUM(salary) AS total_salary FROM employees
WHERE city = 'Delhi';

SELECT SUM(salary) AS total_salary FROM employees
WHERE age >30;

SELECT AVG(salary) AS average_salary FROM employees;

SELECT AVG(salary) AS average_salary FROM employees
WHERE  department = 'HR';

SELECT AVG(age) As average_age FROM employees;

SELECT AVG(age) AS average_age FROM employees
WHERE age > 25;

SELECT COUNT(*) AS total_employees FROM employees;

SELECT COUNT(*) AS total_employees FROM employees
WHERE department = 'IT';

SELECT COUNT(*) AS total_employees FROM employees
WHERE salary > 50000;

SELECT COUNT(*) AS total_employees FROM employees
WHERE city = 'Mumbai';







