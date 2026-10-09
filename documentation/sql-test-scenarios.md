# SQL Test Scenarios

## Project Context

This project uses a fictional SQLite database containing sample users and orders data.

The scenarios below demonstrate SQL-based data validation from a Manual QA perspective.

## Test Scenarios

### QV-001 — Find Active Users

**Objective:**  
Verify which users currently have the `active` status.

**Expected Result:**  
Three users should be returned: Anna, Mark, and Tom.

---

### QV-002 — Find Users with Missing Phone Numbers

**Objective:**  
Identify users whose phone number is missing.

**Expected Result:**  
Two users should be returned: Julia and Kate.

---

### QV-003 — Detect Duplicate Email Addresses

**Objective:**  
Check whether the same email address is assigned to more than one user.

**Expected Result:**  
No records should be returned.

---

### QV-004 — Find Orders with Invalid Status Values

**Objective:**  
Verify that order status values are limited to `paid`, `pending`, and `cancelled`.

**Expected Result:**  
No records should be returned.

---

### QV-005 — Find Orders with Non-Positive Amounts

**Objective:**  
Identify orders with an amount equal to or lower than zero.

**Expected Result:**  
No records should be returned.

---

### QV-006 — Find Orders Created Within a Date Range

**Objective:**  
Identify orders created between `2026-10-03` and `2026-10-08`, inclusive.

**Expected Result:**  
Three orders should be returned: 102, 103, and 104.

---

### QV-007 — Find Users Without Orders

**Objective:**  
Identify users who do not have any associated orders.

**Expected Result:**  
One user should be returned: Julia.

---

### QV-008 — Find Orders Without Existing Users

**Objective:**  
Check whether any order references a user who does not exist in the `users` table.

**Expected Result:**  
No records should be returned.

---

### QV-009 — Show Paid Orders with User Details

**Objective:**  
Display paid orders together with the associated user name and creation date.

**Expected Result:**  
Three orders should be returned: 103, 105, and 101, ordered by amount from highest to lowest.

---

### QV-010 — Count Orders per User

**Objective:**  
Count how many orders are associated with each user.

**Expected Result:**  
Anna should have 2 orders, Mark 1, Julia 0, Tom 1, and Kate 1.

---

### QV-011 — Calculate Total Paid Order Amount per User

**Objective:**  
Calculate the total value of paid orders for each user.

**Expected Result:**  
Anna should have a total paid amount of `170.0`, and Kate `90.0`.

---

### QV-012 — Find Users with More Than One Order

**Objective:**  
Identify users who have more than one associated order.

**Expected Result:**  
One user should be returned: Anna with 2 orders.