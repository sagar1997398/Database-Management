CREATE TABLE AccountAssignment
(CostCenter_ID	BIGINT	            Not Null,	
CC_Name	            VARCHAR(20)	Not Null,
CC_Description	VARCHAR(500)	Not Null, 
CONSTRAINT PKCostID PRIMARY KEY (CostCenter_ID));

Insert into AccountAssignment (CostCenter_ID,CC_Name,CC_Description) values (
3093005044,'Operation','Business operations refers to the activities that firms optimize and engage in on a daily basis to increase the value of the enterprise and earn a profit.'),
(3093005018,'Engineering',	'Manufacturing engineering applies procedures in manufacturing processes and methods of production of industrial products. It includes research and develop tools, processes, machines, and equipment; and integrating the facilities and systems for producing quality products with the optimal expenditure of capital.'),
(3093005007,'Project Management','Project management is the process of using specific knowledge, skills, tools and techniques to deliver something of value to people. Examples include the construction of a building and the expansion of sales into a new geographic market.'),
(3093005017,'Warehouse','Warehouses stores inventory for manufacturers and distributors. The storage facility uses storage racks, handling equipment and personnel and management resources, to categorize the incoming and the outgoing flow of goods.'),
(3093005032,'Sourcing','Sourcing or procurement is the process of locating, acquiring and managing of all the vital inputs required for an organisation to operate. This includes raw materials, component parts, products, labour in all its forms, location and services. '),
(3093005050,'Finance','Finance refers to the acquisition and conservation of funds, capital structuring, accounting, and investment decisions to meet the objectives of a business enterprise.'),
(3093005004,'Quality','Quality control ensures that firms adhere to a predefined set of quality standards for products and services or meets the requirements of customers or clients. This includes training, creating benchmarks for measuring product or service quality, and testing to check for any significant variations in quality.');


CREATE TABLE Employee(
Emp_ID	   INTEGER	Not Null ,
FirstName	   VARCHAR(20)	Not Null, 
LastName          VARCHAR(20)	Not Null, 
Emp_Email	   VARCHAR(30)	Not Null,
Emp_Phone	   VARCHAR (15)	Not Null,
FunctionalArea  VARCHAR(50)	Not Null,
Title	                VARCHAR(30)	Not Null,
Reports_To	    INTEGER	Null,
CostCenter_ID	BIGINT	Not Null,
CONSTRAINT PKEmp PRIMARY KEY (EMP_ID),
CONSTRAINT FKCostID FOREIGN KEY (CostCenter_ID) REFERENCES AccountAssignment(CostCenter_ID),
CONSTRAINT FKReports FOREIGN KEY (Reports_To) REFERENCES Employee);


INSERT INTO EMPLOYEE(EMP_ID,FirstName,LastName,Emp_Email,Emp_Phone,FunctionalArea,Title,Reports_to,CostCenter_ID)
VALUES 

(18739801,'Michael', 'Smith','michael.smith@webuy.com','+1 469-262-2083','Sourcing','Sourcing Manager',NULL,3093005032)
,

(18738535,'David','Brown','david.brown@webuy.com','+1 972-409-9567','Finance','Financial Manager',NULL,3093005050),
(18768110,'Henry','Williams','henry.williams@webuy.com','+1 972-817-8324','Quality','Quality Manager',NULL,3093005004),

(18761157,'Sarah','Miller','sarah.miller@webuy.com','+1 469-753-9981','Engineering','Test Engineering Manager',NULL,3093005018),

(18702134,'Camila','Rodriguez','camila.rodriguez@webuy.com','+1 469-459-9207','Project Management','Head of Project Mgmt.',NULL,3093005007),
(18732221,'Terrell','Hart','terrell.hart@webuy.com','+1 972-102-3210','Warehouse','Inventory Specialist',NULL,3093005017)
;


