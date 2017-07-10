CREATE TABLE chickenCoop (
    chickenId INT AUTO_INCREMENT,
    chickenType ENUM ('rooster', 'hen', 'chicks') NOT NULL,
    birthDate DATETIME NOT NULL,
    
    PRIMARY KEY (chickenId)
);