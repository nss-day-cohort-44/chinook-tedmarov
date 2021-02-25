-- Provide a query only showing the Customers from Brazil.

Select
    c.FirstName,
    c.LastName,
    c.CustomerId,
    c.Country
From Customer c
Where c.Country IS 'Brazil'