-- Create Employees Table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100),
    salary INT
);

-- Insert Data
INSERT INTO Employees (emp_id, name, department, salary) VALUES
(1, 'Alice', 'HR', 40000),
(2, 'Bob', 'HR', 50000),
(3, 'Charlie', 'IT', 60000),
(4, 'David', 'IT', 70000),
(5, 'Eve', 'IT', 55000);

-- 1. Subquery in WHERE (Non-Correlated)
-- Employees earning ABOVE overall average salary
SELECT name, salary
FROM Employees
WHERE salary > (
    SELECT AVG(salary) FROM Employees
);

-- 2. Subquery in WHERE (Correlated)
-- Employees earning ABOVE their department average
SELECT e1.name, e1.department, e1.salary
FROM Employees e1
WHERE e1.salary > (
    SELECT AVG(e2.salary)
    FROM Employees e2
    WHERE e2.department = e1.department
);

-- 3. Subquery in SELECT (Dynamic Column)
-- Show each employee + department average salary
SELECT 
    name,
    department,
    salary,
    (
        SELECT AVG(e2.salary)
        FROM Employees e2
        WHERE e2.department = e1.department
    ) AS dept_avg_salary
FROM Employees e1;