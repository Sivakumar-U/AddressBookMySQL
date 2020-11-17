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
