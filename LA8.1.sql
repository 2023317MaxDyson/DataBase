USE AP;

Create View [InvoiceBasic] as
Select VendorName, InvoiceNumber, InvoiceTotal 
from Vendors join Invoices
on Vendors.VendorID = Invoices.VendorID
Select * 
from [InvoiceBasic]
where  VendorName like '[N-P]%'
order by vendorName;

create view [Top10PaidInvoices] 
as
Select Top 10 VendorName, Max(invoicedate) as LastInvoice, 
sum(invoicetotal) as sumofInvoices 
from Vendors join Invoices
on Vendors.VendorID = Invoices.VendorID
where invoicetotal - paymenttotal - credittotal = 0
Group By VendorName
Order By sum(invoicetotal) DESC;

create view VendorAddress 
as 
Select VendorID, VendorAddress1, VendorAddress2, VendorCity, 
vendorCity, vendorState, VendorZipCode from Vendors

Select * from VendorAddress 
where VendorID = 4

Update VendorAddress 
Set VendorAddress1 = '1990 WestWood Blvd',
VendorAddress2 = 'Ste 260'
where VendorID = 4














