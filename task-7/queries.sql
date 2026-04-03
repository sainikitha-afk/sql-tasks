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
(3, 'Charlie', 'HR', 50000),
(4, 'David', 'IT', 70000),
(5, 'Eve', 'IT', 60000),
(6, 'Frank', 'IT', 60000);

-- =====================================
-- 1. ROW_NUMBER()
-- Unique ranking within each department
-- =====================================
SELECT 
    name,
    department,
    salary,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS row_num
FROM Employees;

-- =====================================
-- 2. RANK()
-- Same rank for ties, gaps in ranking
-- =====================================
SELECT 
    name,
    department,
    salary,
    RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS rank_val
FROM Employees;

-- =====================================
-- 3. DENSE_RANK()
-- Same rank for ties, NO gaps
-- =====================================
SELECT 
    name,
    department,
    salary,
    DENSE_RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS dense_rank_val
FROM Employees;

-- =====================================
-- 4. LAG()
-- Previous employee salary in same dept
-- =====================================
SELECT 
    name,
    department,
    salary,
    LAG(salary) OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS prev_salary
FROM Employees;

-- =====================================
-- 5. LEAD()
-- Next employee salary in same dept
-- =====================================
SELECT 
    name,
    department,
    salary,
    LEAD(salary) OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS next_salary
FROM Employees;