DROP DATABASE DBNorthwind
CREATE DATABASE DBNorthwind;
USE DBNorthwind;

CREATE TABLE Categories
(      
    CategoryID int identity(1,1) PRIMARY KEY,
    CategoryName TEXT,
    Description TEXT
);

CREATE TABLE Customers
(      
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName TEXT,
    ContactName TEXT,
    Address TEXT,
    City TEXT,
    PostalCode TEXT,
    Country TEXT
);


CREATE TABLE Employees
(
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    LastName TEXT,
    FirstName TEXT,
    BirthDate DATE,
    Photo TEXT,
    Notes TEXT
);


CREATE TABLE Shippers(
    ShipperID INT IDENTITY(1,1) PRIMARY KEY,
    ShipperName TEXT,
    Phone TEXT
);

CREATE TABLE Suppliers(
    SupplierID INT IDENTITY(1,1) PRIMARY KEY,
    SupplierName TEXT,
    ContactName TEXT,
    Address TEXT,
    City TEXT,
    PostalCode TEXT,
    Country TEXT,
    Phone TEXT
);

CREATE TABLE Products(
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName TEXT,
    SupplierID INTEGER,
    CategoryID INTEGER,
    Unit TEXT,
    Price NUMERIC DEFAULT 0,
	FOREIGN KEY (CategoryID) REFERENCES Categories (CategoryID),
	FOREIGN KEY (SupplierID) REFERENCES Suppliers (SupplierID)
);



CREATE TABLE Orders(
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INTEGER,
    EmployeeID INTEGER,
    OrderDate DATETIME,
    ShipperID INTEGER,
    FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID),
    FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID),
    FOREIGN KEY (ShipperID) REFERENCES Shippers (ShipperID)
);


CREATE TABLE OrderDetails(
    OrderDetailID  INT IDENTITY(1,1) PRIMARY KEY,
    OrderID INTEGER,
    ProductID INTEGER,
    Quantity INTEGER,
	FOREIGN KEY (OrderID) REFERENCES Orders (OrderID),
	FOREIGN KEY (ProductID) REFERENCES Products (ProductID)
);



INSERT INTO Categories VALUES('Beverages','Soft drinks, coffees, teas, beers, and ales');
INSERT INTO Categories VALUES('Condiments','Sweet and savory sauces, relishes, spreads, and seasonings');
INSERT INTO Categories VALUES('Confections','Desserts, candies, and sweet breads');
INSERT INTO Categories VALUES('Dairy Products','Cheeses');
INSERT INTO Categories VALUES('Grains/Cereals','Breads, crackers, pasta, and cereal');
INSERT INTO Categories VALUES('Meat/Poultry','Prepared meats');
INSERT INTO Categories VALUES('Produce','Dried fruit and bean curd');
INSERT INTO Categories VALUES('Seafood','Seaweed and fish');

