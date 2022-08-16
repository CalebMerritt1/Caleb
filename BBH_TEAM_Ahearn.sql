CREATE DATABASE BBH_TEAM_Ahearn


GO
/* Made by Aidan Ahearn*/
CREATE TABLE Employees
	(EmployeeID  INT  PRIMARY KEY IDENTITY NOT NULL,
	FName       VARCHAR(20) NOT NULL,
	LName       VARCHAR(20) NOT NULL,
	JobTitle    VARCHAR(35)  NOT NULL,
	SalaryWage  INT    NOT NULL,
	HireDate    DATE   NULL,
	EndDate		DATE   NULL,)



GO 
/* Made by Brian Espinoza*/
CREATE TABLE Customers
	(CustomerID INT PRIMARY KEY IDENTITY NOT NULL,
	CompanyName VARCHAR(40) NULL,
	CustFirstName VARCHAR(20) NULL,
	CustLastName VARCHAR(20) NULL,
	CustAddress VARCHAR(40) NULL,
	CustCity VARCHAR(20) NULL,
	CustState VARCHAR(2) NULL,
	CustZip VARCHAR(10) NULL,
	CustPhone VARCHAR(12) NULL,
	CustEmail VARCHAR(50) NULL)


GO
/* Made by Caleb Merritt*/
CREATE TABLE Sales	
	(OrderID INT PRIMARY KEY IDENTITY NOT NULL,
	CustomerID INT NOT NULL REFERENCES Customers(CustomerID),
	PartName VARCHAR(20) NOT NULL,
	SalePrice INT NOT NULL,
	OrderDate DATE NOT NULL,
	ShipDate DATE NOT NULL)



GO
/* Made by Cody King*/
CREATE TABLE Inventory
	(PartNumber INT PRIMARY KEY IDENTITY NOT NULL,
	PartDescription varchar(50),
	StockPrice decimal(9,2),
	ReorderLevel decimal(5,0),
	StockLevel decimal(9,2),
	StockOnOrder decimal(9,2))

GO
/* Made by Caleb Merritt*/
CREATE TABLE SalesOrderLine
	(SaleID INT PRIMARY KEY IDENTITY NOT NULL,
	UnitPrice decimal(9, 2) NULL,
	OrderQuantity INT NULL,
	[Status] varchar(15) NULL,)


GO


/* Made by Aidan Ahearn*/
INSERT INTO [dbo].[Employees]
           (FName, Lname, JobTitle, SalaryWage, HireDate, EndDate)
           
     VALUES
           ('Aidan', 'Ahearn', 'Cheif Information Officer', 165000, '01-16-2019', NULL),
		   ('Caleb', 'Merrit', 'Network Administrator', 165000, '02-02-2019', NULL),
		   ('Brian', 'Espinoza', 'Cyber Security Analyst', 165000, '03-02-2019', NULL),
		   ('Cody', 'King', 'Programmer', 165000, '03-01-2019', NULL),
		   ('Jimmy', 'Buffett', 'Design', 135000, '03-01-2019', NULL),
		   ('John', 'Cena', 'Building Security', 125000, '03-01-2019',  NULL),
		   ('James', 'Bond', 'Birdhouse Builder', 135000, '03-01-2019', NULL),
		   ('Joe', 'Rogan', 'Design', 135000, '05-05-2019', NULL),
		   ('Maria', 'Menunos', 'Chicken Coop Builder', 135000, '05-05-2019', NULL),
		   ('Lex', 'Fridman', 'Research and Development', 170000, '05-05-2019', NULL),
		   ('James', 'Ryan', 'Custodial Manager', 135000, '05-04-2019', NULL),
		   ('Forest', 'Gump', 'Cafeteria Manager', 135000, '05-04-2019', NULL),
		   ('Jocko', 'Willink', 'Chicken Coop Builder', 125000, '03-21-2019', NULL),
		   ('Tom', 'Brady', 'Chicken Coop Builder', 145000, '07-25-2019', NULL),
		   ('Vince', 'Wilfork', 'Inventory Maintinence', 135000, '07-25-2019', NULL),
		   ('Nomar', 'Garciaparra', 'Research and Development', 145000, '07-30-2019', NULL),
		   ('Manny', 'Ramirez', 'Design', 144000, '08-22-2019', NULL),
		   ('Brad', 'Marchand', 'Birdhouse Builder', 140000, '08-20-2019', NULL),
		   ('Zdeno', 'Chara', 'Data Analyst', 135000, '01-20-2020', NULL),
		   ('Danika', 'Patrick', 'Design', 135000, '01-20-2020', NULL),
		   ('Bill', 'Burr', 'Research and Development', 125000, '05-25-2019', '02-02-2021'),
		   ('Seth', 'Rogen', 'Building Security', 105000, '08-28-2020', '02-02-2022'),
		   ('Sylvester', 'Stallone', 'Custodial Manager',100000, '01-01-2019', '05-05-2019'),
		   ('Rhonda', 'Rousey', 'Programmer', 140000, '04-05-2020', '05-05-2022'),
		   ('Julia', 'Roberts', 'Marketing Strategies', 135000, '05-05-2019', '06-06-2022')



