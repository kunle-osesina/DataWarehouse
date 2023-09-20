CREATE TABLE [dbo].[Customer] (
[CustomerKey] float not null,
[Customer ID] nvarchar(255),
[Customer] nvarchar(255),
[City] nvarchar(255),
[State-Province] nvarchar(255),
[Country-Region] nvarchar(255),
[Postal Code] nvarchar(255)
);

CREATE TABLE [dbo].[Date] (
[DateKey] float not null,
[Date] datetime,
[Fiscal Year] nvarchar(255),
[Fiscal Quarter] nvarchar(255),
[Month] nvarchar(255),
[Full Date] nvarchar(255),
[MonthKey] float
);

CREATE TABLE [dbo].[Product] (
[ProductKey] float not null,
[SKU] nvarchar(255),
[Product] nvarchar(255),
[Standard Cost] money,
[Color] nvarchar(255),
[List Price] money,
[Model] nvarchar(255),
[Subcategory] nvarchar(255),
[Category] nvarchar(255)
);

CREATE TABLE [dbo].[Reseller] (
[ResellerKey] float not null,
[Reseller ID] nvarchar(255),
[Business Type] nvarchar(255),
[Reseller] nvarchar(255),
[City] nvarchar(255),
[State-Province] nvarchar(255),
[Country-Region] nvarchar(255),
[Postal Code] nvarchar(255)
);

CREATE TABLE [dbo].[SalesOrder] (
[Channel] nvarchar(255),
[SalesOrderLineKey] float,
[Sales Order] nvarchar(255),
[Sales Order Line] nvarchar(255)
);

CREATE TABLE [dbo].[SalesTerritory] (
[SalesTerritoryKey] float not null,
[Region] nvarchar(255),
[Country] nvarchar(255),
[Group] nvarchar(255)
);

CREATE TABLE [dbo].[Sales] (
[SalesOrderLineKey] float,
[ResellerKey] float,
[CustomerKey] float,
[ProductKey] float,
[OrderDateKey] float,
[DueDateKey] float,
[ShipDateKey] float,
[SalesTerritoryKey] float,
[Order Quantity] float,
[Unit Price] money,
[Extended Amount] money,
[Unit Price Discount Pct] float,
[Product Standard Cost] money,
[Total Product Cost] money,
[Sales Amount] money
);