-- Create Employees Table
CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT
);

-- Insert Sample Data
INSERT INTO Employees (id, name, department, salary) VALUES
(1, 'Alice', 'HR', 50000),
(2, 'Bob', 'Engineering', 75000),
(3, 'Charlie', 'Marketing', 60000),
(4, 'David', 'Engineering', 80000),
(5, 'Eve', 'Sales', 55000),
(6, 'Frank', 'Sales', 65000);

-- 1. COUNT employees per department
SELECT department, COUNT(*) AS total_employees
FROM Employees
GROUP BY department;

-- 2. AVG salary per department
SELECT department, AVG(salary) AS avg_salary
FROM Employees
GROUP BY department;

-- 3. SUM salary per department
SELECT department, SUM(salary) AS total_salary
FROM Employees
GROUP BY department;

-- 4. HAVING clause (departments with more than 1 employee)
SELECT department, COUNT(*) AS total_employees
FROM Employees
GROUP BY department
HAVING COUNT(*) > 1;