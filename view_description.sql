View :

A view is a virtual table based on a SELECT query. It doesn't store data, just simplifies access to complex data.

Create VIEW :

To create a view in the database, use the CREATE VIEW Statement.

Syntax :

CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table
WHERE condition;

- In general, views are read only
- We cannot perform write operations like updating, deleting and inmerting rows in the base table throgh views.

Example :

CREATE VIEW ActiveLoans AS
SELECT 
    L.LoanID, M.Name AS MemberName, B.Title AS BookTitle, L.LoanDate, L.DueDate
FROM Loans L
JOIN Members M ON L.MemberID = M.MemberID
JOIN Books B ON L.BookID = B.BookID
WHERE L.ReturnDate IS NULL;