INSERT INTO EMPLOYEE(EMP_ID,FirstName,LastName,Emp_Email,Emp_Phone,FunctionalArea,Title,Reports_to,CostCenter_ID)
VALUES 
(18769661,'James','Smith','james.smith@webuy.com','+1 214-724-7214','Sourcing','Buyer',18739801,3093005032),
(18770763,'Maria', 'Garcia','maria.garcia@webuy.com','+1 214-757-1446','Finance','Financial Analyst',18738535,3093005050),
(18728551,'Nancy','Clark','nancy.clark@webuy.com','+1 214-678-2557','Engineering','Test Engineer',18761157,3093005018),
(18778959,'Michael', 'Jordan','michael.jordan@webuy.com','+1 972-741-6181','Sourcing','Senior Buyer',18739801,3093005032),
(18762206,'Catherine','Jones','catherine.jones@webuy.com','+1 972-789-6101','Project Management','Project Manager',18702134,3093005007)
;


CREATE TABLE Category
(Category_ID	VARCHAR(15)	Not Null,
Category_Name	VARCHAR (50)         Not Null,
Description	    VARCHAR (500)         Not Null, 
CONSTRAINT PKCategoryID PRIMARY KEY (Category_ID))



insert into category (Category_ID,Category_Name,Description) values (
'XAM0100','Pantry Supplies','Pantry Supplies include supplies like dry goods, frozen items, sauces, cooking equipment like coffee machines, blenders etc.'),
('XSW0200'	,'Medical Supplies',	'Medical Supplies include consumable medical supplies (also referred to as disposable supplies), testing supplies and equipment, durable medical equipment, surgical supplies etc.'),
('XTM0100',	'Test Equipment',	'Test Equipments include products that are used to create signals and capture responses from devices, to prove proper operation or trace faults.'),
('XHW0200',	'WH equipment',	'Warehouse equipment includes products like forklift, conveyors, hand trucks and equipment that are essential to a warehouse.'), 
('XFM0500',	'Office Supplies',	'Office Supplies includes products like pens, pencils, tapes, pins. Ideally any consumables and equipment regularly used in offices by businesses and other organizations, by individuals engaged in written communications, recordkeeping or bookkeeping, janitorial and cleaning, and for storage of supplies or data.'),
('XFM0600'	,'Furniture'	,'Furniture is large movable equipment such as tables, cabinets or other space accessories that are used to make a house, an office or a room suitable for living or working.'),
('XTP0100'	,'IT & Hardware',	'IT Hardware includes tools, machinery, and any other durable equipment like machines, wiring, computer components.  IT hardware  is the technology you can physically touch.'),
('XCS0300'	,'Stationery'	,'Stationeries include writing paper, envelopes, form paper, and other office supplies. Stationery includes materials to be written on by hand or by equipment such as computer printers.')


CREATE TABLE PaymentDisbursement
(Invoice_Number	VARCHAR (20)	Not Null,
Vendor_ID	BIGINT	Not Null, 
Amount	INTEGER	Not Null,
Payment_Date	DATETIME	Not Null,
CONSTRAINT PKInvnumber PRIMARY KEY (Invoice_Number))

insert into paymentdisbursement (Invoice_number,Vendor_ID,Amount,Payment_date) values (

'ABB123',	2000165051,	 4500.00 ,	'2021-11-01'),
('ABB124',	2000165051,	 706.20, 	'2021-10-23'),
('Dell0123'	,2000068762,	 200.34, 	'2021-10-12'),
('Grainger9876',2000109497,	 5000.00, 	'2021-09-20'),
('Grainger9877'	,2000109497,	 358.21, 	'2021-11-08'),
('Grainger9878'	,2000153204,	 529.65, 	'2021-03-06'),
('Grainger9879'	,2000153204,	 562.10, 	'2021-11-15'),
('Grainger9880'	,2000153204,	 449.68, 	'2021-11-09'),
('Grainger9881'	,2000153204,	 337.26, 	'2021-11-13'),
('McMaster456'	,2000068594,	 50.00 ,	'2021-04-28'),
('McMaster457'	,2000068594,	 179.56 ,	'2021-11-05');


