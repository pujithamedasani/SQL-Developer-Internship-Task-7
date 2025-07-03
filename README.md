# SQL-Developer-Internship-Task-7
# Task 7: Creating SQL Views

## Objective
Learn to create and use SQL views for abstraction, simplification, and data security.

## Deliverables
- `task7_views.sql` : Contains the view creation and drop statements
- `task7_views_output` : 	Shows outputs from each view for the above file
- `view_description` : Description for VIEW logic
- `view_operations.sql` : Operations and Description using VIEW
- `view_check.sql` : VIEW with CHECK option
- `library_schema.sql` : Contains tables for fetching data
  
## What we did
### 1. ActiveLoans
- Shows current unreturned book loans
- Includes book title, member name, loan and due dates

### 2. StaffFineSummary
- Shows how many fines each staff issued and the total amount

### 3. PaidFinesView
- Shows only paid fines
- Uses `WITH CHECK OPTION` to restrict updates through the view

## SQL Used 

- CREATE VIEW ... AS SELECT ...
- WITH CHECK OPTION to enforce view filtering logic
- DROP VIEW IF EXISTS to delete a view

## Tools Used
- MySQL Workbench / SQLiteStudio 

