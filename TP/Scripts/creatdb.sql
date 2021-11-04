use webgoat_coins;

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

