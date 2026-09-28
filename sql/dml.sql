-- DML scripts go here
-- Insert Sample Clients
INSERT INTO Client (Company_Name, Contact_Person, Email, Phone) VALUES
('TechCorp Solutions', 'Alice Smith', 'alice@techcorp.com', '9876543210'),
('Global Innovations', 'Bob Jones', 'bjones@globalinno.com', '9123456780');

-- Insert Sample Projects
INSERT INTO Project (Project_Name, Start_Date, End_Date, Budget, Client_ID) VALUES
('Enterprise Cloud Migration', '2026-01-10', '2026-06-30', 50000.00, 1),
('AI Analytics Dashboard', '2026-02-15', '2026-08-15', 35000.00, 2);

-- Insert Sample Software Products
INSERT INTO Software (Software_Name, Category, Version, Language) VALUES
('CloudSync Manager', 'Cloud Infrastructure', 'v1.2.0', 'Python'),
('DataVision AI', 'Artificial Intelligence', 'v2.0.1', 'Python');

-- Insert Sample Developers
INSERT INTO Developer (Name, Role, Email, Experience_Years, Project_ID) VALUES
('J. Vasanth Kumar', 'Backend Lead', 'vasanth@ai.com', 3, 1),
('M. Tanish', 'Cloud Engineer', 'tanish@ai.com', 2, 1),
('V. Jaswanth', 'AI Specialist', 'jaswanth@ai.com', 2, 2),
('K. Janardhana', 'Frontend Developer', 'janardhana@ai.com', 3, 2);

-- Insert Sample Licenses
INSERT INTO License (License_Key, Expiry_Date, Cost, Software_ID) VALUES
('CS-9876-XYZ1-5542', '2027-01-10', 1200.00, 1),
('DV-1234-ABC9-9988', '2027-02-15', 2500.00, 2);

-- Insert Sample Releases
-- Insert Sample Releases 
INSERT INTO App_Release (Release_Version, Release_Date, Software_ID) VALUES 
('v1.0.0', '2026-01-20', 1), 
('v1.2.0', '2026-03-01', 1), 
('v2.0.1', '2026-04-10', 2);