INSERT INTO Customers VALUES('Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany');
INSERT INTO Customers VALUES('Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constitución 2222','México D.F.','5021','Mexico');
INSERT INTO Customers VALUES('Antonio Moreno Taquería','Antonio Moreno','Mataderos 2312','México D.F.','5023','Mexico');
INSERT INTO Customers VALUES('Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK');
INSERT INTO Customers VALUES('Berglunds snabbköp','Christina Berglund','Berguvsvägen 8','Luleå','S-958 22','Sweden');
INSERT INTO Customers VALUES('Blauer See Delikatessen','Hanna Moos','Forsterstr. 57','Mannheim','68306','Germany');
INSERT INTO Customers VALUES('Blondel père et fils','Frédérique Citeaux','24, place Kléber','Strasbourg','67000','France');
INSERT INTO Customers VALUES('Bólido Comidas preparadas','Martín Sommer','C/ Araquil, 67','Madrid','28023','Spain');
INSERT INTO Customers VALUES('Bon app''''','Laurence Lebihans','12, rue des Bouchers','Marseille','13008','France');
INSERT INTO Customers VALUES('Bottom-Dollar Marketse','Elizabeth Lincoln','23 Tsawassen Blvd.','Tsawassen','T2F 8M4','Canada');
INSERT INTO Customers VALUES('B''''s Beverages','Victoria Ashworth','Fauntleroy Circus','London','EC2 5NT','UK');
INSERT INTO Customers VALUES('Cactus Comidas para llevar','Patricio Simpson','Cerrito 333','Buenos Aires','1010','Argentina');
INSERT INTO Customers VALUES('Centro comercial Moctezuma','Francisco Chang','Sierras de Granada 9993','México D.F.','5022','Mexico');
INSERT INTO Customers VALUES('Chop-suey Chinese','Yang Wang','Hauptstr. 29','Bern','3012','Switzerland');
INSERT INTO Customers VALUES('Comércio Mineiro','Pedro Afonso','Av. dos Lusíadas, 23','São Paulo','05432-043','Brazil');
INSERT INTO Customers VALUES('Consolidated Holdings','Elizabeth Brown','Berkeley Gardens 12 Brewery','London','WX1 6LT','UK');
INSERT INTO Customers VALUES('Drachenblut Delikatessend','Sven Ottlieb','Walserweg 21','Aachen','52066','Germany');
INSERT INTO Customers VALUES('Du monde entier','Janine Labrune','67, rue des Cinquante Otages','Nantes','44000','France');
INSERT INTO Customers VALUES('Eastern Connection','Ann Devon','35 King George','London','WX3 6FW','UK');
INSERT INTO Customers VALUES('Ernst Handel','Roland Mendel','Kirchgasse 6','Graz','8010','Austria');
INSERT INTO Customers VALUES('Familia Arquibaldo','Aria Cruz','Rua Orós, 92','São Paulo','05442-030','Brazil');
INSERT INTO Customers VALUES('FISSA Fabrica Inter. Salchichas S.A.','Diego Roel','C/ Moralzarzal, 86','Madrid','28034','Spain');
INSERT INTO Customers VALUES('Folies gourmandes','Martine Rancé','184, chaussée de Tournai','Lille','59000','France');
INSERT INTO Customers VALUES('Folk och fä HB','Maria Larsson','Åkergatan 24','Bräcke','S-844 67','Sweden');
INSERT INTO Customers VALUES('Frankenversand','Peter Franken','Berliner Platz 43','München','80805','Germany');
INSERT INTO Customers VALUES('France restauration','Carine Schmitt','54, rue Royale','Nantes','44000','France');
INSERT INTO Customers VALUES('Franchi S.p.A.','Paolo Accorti','Via Monte Bianco 34','Torino','10100','Italy');
INSERT INTO Customers VALUES('Furia Bacalhau e Frutos do Mar','Lino Rodriguez','Jardim das rosas n. 32','Lisboa','1675','Portugal');
INSERT INTO Customers VALUES('Galería del gastrónomo','Eduardo Saavedra','Rambla de Cataluña, 23','Barcelona','8022','Spain');
INSERT INTO Customers VALUES('Godos Cocina Típica','José Pedro Freyre','C/ Romero, 33','Sevilla','41101','Spain');
INSERT INTO Customers VALUES('Gourmet Lanchonetes','André Fonseca','Av. Brasil, 442','Campinas','04876-786','Brazil');
INSERT INTO Customers VALUES('Great Lakes Food Market','Howard Snyder','2732 Baker Blvd.','Eugene','97403','USA');
INSERT INTO Customers VALUES('GROSELLA-Restaurante','Manuel Pereira','5ª Ave. Los Palos Grandes','Caracas','1081','Venezuela');
INSERT INTO Customers VALUES('Hanari Carnes','Mario Pontes','Rua do Paço, 67','Rio de Janeiro','05454-876','Brazil');
INSERT INTO Customers VALUES('HILARIÓN-Abastos','Carlos Hernández','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristóbal','5022','Venezuela');
INSERT INTO Customers VALUES('Hungry Coyote Import Store','Yoshi Latimer','City Center Plaza 516 Main St.','Elgin','97827','USA');
INSERT INTO Customers VALUES('Hungry Owl All-Night Grocers','Patricia McKenna','8 Johnstown Road','Cork','','Ireland');
INSERT INTO Customers VALUES('Island Trading','Helen Bennett','Garden House Crowther Way','Cowes','PO31 7PJ','UK');
INSERT INTO Customers VALUES('Königlich Essen','Philip Cramer','Maubelstr. 90','Brandenburg','14776','Germany');
INSERT INTO Customers VALUES('La corne d''''abondance','Daniel Tonini','67, avenue de l''''Europe','Versailles','78000','France');
INSERT INTO Customers VALUES('La maison d''''Asie','Annette Roulet','1 rue Alsace-Lorraine','Toulouse','31000','France');
INSERT INTO Customers VALUES('Laughing Bacchus Wine Cellars','Yoshi Tannamuri','1900 Oak St.','Vancouver','V3F 2K1','Canada');
INSERT INTO Customers VALUES('Lazy K Kountry Store','John Steel','12 Orchestra Terrace','Walla Walla','99362','USA');
INSERT INTO Customers VALUES('Lehmanns Marktstand','Renate Messner','Magazinweg 7','Frankfurt a.M.','60528','Germany');
INSERT INTO Customers VALUES('Let''''s Stop N Shop','Jaime Yorres','87 Polk St. Suite 5','San Francisco','94117','USA');
INSERT INTO Customers VALUES('LILA-Supermercado','Carlos González','Carrera 52 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','3508','Venezuela');
INSERT INTO Customers VALUES('LINO-Delicateses','Felipe Izquierdo','Ave. 5 de Mayo Porlamar','I. de Margarita','4980','Venezuela');
INSERT INTO Customers VALUES('Lonesome Pine Restaurant','Fran Wilson','89 Chiaroscuro Rd.','Portland','97219','USA');
INSERT INTO Customers VALUES('Magazzini Alimentari Riuniti','Giovanni Rovelli','Via Ludovico il Moro 22','Bergamo','24100','Italy');
INSERT INTO Customers VALUES('Maison Dewey','Catherine Dewey','Rue Joseph-Bens 532','Bruxelles','B-1180','Belgium');
INSERT INTO Customers VALUES('Mère Paillarde','Jean Fresnière','43 rue St. Laurent','Montréal','H1J 1C3','Canada');
INSERT INTO Customers VALUES('Morgenstern Gesundkost','Alexander Feuer','Heerstr. 22','Leipzig','4179','Germany');
INSERT INTO Customers VALUES('North/South','Simon Crowther','South House 300 Queensbridge','London','SW7 1RZ','UK');
INSERT INTO Customers VALUES('Océano Atlántico Ltda.','Yvonne Moncada','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires','1010','Argentina');
INSERT INTO Customers VALUES('Old World Delicatessen','Rene Phillips','2743 Bering St.','Anchorage','99508','USA');
INSERT INTO Customers VALUES('Ottilies Käseladen','Henriette Pfalzheim','Mehrheimerstr. 369','Köln','50739','Germany');
INSERT INTO Customers VALUES('Paris spécialités','Marie Bertrand','265, boulevard Charonne','Paris','75012','France');
INSERT INTO Customers VALUES('Pericles Comidas clásicas','Guillermo Fernández','Calle Dr. Jorge Cash 321','México D.F.','5033','Mexico');
INSERT INTO Customers VALUES('Piccolo und mehr','Georg Pipps','Geislweg 14','Salzburg','5020','Austria');
INSERT INTO Customers VALUES('Princesa Isabel Vinhoss','Isabel de Castro','Estrada da saúde n. 58','Lisboa','1756','Portugal');
INSERT INTO Customers VALUES('Que Delícia','Bernardo Batista','Rua da Panificadora, 12','Rio de Janeiro','02389-673','Brazil');
INSERT INTO Customers VALUES('Queen Cozinha','Lúcia Carvalho','Alameda dos Canàrios, 891','São Paulo','05487-020','Brazil');
INSERT INTO Customers VALUES('QUICK-Stop','Horst Kloss','Taucherstraße 10','Cunewalde','1307','Germany');
INSERT INTO Customers VALUES('Rancho grande','Sergio Gutiérrez','Av. del Libertador 900','Buenos Aires','1010','Argentina');
INSERT INTO Customers VALUES('Rattlesnake Canyon Grocery','Paula Wilson','2817 Milton Dr.','Albuquerque','87110','USA');
INSERT INTO Customers VALUES('Reggiani Caseifici','Maurizio Moroni','Strada Provinciale 124','Reggio Emilia','42100','Italy');
INSERT INTO Customers VALUES('Ricardo Adocicados','Janete Limeira','Av. Copacabana, 267','Rio de Janeiro','02389-890','Brazil');
INSERT INTO Customers VALUES('Richter Supermarkt','Michael Holz','Grenzacherweg 237','Genève','1203','Switzerland');
INSERT INTO Customers VALUES('Romero y tomillo','Alejandra Camino','Gran Vía, 1','Madrid','28001','Spain');
INSERT INTO Customers VALUES('Santé Gourmet','Jonas Bergulfsen','Erling Skakkes gate 78','Stavern','4110','Norway');
INSERT INTO Customers VALUES('Save-a-lot Markets','Jose Pavarotti','187 Suffolk Ln.','Boise','83720','USA');
INSERT INTO Customers VALUES('Seven Seas Imports','Hari Kumar','90 Wadhurst Rd.','London','OX15 4NB','UK');
INSERT INTO Customers VALUES('Simons bistro','Jytte Petersen','Vinbæltet 34','København','1734','Denmark');
INSERT INTO Customers VALUES('Spécialités du monde','Dominique Perrier','25, rue Lauriston','Paris','75016','France');
INSERT INTO Customers VALUES('Split Rail Beer & Ale','Art Braunschweiger','P.O. Box 555','Lander','82520','USA');
INSERT INTO Customers VALUES('Suprêmes délices','Pascale Cartrain','Boulevard Tirou, 255','Charleroi','B-6000','Belgium');
INSERT INTO Customers VALUES('The Big Cheese','Liz Nixon','89 Jefferson Way Suite 2','Portland','97201','USA');
INSERT INTO Customers VALUES('The Cracker Box','Liu Wong','55 Grizzly Peak Rd.','Butte','59801','USA');
INSERT INTO Customers VALUES('Toms Spezialitäten','Karin Josephs','Luisenstr. 48','Münster','44087','Germany');
INSERT INTO Customers VALUES('Tortuga Restaurante','Miguel Angel Paolino','Avda. Azteca 123','México D.F.','5033','Mexico');
INSERT INTO Customers VALUES('Tradição Hipermercados','Anabela Domingues','Av. Inês de Castro, 414','São Paulo','05634-030','Brazil');
INSERT INTO Customers VALUES('Trail''''s Head Gourmet Provisioners','Helvetius Nagy','722 DaVinci Blvd.','Kirkland','98034','USA');
INSERT INTO Customers VALUES('Vaffeljernet','Palle Ibsen','Smagsløget 45','Århus','8200','Denmark');
INSERT INTO Customers VALUES('Victuailles en stock','Mary Saveley','2, rue du Commerce','Lyon','69004','France');

INSERT INTO Employees VALUES('Davolio','Nancy','1968-12-08','EmpID1.pic','Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of ''Toastmasters International''.');
INSERT INTO Employees VALUES('Fuller','Andrew','1952-02-19','EmpID2.pic','Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales. Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.');
INSERT INTO Employees VALUES('Leverling','Janet','1963-08-30','EmpID3.pic','Janet has a BS degree in chemistry from Boston College). She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative.');
INSERT INTO Employees VALUES('Peacock','Margaret','1958-09-19','EmpID4.pic','Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle.');
INSERT INTO Employees VALUES('Buchanan','Steven','1955-03-04','EmpID5.pic','Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager. Mr. Buchanan has completed the courses ''Successful Telemarketing'' and ''International Sales Management''. He is fluent in French.');
INSERT INTO Employees VALUES('Suyama','Michael','1963-07-02','EmpID6.pic','Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing). He has also taken the courses ''Multi-Cultural Selling'' and ''Time Management for the Sales Professional''. He is fluent in Japanese and can read and write French, Portuguese, and Spanish.');
INSERT INTO Employees VALUES('King','Robert','1960-05-29','EmpID7.pic','Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company. After completing a course entitled ''Selling in Europe'', he was transferred to the London office.');
INSERT INTO Employees VALUES('Callahan','Laura','1958-01-09','EmpID8.pic','Laura received a BA in psychology from the University of Washington. She has also completed a course in business French. She reads and writes French.');
INSERT INTO Employees VALUES('Dodsworth','Anne','1969-07-02','EmpID9.pic','Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German.');

INSERT INTO Shippers VALUES( 'Speedy Express', '(503) 555-9831');
INSERT INTO Shippers VALUES( 'United Package', '(503) 555-3199');
INSERT INTO Shippers VALUES('Federal Shipping', '(503) 555-9931');

INSERT INTO Suppliers VALUES('Exotic Liquid','Charlotte Cooper','49 Gilbert St.','Londona','EC1 4SD','UK','(171) 555-2222');
INSERT INTO Suppliers VALUES('New Orleans Cajun Delights','Shelley Burke','P.O. Box 78934','New Orleans','70117','USA','(100) 555-4822');
INSERT INTO Suppliers VALUES('Grandma Kelly''s Homestead','Regina Murphy','707 Oxford Rd.','Ann Arbor','48104','USA','(313) 555-5735');
INSERT INTO Suppliers VALUES('Tokyo Traders','Yoshi Nagase','9-8 Sekimai Musashino-shi','Tokyo','100','Japan','(03) 3555-5011');
INSERT INTO Suppliers VALUES('Cooperativa de Quesos ''Las Cabras''','Antonio del Valle Saavedra','Calle del Rosal 4','Oviedo','33007','Spain','(98) 598 76 54');
INSERT INTO Suppliers VALUES('Mayumi''s','Mayumi Ohno','92 Setsuko Chuo-ku','Osaka','545','Japan','(06) 431-7877');
INSERT INTO Suppliers VALUES('Pavlova, Ltd.','Ian Devling','74 Rose St. Moonie Ponds','Melbourne','3058','Australia','(03) 444-2343');
INSERT INTO Suppliers VALUES('Specialty Biscuits, Ltd.','Peter Wilson','29 King''s Way','Manchester','M14 GSD','UK','(161) 555-4448');
INSERT INTO Suppliers VALUES('PB Knäckebröd AB','Lars Peterson','Kaloadagatan 13','Göteborg','S-345 67','Sweden','031-987 65 43');
INSERT INTO Suppliers VALUES('Refrescos Americanas LTDA','Carlos Diaz','Av. das Americanas 12.890','São Paulo','5442','Brazil','(11) 555 4640');
INSERT INTO Suppliers VALUES('Heli Süßwaren GmbH & Co. KG','Petra Winkler','Tiergartenstraße 5','Berlin','10785','Germany','(010) 9984510');
INSERT INTO Suppliers VALUES('Plutzer Lebensmittelgroßmärkte AG','Martin Bein','Bogenallee 51','Frankfurt','60439','Germany','(069) 992755');
INSERT INTO Suppliers VALUES('Nord-Ost-Fisch Handelsgesellschaft mbH','Sven Petersen','Frahmredder 112a','Cuxhaven','27478','Germany','(04721) 8713');
INSERT INTO Suppliers VALUES('Formaggi Fortini s.r.l.','Elio Rossi','Viale Dante, 75','Ravenna','48100','Italy','(0544) 60323');
INSERT INTO Suppliers VALUES('Norske Meierier','Beate Vileid','Hatlevegen 5','Sandvika','1320','Norway','(0)2-953010');
INSERT INTO Suppliers VALUES('Bigfoot Breweries','Cheryl Saylor','3400 - 8th Avenue Suite 210','Bend','97101','USA','(503) 555-9931');
INSERT INTO Suppliers VALUES('Svensk Sjöföda AB','Michael Björn','Brovallavägen 231','Stockholm','S-123 45','Sweden','08-123 45 67');
INSERT INTO Suppliers VALUES('Aux joyeux ecclésiastiques','Guylène Nodier','203, Rue des Francs-Bourgeois','Paris','75004','France','(1) 03.83.00.68');
INSERT INTO Suppliers VALUES('New England Seafood Cannery','Robb Merchant','Order Processing Dept. 2100 Paul Revere Blvd.','Boston','2134','USA','(617) 555-3267');
INSERT INTO Suppliers VALUES('Leka Trading','Chandra Leka','471 Serangoon Loop, Suite #402','Singapore','512','Singapore','555-8787');
INSERT INTO Suppliers VALUES('Lyngbysild','Niels Petersen','Lyngbysild Fiskebakken 10','Lyngby','2800','Denmark','43844108');
INSERT INTO Suppliers VALUES('Zaanse Snoepfabriek','Dirk Luchte','Verkoop Rijnweg 22','Zaandam','9999 ZZ','Netherlands','(12345) 1212');
INSERT INTO Suppliers VALUES('Karkki Oy','Anne Heikkonen','Valtakatu 12','Lappeenranta','53120','Finland','(953) 10956');
INSERT INTO Suppliers VALUES('G''day, Mate','Wendy Mackenzie','170 Prince Edward Parade Hunter''s Hill','Sydney','2042','Australia','(02) 555-5914');
INSERT INTO Suppliers VALUES('Ma Maison','Jean-Guy Lauzon','2960 Rue St. Laurent','Montréal','H1J 1C3','Canada','(514) 555-9022');
INSERT INTO Suppliers VALUES('Pasta Buttini s.r.l.','Giovanni Giudici','Via dei Gelsomini, 153','Salerno','84100','Italy','(089) 6547665');
INSERT INTO Suppliers VALUES('Escargots Nouveaux','Marie Delamare','22, rue H. Voiron','Montceau','71300','France','85.57.00.07');
INSERT INTO Suppliers VALUES('Gai pâturage','Eliane Noz','Bat. B 3, rue des Alpes','Annecy','74000','France','38.76.98.06');
INSERT INTO Suppliers VALUES('Forêts d''érables','Chantal Goulet','148 rue Chasseur','Ste-Hyacinthe','J2S 7S8','Canada','(514) 555-2955');

