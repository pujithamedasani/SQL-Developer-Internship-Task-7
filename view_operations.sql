Querying using VIEW :
We can use view name instead of writing the whole query which is the original one to extract data .

Syntax :

SELECT *
FROM view_name ;

Query :
SELECT * FROM ActiveLoans ;

Output:

+--------+------------+-----------+------------+------------+
| LoanID | MemberName | BookTitle | LoanDate   | DueDate    |
+--------+------------+-----------+------------+------------+
|      1 | Doe        | 1984      | 2025-06-01 | 2025-06-15 |
+--------+------------+-----------+------------+------------+

To List all available VIEWs:
It is used in SQLLite ,so we use this syntax:

SELECT name
FROM sqlite_master
WHERE TYPE ='view'

DELETE View :
To remove a view from a database, use the DROP VIEW statement.

Syntax:

DROP VIEW View_name:

Query:

DROP VIEW IF EXISTS PaidFinesView;

Advantages:

- Views are used to write complex queries that involves multiple joins,group by, etc., and can be used whenever needed.
- Restrict access to the data such that a user can only see limited data instead of a complete table.
