-- Expense Tracker SQL Script for MySQL
-- This script creates a simple table and shows basic CRUD operations.

-- 0. Create and select the database for this project.
CREATE DATABASE IF NOT EXISTS expense_tracker_db;
USE expense_tracker_db;

-- 1. Remove the table if it already exists so we can start fresh.
DROP TABLE IF EXISTS expenses;

-- 2. Create the expenses table with columns for id, title, amount, category, and date.
CREATE TABLE expenses (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  amount DECIMAL(10,2) NOT NULL,
  category VARCHAR(100) NOT NULL,
  date DATE NOT NULL
);

-- 3. Create Expense: add a new expense record.
INSERT INTO expenses (title, amount, category, date)
VALUES ('Lunch', 12.50, 'Food', '2026-06-18');

-- 4. Read Expenses: view all expense records.
SELECT * FROM expenses;

-- 5. Read Expense by id: view a single record using the id.
SELECT * FROM expenses
WHERE id = 1;

-- 6. Update Expense: change the values of an existing expense.
UPDATE expenses
SET title = 'Lunch with friend',
    amount = 14.00,
    category = 'Food',
    date = '2026-06-18'
WHERE id = 1;

-- 7. Delete Expense: remove an expense record by id.
DELETE FROM expenses
WHERE id = 1;