INSERT INTO Products VALUES('Chais',1,1,'10 boxes x 20 bags',18.00);
INSERT INTO Products VALUES('Chang',1,1,'24 - 12 oz bottles',19.00);
INSERT INTO Products VALUES('Aniseed Syrup',1,2,'12 - 550 ml bottles',10.00);
INSERT INTO Products VALUES('Chef Anton''s Cajun Seasoning',2,2,'48 - 6 oz jars',22.00);
INSERT INTO Products VALUES('Chef Anton''s Gumbo Mix',2,2,'36 boxes',21.35);
INSERT INTO Products VALUES('Grandma''s Boysenberry Spread',3,2,'12 - 8 oz jars',25.00);
INSERT INTO Products VALUES('Uncle Bob''s Organic Dried Pears',3,7,'12 - 1 lb pkgs.',30.00);
INSERT INTO Products VALUES('Northwoods Cranberry Sauce',3,2,'12 - 12 oz jars',40.00);
INSERT INTO Products VALUES('Mishi Kobe Niku',4,6,'18 - 500 g pkgs.',97.00);
INSERT INTO Products VALUES('Ikura',4,8,'12 - 200 ml jars',31.00);
INSERT INTO Products VALUES('Queso Cabrales',5,4,'1 kg pkg.',21.00);
INSERT INTO Products VALUES('Queso Manchego La Pastora',5,4,'10 - 500 g pkgs.',38.00);
INSERT INTO Products VALUES('Konbu',6,8,'2 kg box',6.00);
INSERT INTO Products VALUES('Tofu',6,7,'40 - 100 g pkgs.',23.25);
INSERT INTO Products VALUES('Genen Shouyu',6,2,'24 - 250 ml bottles',15.50);
INSERT INTO Products VALUES('Pavlova',7,3,'32 - 500 g boxes',17.45);
INSERT INTO Products VALUES('Alice Mutton',7,6,'20 - 1 kg tins',39);
INSERT INTO Products VALUES('Carnarvon Tigers',7,8,'16 kg pkg.',62.50);
INSERT INTO Products VALUES('Teatime Chocolate Biscuits',8,3,'10 boxes x 12 pieces',9.20);
INSERT INTO Products VALUES('Sir Rodney''s Marmalade',8,3,'30 gift boxes',81.00);
INSERT INTO Products VALUES('Sir Rodney''s Scones',8,3,'24 pkgs. x 4 pieces',10.00);
INSERT INTO Products VALUES('Gustaf''s Knäckebröd',9,5,'24 - 500 g pkgs.',21.00);
INSERT INTO Products VALUES('Tunnbröd',9,5,'12 - 250 g pkgs.',9.00);
INSERT INTO Products VALUES('Guaraná Fantástica',10,1,'12 - 355 ml cans',4.50);
INSERT INTO Products VALUES('NuNuCa Nuß-Nougat-Creme',11,3,'20 - 450 g glasses',14.00);
INSERT INTO Products VALUES('Gumbär Gummibärchen',11,3,'100 - 250 g bags',31.23);
INSERT INTO Products VALUES('Schoggi Schokolade',11,3,'100 - 100 g pieces',43.90);
INSERT INTO Products VALUES('Rössle Sauerkraut',12,7,'25 - 825 g cans',45.60);
INSERT INTO Products VALUES('Thüringer Rostbratwurst',12,6,'50 bags x 30 sausgs.',123.79);
INSERT INTO Products VALUES('Nord-Ost Matjeshering',13,8,'10 - 200 g glasses',25.89);
INSERT INTO Products VALUES('Gorgonzola Telino',14,4,'12 - 100 g pkgs',12.50);
INSERT INTO Products VALUES('Mascarpone Fabioli',14,4,'24 - 200 g pkgs.',32.00);
INSERT INTO Products VALUES('Geitost',15,4,'500 g',2.50);
INSERT INTO Products VALUES('Sasquatch Ale',16,1,'24 - 12 oz bottles',14.00);
INSERT INTO Products VALUES('Steeleye Stout',16,1,'24 - 12 oz bottles',18.00);
INSERT INTO Products VALUES('Inlagd Sill',17,8,'24 - 250 g jars',19.00);
INSERT INTO Products VALUES('Gravad lax',17,8,'12 - 500 g pkgs.',26.00);
INSERT INTO Products VALUES('Côte de Blaye',18,1,'12 - 75 cl bottles',263.50);
INSERT INTO Products VALUES('Chartreuse verte',18,1,'750 cc per bottle',18.00);
INSERT INTO Products VALUES('Boston Crab Meat',19,8,'24 - 4 oz tins',18.40);
INSERT INTO Products VALUES('Jack''s New England Clam Chowder',19,8,'12 - 12 oz cans',9.65);
INSERT INTO Products VALUES('Singaporean Hokkien Fried Mee',20,5,'32 - 1 kg pkgs.',14.00);
INSERT INTO Products VALUES('Ipoh Coffee',20,1,'16 - 500 g tins',46.00);
INSERT INTO Products VALUES('Gula Malacca',20,2,'20 - 2 kg bags',19.45);
INSERT INTO Products VALUES('Røgede sild',21,8,'1k pkg.',9.50);
INSERT INTO Products VALUES('Spegesild',21,8,'4 - 450 g glasses',12.00);
INSERT INTO Products VALUES('Zaanse koeken',22,3,'10 - 4 oz boxes',9.50);
INSERT INTO Products VALUES('Chocolade',22,3,'10 pkgs.',12.75);
INSERT INTO Products VALUES('Maxilaku',23,3,'24 - 50 g pkgs.',20.00);
INSERT INTO Products VALUES('Valkoinen suklaa',23,3,'12 - 100 g bars',16.25);
INSERT INTO Products VALUES('Manjimup Dried Apples',24,7,'50 - 300 g pkgs.',53.00);
INSERT INTO Products VALUES('Filo Mix',24,5,'16 - 2 kg boxes',7.00);
INSERT INTO Products VALUES('Perth Pasties',24,6,'48 pieces',32.80);
INSERT INTO Products VALUES('Tourtière',25,6,'16 pies',7.45);
INSERT INTO Products VALUES('Pâté chinois',25,6,'24 boxes x 2 pies',24.00);
INSERT INTO Products VALUES('Gnocchi di nonna Alice',26,5,'24 - 250 g pkgs.',38.00);
INSERT INTO Products VALUES('Ravioli Angelo',26,5,'24 - 250 g pkgs.',19.50);
INSERT INTO Products VALUES('Escargots de Bourgogne',27,8,'24 pieces',13.25);
INSERT INTO Products VALUES('Raclette Courdavault',28,4,'5 kg pkg.',55.00);
INSERT INTO Products VALUES('Camembert Pierrot',28,4,'15 - 300 g rounds',34.00);
INSERT INTO Products VALUES('Sirop d''érable',29,2,'24 - 500 ml bottles',28.50);
INSERT INTO Products VALUES('Tarte au sucre',29,3,'48 pies',49.30);
INSERT INTO Products VALUES('Vegie-spread',7,2,'15 - 625 g jars',43.90);
INSERT INTO Products VALUES('Wimmers gute Semmelknödel',12,5,'20 bags x 4 pieces',33.25);
INSERT INTO Products VALUES('Louisiana Fiery Hot Pepper Sauce',2,2,'32 - 8 oz bottles',21.05);
INSERT INTO Products VALUES('Louisiana Hot Spiced Okra',2,2,'24 - 8 oz jars',17.00);
INSERT INTO Products VALUES('Laughing Lumberjack Lager',16,1,'24 - 12 oz bottles',14.00);
INSERT INTO Products VALUES('Scottish Longbreads',8,3,'10 boxes x 8 pieces',12.50);
INSERT INTO Products VALUES('Gudbrandsdalsost',15,4,'10 kg pkg.',36.00)