CREATE TABLE Vendor
(Vendor_ID	INTEGER	Not Null,
Vendor_Name	VARCHAR(50)	Not Null ,
Vendor_Email	VARCHAR(50)	Not Null,
Vendor_Phone	 VARCHAR(15)	Not Null,
Order_Currency	VARCHAR(10)	Not Null,
Payment_Term	VARCHAR(20)	Not Null,
Shipping_Term	VARCHAR(20)	Not Null,
CONSTRAINT PKVendID PRIMARY KEY (Vendor_ID))

insert into vendor (Vendor_ID,Vendor_name,Vendor_email,Vendor_phone,Order_currency,Payment_term,Shipping_term) values 
(2000165051,'ABB','abb@vendors.com','+1 972-419-2133','EUR','Net 30','FCA'),
(2000068762,'Dell','info@dell.com','+1 214-614-2158','USD','Net 60','DDP'),
(2000109497,'Grainger','sales@grainger.com','+1 214-441-2513','USD','Net 90','DAP'),
(2000153204,'Jabil','jabilvendors@outlook.com','+1 469-524-2142','USD','Net 30','FCA'),
(2000068990,'Keysight','venture@keysight.com','+1 972-321-5834','USD','Net 60','FCA'),
(2000068594,'McMaster-Carr','mcmaster-carr@MMC.com','+1 214-138-4628','USD','Net 30','FCA'),
(2000070327,'HP','info@hp.com','+1 469-939-6527','USD','Net 30','DDP'),
(2000180795,'Koh Young','koh.young@live.com    ','+1 972-373-3521','USD','Net 60','DDP'),
(2000181153,'Malin','contact@malin.com','+1 972-976-7623','USD','Net 60','DAP'),
(2000057313,'Nefab','alex.wang@nefab.com','+1 469-251-9064','USD','Net 60','FOB');



CREATE TABLE Product
(Product_ID	VARCHAR(15)	Not Null,
Description	VARCHAR (50)	Not Null,
Category_ID	VARCHAR (15) 	    Not Null,
Vendor_ID	INTEGER	Not Null,
QuantityPerUnit	INTEGER	Not Null,
Unit_Price	FLOAT	Not Null,
Unit_Available	INTEGER	Not Null,
CONSTRAINT PKProID PRIMARY KEY (Product_ID),
CONSTRAINT FKCatID FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID),
CONSTRAINT FKVendID FOREIGN KEY (Vendor_ID) REFERENCES Vendor(Vendor_ID))

insert into product (Product_id,description,category_id,vendor_id,quantityperunit,unit_price,unit_available) values
('35XE17',	'Mini-fridge',	'XAM0100',	2000165051,	1,	 35.31 ,	15),
('13Y814',	'Band-Aid',	'XSW0200',	2000068762,	30	, 3.78 	,40),
('30PY94',	'microscope',	'XTM0100',	2000109497,	1,	 2500.00 ,	7),
('22UM24',	'Welder',	'XTM0100',	2000109497,	1,	 358.21 	,8),
('401L79',	'Teardrop Beam',	'XHW0200',	2000153204,	1,	 56.21 	,11),
('20JE34',	'Bin',	'XHW0200',	2000068990,	1,	 50.00 	,24),
('38WF39',	'forklift',	'XHW0200',	2000068594,	1	, 3100.00 	,6),
('4NY79','cabinet',	'XFM0500',	2000068990,	1	, 89.78 	,13),
('53PN33',	'Mounting component (key-locked drawer)',	'XFM0500',	2000070327,	1,	350 ,	5),
('6YJ44',	'Sofa',	'XFM0600',	2000180795,	1,	300 	,5),
('1VTX8',	'Chair',	'XFM0600',	2000181153,	1,	145 	,10),
('43WA64',	'Side table',	'XFM0600',	2000057313,	1,	135 ,	18);



