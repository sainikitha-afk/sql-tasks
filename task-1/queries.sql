CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT
);

INSERT INTO Employees (id, name, department, salary) VALUES
(1, 'Alice', 'HR', 50000),
(2, 'Bob', 'Engineering', 75000),
(3, 'Charlie', 'Marketing', 60000),
(4, 'David', 'Engineering', 80000);

SELECT * FROM Employees;