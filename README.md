# Expense Tracker Application using SQL

A simple expense tracker using MySQL. With  SQL CRUD operations.


This is a simple project 
-   create a table in SQL
-   add data (INSERT)
-   read data (SELECT)
-   change data (UPDATE)
-  delete data (DELETE)

## The Table

We have one table called `expenses` with 5 columns:
- `id` - the unique number for each expense
- `title` - what the expense is for (like "Lunch")
- `amount` - how much it costs
- `category` - the type (Food, Travel, etc)
- `date` - when you spent the money


1. Start MySQL:
```bash
sudo service mysql start
```

2. Run the SQL file:
```bash
sudo mysql expense_tracker_db < sql/expense_tracker.sql
```

3. Check the results:
```bash
sudo mysql expense_tracker_db -e "SELECT * FROM expenses;"
```



The script will:
- Create a database named `expense_tracker_db`
- Create a table named `expenses`
- Add one example expense
- Show you the data

## The SQL Commands in the File

1. `DROP TABLE IF EXISTS expenses;` - Remove the old table if it exists
2. `CREATE TABLE expenses (...)` - Create a new table
3. `INSERT INTO expenses ...` - Add a new expense
4. `SELECT * FROM expenses;` - Show all expenses
5. `SELECT ... WHERE id = 1;` - Show one expense by id
6. `UPDATE expenses ...` - Change an expense
7. `DELETE FROM expenses ...` - Delete an expense

## Next Steps

 can connect this to Node.js and then React.