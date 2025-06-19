SELECT k.naam, SUM(dv.mbs) AS totaal_mbs
FROM klanten k
JOIN data_verbruik dv ON k.klant_id = dv.klant_id
GROUP BY k.naam;

SELECT k.naam, COUNT(*) AS totaal_sms
FROM klanten k
JOIN sms_verbruik sv ON k.klant_id = sv.klant_id
GROUP BY k.naam;

SELECT k.naam, SUM(TIMESTAMPDIFF(SECOND, bv.starttijd, bv.eindtijd)) AS totaal_seconden
FROM klanten k
JOIN bel_verbruik bv ON k.klant_id = bv.klant_id
GROUP BY k.naam;
