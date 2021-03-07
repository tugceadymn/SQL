
delete from Products WHERE ProductID = 3
/*Msg 547, Level 16, State 0, Line 2
The DELETE statement conflicted with the REFERENCE constraint "FK_Order_Details_Products". The conflict occurred in database "NORTHWND", table "dbo.Order Details", column 'ProductID'.
The statement has been terminated.*/

-- silme sýralamasý
delete from [Order Details] WHERE ProductID = 3 -- (12 rows affected)

delete from Products WHERE ProductID = 3 -- (1 row affected)

go
create proc urunSil(@ProductID int)
as 
delete from [Order Details] WHERE ProductID = @ProductID 
delete from Products WHERE ProductID = @ProductID 
go

