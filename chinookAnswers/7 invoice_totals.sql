-- Provide a query that shows the Invoice Total, Customer name, 
-- Country and Sale Agent name for all invoices and customers.

SELECT
    i.InvoiceId,
    i.Total,
    c.FirstName,
    c.LastName,
    c.Country,
    e.Title
From Invoice i
Join Customer c
    On (i.CustomerId = c.CustomerId)
Join Employee e
    On (c.SupportRepId = e.EmployeeId)