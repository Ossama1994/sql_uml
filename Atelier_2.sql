CREATE TABLE Manufacturers (
  Code INTEGER,
  Name VARCHAR(255) NOT NULL,
  PRIMARY KEY (Code)   
);

CREATE TABLE Products (
  Code INTEGER,
  Name VARCHAR(255) NOT NULL ,
  Price DECIMAL NOT NULL ,
  Manufacturer INTEGER NOT NULL,
  PRIMARY KEY (Code), 
  FOREIGN KEY (Manufacturer) REFERENCES Manufacturers(Code)
) ENGINE=INNODB;

INSERT INTO Manufacturers(Code,Name) VALUES(1,'Sony');
INSERT INTO Manufacturers(Code,Name) VALUES(2,'Creative Labs');
INSERT INTO Manufacturers(Code,Name) VALUES(3,'Hewlett-Packard');
INSERT INTO Manufacturers(Code,Name) VALUES(4,'Iomega');
INSERT INTO Manufacturers(Code,Name) VALUES(5,'Fujitsu');
INSERT INTO Manufacturers(Code,Name) VALUES(6,'Winchester');

INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(1,'Hard drive',240,5);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(2,'Memory',120,6);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(3,'ZIP drive',150,4);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(4,'Floppy disk',5,6);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(5,'Monitor',240,1);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(6,'DVD drive',180,2);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(7,'CD drive',90,2);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(8,'Printer',270,3);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(9,'Toner cartridge',66,3);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(10,'DVD burner',180,2);

3/ select Name from Products;
4/ select Name , Price from Products;
5/ select Name from Products where Price>=200
6/ select * from Products where Price between 60 AND 120
7/ select Name , Price*100 from Products
8/ select avg(Price) from Products
9/ select avg(Price) from Products where manufacter=2
10/ select count(*) from Products where Pricec>=180
11/ select Name,Price from Products where Price>=180 ordred by Price desc , Name asc
12/ select * from Products p inner join Manufacturers m ON p.manufacturer=m.code 
13/ select p.Name , m.Price , m.Name from Products p inner join Manufacturers m ON p.manufacturer=m.code
14/ select m.code , avg(Price) from Products p inner join Manufacturers m ON p.manufacturer=m.code group by manufacturer
15/ select m.Name, avg(Price) from Products p inner join Manufacturers m ON p.manufacturer=m.code group by manufacturer 
16/ SELECT m.Name , AVG(Price) FROM products p INNER JOIN manufacturers m ON p.Manufacturer=m.Code
    GROUP BY Manufacturer HAVING AVG(Price)>=150
17/ select Name , min(Price) from Products
18/ SELECT products.*, MAX(Price),manufacturers.Name FROM products INNER JOIN manufacturers
 ON manufacturers.Code=products.Manufacturer GROUP BY Manufacturer
 ------ SELECT products.Name, products.Price,manufacturers.Name FROM products , manufacturers WHERE manufacturers.Code=products.Manufacturer
 ------ AND products.Price IN (SELECT MAX(Price) FROM products GROUP  BY Manufacturer);
19/ insert into products values('loudspeakers',70,2)
20/ update Products set='laser Print' where code=8
21/ update Products set= Price-(Price*0,1)
22/ update Products set= Price-(Price*0,1) where Price>=120