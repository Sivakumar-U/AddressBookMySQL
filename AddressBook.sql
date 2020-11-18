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
SELECT COUNT(*) FROM addressBook WHERE City = 'Tirupati';
SELECT COUNT(*) FROM addressBook WHERE State = 'AP';
SELECT	* FROM addressBook WHERE City = 'Nellore' ORDER BY FirstName ASC;
ALTER TABLE addressBook ADD Type VARCHAR(20) after LastName;
UPDATE addressBook SET Type = 'Family' WHERE FirstName = 'Raja';
UPDATE addressBook SET Type = 'Family' WHERE FirstName = 'Jyo';
UPDATE addressBook SET Type = 'Friends' WHERE FirstName = 'RajaRamesh';
UPDATE addressBook SET Type = 'Profession' WHERE FirstName = 'Mahesh';
SELECT COUNT(*) FROM addressBook WHERE Type = 'Family'; 
SELECT Type, count(FirstName) FROM addressbook GROUP BY Type;

 CREATE TABLE Friend(
   FirstName VARCHAR(15) NOT NULL PRIMARY KEY,
    LastName VARCHAR(15) NOT NULL,
    Address VARCHAR(20) NOT NULL,
    City VARCHAR(15) NOT NULL,
    State VARCHAR(15) NOT NULL,
    Zip VARCHAR(10) NOT NULL,
    PhoneNumber VARCHAR(10) NOT NULL,
    Email VARCHAR(30) NOT NULL
);
ALTER TABLE Friend MODIFY Zip VARCHAR(10);
SHOW TABLES;
CREATE TABLE Family(
  FirstName VARCHAR(15) NOT NULL PRIMARY KEY,
    LastName VARCHAR(15) NOT NULL,
    Address VARCHAR(20) NOT NULL,
    City VARCHAR(15) NOT NULL,
    State VARCHAR(15) NOT NULL,
    Zip VARCHAR(10) NOT NULL,
    PhoneNumber VARCHAR(10) NOT NULL,
    Email VARCHAR(30) NOT NULL
);

INSERT INTO Family(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email) VALUES
    ('JyoShi', 'Upparapalli', 'Muchivolu', 'Tirupati', 'AP', '517536', '9177255890', 'jyoshi@gmail.com'),
    ('Kishore', 'Bandi', 'MR Palli','Tirupati', 'AP', '517544', '7896541230', 'kishore@gmail.com');	
    
INSERT INTO Friend(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email) VALUES
    ('Vamsi', 'Oruganti', 'Muchivolu', 'Vijayawada', 'AP', '512741', '8521479635', 'vamsi@gmail.com'),
    ('Prudhvi', 'Dandi', 'Sr Nagar', 'Hyderabad', 'TS', '510006', '9874565213', 'prudhvi@gmail.com');
SELECT * FROM Friend;