-- Provide a query that shows all the Tracks, 
-- but displays no IDs. The result should include 
-- the Album name, Media type and Genre.

Select
    t.Name TrackName,
    a.Title AlbumTitle,
    mt.Name MediaType,
    g.Name Genre
From 
    Track t
Join
    Album a
    On (t.AlbumId = a.AlbumId)
Join
    MediaType mt
    On (mt.MediaTypeId = t.MediaTypeId)
Join
    Genre g
    On (g.GenreId = t.GenreId)

