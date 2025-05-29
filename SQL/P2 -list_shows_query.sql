SELECT 
    M.title AS movie_title,
    M.language,
    M.format,
    S.show_time,
    S.screen_type
FROM 
    Showtime S
JOIN 
    Movie M ON S.movie_id = M.movie_id
JOIN 
    Theatre T ON S.theatre_id = T.theatre_id
WHERE 
    T.name = 'PVR: Nexus (Forum)'
    AND S.show_date = '2023-04-25'
ORDER BY 
    S.show_time;

