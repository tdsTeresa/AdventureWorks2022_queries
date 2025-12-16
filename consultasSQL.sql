USE AdventureWorks2022

Select ProductID, sum(OrderQty) as TotalQuantity, sum(LineTotal) as TotalSales from Sales.SalesOrderDetail -- 1 CLÁUSULA GROUP BY
group by ProductID


Select ProductID, sum(OrderQty) as TotalQuantity from Sales.SalesOrderDetail -- 2  CLÁUSULA HAVING
group by ProductID
having sum(OrderQty)>50


Select SalesOrderID, ProductID, LineTotal, sum(LineTotal) -- 3 CLÁUSULAS OVER Y PARTITION BY
over (partition by SalesOrderID) as TotalOrderValue
from Sales.SalesOrderDetail 


Select SalesOrderID, SalesOrderDetailID, ProductID, LineTotal, --4 FUNCIÓN ROW_NUMBER
row_number() over(partition by SalesOrderID order by SalesOrderID) as RowNum
from Sales.SalesOrderDetail


Select SalesOrderID, ProductID, LineTotal,
rank() over (partition by SalesOrderID order by LineTotal desc) as Rank -- 5 FUNCIÓN RANK
from Sales.SalesOrderDetail


Select SalesOrderID, ProductID, LineTotal, 
dense_rank() over(partition by SalesOrderID order by LineTotal desc) as DenseRank  --6  FUNCIÓN DENSE_RANK
from Sales.SalesOrderDetail


Select ProductID, sum(LineTotal) as TotalSales from Sales.SalesOrderDetail --7 CLÁUSULA HAVING
group by ProductID 
having sum(LineTotal)>5000
order by 2 desc


Select p.Name, p.ProductID from Production.Product p 
		where p.ProductID in (Select ProductID from Sales.SalesOrderDetail) order by Name							--8 SUBCONSULTA



Select hed.BusinessEntityID, 
		p.FirstName +' '+p.LastName as Empleado, 
		hd.Name as Departamento from Person.Person p																--9 INNER JOIN
		INNER JOIN HumanResources.EmployeeDepartmentHistory hed on hed.BusinessEntityID =p.BusinessEntityID 
		INNER JOIN HumanResources.Department hd on hd.DepartmentID = hed.DepartmentID
		INNER JOIN HumanResources.Employee he on he.BusinessEntityID= hed.BusinessEntityID 
		where  hed.EndDate IS NULL order by 1


WITH Listado as																					
				(Select hed.BusinessEntityID, hed.EndDate,															--10 CTE
				p.FirstName +' '+p.LastName as Empleado, 
				hd.Name as Departamento from Person.Person p 
				JOIN HumanResources.EmployeeDepartmentHistory hed on hed.BusinessEntityID =p.BusinessEntityID 
				JOIN HumanResources.Department hd on hd.DepartmentID = hed.DepartmentID
				JOIN HumanResources.Employee he on he.BusinessEntityID= hed.BusinessEntityID where hed.EndDate IS NULL)

				Select cte.BusinessEntityID, cte.Empleado, cte.Departamento from Listado cte  order by cte.BusinessEntityID



CREATE TABLE #ProductionProduct (ProductID int,																		--EJERCICIO 11 (Tabla temporal local)
								Name varchar(50))
								
								Insert into #ProductionProduct (ProductID, Name)
								Select ProductID, Name from Production.Product 
								where ProductID in (Select ProductID from Sales.SalesOrderDetail) order by 1


CREATE TABLE ##ProductionProduct1 (ProductID int,																				--(Tabla temporal global)							
								Name varchar(50))

								Insert into ##ProductionProduct1 (ProductID, Name)
								Select ProductID, Name from Production.Product 
								where ProductID in (Select ProductID from Sales.SalesOrderDetail) order by 1




Select SalesOrderNumber,																											--12 ISNULL
		ISNULL(PurchaseOrderNumber, 'No Disponible') as  PurchaseOrderNumber 
		from sales.SalesOrderHeader where  year(OrderDate) =2011


Select SUBSTRING(SalesOrderNumber, 3,5) AS NewSalesOrderNumber,																		--SUBSTRING
		SUBSTRING(PurchaseOrderNumber, 3,11) as NewPurchaseOrderNumber from sales.SalesOrderHeader 