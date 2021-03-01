-- Provide a query that shows the # of invoices per country. HINT: GROUP BY

Select
    i.BillingCountry,
    count(i.InvoiceId)
From Invoice i
Group By i.BillingCountry