CREATE PROC [dbo].[spFilms] (

	@CertName varchar(2),	-- certificate looking for
	@MinOscars int=0		-- films with this many Oscars

) AS
SELECT 
	f.FilmName,
	c.certificate,
	f.FilmOscarWins
FROM
	tblFilm AS f
	INNER JOIN tblCertificate as c ON 
		f.FilmCertificateId=c.CertificateId
WHERE
	c.certificate=@CertName AND
	FilmOscarWins>=@MinOscars
GO
