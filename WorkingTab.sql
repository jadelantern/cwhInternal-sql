Last SQL Screen 8/9/23

SELECT DATALENGTH(Name), * FROM SystemGenres ORDER BY Name

SELECT Name,COUNT(*) AS 'Count' FROM SystemGenres
GROUP BY Name 
ORDER BY Name

SELECT * FROM SystemPaperStock ORDER BY Name

SELECT * FROM SystemPaperStock
SELECT DATALENGTH(Name), * FROM SystemComicBindings ORDER BY Name
SELECT * FROM SystemComicBindings WHERE REPLACE(Name, '?','') LIKE '?%';

CREATE TABLE ComicSeriesBindings(
Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
ComicSeriesId INT NOT NULL, 
ComicBindingId INT NOT NULL,
DateCreated DATETIME NOT NULL,
Ignore BIT NOT NULL,
FOREIGN KEY (ComicSeriesId) REFERENCES ComicSeries(Id),
FOREIGN Key (ComicBindingId) REFERENCES SystemComicBindings(Id)
)

DELETE FROM SystemComicBindings;
DBCC CHECKIDENT('SystemComicBindings', RESEED, 1);

DELETE FROM ComicContributors;
DBCC CHECKIDENT('ComicContributors', RESEED, 1);

DELETE FROM ComicSeriesBindings
DELETE FROM ComicSeriesDimensions
DELETE FROM ComicSeriesPaperStock
DELETE FROM ComicSeries
DBCC CHECKIDENT('ComicSeries', RESEED, 1);
-- DELETE FROM SystemDimension;
GO
DBCC CHECKIDENT('SystemDimension', RESEED, 1);

DELETE FROM SystemComicRoles;
DBCC CHECKIDENT('SystemComicroles', RESEED, 1);

SELECT * FROM SystemLanguages ORDER BY LanguageName
SELECT * FROM SystemComicRoles ORDER BY Name

SELECT * FROM SystemDimension ORDER BY DATALENGTH(Name) DESC

SELECT * FROM ComicContributors
SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'ComicContributors'


--DELETE FROM SystemPublishers
--DELETE FROM SystemGenres
--DELETE FROM SystemCountries

ALTER TABLE ComicSeries DROP CONSTRAINT FK__ComicSeri__Dimen__2EDAF651;
ALTER TABLE ComicSeries DROP COLUMN DimensionId;

ALTER TABLE ComicSeries DROP CONSTRAINT FK__ComicSeri__Bindi__30C33EC3
ALTER TABLE ComicSeries DROP CONSTRAINT FK__ComicSeri__Genre__31B762FC
ALTER TABLE ComicSeries DROP CONSTRAINT FK__ComicSeri__Paper__2FCF1A8A
ALTER TABLE ComicSeries DROP COLUMN PaperStockId;
ALTER TABLE ComicSeries DROP COLUMN BindingId;
ALTER TABLE ComicSeries DROP COLUMN GenreId;
--ALTER TABLE ComicContributors ALTER COLUMN CITYOFDEATH NVARCHAR(100);
--ALTER TABLE ComicContributors ALTER COLUMN FIRSTNAME NVARCHAR(125);
--ALTER TABLE ComicContributors ALTER COLUMN LASTNAME NVARCHAR(125);
--ALTER TABLE SYSTEMPUBLISHERS ALTER COLUMN Notes NVARCHAR(MAX);
--ALTER TABLE SYSTEMPUBLISHERS ALTER COLUMN Name VARCHAR(255);
--ALTER TABLE SystemPaperStock ALTER COLUMN Name VARCHAR(255);
--ALTER TABLE SystemLanguages ALTER COLUMN LanguageName VARCHAR(255);
--ALTER TABLE ComicContributors ALTER COLUMN StateOfDeath VARCHAR(255);
--ALTER TABLE ComicContributors ALTER COLUMN StateOfBirth VARCHAR(255);
--ALTER TABLE ComicContributors ALTER COLUMN CityOfDeath VARCHAR(255);
--ALTER TABLE ComicContributors ALTER COLUMN CityOfBirth VARCHAR(255);
ALTER TABLE ComicContributors ALTER COLUMN DateOfBirth DATETIME2;
ALTER TABLE ComicContributors ALTER COLUMN DateOfDeath DATETIME2;

ALTER TABLE SystemPaperStock ADD IsActive BIT NULL
ALTER TABLE SystemComicBindings ALTER COLUMN Name VARCHAR(255);
UPDATE SystemPaperStock SET ISACTIVE = 0

SELECT * FROM INFORMATION_SCHEMA.TABLES ORDER BY TABLE_NAME

SELECT DATALENGTH(RTRIM(LTRIM(name))),* FROM SystemComicBindings WHERE Name LIKE '%dust%'

?????? ????????
?
Characters

ComicCoverAttributions
ComicCovers
ComicIssueCharacters
ComicIssues
ComicIssuesAttributions
ComicMetaData
ComicSeries

SystemComicRoles

SELECT * FROM ComicSeries
SELECT * FROM Characters

SELECT * FROM ComicSeries

SELECT * FROM SystemDimension