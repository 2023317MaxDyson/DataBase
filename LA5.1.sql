Use AP;

/* SELECT vendorId, SUM(paymenttotal) as Payment 
from Invoices 
Group By VendorId; */

/* 
Select Top 10 VendorName, Sum(paymenttotal) as PaymentDUm 
from Vendors join Invoices 
On Vendors.VendorId = Invoices.VendorId
Group By VendorName
Order By PaymentSum DESC */


/*
Select VendorName, Count (*) as InvoiceCount, sum(InvoiceTotal) as InvoiceSum
from Vendors join Invoices 
On Vendors.VendorID = Invoices.VendorID
GROUP BY VendorName 
Order BY InvoiceCount DESC; */



/* Write a SELECT statement that answers this question: Which invoices have a PaymentTotal
that’s greater than the average PaymentTotal for all paid invoices? Return the InvoiceNumber
and InvoiceTotal for each invoice. */

/*
SELECT InvoiceNumber, InvoiceTotal 
from Invoices
where PaymentTotal >
(Select AVG(PaymentTotal)
FROM Invoices 
where PaymentTotal <> 0);  */



