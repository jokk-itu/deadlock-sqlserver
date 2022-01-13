USE msdb
GO

--Initial Data
CREATE TABLE Employees (
    EmpId INT IDENTITY,
    EmpName VARCHAR(16),
    Phone VARCHAR(16)
)
GO

INSERT INTO Employees (EmpName, Phone)
VALUES ('Martha', '800-555-1212'), ('Jimmy', '619-555-8080')
GO

CREATE TABLE Suppliers(
    SupplierId INT IDENTITY,
    SupplierName VARCHAR(64),
    Fax VARCHAR(16)
)
GO

INSERT INTO Suppliers (SupplierName, Fax)
VALUES ('Acme', '877-555-6060'), ('Rockwell', '800-257-1234')
GO


--SCRIPT 1
BEGIN TRAN

UPDATE Employees
SET EmpName = 'Mary'
WHERE EmpId = 1


UPDATE Suppliers
SET Fax = N'555-1212'
WHERE SupplierId = 1



--SCRIPT 2
BEGIN TRAN

UPDATE Suppliers
SET Fax = N'555-1212'
WHERE SupplierId = 1

UPDATE Employees
SET Phone = N'555-9999'
WHERE EmpId = 1
