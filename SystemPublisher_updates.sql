SELECT *
FROM SystemPublishers

INSERT INTO SystemPublishers(
Name, Country, WebSite, Notes, DateCreated, Ignore
)
VALUES (
'Marvel', '', '', '', GETUTCDATE(), 0
)

INSERT INTO SystemPublishers(
Name, Country, WebSite, Notes, DateCreated, Ignore
)
VALUES (
'DC', '', '', '', GETUTCDATE(), 0
)

INSERT INTO SystemPublishers(
Name, Country, WebSite, Notes, DateCreated, Ignore
)
VALUES (
'DarkHorse', '', '', '', GETUTCDATE(), 0
)

INSERT INTO SystemPublishers(
Name, Country, WebSite, Notes, DateCreated, Ignore
)
VALUES (
'Image', '', '', '', GETUTCDATE(), 0
)


ALTER TABLE SystemPublishers ADD Logo VARCHAR(300) NULL

UPDATE SystemPublishers
SET Logo = 'https://upload.wikimedia.org/wikipedia/commons/b/b9/Marvel_Logo.svg'
	,Ignore = 0
WHERE Name = 'Marvel'