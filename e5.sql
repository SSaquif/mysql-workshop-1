CREATE TABLE Account (
    id INT AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(40) NOT NULL,
    createdOn DATETIME NOT NULL,
    modifiedOn DATETIME,
    
    PRIMARY KEY (id)
);

CREATE TABLE AddressBook (
    id INT AUTO_INCREMENT,
    accountId INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    createdOn DATETIME NOT NULL,
    modifiedOn DATETIME,
    
    PRIMARY KEY(id),
    FOREIGN KEY(accountId) REFERENCES Account (id)
);

CREATE TABLE Entry (
    id INT AUTO_INCREMENT,
    addressBookId INT NOT NULL,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255),
    type ENUM ('home', 'work', 'other'),
    subtype ENUM ('phone', 'address', 'email'),
    contentLineOne VARCHAR(255) NOT NULL,
    contentLineTwo VARCHAR(255),
    contentLineThree VARCHAR(255),
    contentLineFour VARCHAR(255),
    contentlineFive VARCHAR(255),
    
    PRIMARY KEY(id),
    FOREIGN KEY(addressBookId) REFERENCES AddressBook (id)
);

CREATE TABLE Test (
    testField VARCHAR(255)
);

