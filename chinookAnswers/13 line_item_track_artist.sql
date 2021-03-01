-- Provide a query that includes the purchased track 
-- name AND artist name with each invoice line item.

Select
    t.name TrackName,
    a.name ArtistName,
    il.InvoiceLineId
From Artist a
Join Album al
    On (a.ArtistId = al.artistId)
Join Track t
    On (al.AlbumId = t.TrackId)
Join InvoiceLine il
    On (il.TrackId = t.TrackId)
Order By il.InvoiceLineId