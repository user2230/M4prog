CREATE TABLE medewerker (
    medewerker_id INT PRIMARY KEY,
    voornaam VARCHAR(50),
    achternaam VARCHAR(50)
);

CREATE TABLE klantpersoon (
    klant_id INT PRIMARY KEY,
    naam VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE contactgesprek (
    gesprek_id INT PRIMARY KEY,
    klant_id INT,
    medewerker_id INT,
    onderwerp VARCHAR(100),
    datum DATETIME,
    FOREIGN KEY (klant_id) REFERENCES klantpersoon(klant_id),
    FOREIGN KEY (medewerker_id) REFERENCES medewerker(medewerker_id)
);

INSERT INTO medewerker (medewerker_id, voornaam, achternaam) VALUES
(1, 'Joris', 'de Groot'),
(2, 'Mila', 'Vermeer');

INSERT INTO klantpersoon (klant_id, naam, email) VALUES
(1, 'Sophie van Dijk', 'sophie.vandijk@email.com'),
(2, 'Ruben Bakker', 'ruben.bakker@email.com');

INSERT INTO contactgesprek (gesprek_id, klant_id, medewerker_id, onderwerp, datum) VALUES
(1, 1, 2, 'Vraag over levering', '2024-06-05 10:30:00'),
(2, 2, 1, 'Probleem met betaling', '2024-06-05 14:00:00');

SELECT 
    contactgesprek.gesprek_id,
    klantpersoon.naam AS klant_naam,
    medewerker.voornaam AS medewerker_voornaam,
    medewerker.achternaam AS medewerker_achternaam,
    contactgesprek.onderwerp,
    contactgesprek.datum
FROM contactgesprek
JOIN klantpersoon ON contactgesprek.klant_id = klantpersoon.klant_id
JOIN medewerker ON contactgesprek.medewerker_id = medewerker.medewerker_id;