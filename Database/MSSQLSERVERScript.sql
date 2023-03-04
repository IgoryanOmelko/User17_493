create database [User17_493]
go
use [User17_493]
go
create table [Role]
(
	RoleID int primary key,
	RoleName nvarchar(100) not null
)
go
create table [Manufacturer]
(
	ManufacturerID int primary key,
	ManufacturerName nvarchar(100) not null
)
go
create table [Provider]
(
	ProviderID int primary key,
	ProviderName nvarchar(100) not null
)
go
create table [Unit]
(
	UnitID int primary key,
	UnitName nvarchar(100) not null
)
go
create table [Category]
(
	CategoryID int primary key,
	CategoryName nvarchar(100) not null
)
go
create table [Status]
(
	StatusID int primary key,
	StatusName nvarchar(100) not null
)
go
create table [PickupPoint]
(
	PickupPointID int primary key,
	PickupPointAddress nvarchar(max) not null
)
go
create table [User]
(
	UserID int primary key,
	UserSurname nvarchar(100) not null,
	UserName nvarchar(100) not null,
	UserPatronymic nvarchar(100) not null,
	UserLogin nvarchar(max) not null,
	UserPassword nvarchar(max) not null,
	UserRole int foreign key references [Role](RoleID) on delete cascade on update cascade not null
)
go
create table [Order]
(
	OrderID int primary key,
	OrderOrderedDate datetime not null,
	OrderDeliveryDate datetime not null,
	OrderPickupPoint int foreign key references [PickupPoint](PickupPointID) on delete cascade on update cascade not null,
	OrderUser int foreign key references [User](UserID) on delete cascade on update cascade null,
	OrderDeliveryCode int not null,
	OrderStatus int foreign key references [Status](StatusID) on delete cascade on update cascade not null
)
go
create table Product
(
	ProductArticleNumber nvarchar(100) primary key,
	ProductName nvarchar(max) not null,
	ProductUnit int foreign key references [Unit](UnitID) on delete cascade on update cascade not null,
	ProductCost decimal(19,4) not null,
	ProductDiscountAmountMax tinyint null,
	ProductManufacturer int foreign key references [Manufacturer](ManufacturerID) on delete cascade on update cascade not null,
	ProductProvider int foreign key references [Provider](ProviderID) on delete cascade on update cascade not null,
	ProductCategory int foreign key references [Category](CategoryID) on delete cascade on update cascade not null,
	ProductDiscountAmount tinyint null,
	ProductQuantityInStock int not null,
	ProductDescription nvarchar(max) not null,
	ProductPhoto nvarchar(max) null
)
go
create table OrderProduct
(
	--OrderProductID int primary key,
	OrderID int foreign key references [Order](OrderID) on delete cascade on update cascade not null,
	ProductArticleNumber nvarchar(100) foreign key references [Product](ProductArticleNumber) on delete cascade on update cascade not null,
	ProductAmount int not null,
	Primary key (OrderID,ProductArticleNumber)
)
