-- Provide a query that shows total 
-- sales made by each sales agent.

Select
    e.FirstName,
    e.LastName,
    sum(i.Total),
    e.Title
From Employee e
Join Customer c
    On c.SupportRepId = e.EmployeeId
Join Invoice i
    On i.CustomerId = c.CustomerId
Group By e.FirstName