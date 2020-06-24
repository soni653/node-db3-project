-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT CategoryName,ProductName
FROM Product AS p
JOIN Category AS c ON p.CategoryId = c.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o.id, orderdate, companyname
FROM [Order] AS o
    join Shipper AS s
    on o.shipvia = s.id
where o.orderdate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT ProductName,Quantity
FROM Product AS p
JOIN OrderDetail AS o
	ON p.Id = o.ProductId
	WHERE o.OrderId = '10251'
	Order by p.ProductName;


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT o.Id id,
 o.ShipName "company name",
 e.LastName "employee last name"
FROM [Order] As o
left JOIN Employee AS e
ON o.EmployeeId = e.Id