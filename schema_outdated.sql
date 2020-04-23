CREATE TABLE [cecj02_D_Kategorie_Zakaznik](
	[IdKategorieZakaznik] [int] NOT NULL PRIMARY KEY,
	[NazevKategorieZakaznik] [nvarchar](50) NOT NULL)

CREATE TABLE [cecj02_D_Lokalita_Kraj](
	[IdKraj] [int] NOT NULL PRIMARY KEY,
	[NazevKraj] [nvarchar](100) NOT NULL)

CREATE TABLE [cecj02_D_Lokalita_Okres](
	[IdOkres] [int] NOT NULL PRIMARY KEY,
	[NazevOkres] [nvarchar](100) NOT NULL,
	[IdKraj] [int] NOT NULL)

CREATE TABLE [cecj02_D_Lokalita_Mesto](
	[IdMesto] [int] NOT NULL PRIMARY KEY,
	[Psc] [nvarchar](5) NOT NULL UNIQUE,
	[IdOkres] [int] NOT NULL)

CREATE TABLE [cecj02_D_Zakaznik](
	[IdZakaznik] [int] NOT NULL PRIMARY KEY,
	[NazevZakaznik] [nvarchar](150) NULL,
	[Psc] [nvarchar](5) NULL,
  [IdKategorieZakaznik] [int] NULL)

CREATE TABLE [cecj02_D_Typ_Zdroj](
	[IdTypZdroj] [int] NOT NULL PRIMARY KEY,
	[NazevTypZdroj] [nvarchar](50) NOT NULL)

CREATE TABLE [cecj02_D_Zdroj](
	[IdZdroj] [int] NOT NULL PRIMARY KEY,
	[NazevZdroj] [nvarchar](100) NOT NULL,
	[Cena] [money] NOT NULL,
	[Naklady] [money] NOT NULL,
	[IdTypZdroj] [int] NOT NULL)

CREATE TABLE [cecj02_F_Kontrakt](
	[IdKontrakt] [int] NOT NULL PRIMARY KEY,
	[CenaCelkem] [money] NOT NULL,
  [NakladyCelkem] [money] NOT NULL,
  [DatumOd] [date] NOT NULL,
  [DatumDo] [date] NOT NULL,
	[IdZakaznik] [int] NULL,
	[IdZdroj] [int] NOT NULL)

CREATE TABLE [cecj02_D_Typ_Platba](
  [IdTypPlatba] [int] NOT NULL PRIMARY KEY,
  [NazevTypPlatba] [nvarchar](50) NOT NULL)

CREATE TABLE [cecj02_D_Druh_Platba](
  [IdDruhPlatba] [int] NOT NULL PRIMARY KEY,
  [NazevDruhPlatba] [nvarchar](50) NOT NULL)

CREATE TABLE [cecj02_D_PlanSkutecnost](
  [IdPlanSkutecnost] [int] NOT NULL PRIMARY KEY,
  [NazevPlanSkutecnost] [nvarchar](10) NOT NULL)

CREATE TABLE [cecj02_D_Pobocka](
  [IdPobocka] [int] NOT NULL PRIMARY KEY,
  [NazevPobocka] [nvarchar](100) NOT NULL,
  [Psc] [nvarchar](5) NOT NULL)

CREATE TABLE [cecj02_F_Platba](
  [IdPlatba] [int] NOT NULL PRIMARY KEY,
	[Castka] [money] NOT NULL,
  [Datum] [date] NOT NULL,
	[IdDruhPlatba] [int] NOT NULL,
	[IdTypPlatba] [int] NOT NULL,
	[IdPobocka] [int] NULL,
	[IdPlanSkutecnost] [int] NOT NULL,
	[IdKontrakt] [int] NOT NULL)
