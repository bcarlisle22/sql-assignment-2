-- part 1.1: creating the database 

--customers table
CREATE TABLE Customers(
    CustomerID INT NOT NULL,
    CustomerName VARCHAR(255),
    Country VARCHAR(255),
    PRIMARY KEY (CustomerID)
);

--orders table
CREATE TABLE Orders(
    OrderID INT NOT NULL,
    CustomerID INT NOT NULL,
    OrderDate DATE,
    TotalAmount FLOAT,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- part 1.2: insert data into tables
--Customers Table
INSERT INTO Customers (CustomerID, CustomerName, Country) VALUES ('1', 'Alice', 'USA');
INSERT INTO Customers (CustomerID, CustomerName, Country) VALUES ('2', 'Bob', 'UK');
INSERT INTO Customers (CustomerID, CustomerName, Country) VALUES ('3', 'Charlie', 'USA');
INSERT INTO Customers (CustomerID, CustomerName, Country) VALUES ('4', 'Diana', 'Canada');
INSERT INTO Customers (CustomerID, CustomerName, Country) VALUES ('5', 'Eve', 'Australia');

--Orders Table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES ('101', '1', '2024-01-15', '120.50');
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES ('102', '1', '2024-02-10', '80.00');
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES ('103', '2', '2024-01-20', '200.00');
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES ('104', '3', '2024-03-12', '150.00');
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES ('105', '4', '2024-02-05', '60.00');
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES ('106', '5', '2024-03-30', '90.00');

--Display tables
SELECT * FROM Customers;
SELECT * FROM Orders;
