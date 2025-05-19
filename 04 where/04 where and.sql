SELECT * FROM `huisdieren` WHERE eigenaar = 'othman' AND leeftijd > 1;
 
SELECT * FROM `huisdieren` WHERE eigenaar = 'othman' OR eigenaar = 'nazli' AND leeftijd > 1;
 
SELECT * FROM `huisdieren` WHERE leeftijd = 1;

SELECT * FROM `huisdieren` WHERE typedier = 'hond' OR typedier = 'kat' AND leeftijd > 1;