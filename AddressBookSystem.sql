# --UC1--
CREATE DATABASE AddressBookDB;

# --UC2--
USE AddressBookDB;
CREATE TABLE AddressBook (
    ContactID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    Zip VARCHAR(10),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100)
);

# --UC3--
INSERT INTO AddressBook (FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email)
VALUES ('John', 'Doe', '123 Main St', 'City', 'State', '12345', '123-456-7890', 'john@example.com');

# --UC4--
UPDATE AddressBook
SET Address = '456 New St', City = 'New City', State = 'New State', Zip = '54321'
WHERE FirstName = 'John' AND LastName = 'Doe';

# --UC5--
DELETE FROM AddressBook
WHERE FirstName = 'John' AND LastName = 'Doe';

# --UC6--
SELECT * FROM AddressBook
WHERE City = 'City' OR State = 'State';

# --UC7--
SELECT City, State, COUNT(*) AS Size
FROM AddressBook
GROUP BY City, State;

# --UC8--
SELECT *
FROM AddressBook
WHERE City = 'City'
ORDER BY FirstName, LastName;

# --UC9--
ALTER TABLE AddressBook
ADD Type VARCHAR(50);

# --UC10--
SELECT Type, COUNT(*) AS Count
FROM AddressBook
GROUP BY Type;