INSERT INTO Orders (CustomerID, EmployeeID, OrderDate, ShipperID) VALUES (90, 5, '1996-07-04', 3);
INSERT INTO Orders (CustomerID, EmployeeID, OrderDate, ShipperID) VALUES (81, 6, '1996-07-05', 1);
INSERT INTO Orders (CustomerID, EmployeeID, OrderDate, ShipperID) VALUES (34, 4, '1996-07-08', 2);

INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (1, 11, 12);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (1, 42, 10);



-- ORDER BY 
-- Ordena valores de manera ASCENDENTE Y DESCENDENTE 
SELECT * FROM Products ORDER BY Price ASC;

	SELECT * FROM Products 
	ORDER BY CONVERT(varchar, ProductName) ASC;


-- WHERE  
-- Es la clausa para trabajar con condiciones 

-- Devuelve el nombre del producto del ID 11 
SELECT productName FROM Products WHERE ProductID = 11 ;

-- Eliminar el producto que tiene
SELECT * from Products Where ProductID = 11;
DELETE FROM Products Where ProductID = 11; 

-- Devuelve todo la informacion del producto con ID 10 
SELECT * FROM Products WHERE ProductID = 10;

-- Selecciona la tabla producto que tenga como nombre del producto Queso Cabrales
SELECT * FROM Products WHERE ProductName LIKE 'Queso Cabrales';

