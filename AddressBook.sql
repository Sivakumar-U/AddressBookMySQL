create schema addressBook;
use addressBook;

CREATE TABLE addressBook(
    FirstName VARCHAR(50) NOT NULL PRIMARY KEY,
    LastName VARCHAR(50) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    City VARCHAR(50) NOT NULL,
    State VARCHAR(50) NOT NULL,
    Zip BIGINT(20) NOT NULL,
    PhoneNumber BIGINT(20) NOT NULL,
    Email VARCHAR(40) NOT NULL
);
DESCRIBE addressbook;

INSERT INTO addressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email) VALUES 
('Siva','Upparapalli','Muchivolu','Tirupati','AndhraPradesh',517536,8965471230,'sivakumar@gmail.com'),
('Mahesh','Petluru','Theertampadu','Nellore','AndhraPradesh',524135,7896541230,'mahi@gmail.com'),
('Raja','Nagireddy','Kothuru','Nellore','AndhraPradesh',524138,9874563210,'raja@gmail.com');
