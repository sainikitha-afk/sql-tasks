# SQL Tasks – Learning Summary

## Overview

This repository contains a series of SQL tasks that progressively build from fundamental database operations to advanced concepts such as window functions, recursive queries, and database design. The goal of these tasks was to develop a strong understanding of relational databases, query optimization, and practical data handling.

The tasks were completed using an online SQL environment, focusing on writing efficient and readable queries without relying on local installations.

All the SQL tasks were written and tested in DB Fiddle - Online SQL Editor/SQL Database Playground

---

## Concepts Covered

### 1. Table Creation and Data Insertion

The initial task focused on defining database schemas using `CREATE TABLE` and inserting records using `INSERT INTO`. This helped establish a clear understanding of data types, primary keys, and basic constraints.

---

### 2. Filtering and Sorting

Learned how to retrieve specific data using the `WHERE` clause and sort results using `ORDER BY`. Also explored combining multiple conditions using `AND` and `OR`.

---

### 3. Aggregation and Grouping

Used aggregate functions such as `COUNT()`, `SUM()`, and `AVG()` to summarize data. Applied `GROUP BY` to organize results and `HAVING` to filter grouped data.

---

### 4. Multi-Table JOINs

Worked with multiple related tables using `INNER JOIN` and `LEFT JOIN`. This helped in understanding how relational databases connect data across tables and how missing relationships are handled.

---

### 5. Subqueries and Nested Queries

Implemented subqueries in both `WHERE` and `SELECT` clauses. Learned the difference between:

* Non-correlated subqueries (executed once)
* Correlated subqueries (executed per row)

---

### 6. Date and Time Functions

Used built-in date functions such as `DATEDIFF`, `CURDATE`, and `INTERVAL` to manipulate and filter date-based data. Also formatted date outputs for better readability.

---

### 7. Window Functions and Ranking

Explored analytical functions including:

* `ROW_NUMBER()`
* `RANK()`
* `DENSE_RANK()`
* `LAG()` and `LEAD()`

Learned how to use `PARTITION BY` and `ORDER BY` to perform calculations across subsets of data without collapsing rows.

---

### 8. Common Table Expressions (CTEs)

Used `WITH` clauses to simplify complex queries. Also implemented recursive CTEs to represent hierarchical data such as organizational structures. Understood the importance of defining base cases and termination conditions.

---

### 9. Stored Procedures and User-Defined Functions

Encapsulated reusable logic using:

* Stored procedures with input parameters
* User-defined functions for calculations

Also tested these components by executing them and verifying outputs.

---

### 10. Database Design and Advanced Features

Designed a normalized database schema for an eCommerce-like system. Key aspects included:

* Multiple related tables with proper primary and foreign keys
* Use of indexing to improve query performance
* Triggers to automate business logic (e.g., updating stock)
* Transactions to ensure data consistency during multi-step operations
* Views to simplify complex queries

This task combined all previous concepts into a cohesive system.

---

## Key Takeaways

* Understanding relationships between tables is fundamental to working with databases.
* Query readability and structure are as important as correctness.
* Advanced SQL features like window functions and CTEs significantly improve query clarity and capability.
* Database design plays a critical role in performance and scalability.
* Tools and environments can affect syntax and execution, so adapting queries accordingly is important.

---

## Notes

All queries were written and tested in an online SQL environment. Some adjustments were made to ensure compatibility with the platform (e.g., avoiding unsupported syntax such as custom delimiters in certain cases).

---

## Conclusion

These tasks provided a structured approach to learning SQL, starting from basic operations and progressing to advanced database concepts. The overall experience helped in developing both theoretical understanding and practical skills required for working with real-world databases.
