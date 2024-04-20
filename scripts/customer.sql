-- Create the Customers DB
IF NOT EXISTS (SELECT *
FROM sys.databases
WHERE name = 'customerdb')
    CREATE DATABASE customerdb
    GO

-- Use the newly created database
USE CustomerDB;
GO

-- Create the Customers table
CREATE TABLE Customers
(
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Prefix NVARCHAR (50) NULL,
    FirstName NVARCHAR(100) NOT NULL,
    MiddleName NVARCHAR(100) NULL,
    LastName NVARCHAR(100) NOT NULL,
    Suffix NVARCHAR(50) NULL,
    Email NVARCHAR(255) NOT NULL,
    PhoneNumber NVARCHAR(20) NULL
);
GO

-- Add a unique constraint to the Email column
ALTER TABLE Customers
ADD CONSTRAINT UQ_Customers_Email UNIQUE (Email);
GO

-- Insert initial data into the Customers table
INSERT INTO Customers
    (Prefix, FirstName, MiddleName, LastName, Suffix, Email, PhoneNumber)
VALUES
    ('Mr.', 'John', 'Q.', 'Public', 'Jr.', 'john.q.public@example.com', '123-456-7890'),
    ('Ms.', 'Jane', 'R.', 'Doe', 'Sr.', 'jane.r.doe@example.com', '234-567-8901');
GO