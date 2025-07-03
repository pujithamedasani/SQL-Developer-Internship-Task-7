-- View of Active Loans with Book & Member Info
CREATE VIEW ActiveLoans AS
SELECT 
    L.LoanID, M.Name AS MemberName, B.Title AS BookTitle,
    L.LoanDate, L.DueDate
FROM Loans L
JOIN Members M ON L.MemberID = M.MemberID
JOIN Books B ON L.BookID = B.BookID
WHERE L.ReturnDate IS NULL;
-- Simplifies access to current loans.

--View of Total Fines Issued by Staff
CREATE VIEW StaffFineSummary AS
SELECT 
    S.StaffID, S.Name AS StaffName, COUNT(F.FineID) AS TotalFines, SUM(F.Amount) AS TotalCollected
FROM Fines F
JOIN Staff S ON F.StaffID = S.StaffID
GROUP BY S.StaffID, S.Name;
-- Summarizes fine handling activity per staff.

-- View with WITH CHECK OPTION
CREATE VIEW PaidFinesView AS
SELECT * FROM Fines
WHERE Paid = TRUE
WITH CHECK OPTION;
-- Prevents insert/update through the view that violates the Paid = TRUE rule.

-- Drop a View
DROP VIEW IF EXISTS PaidFinesView;
