CREATE DATABASE bookstoredb;
USE bookstoredb; 

-- Question 2 Tables --
CREATE TABLE book (
bookId INT PRIMARY KEY,
title VARCHAR(50)
);

CREATE TABLE author (
    authorId INT PRIMARY KEY,
    authorName VARCHAR(50)
);

CREATE TABLE book_author (
bookId INT,
authorId INT
);

CREATE TABLE book_language (
languageId INT PRIMARY KEY,
languageName VARCHAR(100)
);

CREATE TABLE publisher (
publisherId INT PRIMARY KEY,
publisherName VARCHAR(150)
);

CREATE TABLE customer (
customerId INT PRIMARY KEY,
firstName VARCHAR(100),
lastName VARCHAR(100)
);

CREATE TABLE customer_address (
customerId INT,
addressId INT,
statusId INT
);

CREATE TABLE address_status (
statusId INT,
statusName VARCHAR(50)

CREATE TABLE address (
addressId INT,
street VARCHAR(200),
city VARCHAR(100),
countryId INT
);

CREATE TABLE country (
countryId INT ,
countryName VARCHAR(50)
);

CREATE TABLE cust_order (
orderId INT ,
customerId INT,
orderate DATE,
shipping_method INT
);

CREATE TABLE order_line (
lineId INT,
orderId INT,
bookId INT,
quantity INT
); 

CREATE TABLE shipping_method (
methodId INT,
methodName VARCHAR(100)
);

CREATE TABLE order_history (
historyId INT,
orderId INT,
statusId INT,
statusDate DATE
);   

CREATE TABLE order_status (
statusId INT,
statusName VARCHAR(100)
);

 -- Question 4 Creating user groups and roles --
CREATE USER 'felixadmin@localhost' IDENTIFIED BY 'Felix@1234';

-- Creating the user account for our bookstoredb can only access books --
CREATE USER 'kip@localhost' IDENTIFIED BY 'kip1234';

-- Creating the receptionist account for our bookstoredb can access books --
CREATE USER 'karimi@localhost' IDENTIFIED BY 'kari1234';

-- Give all permission to felixadmin --
GRANT ALL PRIVILEGES ON bookstoredb.* TO 'felixadmin@localhost';

-- Giving access to our receptionist Karimi --
GRANT SELECT, INSERT, UPDATE ON bookstoredb.* TO 'karimi@localhost';

-- Giving user kip access to the book table only
GRANT SELECT ON bookstoredb.book TO 'kip@localhost';


-- Question 5 testing bookstoeredb ----

SELECT * FROM book;

SELECT * FROM author;

SELECT * FROM order_history;

SELECT * FROM shipping_method;