Use AP;

select VendorName, InvoiceNumber,InvoiceDate, 
InvoiceTotal - PaymentTotal - CreditTotal as Balance
from vendors Join Invoices 
on Vendors.VendorID = invoices.VendorID
where InvoiceTotal - PaymentTotal - CreditTotal > 0
order by VendorName;