GO

/* Made by Brian Espinoza*/
INSERT INTO [dbo].[Customers]
           (CompanyName, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, 
		   CustEmail)
           
     VALUES
           ('Big Bird Houses LLC' , 'Tanya', 'Hill', '760 Raintree Boulevard', 'Muncie', 'IN', '47305', '765-212-1206', 'TanjyaJHill@rhyta.com'),
		   ('Big Bird Houses LLC' , 'George', 'Dillon', '2213 Chandler Drive', 'Greenville', 'SC', '29607','864-022-2019', 'GeorgeDillon@dayrep.com'),
		   ('Big Bird Houses LLC' , 'Jeffrey', 'Elliot', '1331 White Horse Rd', 'Greenville', 'SC', '29605', '864-303-3413', NULL),
		   ('Big Bird Houses LLC' , 'Matthew', 'Hensen', '2569 Hazelwood Avenue', 'Simpsonville', 'SC', '29681', '828-245-2451', 'MHensen2450@gmail.com'),
		   ('Big Bird Houses LLC' , 'George', 'Martin', '4230 Columbia Mine Road', 'Huntington', 'WV', '25701', '304-521-1668', NULL),
		   ('Big Bird Houses LLC' , 'Susie', 'Kennedy', '2775 Stoney Lane', 'Mauldin', 'SC', '29662', '745-045-2415', 'SKennedy1978@yahoo.com')


