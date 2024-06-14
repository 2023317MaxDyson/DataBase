-- Select * from Vendors;
-- Select VendorID, VendorName from Vendors;
-- Select VendorID, InvoiceDate, InvoiceTotal from Invoices;
-- Select InvoiceNumber AS Number, InvoiceDate AS Date From Invoices;
-- Select VendorName, VendorID AS MailAdress From Vendors;
--Select VendorName, VendorCity AS City, VendorState AS Region From Vendors;
--Select Distinct invoiceDate from Invoices;
--Select Distinct VendorCity AS City, VendorState AS State From Vendors;
--Select Distinct VendorZipCode from Vendors;
--Select * from Vendors Order By VendorContactLName, VendorContactFName;
-- Select Top 5 * from invoices Order By InvoiceDate DESC; 
-- Select Top 10 Percent * from invoices Order By InvoiceDate ASC;
 -- Select Top 10 Percent InvoiceLineItemAmount from InvoiceLineItems Order By InvoiceLineItemAmount ASC;
-- Select Top 10 Percent * from invoices Order By invoiceTotal;
-- Select VendorID, InvoiceTotal, "Amount owed"= (CreditTotal + PaymentTotal) - InvoiceTotal from Invoices;
-- Select * from invoices where PaymentTotal < InvoiceTotal;
Select * from Vendors where VendorState <> 'CA' ;
Select * from InvoiceLineItems where invoiceID > 50 AND InvoiceLineItemAmount < 1000;









