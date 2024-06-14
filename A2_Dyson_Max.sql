USE MyGuitarShop;

-- Question 2

/* Write a SELECT statement that returns these column names and data from the 
OrderItems table:  */

SELECT ItemID, ItemPrice, DiscountAmount, Quantity, 
(ItemPrice * Quantity) AS PriceTotal, ( DiscountAmount * Quantity) AS DiscountTotal,
(ItemPrice - DiscountAmount) * Quantity AS ItemTotal
FROM OrderItems

/* Only return rows where the ItemTotal is greater than 500. 
Sort the result set by item total in descending sequence.*/

WHERE (ItemPrice - DiscountAmount) * Quantity  > 500  
ORDER BY (ItemPrice - DiscountAmount) * Quantity DESC;


-- Question 4

/* Write a SELECT statement that joins the Customers table to the Addresses table 
and returns these columns: FirstName, LastName, Line1, City, Sstate, ZipCode. */

SELECT Customers.FirstName, Customers.LastName, Addresses.Line1, Addresses.City, Addresses.State,  Addresses.ZipCode 
FROM Customers
Inner JOIN Addresses ON Customers.CustomerID = Addresses.CustomerID

 /* Return one row for each address for the customer with an email address of 
allan.sherwood@yahoo.com.  */

where Customers.EmailAddress LIKE '%allan.sherwood@yahoo.com%';





-- Question 6

/*  Write a SELECT statement that joins the Customers, Orders, OrderItems, and 
Products tables. This statement should return these columns: LastName, 
FirstName, OrderDate, ProductName, ItemPrice, DiscountAmount, and Quantity. */

SELECT C.LastName, C.FirstName, O.OrderDate, P.ProductName, 
OI.ItemPrice, OI.DiscountAmount,OI.Quantity

 --- Use aliases for the tables. 

FROM Customers AS C
Inner Join Orders AS O ON C.CustomerID = O.CustomerID
Inner Join OrderItems AS OI ON  O.OrderID = OI.OrderID 
Inner Join Products AS P ON  OI.ProductID = P.ProductID

-- Sort the final result set by LastName, OrderDate, and ProductName. 

ORDER BY
C.LastName DESC ,
O.OrderDate DESC , 
P.ProductName  DESC;






-- Question 8

/* 
Write a SELECT statement that returns these two columns: 
CategoryName The CategoryName column from the Categories table 
ProductID The ProductID column from the Products table 
Return one row for each category that has never been used.
*/

Select C.CategoryName, P.ProductID 
from Categories AS C
Left join Products AS P ON C.CategoryID = P.CategoryID
where P.ProductID IS NULL;



 
--  Question 10

/* Write a SELECT statement that returns these columns: 
The count of the number of orders in the Orders table 
The sum of the TaxAmount columns in the Orders table */

SELECT COUNT(CustomerID)  CustomerID, SUM(TaxAmount) TaxAmount
from Orders;


--  Question 12
/*
 INSERT statement that adds this row to the Customers 
table: 
EmailAddress: rick@raven.com 
Password: (empty string) 
FirstName: Rick 
LastName: Raven 
Use a column list for this statement. */


-- Insert Into Customers(EmailAddress, Password, FirstName, LastName )
-- VALUES ('rick@raven.com','(empty string)', 'Rick', 'Raven');

SELECT * from Customers;


--  Question 14

/* Write an INSERT statement that adds this row to the Categories 
table: 
CategoryName: Brass 
Code the INSERT statement so SQL Server automatically generates the value for 
the CategoryID column.*/


  -- Insert Into Categories (CategoryName)
 --  VALUES ('Brass');
  --  SELECT * from Categories;



--  Question 15

/* Write a DELETE statement that deletes the row you added to the Categories 
table in exercise 14. This statement should use the CategoryID column to 
identify the row. */


DELETE FROM Categories
Where CategoryID = 9
SELECT * from Categories;