--  Provide a query that shows the total number of 
--  tracks in each playlist. The Playlist name 
--  should be include on the resulant table.

Select
    count(pt.TrackId),
    p.name
From
    PlaylistTrack pt
Join
    Playlist p
    On (p.PlaylistId = pt.PlaylistId)
Group By p.name

SELECT P.Name, COUNT(TrackId) TotalTracks
FROM Playlist P
JOIN PlaylistTrack PT 
ON P.PlaylistId = PT.PlaylistId
GROUP BY P.Name;