CREATE TABLE OrderRequest
(Request_Number	INTEGER	Not Null,
Emp_ID	INTEGER	Not Null,
Product_ID VARCHAR(15)	Null, 
Request_Date	DATETIME	Not Null,
Priority	VARCHAR(20)	Not Null,
Required_Date	DATETIME	Not Null,
CostCenter_ID	BIGINT	Not Null,
Quantity	INTEGER	Not Null,
Unit_Price	FLOAT	Not Null,
Comment	VARCHAR(50) Null,
CONSTRAINT PKRequest  PRIMARY KEY (Request_Number),
CONSTRAINT FKEmpID FOREIGN KEY (Emp_ID) REFERENCES Employee(Emp_ID),
CONSTRAINT FKProdID FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID),
CONSTRAINT FKCostsID  FOREIGN KEY (CostCenter_ID)  REFERENCES AccountAssignment(CostCenter_ID))	



insert into OrderRequest(Request_Number,Emp_ID,Product_ID,Request_Date,Priority,Required_Date,CostCenter_ID,Quantity,Unit_Price,Comment)
values
(954,18770763,NULL,'2021-9-28','Critical','2021-9-29',3093005044,1,4500.00 ,NULL),
(1598,18768110,'35XE17','2021-9-17','Low','2021-10-1',3093005004,20,35.31,NULL),
(589,18728551,'13Y814','2021-8-1','Low','2021-8-14',3093005018,53,3.78 ,NULL),
(590,18728551,'30PY94','2021-6-5','Low','2021-6-30',3093005018,2, 2500.00,NULL),
(1973,18762206,'22UM24','2021-7-20','Low','2021-8-5',3093005007,1,358.21 ,NULL),
(234,18762206,'35XE17','2021-1-25','Normal','2021-2-13',3093005007,15,35.31,NULL),
(99,18762206,'401L79','2021-10-6','Normal','2021-10-20',3093005007,24,56.21,NULL),
(157,18732221,'20JE34','2021-3-9','Low','2021-3-20',3093005017,1,50.00,NULL),
(1237,18732221,'38WF39','2021-8-23','Low','2021-9-10',3093005017,3,3100.00,NULL),
(1874,18732221,'4NY79','2021-9-29','Normal','2021-10-30',3093005017,2,89.78,NULL)	


CREATE TABLE PurchaseOrder
(PO_Number	BIGINT	Not Null,
Request_Number	INTEGER	Not Null, 
Emp_ID	INTEGER	Not Null,
Vendor_ID	INTEGER	Not Null,
PO_Date	DATETIME	Not Null, 
TaxCode	VARCHAR(5)	Not Null,
Delivery_Name	VARCHAR(30)	Not Null,
Delivery_Address	VARCHAR(300)	Not Null,
Status	VARCHAR(20)	Not Null,
CONSTRAINT PKPONumber PRIMARY KEY (PO_Number),
CONSTRAINT FKReqNum FOREIGN KEY (Request_Number) REFERENCES OrderRequest(Request_Number),
CONSTRAINT FKEmpsID FOREIGN KEY (Emp_ID) REFERENCES
Employee(Emp_ID),
CONSTRAINT FKVendorID FOREIGN KEY (Vendor_ID) REFERENCES
Vendor(Vendor_ID))

insert into PurchaseOrder(PO_Number,Request_Number,Emp_ID,Vendor_ID,PO_Date,TaxCode,Delivery_Name,Delivery_Address,Status)
values
(9202582691,954,18769661,2000165051,'2021-9-28','OI','We Buy','800 W Campbell Rd, Richardson, TX 75080','Complete'),
(9202583837,1598,18769661,2000165051,'2021-9-18','2I','Henry Williams','800 W Campbell Rd, Richardson, TX 75080','Complete'),
(9202590959,589,18769661,2000068762,'2021-8-3','OI','Nancy Clark','800 W Campbell Rd, Richardson, TX 75080','Complete'),
(9202590960,590,18769661,2000109497,'2021-6-7','OI','Nancy Clark','800 W Campbell Rd, Richardson, TX 75080','Complete'),
(9202594482,1973,18778959,2000109497,'2021-7-21','OI','Catherine Jones','800 W Campbell Rd, Richardson, TX 75080','Complete'),
(9202597404,234,18778959,2000153204,'2021-1-25','OI','Catherine Jones','800 W Campbell Rd, Richardson, TX 75080','Complete'),
(9202599851,99,18778959,2000153204,'2021-10-7','2I','Catherine Jones','800 W Campbell Rd, Richardson, TX 75080','In Progress'),
(9202690255,157,18778959,2000068594,'2021-3-9','OI','Terrell Hart','800 W Campbell Rd, Richardson, TX 75080','Complete'),
(9202714484,1874,18778959,2000068594,'2021-9-30','2I','Terrell Hart','800 W Campbell Rd, Richardson, TX 75080','In Progress')




