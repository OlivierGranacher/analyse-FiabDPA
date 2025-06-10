SELECT dat,
       avg(hbd) AS hbd,
       avg(hmd) AS hmd,
       avg(hbd + hmd) AS hld
FROM   tab_jour
WHERE  dat >= '20250101'
AND    SUBSTRING(cod_cuve, 1, 1) = 'G'
GROUP BY dat
ORDER BY dat
