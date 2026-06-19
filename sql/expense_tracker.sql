CREATE DATABASE IF NOT EXISTS expense_tracker_db;
USE expense_tracker_db;

DROP TABLE IF EXISTS expenses;

CREATE TABLE expenses (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  amount DECIMAL(10,2) NOT NULL,
  category VARCHAR(100) NOT NULL,
  date DATE NOT NULL
);

INSERT INTO expenses (title, amount, category, date)
VALUES ('Lunch', 12.50, 'Food', '2026-06-18');


SELECT * FROM expenses;

SELECT * FROM expenses
WHERE id = 1;

UPDATE expenses
SET title = 'Lunch with friend',
    amount = 14.00,
    category = 'Food',
    date = '2026-06-18'
WHERE id = 1;

-- 7. Delete Expense: remove an expense record by id.
DELETE FROM expenses
WHERE id = 1;