GO
/* Made by Caleb Merritt*/
INSERT INTO [dbo].[Sales]
           (CustomerID, PartName, SalePrice, OrderDate, ShipDate)
           
     VALUES
           (1,'Bird Feeder', 30,'05-10-2019', '5-15-2019'),
		   (1,'Bird House', 25, '07-16-2019', '07-19-2019'),
		   (1,'Chicken Coop', 300,'10-20-2019','10-27-2019'),
		   (1,'Chicken Coop', 300,'1-20-2020','1-27-2020'),
		   (1,'Chicken Coop', 300,'07-16-2020','07-19-2020'),
		   (1,'Bird House', 25,'10-20-2020','10-27-2020'),
		   (1,'Chicken Coop', 300,'1-20-2021','1-27-2021'),
		   (1,'Bird House', 25,'07-16-2021','07-19-2021'),
		   (1,'Bird House', 25,'10-20-2021','10-27-2021'),
		   (1,'Chicken Coop', 300,'1-20-2022','1-27-2022'),
		   (1,'Bird House', 25,'07-16-2022','07-19-2022'),
		   (1,'Bird House', 25,'10-20-2022','10-27-2022'),
		   (2,'Bird Feeder', 30,'05-10-2019', '5-15-2019'),
		   (2,'Chicken Coop', 300,'07-16-2019', '07-19-2019'),
		   (2,'Bird Feeder', 30,'10-20-2019','10-27-2019'),
		   (2,'Bird House', 25,'1-20-2020','1-27-2020'),
		   (2,'Chicken Coop', 300,'07-16-2020','07-19-2020'),
		   (2,'Bird Feeder', 30,'07-16-2020','07-19-2020'),
		   (2,'Chicken Coop', 300,'1-20-2021','1-27-2021'),
		   (2,'Bird House', 25,'07-16-2021','07-19-2021'),
		   (2,'Chicken Coop', 300,'10-20-2021','10-27-2021'),
		   (2,'Chicken Coop', 300,'1-20-2022','1-27-2022'),
		   (2,'Bird Feeder', 30,'07-16-2022','07-19-2022'),
		   (2,'Chicken Coop', 300,'10-20-2022','10-27-2022'),
		   (3,'Bird Feeder', 30,'1-20-2019','1-27-2019'),
		   (3,'Chicken Coop', 300,'07-16-2019','07-19-2019'),
		   (3,'Chicken Coop', 300,'10-20-2019','10-27-2019'),
		   (3,'Chicken Coop', 300,'1-20-2020','1-27-2020'),
		   (3,'Chicken Coop', 300,'07-16-2020','07-19-2020'),
		   (3,'Bird Feeder', 30,'10-20-2020','10-27-2020'),
		   (3,'Chicken Coop', 300,'1-20-2021','1-27-2021'),
		   (3,'Bird Feeder', 30,'07-16-2021','07-19-2021'),
		   (3,'Bird House', 25,'10-20-2021','10-27-2021'),
		   (3,'Bird Feeder', 30,'1-20-2022','1-27-2022'),
		   (3,'Chicken Coop', 300,'07-16-2022','07-19-2022'),
		   (3,'Bird House', 25,'10-20-2022','10-27-2022'),
		   (4,'Chicken Coop', 300,'1-20-2019','1-27-2019'),
		   (4,'Chicken Coop', 300,'07-16-2019','07-19-2019'),
		   (4,'Bird Feeder', 30,'10-20-2019','10-27-2019'),
		   (4,'Chicken Coop', 300,'1-20-2020','1-27-2020'),
		   (4,'Chicken Coop', 300,'07-16-2020','07-19-2020'),
		   (4,'Bird Feeder', 30,'1-20-2020','1-27-2020'),
		   (4,'Chicken Coop', 300,'07-16-2021','07-19-2021'),
		   (4,'Bird House', 25,'10-20-2021','10-27-2021'),
		   (4,'Chicken Coop', 300,'1-20-2021','1-27-2021'),
		   (4,'Bird Feeder', 30,'07-16-2022','07-19-2022'),
		   (4,'Bird Feeder', 30,'10-20-2022','10-27-2022'),
		   (4,'Chicken Coop', 300,'1-20-2022','1-27-2022'),
		   (5,'Bird House', 25,'07-16-2019','07-19-2019'),
		   (5,'Chicken Coop', 300,'10-20-2019','10-27-2019'),
		   (5,'Bird Feeder', 30,'1-20-2019','1-27-2019'),
		   (5,'Chicken Coop', 300,'07-16-2020','07-19-2020'),
		   (5,'Chicken Coop', 300,'10-20-2020','10-27-2020'),
		   (5,'Bird Feeder', 30,'1-20-2020','1-27-2020'),
		   (5,'Bird House', 25,'07-16-2021','07-19-2021'),
		   (5,'Bird House', 25,'10-20-2021','10-27-2021'),
		   (5,'Bird Feeder', 30,'1-20-2021','1-27-2021'),
		   (5,'Chicken Coop', 300,'1-20-2022','1-27-2022'),
		   (5,'Bird Feeder', 30,'07-16-2022','07-19-2022'),
		   (5,'Bird House', 25,'10-20-2022','10-27-2022'),
		   (6,'Bird Feeder', 30,'1-20-2019','1-27-2019'),
		   (6,'Chicken Coop', 300,'07-16-2019','07-19-2019'),
		   (6,'Bird Feeder', 30,'10-20-2019','10-27-2019'),
		   (6,'Bird House', 25,'1-20-2020','1-27-2020'),
		   (6,'Bird Feeder', 30,'07-16-2020','07-19-2020'),
		   (6,'Bird Feeder', 30,'10-20-2020','10-27-2020'),
		   (6,'Chicken Coop', 300,'1-20-2021','1-27-2021'),
		   (6,'Chicken Coop', 300,'07-16-2021','07-19-2021'),
		   (6,'Bird House', 25,'10-20-2021','10-27-2021'),
		   (6,'Bird Feeder', 30,'1-20-2022','1-27-2022'),
		   (6,'Chicken Coop', 300,'07-16-2022','07-19-2022'),
		   (6,'Bird House', 25,'10-20-2022','10-27-2022')


