CREATE DATABASE employee_payroll;

USE employee_payroll;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    designation VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees
VALUES
(101, 'Rahul', 'IT', 'Developer', 45000),
(102, 'Priya', 'HR', 'HR Executive', 40000),
(103, 'Arun', 'Finance', 'Accountant', 42000);

SELECT * FROM employees;
