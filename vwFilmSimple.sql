CREATE VIEW [dbo].[vwFilmSimple]
AS
SELECT     FilmID, FilmName, FilmBoxOfficeDollars
FROM         dbo.tblFilm
WHERE     (FilmBoxOfficeDollars = NULL)