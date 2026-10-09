# SQL Testing Practice

## Project Overview

This project demonstrates practical SQL skills used for data validation from a Manual QA perspective.

It uses a fictional SQLite database containing sample users and orders data. The project focuses on verifying data quality, relationships, business rules, and expected database values using SQL queries.

## Objective

The goal of this project is to demonstrate how SQL can support manual software testing by validating data stored in a relational database.

The project covers:

- filtering and sorting data
- NULL validation
- duplicate detection
- allowed-value checks
- range validation
- date-based filtering
- table relationships
- INNER JOIN and LEFT JOIN
- aggregate functions
- GROUP BY and HAVING
- basic data integrity checks

## Tools

- SQLite
- DBeaver Community
- Visual Studio Code
- Git
- GitHub

## Database Structure

The sample database contains two related tables:

### `users`

Stores sample user information including:

- ID
- name
- email
- account status
- phone number
- balance

### `orders`

Stores sample order information including:

- order ID
- user ID
- amount
- order status
- creation date

The tables are related through:

```text
users.id → orders.user_id
```

## Test Coverage

The project contains 12 SQL validation scenarios covering:

- active users
- missing phone numbers
- duplicate email addresses
- invalid order statuses
- non-positive order amounts
- date range validation
- users without orders
- orders without existing users
- paid orders with user details
- order count per user
- total paid order amount per user
- users with multiple orders

Detailed scenarios and expected results are available in:

[`documentation/sql-test-scenarios.md`](documentation/sql-test-scenarios.md)

SQL queries are available in:

[`queries/qa-validation-queries.sql`](queries/qa-validation-queries.sql)

## Repository Structure

```text
sql-testing-practice/
├── README.md
├── .gitignore
├── database/
│   ├── schema.sql
│   └── sample-data.sql
├── queries/
│   └── qa-validation-queries.sql
└── documentation/
    └── sql-test-scenarios.md
```

## How to Run

1. Create a new SQLite database.
2. Execute `database/schema.sql`.
3. Execute `database/sample-data.sql`.
4. Run the queries from `queries/qa-validation-queries.sql`.
5. Compare the results with the expected results documented in `documentation/sql-test-scenarios.md`.

## Notes

- All data used in this repository is fictional sample data created for training purposes.
- The project is focused on SQL usage relevant to Manual QA and data validation.
- The database scripts are intentionally simple and do not represent a production database design.

## Validation Result

The database was recreated from the repository scripts and all 12 SQL validation scenarios were executed in SQLite using DBeaver Community.

All executed queries produced the expected results documented in `documentation/sql-test-scenarios.md`.

**Execution date:** 2026-10-09

## Status

Completed