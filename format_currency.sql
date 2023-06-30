CREATE FUNCTION [dbo].[format_currency] (@monetary_value decimal(20,2) ) returns varchar(20)
as
begin
	declare @return_value varchar(20)
	declare @is_negative bit
	select @is_negative = case when @monetary_value<0 then 1 else 0 end

	if @is_negative = 1
		set @monetary_value = -1*@monetary_value

	set @return_value = convert(varchar, isnull(@monetary_value, 0))
	
	declare @before varchar(20), @after varchar(20)

	if charindex ('.', @return_value )>0 
	begin
		set @after= substring(@return_value,  charindex ('.', @return_value ), len(@return_value))	
		set @before= substring(@return_value,1,  charindex ('.', @return_value )-1)	
	end
	else
	begin
		set @before = @return_value
		set @after=''
	end
	-- after every third character:
	declare @i int
	if len(@before)>3 
	begin
		set @i = 3
		while @i>1 and @i < len(@before)
		begin
			set @before = substring(@before,1,len(@before)-@i) + ',' + right(@before,@i)
			set @i = @i + 4
		end
	end
	set @return_value = @before + @after

	if @is_negative = 1
		set @return_value = '-' + @return_value

	return @return_value 
end