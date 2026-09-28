-- Queries go here.
-- 1. Retrieve all projects along with their respective client company names
SELECT p.Project_ID, p.Project_Name, p.Budget, c.Company_Name, c.Contact_Person
FROM Project p
JOIN Client c ON p.Client_ID = c.Client_ID;

-- 2. List all developers assigned to a specific project with their experience and roles
SELECT d.Name, d.Role, d.Experience_Years, p.Project_Name
FROM Developer d
JOIN Project p ON d.Project_ID = p.Project_ID
WHERE p.Project_Name = 'Enterprise Cloud Migration';

-- 3. Find all active software licenses and their corresponding software products
SELECT l.License_Key, l.Expiry_Date, l.Cost, s.Software_Name, s.Version
FROM License l
JOIN Software s ON l.Software_ID = s.Software_ID
WHERE l.Expiry_Date > CURRENT_DATE();

-- 4. Get the version release history for a specific software product
SELECT s.Software_Name, r.Release_Version, r.Release_Date
FROM App_Release r
JOIN Software s ON r.Software_ID = s.Software_ID
WHERE s.Software_Name = 'CloudSync Manager'
ORDER BY r.Release_Date DESC;

-- 5. Calculate total budget allocated across all projects per client
SELECT c.Company_Name, SUM(p.Budget) AS Total_Budget_Allocated
FROM Project p
JOIN Client c ON p.Client_ID = c.Client_ID
GROUP BY c.Company_Name;
