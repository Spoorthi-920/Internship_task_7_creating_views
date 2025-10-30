-- Task 7: Creating Views
-- Objective: Learn to create and use views

-- Step 1: Create Database 
CREATE DATABASE task_7;
USE task_7;

-- Step 2: Create Sample Tables
CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name TEXT,
    city TEXT
);

CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    order_amount REAL,
    order_date TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Step 3: Insert Sample Data
INSERT INTO Customers (customer_id, customer_name, city) VALUES
(1, 'Rahul', 'Mumbai'),
(2, 'Priya', 'Delhi'),
(3, 'Aman', 'Chennai');

INSERT INTO Orders (order_id, customer_id, order_amount, order_date) VALUES
(101, 1, 2500, '2024-09-01'),
(102, 2, 1800, '2024-09-05'),
(103, 1, 1200, '2024-09-06'),
(104, 3, 3200, '2024-09-10');

-- Step 4: Create Views

-- View 1: Customer Orders (joining Customers and Orders)
CREATE VIEW customer_orders AS
SELECT 
    c.customer_id,
    c.customer_name,
    c.city,
    o.order_id,
    o.order_amount,
    o.order_date
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id;

-- View 2: High Value Customers (aggregated data)
CREATE VIEW high_value_customers AS
SELECT 
    c.customer_name,
    SUM(o.order_amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING SUM(o.order_amount) > 2000;

-- Usage Examples
SELECT * FROM customer_orders;
SELECT * FROM high_value_customers;


-- Step 5: Security / Abstraction Example

-- Instead of giving users direct access to Orders, you can allow access to only the View:
GRANT SELECT ON high_value_customers TO 'analyst_user';
-- This ensures sensitive columns (like customer contact info) remain hidden.
-- Note: “The GRANT statement illustrates how access control can be implemented for views. Execution may require admin privileges.”


-- Outcome:
-- 1. Created reusable and secure SQL logic using CREATE VIEW.
-- 2. Simplified complex joins and aggregations.
-- 3. Demonstrated abstraction for business data security.
