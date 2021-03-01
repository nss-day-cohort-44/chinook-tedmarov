-- Provide a query that shows the invoices associated with each sales agent. 
-- The resultant table should include the Sales Agent's full name

Select
    i.InvoiceId,
    i.InvoiceDate,
    e.Title,
    e.FirstName,
    e.LastName
From Invoice i
Join Employee e On 
    (e.EmployeeId = c.SupportRepId)
Join Customer c On
    (c.CustomerId = i.CustomerId)