-- Selecciona todos los productos que sean mayor a 40 
SELECT * FROM Products where Price > 40;

-- Elimina el producto 
DELETE FROM Products WHERE ProductID = 3;



-- AND OR Y NOT 
SELECT * FROM Employees 
WHERE FirstName = 'Nancy' OR FirstName = 'Anne';

SELECT * FROM Employees 
WHERE CAST(FirstName AS varchar(MAX)) = 'Nancy' OR 
	  CAST(FirstName AS VARCHAR(MAX)) = 'Anne'

SELECT * FROM Products 
WHERE (Price < 20 or CategoryID = 6) AND SupplierID =7;

SELECT * FROM Customers 
WHERE CustomerID >= 50 AND CustomerID < 55;


-- Ejercicios AND Y OR 
SELECT * FROM Products
WHERE CategoryID = 2 AND Price > 20;

-- Selecciona todos los clientes de una ciudad especifica 
SELECT * FROM Customers
WHERE  CAST(Country AS VARCHAR(MAX)) = 'Germany' AND
	   CAST(City AS varchar(MAX)) = 'Berlin';

-- Selecciona todos los productos que cuesten menos de 10 o mas de 50 
SELECT * FROM Products 
WHERE Price < 10 OR Price > 50;

-- Selecciona todos los clientes que vivan en francia o alemania 
SELECT * FROM Customers 
WHERE CAST(Country AS VARCHAR(MAX)) = 'France' OR   CAST(Country AS VARCHAR(MAX)) = 'Germany';