CREATE TABLE VendorInvoice
(Invoice_Number	VARCHAR(20)	Not Null,
PO_Number	BIGINT	Not Null, 
Amount	FLOAT	Not Null,
PaymentTerm	VARCHAR(10)	Not Null,
CONSTRAINT PKNumber PRIMARY KEY (Invoice_Number, PO_Number),
CONSTRAINT FKInvNum  FOREIGN KEY (Invoice_Number) REFERENCES PaymentDisbursement(Invoice_Number), 
CONSTRAINT FKPONum  FOREIGN KEY (PO_Number) REFERENCES PurchaseOrder(PO_Number))



insert into VendorInvoice(Invoice_Number,PO_Number,Amount,PaymentTerm)
values
('ABB123',9202582691,4500.00,'Net 30'),
('ABB124',9202583837,706.20,'Net 30'),
('Dell0123',9202590959,200.34,'Net 60'),
('Grainger9876',9202590960,5000.00,'Net 90'),
('Grainger9877',9202594482,358.21,'Net 90'),
('Grainger9878',9202597404,529.65,'Net 30'),
('Grainger9879',9202599851,562.10,'Net 30'),
('Grainger9880',9202599851,449.68,'Net 30'),
('Grainger9881',9202599851,337.26,'Net 30'),
('McMaster456',9202690255,50.00,'Net 30'),
('McMaster457',9202714484,179.56,'Net 30')



CREATE TABLE Transportation
(Transport_ID	INTEGER	Not Null,
Shipper_ID	VARCHAR(3)	   Not Null, 
PO_Number	BIGINT	Not Null,
Ship_From	VARCHAR(40)	Not Null,
Ship_To	    VARCHAR(500)	Not Null,
Ship_Date	DATETIME	Not Null,
Delivery_Date	DATETIME	Not Null,
CONSTRAINT PKTransportID PRIMARY KEY (Transport_ID))


insert into Transportation(Transport_ID,Shipper_ID,PO_Number,Ship_From,Ship_To,Ship_Date,Delivery_Date)
values
(12345678,'UPS',9202582691,'ABB, address','Webuy, 800 W Campbell Rd, Richardson, TX 75080','2021-10-8','2021-10-13'),
(78965421,'UPS',9202583837,'put vendor ABBs address','Webuy, 800 W Campbell Rd, Richardson, TX 75080','2021-9-23','2021-9-27'),
(36873188,'UPS',9202590959,'put vendor Dells address','Webuy, 800 W Campbell Rd, Richardson, TX 75080','2021-8-13','2021-9-28'),
(34879213,'FDX',9202590960,'put vendor Graingers address','Webuy, 800 W Campbell Rd, Richardson, TX 75080','2021-6-22','2021-6-28'),
(73378214,'FDX',9202594482,'put vendor Graingers address','Webuy,800 W Campbell Rd, Richardson, TX 75080','2021-8-10','2021-8-15'),
(69731588,'FDX',9202597404,'put vendor Graingers address','Webuy, 800 W Campbell Rd, Richardson, TX 75080','2021-2-4','2021-2-9'),
(67894561,'DHL',9202599851,'put vendor Graingers address','Webuy, 800 W Campbell Rd, Richardson, TX 75080','2021-10-16','2021-10-21'),
(24567983,'DHL',9202599851,'put vendor Graingers address','Webuy, 800 W Campbell Rd, Richardson, TX 75080','2021-10-10','2021-10-15'),
(15468783,'UPS',9202599851,'put vendor Graingers address','Webuy, 800 W Campbell Rd, Richardson, TX 75080','2021-10-14','2021-10-19'),
(45687633,'UPS',9202690255,'put vendor McMasters address','Webuy, 800 W Campbell Rd, Richardson, TX 75080','2021-3-29','2021-4-3'),
(96843335,'FDX',9202714484,'put vendor McMasters address','Webuy, 800 W Campbell Rd, Richardson, TX 75080','2021-10-6','2021-10-11')




