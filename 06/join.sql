    SELECT hobby.hobbyid,hobby.hobby,persoon.id FROM hobby join persoon on persoon.hobbyid = hobby.hobbyid; 
    

    SELECT * from telefoonGesprek JOIN klant on klant.klantid = telefoonGesprek.klantid; 
    SELECT telefoonGesprek.klantid,gesprekStart,gesprekEind,GesprekNaarTelefoonnummer,naam,leeftijd,telefoonnummer from telefoonGesprek JOIN klant on klant.klantid = telefoonGesprek.klantid; 