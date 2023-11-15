--1. Create a table: "Account", with the following columns: Id, Owner, Balance, CreationDate, ExpirationDate
CREATE TABLE Account ( 
	ID int NOT NULL PRIMARY KEY , 
	Owner varchar(50), 
	Balance decimal(4,2), 
	CreationDate date, 
	ExpirationDate date
    )
    -- Insert 10 rows in Account
INSERT INTO Account VALUES
(1,'Gheorghe', 4444, '2000-11-11', '2001-11-11'),
(2,'Vasile', 6666, '2002-11-11', '2003-11-11'),
(3,'Matei', 7777, '2004-11-11', '2005-11-11'),
(4,'Ionica', 1111, '2006-11-11', '2007-11-11'),
(5,'Ion', 2222, '2008-11-11', '2009-11-11'),
(6,'Costica', 5555, '201011-11', '2011-11-11'),
(7,'Viorel', 8888, '2012-11-11', '2013-11-11'),
(8,'Daniel', 9999, '2014-11-11', '2015-11-11'),
(9,'Stefan', 4321, '2016-11-11', '2017-11-11'),
(10,'Adrian', 3333, '2018-11-11', '2019-11-11')

-- 3. Select all rows;
SELECT * FROM Account 

-- 4. Select the rows where Balance is less than 10000;
SELECT Balance FROM [Account]
where Balance < 10000

-- 5. Select the rows where Balance is greater than 1000 and expiration date is less than 2 days from today;
SELECT Balance, ExpirationDate FROM Account
where Balance > 1000 and ExpirationDate Between 2022-08-16 and 2022-08-18

-- 6. Update the balance for one of the id;
UPDATE Account
SET Balance = 8999
WHERE ID = 7;

-- 7. Delete one of the rows;
DELETE FROM Account 
WHERE ID = 8;

--8. Calculate the total balance of all accounts;
SELECT SUM(Balance)
FROM Account

-- 9. Calculate the average balance of accounts grouped by owner;
SELECT AVG(Balance) 
From Account
group by Owner
