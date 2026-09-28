-- DDL scripts
CREATE DATABASE SoftwareManagementSystem;
USE SoftwareManagementSystem;

-- 1. Client Table
CREATE TABLE Client (
    Client_ID INT PRIMARY KEY AUTO_INCREMENT,
    Company_Name VARCHAR(100) NOT NULL,
    Contact_Person VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15) NOT NULL
);

-- 2. Project Table
CREATE TABLE Project (
    Project_ID INT PRIMARY KEY AUTO_INCREMENT,
    Project_Name VARCHAR(100) NOT NULL,
    Start_Date DATE NOT NULL,
    End_Date DATE NOT NULL,
    Budget DECIMAL(12, 2) CHECK (Budget > 0),
    Client_ID INT,
    FOREIGN KEY (Client_ID) REFERENCES Client(Client_ID)
);

-- 3. Software Table
CREATE TABLE Software (
    Software_ID INT PRIMARY KEY AUTO_INCREMENT,
    Software_Name VARCHAR(100) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    Version VARCHAR(20) NOT NULL,
    Language VARCHAR(50) NOT NULL
);

-- 4. Developer Table
CREATE TABLE Developer (
    Developer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Role VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Experience_Years INT CHECK (Experience_Years >= 0),
    Project_ID INT,
    FOREIGN KEY (Project_ID) REFERENCES Project(Project_ID)
);

-- 5. License Table
CREATE TABLE License (
    License_ID INT PRIMARY KEY AUTO_INCREMENT,
    License_Key VARCHAR(255) UNIQUE NOT NULL,
    Expiry_Date DATE NOT NULL,
    Cost DECIMAL(10, 2) CHECK (Cost >= 0),
    Software_ID INT,
    FOREIGN KEY (Software_ID) REFERENCES Software(Software_ID)
);

-- 6. Release Table
CREATE TABLE App_Release (
    Release_ID INT PRIMARY KEY AUTO_INCREMENT,
    Release_Version VARCHAR(20) NOT NULL,
    Release_Date DATE NOT NULL,
    Software_ID INT,
    FOREIGN KEY (Software_ID) REFERENCES Software(Software_ID)
);
