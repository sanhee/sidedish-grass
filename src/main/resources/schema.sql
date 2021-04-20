DROP TABLE IF EXISTS ORDERS;
DROP TABLE IF EXISTS ITEM;
DROP TABLE IF EXISTS CATEGORY;

DROP TABLE IF EXISTS USERS;

CREATE TABLE CATEGORY (
                          ID BIGINT PRIMARY KEY AUTO_INCREMENT,
                          NAME VARCHAR(50) NOT NULL
);

CREATE TABLE ITEM (
                      ID BIGINT PRIMARY KEY AUTO_INCREMENT,
                      TITLE VARCHAR(500) NOT NULL,
                      DESCRIPTION VARCHAR(500),
                      PRICE INT NOT NULL,
                      BADGE VARCHAR(100) NOT NULL,
                      DELIVERY VARCHAR(100) NOT NULL,
                      IMAGE VARCHAR(500) NOT NULL,
                      CATEGORY_KEY int,
                      CATEGORY_ID BIGINT,
                      FOREIGN KEY (CATEGORY_ID) REFERENCES CATEGORY(ID)
);


CREATE TABLE USERS (
                       ID BIGINT PRIMARY KEY AUTO_INCREMENT,
                       EMAIL VARCHAR(100) UNIQUE,
                       PASSWORD VARCHAR(50) NOT NULL
);

CREATE TABLE ORDERS (
                        ID BIGINT PRIMARY KEY AUTO_INCREMENT,
                        USER_ID BIGINT,
                        USER_KEY INT,
                        ITEM_ID BIGINT,
                        COUNT INT NOT NULL,
                        FOREIGN KEY (USER_ID) REFERENCES USERS(ID),
                        FOREIGN KEY (ITEM_ID) REFERENCES ITEM(ID)
);