
insert into ingredient (id,naam) values 
(1,'pindas');

insert into voedselProduct (hoofdIngredientId,naam) values 
(1,'pindakaas');

 ALTER TABLE voedselProduct
 ADD CONSTRAINT FK_TABEL1_ingredient
 FOREIGN KEY (hoofdIngredientId) REFERENCES  
 TABEL2(id);

 CREATE TABLE kat (
    id INT PRIMARY KEY,
    naam VARCHAR(100) NOT NULL
);

CREATE TABLE kitten (
    id INT PRIMARY KEY AUTO_INCREMENT,
    naam VARCHAR(100) NOT NULL,
    mamaId INT NOT NULL,
    papaId INT NOT NULL,
    FOREIGN KEY (mamaId) REFERENCES kat(id),
    FOREIGN KEY (papaId) REFERENCES kat(id),
    CHECK (mamaId <> papaId)
);


INSERT INTO kat (id, naam) VALUES 
(1, 'spinner'),
(2, 'pluisje');

INSERT INTO kitten (mamaId, papaId, naam) VALUES 
(1, 2, 'minicat');

SELECT 
    k.id AS kitten_id,
    k.naam AS kitten_naam,
    mama.naam AS mama_naam,
    papa.naam AS papa_naam
FROM 
    kitten k
JOIN kat mama ON k.mamaId = mama.id
JOIN kat papa ON k.papaId = papa.id;

/* MET HULP VAN INTERNET!!!*/

ALTER TABLE kitten
DROP FOREIGN KEY FK_kitten_kat_mama;
ALTER TABLE kitten  
DROP INDEX FK_kitten_kat_mama;

ALTER TABLE kitten
DROP FOREIGN KEY FK_kitten_kat_papa;
ALTER TABLE kitten  
DROP INDEX FK_kitten_kat_papa;