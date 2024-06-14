
Select invoiceNumber,
invoicetotal - credittotal - paymenttotal as Balance
from Invoices
where invoicetotal - credittotal - paymenttotal > 0 AND 
InvoiceDueDate < GETDATE() + 30;

/* Select VendorContactFName + ' ' + 
LEFT(VendorContactLName,1) + '.' as Contact,
SUBSTRING(vendorPhone, 7,8) as Phone
from Vendors
where LEFT(vendorphone, 4) = '(559'
Order by Contact; */
/*
Select cast(InvoiceTotal as decimal(17,2)) as CastAsDecimal, 
cast(invoiceTotal as varchar) as CastasVarchar,
convert(decimal(17,2), InvoiceTotal) as ConvertToDecimal, 
convert(varchar, InvoiceTotal, 2)

from Invoices
*/