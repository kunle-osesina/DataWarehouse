CREATE FUNCTION [dbo].[CurrentYear]()
RETURNS INT
AS
BEGIN
	RETURN year(GetDate())
END
GO