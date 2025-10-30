# Task 7: Creating Views  

## Objective  
Learn to create and use **SQL Views** to simplify queries, enhance data abstraction, and improve security.


## 🧠 Key Learning Points  
- Using `CREATE VIEW` with complex `SELECT` statements  
- Abstracting database logic through reusable virtual tables  
- Restricting data access for security and privacy  



## 🗂️ Process Overview  

### Step 1: Database Setup  
Created two tables:  
- **Customers** – stores customer details  
- **Orders** – stores purchase information with a foreign key reference to `Customers`  

### Step 2: Data Insertion  
Inserted sample customer and order records for view demonstration.

### Step 3: Creating Views  
* **Customer Orders View**: Combines customer and order data into one virtual table.  
* **High Value Customers View**: Identifies customers whose total spending exceeds a specific threshold.  

### Step 4: Testing  
Executed `SELECT` queries on both views to verify functionality and ensure accurate aggregation.

### Step 5: Security Demonstration  
Illustrated how views can be used to grant limited access to sensitive data, allowing users to query only specific information without exposing the full database structure.

## Tools Used   
- **MySQL Workbench**


## 📄 Deliverables  
- `task_7_creating_views.sql` — full SQL script including:  
  - Table creation  
  - Sample data insertion  
  - View definitions  
  - Usage examples  


## Learning Reflection  
This task provided a clear understanding of how **SQL views** act as a bridge between raw data and user queries.  
They help simplify complex logic, reduce redundancy, and secure database access, making data handling more efficient and controlled.
