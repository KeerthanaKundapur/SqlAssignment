-- Create following table: Product, Suppliers & Stock
use assignment;
Create table Supplier(
Supplier_id int primary key AUTO_INCREMENT
,Supplier_Name varchar(80) unique not null 
,Location varchar(80) not null
); 

insert into Supplier(Supplier_Name, Location)
values ('Karthik', 'Mumbai'), ('Sharan', 'Banglore'), 
('Krithi', 'Hydrabad'), ('Karan', 'Delhi'), 
('Rohan', 'Kerala') ;

show columns from Supplier;
Select * from Supplier;

Create table Product(
Product_id int primary key
,Product_Name varchar(80) unique not null 
,Supplier_id int auto_increment
,Description text not null
,foreign key (Supplier_id) references Supplier(Supplier_id)
); 

insert into Product(Product_id, Product_Name, Description)
values (001, 'Apple Tv', 'Simply connect your favourite devices and transform your house into a remarkably smart, convenient and entertaining home')
, (002, 'ipad', 'The iPad is a brand of iOS and iPadOS-based tablet computers developed by Apple Inc. The iPad is a touchscreen tablet PC made by Apple')
, (003, 'Macbook', 'The MacBook is a brand of Macintosh notebook computers designed and marketed by Apple Inc. that uses macOS operating system')
, (004, 'AirPods Max', 'AirPods Max combine high-fidelity audio with industry-leading Active Noise Cancellation to deliver an unparalleled listening experience')
, (005, 'Apple Pencil', ' Apple Pencil expands the power of iPad and opens up new creative possibilities');

show columns from Product;
Select * from Product;

drop table Stock;
Create table Stock(
Stock_id int primary key
,Product_id int auto_increment
,Balance_stock int not null
,Foreign key (product_id) references product(product_id)
); 

insert into Stock(Stock_id, Balance_Stock)
values (101, 200), 
(102, 500), (103, 300), 
(104, 600), (105, 800);

show columns from Stock;
select * from Stock;
set sql_safe_updates = 0;
