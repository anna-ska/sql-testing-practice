-- QA Validation Queries
-- Database: SQLite
-- Purpose: Manual QA data validation using sample users and orders data


-- QV-001: Find active users
SELECT id,
       name,
       email,
       status
FROM users
WHERE status = 'active';


-- QV-002: Find users with missing phone numbers
SELECT id AS user_id,
       name AS user_name,
       phone
FROM users
WHERE phone IS NULL;


-- QV-003: Detect duplicate email addresses
SELECT email,
       COUNT(*) AS occurrences
FROM users
GROUP BY email
HAVING COUNT(*) > 1;


-- QV-004: Find orders with invalid status values
SELECT id AS order_id,
       status
FROM orders
WHERE status NOT IN ('paid', 'pending', 'cancelled');


-- QV-005: Find orders with non-positive amounts
SELECT id AS order_id,
       amount
FROM orders
WHERE amount <= 0;


-- QV-006: Find orders created within a date range
SELECT id AS order_id,
       user_id,
       amount,
       status,
       created_at
FROM orders
WHERE created_at BETWEEN '2026-10-03' AND '2026-10-08'
ORDER BY created_at ASC;


-- QV-007: Find users without orders
SELECT u.id AS user_id,
       u.name AS user_name
FROM users AS u
LEFT JOIN orders AS o
ON u.id = o.user_id
WHERE o.id IS NULL;


-- QV-008: Find orders without existing users
SELECT o.id AS order_id,
       o.user_id
FROM orders AS o
LEFT JOIN users AS u
ON o.user_id = u.id
WHERE u.id IS NULL;


-- QV-009: Show paid orders with user details
SELECT u.name AS user_name,
       o.id AS order_id,
       o.amount,
       o.created_at
FROM users AS u
INNER JOIN orders AS o
ON u.id = o.user_id
WHERE o.status = 'paid'
ORDER BY o.amount DESC;


-- QV-010: Count orders per user
SELECT u.name AS user_name,
       COUNT(o.id) AS orders_count
FROM users AS u
LEFT JOIN orders AS o
ON u.id = o.user_id
GROUP BY u.id, u.name
ORDER BY orders_count DESC;


-- QV-011: Calculate total paid order amount per user
SELECT u.name AS user_name,
       SUM(o.amount) AS total_paid_amount
FROM users AS u
INNER JOIN orders AS o
ON u.id = o.user_id
WHERE o.status = 'paid'
GROUP BY u.id, u.name
ORDER BY total_paid_amount DESC;


-- QV-012: Find users with more than one order
SELECT u.name AS user_name,
       COUNT(o.id) AS orders_count
FROM users AS u
INNER JOIN orders AS o
ON u.id = o.user_id
GROUP BY u.id, u.name
HAVING COUNT(o.id) > 1;