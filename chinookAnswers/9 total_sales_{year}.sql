-- What are the respective total sales for each of those years

Select
    printf('%.2f', Sum(i.Total)) Total,
    strftime('%Y', i.InvoiceDate) InvoiceYear
From
    Invoice i
Where
    InvoiceYear = '2011'
    Or
    InvoiceYear = '2009'
Group By
    InvoiceYear