CREATE VIEW [dbo].[vwFilms]
AS
SELECT     dbo.tblFilm.FilmName, dbo.tblDirector.DirectorName, dbo.tblCountry.CountryName, dbo.tblLanguage.Language, dbo.tblCertificate.Certificate, 
                      dbo.tblStudio.StudioName
FROM         dbo.tblCertificate INNER JOIN
                      dbo.tblFilm ON dbo.tblCertificate.CertificateID = dbo.tblFilm.FilmCertificateID INNER JOIN
                      dbo.tblCountry ON dbo.tblFilm.FilmCountryID = dbo.tblCountry.CountryID INNER JOIN
                      dbo.tblDirector ON dbo.tblFilm.FilmDirectorID = dbo.tblDirector.DirectorID INNER JOIN
                      dbo.tblLanguage ON dbo.tblFilm.FilmLanguageID = dbo.tblLanguage.LanguageID INNER JOIN
                      dbo.tblStudio ON dbo.tblFilm.FilmStudioID = dbo.tblStudio.StudioID