-- Which sales agent made the most in sales in 2009

Select
    Max(TotalSales),
    EmployeeName
From
    (
    Select
        "$" || printf("%.2f", Sum(i.Total)) As TotalSales,
        e.FirstName || ' ' || e.LastName As EmployeeName,
        strftime ('%Y', i.InvoiceDate) As InvoiceYear
    From
        Invoice i,
        Employee e,
        Customer c
    WHERE
        i.CustomerId = c.CustomerId
        And c.SupportRepId = e.EmployeeId
        And InvoiceYear = '2009'
    Group By
        e.FirstName || ' ' || e.LastName,
        InvoiceYear
    ) As Sales

;