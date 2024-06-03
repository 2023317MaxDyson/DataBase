/**
	Graded Learning Activity 2
**/
--Query Questions
--1

/* Write a single SELECT statement that returns these columns:
The count of the number of orders in the Orders table
The sum of the TaxAmount columns in the Orders table */

SELECT count(CustomerID) as NumberOfOrders, sum(TaxAmount) as TaxAmount 
from Orders;

--2

/* Write a SELECT statement that returns the same result set as this SELECT statement, but don’t use a 
join. Instead, use a subquery in a WHERE clause that uses the IN keyword. */

SELECT DISTINCT CategoryName 
FROM Categories
where CategoryID IN (SELECT CategoryID from Products)
ORDER BY CategoryName;



--3

/* Write a SELECT statement that answers this question: Which products have a list price that’s greater 
than the average list price for all products?

Return the ProductName and ListPrice columns for each product.
Sort the results by the ListPrice column in descending sequence.*/

SELECT ProductName, ListPrice from Products
where  listPrice > (SELECT AVG(ListPrice) from Products) 
ORDER BY ListPrice DESC;


--4


-- Write an INSERT statement that adds this row to the Products table:

/* ProductID: The next automatically generated ID 
CategoryID: 4
ProductCode: dgx_640
ProductName: Yamaha DGX 640 88-Key Digital Piano
Description: Long description to come.
ListPrice: 799.99
DiscountPercent: 0
DateAdded: Today’s date/time. */

 --INSERT INTO Products( CategoryID, ProductCode, ProductName, Description, ListPrice, DiscountPercent, DateAdded) 
 --  VALUES(4, 'dgx_640', 'Yamaha DGX 640 88-Key Digital Piano', 'Long description to come.', 799.99, 0, '2024-4-12' );

   Select * from Products;



--5

/* Write an UPDATE statement that modifies the product you added in previous question. This 
statement should change the DiscountPercent column from 0 to 35 */

UPDATE Products 
SET DiscountPercent =  35.00
WHERE ProductID = 13


-- Written Questions

--6 

-- b. all rows in the table will be deleted

--7

 -- b. Having 

--8

 -- c. 'ex' stored in a column of type nchar(20)
 

--9

-- d. all of above

--10

--c. varchar(max)