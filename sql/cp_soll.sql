SELECT
 cod_cuve,
 cod_bsq,
 dat,
 ntea,
 sea*1000 AS sea,
 hbd,
 dmsipiq1 AS piq1,
 dmsipiq2 AS piq2,
 dmsipiq3 AS piq3,
 dmsipiq4 AS piq4,
 nbpiqper AS per,
 nbpiqimp AS imp,
 nbpiq AS nbpiq
FROM tab_poste
WHERE dat >= {dat_deb_data}
 AND substring(cod_cuve, 1, 1) = 'G'
 AND cod_bsq IS NOT NULL
 AND potage > 3 * {age_lim}
