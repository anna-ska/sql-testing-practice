INSERT INTO users (id, name, email, status, phone, balance) VALUES
(1, 'Anna', 'anna@example.com', 'active', '111-111-111', 120.50),
(2, 'Mark', 'mark@example.com', 'active', '222-222-222', 80.00),
(3, 'Julia', 'julia@example.com', 'inactive', NULL, 45.25),
(4, 'Tom', 'tom@example.com', 'active', '444-444-444', 200.00),
(5, 'Kate', 'kate@example.com', 'inactive', NULL, 60.00);

INSERT INTO orders (id, user_id, amount, status, created_at) VALUES
(101, 1, 50.00, 'paid', '2026-10-01'),
(102, 2, 75.50, 'pending', '2026-10-03'),
(103, 1, 120.00, 'paid', '2026-10-05'),
(104, 4, 35.00, 'cancelled', '2026-10-08'),
(105, 5, 90.00, 'paid', '2026-10-09');