CREATE TABLE Shipper
(Shipper_ID	    VARCHAR(3)	Not Null, 
Shipper_Name	VARCHAR (20)	Not Null, 
Shipper_Email	VARCHAR(50)	Not Null,
Shipper_Phone	VARCHAR(15)	Not Null, 
CONSTRAINT PKShipperID PRIMARY KEY (Shipper_ID))


insert into Shipper(Shipper_ID,Shipper_Name,Shipper_Email,Shipper_Phone)
values
('UPS','UPS','outbound@ups.com','+1 800-100-5000'),
('FDX','FedEx','info@fedex.com','+1 800-100-3592'),
('DHL','DHL','info@dhl.com','+1 800-100-2784')



ALTER TABLE transportation ALTER COLUMN ship_from varchar(150);

UPDATE Transportation
SET Ship_From = ‘ABB, 4875 Acacia St, Tampa, FL 33604’
WHERE Transport_ID = 12345678;
UPDATE Transportation
SET Ship_From = ‘ABB, 4875 Acacia St, Tampa, FL 33604’
WHERE Transport_ID = 78965421;
UPDATE Transportation
SET Ship_From = ‘Dell, 3100 Orchid St, Austin, TX 78681’
WHERE Transport_ID = 36873188;
UPDATE Transportation
SET Ship_From = ‘Grainger, 2760 AB Street, Houston, TX 77004’
WHERE Transport_ID = 34879213;
UPDATE Transportation
SET Ship_From = ‘Grainger, 2760 AB Street, Houston, TX 77004’
WHERE Transport_ID = 73378214;
UPDATE Transportation
SET Ship_From = ‘Grainger, 2760 AB Street, Houston, TX 77004’
WHERE Transport_ID = 69731588;
UPDATE Transportation
SET Ship_From = ‘Grainger, 2760 AB Street, Houston, TX 77004’
WHERE Transport_ID = 67894561;
UPDATE Transportation
SET Ship_From = ‘Grainger, 2760 AB Street, Houston, TX 77004’
WHERE Transport_ID = 24567983;
UPDATE Transportation
SET Ship_From = ‘Grainger, 2760 AB Street, Houston, TX 77004’
WHERE Transport_ID = 15468783;
UPDATE Transportation
SET Ship_From = ‘McMaster, 6100 Loft Avenue, Oklahoma City, OK 73139’
WHERE Transport_ID = 45687633;
UPDATE Transportation
SET Ship_From = ‘Grainger, 2760 AB Street, Houston, TX 77004’
WHERE Transport_ID = 96843335;





--Reports

Select e.Emp_Id, e.FirstName, e.LastName, o.Request_Number, o.Request_Date, o.Cost_Center_Id, o.Quantity, a.cc_Name from 
Employee e, Order_Request o, Account_assignment a
Where
e.Emp_Id = o.Emp_Id  and e.cost_center_id = a. e.cost_center_id;

What is the managers name of the employee who requested the Maximum number of orders.

Select e.FirstName, e.LastName, 
from Employee e, Order_Request o
where e.Emp_Id in (select MAX(o.Quantity)) from Order_Request );


What is the Shipper name for the order which was created before last month?

Select s.shipper_name from shipper s, Transportation t
Where
t.ship_date > trunc(sysdate - 30);


Group the Products with respect to their categories which has price greater than 2500.

Select c.category_name , p.product_id 
from Category c, Product p
Group by category_name
Having unit_price > 2500;

Select p.po_number, AVG(v.Amount)
From Purchase_Order p, Vendor_Invoice v
Where 



