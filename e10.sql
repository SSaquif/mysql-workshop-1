CREATE TABLE floors (
    floorNo INT AUTO_INCREMENT,
    windows INT,
    
    PRIMARY KEY (floorNo)
);

CREATE TABLE rooms (
    roomNo INT AUTO_INCREMENT,
    floorNo INT NOT NULL,
    roomCapacity INT NOT NULL,
    isRentable BOOLEAN NOT NUll,
    hasCarpet BOOLEAN NOT NUll,
    roomType ENUM ('rentable', 'kitchen', 'janitor', 'gym', 'restaurant', 'bathroom', 'other') NOT NUll,
    
    PRIMARY KEY (roomNo),
    FOREIGN KEY (floorNo) REFERENCES floors (floorNo)
);

CREATE TABLE bookings (
    roomNo INT NOT NUll,
    bookingDate DATETIME NOT NUll,
    checkOutDate DATETIME NOT NULL,
    customerName VARCHAR(255),
    
    PRIMARY KEY (roomNo, bookingDate)
    FOREIGN KEY (roomNo) REFERENCES rooms (roomNo)
);