DROP DATABASE IF EXISTS dm_db;
CREATE DATABASE dm_db;
USE dm_db;
DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
			RowNumber		INT,
			CustomerId		INT,
			Surname			VARCHAR(256),
			CreditScore		INT,
			Geography		VARCHAR(256),
			Gender			ENUM ('Male', 'Female'),
			Age				INT,
			Tenure			INT,
			Balance			DECIMAL(10,2),
			NumOfProducts	INT,
			HasCrCard		ENUM ('1', '0'),
			IsActiveMember	ENUM ('1', '0'),
			EstimatedSalary	DECIMAL(10,2),
	PRIMARY KEY (customerId)
);
USE dm_db;
SET GLOBAL LOCAL_INFILE=true;
LOAD DATA LOCAL INFILE 'C:/Users/babat/OneDrive/Documents/Tech1M DA Bootcamp/Project/Data Migration Project/data_migration.csv'
INTO TABLE customer
FIELDS TERMINATED BY ','
ENCLOSED BY '"' LINES
TERMINATED BY '\n'
IGNORE 1 ROWS;
