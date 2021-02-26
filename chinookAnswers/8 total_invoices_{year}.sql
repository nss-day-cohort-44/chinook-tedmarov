-- How many Invoices were there in 2009 and 2011?

Select InvoiceDate, Count(InvoiceId)
From Invoice i
Where i.InvoiceDate Like "2009%" Or i.InvoiceDate Like "2011%"
Group By InvoiceDate Like "2009%"Or i.invoiceDate Like "2011%"

Select
    Count(i.InvoiceDate) NumberOfInvoices,
    Strftime('%Y', i.InvoiceDate) InvoiceYear
From Invoice i
Where
    InvoiceYear = '2011' Or InvoiceYear = '2009'
Group By InvoiceYear