-- Selecciona todos los productos de una categoria especifica que cuestan menos de 20 o mas de 50 
SELECT * FROM Products WHERE CategoryID = 1 AND (Price < 20 OR Price > 50);

-- Selecciona todos los empleados que trabajan en ventas y viven en londres o paris

SELECT CustomerName, Address, City, Country From Customers where CAST(City AS VARCHAR(MAX)) = 'londres' OR 
CAST(City AS VARCHAR(MAX)) = 'Paris';

SELECT *  FROM Customers WHERE NOT CAST(Country AS VARCHAR(MAX)) = 'USA' AND NOT CAST(Country AS VARCHAR(MAX)) = 'France'

-- LIMIT No es compatible con SQL SERVER. En su lugar SQL SERVER utiliza top

SELECT TOP 5 * FROM Customers 
WHERE CustomerID >= 50
  AND CAST(Country AS VARCHAR(MAX)) = 'Germany';


SELECT top 3 * FROM Products WHERE NOT CategoryID = 6 
AND NOT SupplierID = 1
AND Price <= 30
ORDER BY NEWID();


-- DISTINTO DE VS NOT 

-- BEETWEN 
-- Operacion de comparacion, que se utiliza para selecciojnar valores en un rango especificos
-- RANGO DE NUMEROS , RANGO DE FECHAS 

SELECT * FROM Products WHERE Price NOT BETWEEN 20 AND 40;

SELECT * 
FROM Employees 
WHERE BirthDate BETWEEN '1960-01-01' AND '1970-01-01';


--------------------------------------------  Error Error -------------------------------------------------------
-- Con esto cambie todos productName por QUESO toda la informacion SALIO MAL

UPDATE Products SET ProductName = 'Queso'; 

--------------------------------------------  Error Error -------------------------------------------------------
-- Solucion 

UPDATE Products SET ProductName = 'Refrijerio', Unit ='10 boques' WHERE ProductID = 1; 
SELECT * FROM Products WHERE ProductID = 1; 

Select * from Products;