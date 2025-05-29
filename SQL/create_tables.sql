CREATE TABLE Theatre (
    theatre_id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100)
);

CREATE TABLE Movie (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100),
    language VARCHAR(50),
    format VARCHAR(10)
);

CREATE TABLE Showtime (
    show_id INT PRIMARY KEY,
    movie_id INT,
    theatre_id INT,
    show_date DATE,
    show_time TIME,
    screen_type VARCHAR(50),
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id),
    FOREIGN KEY (theatre_id) REFERENCES Theatre(theatre_id)
);

