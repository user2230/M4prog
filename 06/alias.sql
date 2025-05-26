SELECT naam, leeftijd ,sum(leeftijd)  FROM `huisdieren` WHERE 1;

SELECT naam, leeftijd ,sum(leeftijd) as leeftijdTotaal FROM `huisdieren`;

SELECT naam AS name, leeftijd AS age, SUM(leeftijd) AS totalAge FROM huisdieren;

SELECT naam, leeftijd from huisdier

SELECT naam,leeftijd from huisdieren as pets;

SELECT pets.naam,pets.leeftijd from huisdieren as pets;

SELECT pets.typedier,pets.leeftijd from huisdieren as pets;

SELECT pets.eigennaarid,pets.leeftijd from huisdieren as pets;

SELECT * 
 FROM hobby h
 join persoon p
 on h.hobbyid = p.hobbyid;

SELECT hobby.hobbyid,hobby.hobby,persoon.id FROM hobby join persoon on persoon.hobbyid = hobby.hobbyid; 