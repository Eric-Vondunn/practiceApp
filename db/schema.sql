DROP DATABASE IF EXISTS bank_app_db;
CREATE DATABASE bank_app_db;

USE bank_app_db;

CREATE TABLE transaction_data
(
  id INT NOT NULL
  AUTO_INCREMENT,
  trans_date VARCHAR
  (45) NULL,
  amount INT
  (10) NULL,
  category VARCHAR
  (45),
  moreinfo VARCHAR
  (50),
  comments VARCHAR
  (100),
  PRIMARY KEY
  (id)
);

  INSERT INTO transaction_data
    (date, payer_payee, amount, category, account)
  VALUES
    ("11/11/2020", "Eric", "10", "purchase", "1");


  CREATE TABLE user_data
  (
    id INT NOT NULL
    AUTO_INCREMENT,
  fullname VARCHAR
    (45) NULL,
  email VARCHAR
    (45) NULL,
  password VARCHAR
    (45),
  accountnumber INT
    (50),
  PRIMARY KEY
    (id)
);