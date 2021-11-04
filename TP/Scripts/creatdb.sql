/* Create the full set of Classic Models Tables */

CREATE TABLE Customers (
  customerNumber INTEGER NOT NULL,
  customerName VARCHAR(50) NOT NULL,
  logoFileName VARCHAR(100) NULL,
  contactLastName VARCHAR(50) NOT NULL,
  contactFirstName VARCHAR(50) NOT NULL,
  phone VARCHAR(50) NOT NULL,
  addressLine1 VARCHAR(50) NOT NULL,
  addressLine2 VARCHAR(50) NULL,
  city VARCHAR(50) NOT NULL,
  state VARCHAR(50) NULL,
  postalCode VARCHAR(15) NULL,
  country VARCHAR(50) NOT NULL,
  salesRepEmployeeNumber INTEGER NULL,
  creditLimit DOUBLE NULL,
  PRIMARY KEY (customerNumber)
);

CREATE TABLE CustomerLogin (
        email VARCHAR(100) NOT NULL,
        customerNumber INTEGER NOT NULL,
        password VARCHAR(40) NOT NULL,
        question_id SMALLINT NULL,
        answer VARCHAR(50) NULL,
        PRIMARY KEY (email)
);

CREATE TABLE SecurityQuestions (
        question_id SMALLINT NOT NULL,
        question_text VARCHAR(400) NOT NULL,
        PRIMARY KEY (question_id)
);


CREATE TABLE Employees (
  employeeNumber INTEGER NOT NULL,
  lastName VARCHAR(50) NOT NULL,
  firstName VARCHAR(50) NOT NULL,
  extension VARCHAR(10) NOT NULL,
  email VARCHAR(100) NOT NULL,
  officeCode VARCHAR(10) NOT NULL,
  reportsTo INTEGER NULL,
  jobTitle VARCHAR(50) NOT NULL,
  PRIMARY KEY (employeeNumber)
);

CREATE TABLE Offices (
  officeCode VARCHAR(10) NOT NULL,
  city VARCHAR(50) NOT NULL,
  phone VARCHAR(50) NOT NULL,
  addressLine1 VARCHAR(50) NOT NULL,
  addressLine2 VARCHAR(50) NULL,
  state VARCHAR(50) NULL,
  country VARCHAR(50) NOT NULL,
  postalCode VARCHAR(15) NOT NULL,
  territory VARCHAR(10) NOT NULL,
  PRIMARY KEY (officeCode)
);

CREATE TABLE OrderDetails (
  orderNumber INTEGER NOT NULL,
  productCode VARCHAR(15) NOT NULL,
  quantityOrdered INTEGER NOT NULL,
  priceEach DOUBLE NOT NULL,
  orderLineNumber SMALLINT NOT NULL,
  PRIMARY KEY (orderNumber, productCode)
);

CREATE TABLE Orders (
  orderNumber INTEGER NOT NULL,
  orderDate DATETIME NOT NULL,
  requiredDate DATETIME NOT NULL,
  shippedDate DATETIME NULL,
  status VARCHAR(15) NOT NULL,
  comments TEXT NULL,
  customerNumber INTEGER NOT NULL,
  PRIMARY KEY (orderNumber)
);


CREATE TABLE Payments (
  customerNumber INTEGER NOT NULL,  
  cardType VARCHAR(50) NOT NULL,
  creditCardNumber VARCHAR(50) NOT NULL,
  verificationCode SMALLINT NOT NULL,
  cardExpirationMonth VARCHAR(3) NOT NULL,
  cardExpirationYear VARCHAR(5) NOT NULL,  
  confirmationCode VARCHAR(50) NOT NULL,
  paymentDate DATETIME NOT NULL,
  amount DOUBLE NOT NULL,
  PRIMARY KEY (customerNumber, confirmationCode)
);

CREATE TABLE Categories(
  catNumber INTEGER NOT NULL,
  catName VARCHAR(50) NOT NULL,
  catDesc TEXT NOT NULL,
  PRIMARY KEY (catNumber)
);

CREATE TABLE Products (
  productCode VARCHAR(15) NOT NULL,
  productName VARCHAR(200) NOT NULL,
  catNumber INTEGER NOT NULL,
  productImage VARCHAR(100) NOT NULL,
  productVendor VARCHAR(50) NOT NULL,
  productDescription TEXT NOT NULL,
  quantityInStock SMALLINT NOT NULL,
  buyPrice DOUBLE NOT NULL,
  MSRP DOUBLE NOT NULL,
  PRIMARY KEY (productCode)
);

CREATE TABLE Comments(
        commentNumber INTEGER NOT NULL AUTO_INCREMENT,
        productCode VARCHAR(15) NOT NULL,
        email VARCHAR(100) NOT NULL,
        comment TEXT NOT NULL,
        PRIMARY KEY (commentNumber)
);
