SQL Window Functions – Order Analysis

📌 Project Overview

This project demonstrates the use of SQL Window Functions to analyze customer orders and calculate rankings and running totals.

The project uses a sample order dataset containing order IDs, customer IDs, order dates, and order amounts.

It demonstrates how to use "ROW_NUMBER()", "RANK()", "DENSE_RANK()", and "SUM() OVER()" in SQL.

🎯 Project Objectives

- Create a database and an orders table.
- Insert sample customer order records.
- Retrieve order information.
- Calculate row numbers based on order amounts.
- Rank customers based on order amounts.
- Calculate dense rankings.
- Generate running totals based on order dates.

🛠️ Technologies Used

- SQL
- MySQL
- MySQL Workbench

📂 Database Structure

Database Name: "mee"

Table Name: "ord ersszz" (actual table name: "ord ersszz" without the space: "ord ersszz")

Column| Data Type| Description
order_id| INT| Unique order ID (Primary Key)
customer_id| INT| Customer ID
order_date| DATE| Date of order
amount| INT| Order amount

📊 Sample Dataset

Order ID| Customer ID| Order Date| Amount
1| 101| 2026-06-24| 1500
2| 121| 2025-03-26| 1500
3| 343| 2026-04-24| 2599
4| 456| 2024-04-28| 5000
5| 123| 2024-05-30| 4000

🔍 SQL Concepts Covered

1. ROW_NUMBER()

Assigns a unique sequential number to each row based on order amount.

SELECT customer_id, amount,
ROW_NUMBER() OVER(ORDER BY amount ASC) AS row_num
FROM orderrsszz;

2. RANK()

Assigns rankings based on order amount. Equal amounts receive the same rank, with gaps in subsequent rankings.

SELECT customer_id, amount,
RANK() OVER(ORDER BY amount ASC) AS rank_num
FROM orderrsszz;

3. DENSE_RANK()

Assigns rankings without leaving gaps after duplicate values.

SELECT customer_id, amount,
DENSE_RANK() OVER(ORDER BY amount ASC) AS rank_num
FROM orderrsszz;

4. Running Total

Calculates the cumulative order amount based on order dates.

SELECT order_id, order_date, amount,
SUM(amount) OVER (ORDER BY order_date) AS runningtotal
FROM orderrsszz;

📈 Expected Learning Outcomes

After completing this project, you will understand:

- SQL Database Creation
- Table Creation and Data Insertion
- SQL SELECT Statements
- Window Functions
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- Aggregate Window Functions
- Running Total Analysis

🚀 How to Run This Project

1. Install MySQL or MySQL Workbench.
2. Open a new SQL query tab.
3. Copy the SQL commands from the project file.
4. Execute the queries.
5. View the output of each window function.

👨‍💻 Author

Muhammed Dhilshad

Data Science Student
Trycod Tech School

⭐ Conclusion

This project provides practical experience with SQL Window Functions and demonstrates how SQL can be used to perform ranking, ordering, and cumulative calculations on real-world-style order data.

---

⭐ If you find this project useful, consider giving this repository a star!
