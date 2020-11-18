create schema addressBook;
use addressBook;

CREATE TABLE addressBook(
    FirstName VARCHAR(50) NOT NULL PRIMARY KEY,
    LastName VARCHAR(50) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    City VARCHAR(50) NOT NULL,
    State VARCHAR(50) NOT NULL,
    Zip BIGINT(20) NOT NULL,
    PhoneNumber VARCHAR(10) NOT NULL,
    Email VARCHAR(40) NOT NULL
);
DESCRIBE addressbook;

INSERT INTO addressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email) VALUES 
('Jyo','Upparapalli','Muchivolu','Tirupati','AndhraPradesh',517536,8965471230,'sivakumar@gmail.com'),
('Maheshwar','Petluru','Theertampadu','Nellore','AndhraPradesh',524135,7896541230,'mahi@gmail.com'),
('RajaRamesh','Nagireddy','Kothuru','Nellore','AndhraPradesh',524138,9874563210,'raja@gmail.com');

SELECT * FROM addressBook;
ALTER TABLE addressBook MODIFY PhoneNumber VARCHAR(10);
UPDATE addressBook SET State = 'AP' WHERE FirstName = 'Maheshwar';
DELETE FROM addressBook WHERE FirstName = 'Siva';
SELECT * FROM addressBook WHERE City = 'Gudur';
SELECT * FROM addressBook WHERE State = 'AndhraPradesh';