CREATE TABLE [dbo].[ComicSeriesDimensions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ComicSeriesId] [int] NOT NULL,
	[ComicDimensionsId] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[Ignore] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ComicSeriesDimensions]  WITH CHECK ADD FOREIGN KEY([ComicSeriesId])
REFERENCES [dbo].[ComicSeries] ([Id])
GO

ALTER TABLE [dbo].[ComicSeriesDimensions]  WITH CHECK ADD FOREIGN KEY([ComicDimensionsId])
REFERENCES [dbo].[SystemDimension] ([Id])
GO


CREATE TABLE [dbo].[ComicSeriesPaperStock](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ComicSeriesId] [int] NOT NULL,
	[ComicPaperStockId] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[Ignore] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ComicSeriesPaperStock]  WITH CHECK ADD FOREIGN KEY([ComicSeriesId])
REFERENCES [dbo].[ComicSeries] ([Id])
GO

ALTER TABLE [dbo].[ComicSeriesPaperStock]  WITH CHECK ADD FOREIGN KEY([ComicPaperStockId])
REFERENCES [dbo].[SystemPaperStock] ([Id])
GO


CREATE TABLE [dbo].[ComicSeriesGenre](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ComicSeriesId] [int] NOT NULL,
	[ComicGenreId] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[Ignore] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ComicSeriesGenre]  WITH CHECK ADD FOREIGN KEY([ComicSeriesId])
REFERENCES [dbo].[ComicSeries] ([Id])
GO

ALTER TABLE [dbo].[ComicSeriesGenre]  WITH CHECK ADD FOREIGN KEY([ComicGenreId])
REFERENCES [dbo].[SystemGenres] ([Id])
GO