GO
/* Made by Cody King*/
INSERT INTO Inventory
(PartDescription, StockPrice, ReOrderLevel, StockLevel, StockOnOrder)

VALUES
('10 foot 2x4 Lumber', 4, 5, 80, 18),
('10 foot 4x4 Lumber ',8 ,6, 76 ,20 ), 
('Plywood 8x8', 18 ,1, 30 ,22 ),
('10x10 Steel Sheet ',50 , 0, 12 ,15 ),
('Chicken Wire ',30, 2 ,15 ,30 ),
('Bucket Of Nails ', 50, 0, 7 ,10 ),
('Hammer ',25, 1 ,12 ,10 ),
('Saw ', 100, 1, 12 ,3 )

GO


/* Made by Caleb Merritt*/
INSERT INTO [dbo].[SalesOrderLine]
	(UnitPrice, OrderQuantity, [Status])

	 VALUES
           (30,1,'Shipped'),
		   (25,1,'Shipped'),
		   (300,1,'Shipped'),
		   (300,1,'Shipped'),
		   (300,1,'Shipped'),
		   (25,1,'Shipped'),
		   (300,1,'Shipped'),
		   (25,1,'Shipped'),
		   (25,1,'Shipped'),
		   (300,1,'Shipped'),
		   (25,1,'Shipped'),
		   (25,1,'Shipped'),
		   (30,1,'Shipped'),
		   (300,1,'Shipped'),
		   (30,1,'Shipped'),
		   (25,1,'Shipped'),
		   (300,1,'Shipped'),
		   (30,1,'Shipped'),
		   (300,1,'Shipped'),
		   (25,1,'Shipped'),
		   (300,1,'Shipped'),
		   (300,1,'Shipped'),
		   (30,1,'Shipped'),
		   (300,1,'Shipped'),
		   (30,1,'Shipped'),
		   (300,1,'Shipped'),
		   (300,1,'Shipped'),
		   (300,1,'Shipped'),
		   (300,1,'Shipped'),
		   (30,1,'Shipped'),
		   (300,1,'Shipped'),
		   (30,1,'Shipped'),
		   (25,1,'Shipped'),
		   (30,1,'Shipped'),
		   (300,1,'Shipped'),
		   (25,1,'Shipped'),
		   (300,1,'Shipped'),
		   (300,1,'Shipped'),
		   (30,1,'Shipped'),
		   (300,1,'Shipped'),
		   (300,1,'Shipped'),
		   (30,1,'Shipped'),
		   (300,1,'Shipped'),
		   (25,1,'Shipped'),
		   (300,1,'Shipped'),
		   (30,1,'Shipped'),
		   (30,1,'Shipped'),
		   (300,1,'Shipped'),
		   (25,1,'Shipped'),
		   (300,1,'Shipped'),
		   (30,1,'Shipped'),
		   (300,1,'Shipped'),
		   (300,1,'Shipped'),
		   (30,1,'Shipped'),
		   (25,1,'Shipped'),
		   (25,1,'Shipped'),
		   (30,1,'Shipped'),
		   (300,1,'Shipped'),
		   (30,1,'Shipped'),
		   (25,1,'Shipped'),
		   (30,1,'Shipped'),
		   (300,1,'Shipped'),
		   (30,1,'Shipped'),
		   (25,1,'Shipped'),
		   (30,1,'Shipped'),
		   (30,1,'Shipped'),
		   (300,1,'Shipped'),
		   (300,1,'Shipped'),
		   (25,1,'Shipped'),
		   (30,1,'Shipped'),
		   (300,1,'Shipped'),
		   (25,1,'Shipped')