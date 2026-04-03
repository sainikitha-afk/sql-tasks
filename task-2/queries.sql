-- Create Table
CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT
);

-- Insert Data
INSERT INTO Employees (id, name, department, salary) VALUES
(1, 'Alice', 'HR', 50000),
(2, 'Bob', 'Engineering', 75000),
(3, 'Charlie', 'Marketing', 60000),
(4, 'David', 'Engineering', 80000),
(5, 'Eve', 'Sales', 55000),
(6, 'Frank', 'Sales', 65000);

-- 1. WHERE filtering
SELECT * FROM Employees
WHERE department = 'Sales';

-- 2. ORDER BY salary (ascending)
SELECT * FROM Employees
ORDER BY salary ASC;

-- 3. ORDER BY salary (descending)
SELECT * FROM Employees
ORDER BY salary DESC;

-- 4. Multiple conditions (AND)
SELECT * FROM Employees
WHERE department = 'Engineering' AND salary > 70000;

-- 5. Multiple conditions (OR)
SELECT * FROM Employees
WHERE department = 'HR' OR salary > 70000;