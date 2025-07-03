VIEW with CHECK option :

It ensures that any modifications like inserts or updates made through the view must adhere to the view's defining WHERE clause. Basically,it prevents the data to be modified in a way that would make any longer visible through VIEW .

Query:

CREATE VIEW PaidFinesView AS
SELECT * FROM Fines
WHERE Paid = TRUE
WITH CHECK OPTION;

Output :

+--------+--------+---------+--------+------------+------+
| FineID | LoanID | StaffID | Amount | IssuedDate | Paid |
| ------ | ------ | ------- | ------ | ---------- | ---- |
| 2      | 1      | 1       | 50.00  | 2024-05-15 | TRUE |
+--------+--------+---------+--------+------------+------+
