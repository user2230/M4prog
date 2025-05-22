ALTER TABLE huisdieren DROP COLUMN eigenaar;
ALTER TABLE huisdieren ADD eigennaarid INT NOT NULL;

update huisdieren set eigenaar = 3 where eigenaar = 1;