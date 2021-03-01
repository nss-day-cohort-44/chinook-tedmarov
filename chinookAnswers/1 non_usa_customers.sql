-- Provide a query showing Customers (just their full names, customer ID and country) who are not in the US

Select
    c.FirstName,
    c.LastName,
    c.CustomerId,
    c.Country
From Customer c
Where c.Country IS NOT 'USA'