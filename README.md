# Expense Tracker (SQL)

A beginner SQL project: a single `expenses` table with queries to track and summarise spending in BDT.

## Tools Used
- SQL (SQLite syntax)
- SQLite Online (browser-based SQL IDE)

## Table Structure

| Column | Type | Description |
|---|---|---|
| expense_id | INTEGER (Primary Key) | Unique ID per expense |
| description | TEXT | What the money was spent on |
| category | TEXT | Food, Transport or Bills |
| amount | REAL | Amount spent in BDT |
| expense_date | TEXT | Date in YYYY-MM-DD format |

## Queries Included
1. Filter expenses by category
2. Expenses above 200, sorted by amount
3. Total spending (`SUM`)
4. Total per category (`GROUP BY`)
5. Total spent per day

## How to Run
1. Open any online SQL IDE (e.g. SQLite Online).
2. Paste the contents of `expenses.sql`.
3. Click **Run**.
