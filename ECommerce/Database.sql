create table Category
(
category_id int primary key identity(100,1),
category_name varchar(40) not null
)

create table Sub_Category
(
category_id int references category(category_id) on delete cascade,
sub_category_id int primary key identity(100,1),
sub_category_name varchar(40) not null
)

create table Seller
(
seller_id int primary key identity(100,1),
seller_name varchar(40) not null,
password varchar(40) not null,
Phone_No varchar(15) unique not null ,
Email_Id  varchar(40) unique not null,
Account_No bigint unique not null,
IFSC_Code varchar(40) not null,
GSTIN varchar(30) unique not null,
)

create table Product
(
product_Id int primary key identity(100,1),
seller_id int references Seller(seller_id) on delete cascade,
Sub_category_id int references Sub_Category(sub_category_id) on delete cascade,
product_name varchar(40) not null,
product_Desc varchar(300) ,
product_price float not null,
Product_quantity int not null,

)

create table admin
(
Admin_Id int primary key identity(100,1),
Password varchar(20) not null
)


create table customer
(
cust_id int primary key identity(100,1),
First_name varchar(20) not null,
Last_Name varchar(20),
phone_no varchar(15) unique not null ,
password varchar(30) not null,
Email_Id  varchar(40) unique not null,
Address varchar(300) not null,
Zipcode varchar(6) not null)														

create table cart
(
cart_id int primary key identity(100,1),
No_of_products int)

create table cart_details
(
cart_id int references cart(cart_id) on delete cascade,
prod_id int references product(product_id) on delete cascade,
quantity int not null,
prod_total_amnt int not null)



create table orders
(
order_id int primary key identity(100,1),
cust_id int references customer(cust_id) on delete cascade,
Order_Amt int not null,
Order_date date
)

create table order_details
(
order_id int references orders(order_id) on delete cascade,
product_id int references Product(product_ID) on delete cascade,
quantity int not null
)


create table shipper
(
shipper_id int primary key identity(100,1),
shipping_company_name varchar(20) not null,
)

create table shipping
(
shipping_id int primary key identity(100,1),
shipper_id int references shipper(shipper_id) on delete cascade,
ship_date date not null
)


create table shipping_details
(
shipping_id int references shipping(shipping_id) on delete cascade,
cust_id int references customer(cust_id) on delete cascade,
product_id int references Product(product_ID) on delete cascade
)


use Flipkart

select * from customer


create database Flipkart
go

drop database Flipkart




create database Flipkart;



select * from Product

select * from Sub_Category

insert Product
(seller_id,Sub_category_id,product_name,product_Desc,product_price,Product_quantity,img_front)
values
('1','1','iPhone 11','iPhone from Apple','58999','100','~/images/iphone11.jpg')

ALTER TABLE Product
DROP COLUMN img_front,img_back,img_left,img_right,img_top

ALTER TABLE Product
ADD img VARCHAR(MAX);

insert into Product values(100, 100, 'iPhone 11', 'iPhone from Apple', 58999.0, 100, '~/images/iphone11.jpg');
insert into Product values(100, 100, 'iPhone 11 Pro', 'iPhone from Apple', 98999.0, 100, '~/images/iphone11pro.jpg');

insert into Product values(100, 100, 'OnePlus 7T Pro', 'OnePlus', 48999.0, 100, '~/images/onplus7tpro.jpg');
insert into Product values(100, 100, 'Samsung Galaxy M30s', 'Blue, 4GB RAM, 64GB Storage', 12999.0, 100, '~/images/galaxym30s.jpg');
insert into Product values(100, 100, 'Redmi Note 8', 'Space Black, 6GB RAM, 128GB Storage', 12999.0, 100, '~/images/redminote8.jpg');
insert into Product values(100, 100, 'Huawei Mate 20 Pro','Twilight, 6GB RAM, 128GB Storage', 53999.0, 100, '~/images/huaweimate20pro.jpg');

select * from Product

DELETE
FROM
    Product
WHERE
    product_Id = 105;

	UPDATE Product
SET img='~/images/nokia.jpg'
WHERE product_Id = 107;

update customer set password='suhasns1660' where Email_Id='suhasns123@gmail.com'