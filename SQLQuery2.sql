--
--ANSI standarti
Select ContactName Adi,CompanyName Sirketadi,City Sehir from Customers

Select * from Customers where City = 'Berlin'


--sql case insensitive'dir
Select * from Products where CategoryID=1 OR CategoryID=3

Select * from Products where CategoryID=1 and UnitPrice>=10


select * from Products where CategoryID=1 order by UnitPrice asc    --- ascending(artan demek), desc(desending=dusen demek)


Select count(*) Adet from Products where CategoryID=2



Select CategoryID, count(*) from Products where UnitPrice>20 group by CategoryID having count(*)<10


select Products.ProductID, Products.ProductName,Products.UnitPrice, Categories.CategoryName 
from Products inner join Categories on Products.CategoryID=Categories.CategoryID
where Products.UnitPrice>10


--DTO Data Transformation Object

select * from Products p inner join [Order Details] od 
on p.ProductID = od.ProductID 
inner join Orders o on o.OrderID=od.Discount

select * from Customers c left join Orders o on c.CustomerID=o.CustomerID where o.CustomerID is null

