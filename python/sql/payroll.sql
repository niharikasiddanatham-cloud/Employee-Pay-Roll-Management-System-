CREATE DATABASE employee_payroll;

USE employee_payroll;

-- Employee table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    designation VARCHAR(50),
    salary DECIMAL(10,2)
);

-- Employee data
INSERT INTO employees
VALUES
(101, 'Rahul', 'IT', 'Developer', 45000),
(102, 'Priya', 'HR', 'HR Executive', 40000),
(103, 'Arun', 'Finance', 'Accountant', 42000);

-- Display all employees
SELECT * FROM employees;

-- Find IT employees
SELECT *
FROM employees
WHERE department = 'IT';


-- Payroll table
CREATE TABLE payroll (
    payroll_id INT PRIMARY KEY,
    employee_id INT,
    basic_salary DECIMAL(10,2),
    allowance DECIMAL(10,2),
    deduction DECIMAL(10,2),
    net_salary DECIMAL(10,2)
);

-- Payroll data
INSERT INTO payroll
VALUES
(1, 101, 40000, 5000, 2000, 43000),
(2, 102, 35000, 4000, 1500, 37500),
(3, 103, 38000, 4500, 1800, 40700);

-- Display payroll
SELECT * FROM payroll;

-- Calculate net salary
SELECT
    employee_id,
    basic_salary,
    allowance,
    deduction,
    (basic_salary + allowance - deduction) AS calculated_net_salary
FROM payroll;


-- JOIN employees and payroll
SELECT
    e.employee_id,
    e.name,
    e.department,
    e.designation,
    p.basic_salary,
    p.allowance,
    p.deduction,
    p.net_salary
FROM employees e
JOIN payroll p
ON e.employee_id = p.employee_id;
