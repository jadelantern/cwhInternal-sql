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

DELETE FROM SystemDimension;
DBCC CHECKIDENT('SystemDimension', RESEED, 1);

SELECT * FROM SystemLanguages ORDER BY LanguageName

SELECT * FROM SystemDimension ORDER BY DATALENGTH(Name) DESC
--DELETE FROM SystemPublishers
--DELETE FROM SystemGenres
--DELETE FROM SystemCountries

--ALTER TABLE SYSTEMPUBLISHERS ALTER COLUMN Notes NVARCHAR(MAX);
--ALTER TABLE SYSTEMPUBLISHERS ALTER COLUMN Name VARCHAR(255);
--ALTER TABLE SystemPaperStock ALTER COLUMN Name VARCHAR(255);
--ALTER TABLE SystemLanguages ALTER COLUMN LanguageName VARCHAR(255);

ALTER TABLE SystemPaperStock ADD IsActive BIT NULL
ALTER TABLE SystemComicBindings ALTER COLUMN Name VARCHAR(255);
UPDATE SystemPaperStock SET ISACTIVE = 0

SELECT * FROM INFORMATION_SCHEMA.TABLES ORDER BY TABLE_NAME


?????? ????????
?
Characters
ComicContributors
ComicCoverAttributions
ComicCovers
ComicIssueCharacters
ComicIssues
ComicIssuesAttributions
ComicMetaData
ComicSeries

SystemComicRoles
