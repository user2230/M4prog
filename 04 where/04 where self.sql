DROP TABLE IF EXISTS game;

CREATE TABLE game (
    id SERIAL PRIMARY KEY,
    naam VARCHAR(100),
    platform VARCHAR(50),
    jaar_uitgave INT,
    verkrijgbaar BOOLEAN,
    prijs DECIMAL(6,2),
    genre VARCHAR(50)
);

INSERT INTO game (naam, platform, jaar_uitgave, verkrijgbaar, prijs, genre) VALUES
('Elden Ring', 'PlayStation', 2022, TRUE, 59.99, 'RPG'),
('Halo Infinite', 'Xbox', 2021, TRUE, 49.99, 'Shooter'),
('Zelda: Tears of the Kingdom', 'Nintendo Switch', 2023, TRUE, 69.99, 'Adventure'),
('Starfield', 'PC', 2024, FALSE, 69.99, 'RPG'),
('Gran Turismo 7', 'PlayStation', 2022, TRUE, 39.99, 'Racing'),
('Metroid Prime 4', 'Nintendo Switch', 2025, FALSE, 69.99, 'Shooter'),
('Forza Horizon 5', 'Xbox', 2021, TRUE, 29.99, 'Racing');

SELECT * FROM game
WHERE platform = 'PlayStation'
AND prijs < 50;

SELECT * FROM game
WHERE genre IN ('Racing', 'Shooter')
AND verkrijgbaar = TRUE;

SELECT * FROM game
WHERE prijs = 69.99
AND genre = 'RPG'
AND verkrijgbaar = FALSE;
