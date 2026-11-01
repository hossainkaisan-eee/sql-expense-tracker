DROP TABLE IF EXISTS expenses;

CREATE TABLE expenses (
    expense_id INTEGER PRIMARY KEY,
    description TEXT,
    category TEXT,
    amount REAL,
    expense_date TEXT
);

INSERT INTO expenses
(expense_id, description, category, amount, expense_date)
VALUES
(1, 'Lunch', 'Food', 180, '2026-10-01'),
(2, 'Bus fare', 'Transport', 50, '2026-10-01'),
(3, 'Mobile recharge', 'Bills', 100, '2026-10-02'),
(4, 'Groceries', 'Food', 750, '2026-10-02'),
(5, 'Internet bill', 'Bills', 800, '2026-10-03'),
(6, 'Uber', 'Transport', 250, '2026-10-04'),
(7, 'Coffee', 'Food', 150, '2026-10-04');
SELECT * FROM expenses;

-- 1. Food expenses
SELECT * FROM expenses WHERE category = 'Food';

--2. Expenses above 200, biggest first
SELECT description, amount FROM expenses
WHERE amount > 200
ORDER BY amount DESC;

--3. Total spending
SELECT SUM(amount) AS total_spent FROM expenses;

--4. Total per category
SELECT category, SUM(amount) AS total
FROM  expenses
GROUP BY category
ORDER BY total DESC;

--5. Total spend per day
SELECT expense_date, SUM(amount) AS daily_total
FROM expenses
GROUP BY expense_date
ORDER BY expense_date;













