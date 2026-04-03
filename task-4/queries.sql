-- Create Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- Create Orders Table (with foreign key)
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(100),
    amount INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Insert Customers
INSERT INTO Customers (customer_id, name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');

-- Insert Orders
INSERT INTO Orders (order_id, customer_id, product, amount) VALUES
(101, 1, 'Laptop', 1200),
(102, 1, 'Mouse', 25),
(103, 2, 'Keyboard', 75);

-- 1. INNER JOIN (only matching records)
SELECT Customers.name, Orders.product, Orders.amount
FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id;

-- 2. LEFT JOIN (all customers, even without orders)
SELECT Customers.name, Orders.product, Orders.amount
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id;