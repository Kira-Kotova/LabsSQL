Create DataBase [Archive]
-----Creating tables-----
Create Table [Article]
(
	ID Int Primary Key,
	[ArticleNumber] Char(5) not null unique,
	[ArticleName] NVarChar(50) not null 
)
Create Table [Status]
(
	ID Int Primary Key,
	[Status] NVarChar(20) not null
)
Create Table [Rank]
(
	ID Int Primary Key,
	[Rank] NVarChar(20) not null
)
Create Table [Position]
(
	ID Int Primary Key,
	[Position] NVarChar(20) not null
)
Create Table [Gender]
(
	ID Int Primary Key,
	[Gender] NVarChar(6) not null
)
Create Table [Person]
(
	ID Int Primary Key,
	[Gender] Int Foreign Key References [Gender](ID),
	[FirstName] NVArChar(30) not null,
	[LastName] NVarChar(30) not null,
	[MiddleName] NVarChar(30),
	[Birthday] DateTime not null,
	[Contact] NVarChar(50) not null
)
Create Table [Employee]
(
	ID Int Primary Key,
	[ID_Person] Int Foreign Key References [Person](ID),
	[ID_Rank] Int Foreign Key References [Rank](ID),
	[ID_Position] Int Foreign Key References [Position](ID)
)
Create Table [Convicted]
(
	ID Int Primary Key,
	[ID_Person] Int Foreign Key References Person(ID),
	[Term] Date not null
)
Create Table [Suspected]
(
	ID Int Primary Key,
	[ID_Person] Int Foreign Key References Person(ID)
)
Create Table [Case]
(
	ID Int Primary Key,
	[ID_Article] Int Foreign Key References [Article](ID),
	[ID_Status] Int Foreign Key References [Status](ID),
	[Content] NVarChar(60) not null,
	[StartProcessDate] DateTime not null,
	[EndProcessDate] DateTime
)
Create Table [Record]
(
	ID Int Primary Key,
	[ID_Case] Int Foreign Key References [Case](ID),
	[ID_Employee] Int Foreign Key References [Employee](ID),
	[ID_Convicted] Int Foreign Key References [Convicted](ID),
	[ID_Suspected] Int Foreign Key References [Suspected](ID), 
	[CreationDate] DateTime not null
)

