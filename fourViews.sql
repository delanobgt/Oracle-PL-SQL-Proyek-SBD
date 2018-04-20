/*Laporan banyak korban meninggal untuk setiap peristiwa dalam 1 bulan tertentu*/
/*misalkan pada bulan Oktober 2018*/
SELECT pp.id_peristiwa, daerah_kejadian, tgl_kejadian, COUNT(*) AS "Jumlah Kematian"
FROM
  peristiwa_penyelamatan pp
    INNER JOIN
  korban_kejadian kk ON pp.id_peristiwa = kk.id_peristiwa
    INNER JOIN
  laporan_kejadian lk ON pp.id_laporan = lk.id_laporan
WHERE 
  kondisi = 'meninggal' AND
  '01-OCT-2018' <= tgl_kejadian AND tgl_kejadian <= LAST_DAY('01-OCT-2018')
GROUP BY pp.id_peristiwa, daerah_kejadian, tgl_kejadian;

/*Laporan daftar pelapor kejadian palsu (tidak sebenarnya) untuk 1 bulan tertentu*/
/*misalkan pada bulan November 2018*/
SELECT lk.id_laporan, nama_pelapor, no_hp_pelapor, tgl_kejadian
FROM
  laporan_kejadian lk
    LEFT JOIN
  peristiwa_penyelamatan pp ON lk.id_laporan = pp.id_laporan
WHERE 
  id_peristiwa IS NULL AND
  '01-NOV-2018' <= tgl_kejadian AND tgl_kejadian <= LAST_DAY('01-NOV-2018');

/*Laporan daftar jumlah laporan yang diterima oleh 
  Operator Laporan dari terbanyak ke terkecil*/
SELECT ol.id_operator, nama, COUNT(*) AS "Jumlah Laporan yang Diterima"
FROM 
  operator_laporan ol
    INNER JOIN
  laporan_kejadian lk ON ol.id_operator = lk.id_operator
GROUP BY ol.id_operator, nama
ORDER BY COUNT(*) DESC;

/*Laporan daftar peristiwa penyelamatan beserta kuantitas 
  pemakaian perlengkapan yang dipakai dalam peristiwa 
  penyelamatan tersebut*/
SELECT id_peristiwa, daerah_kejadian, SUM(APAR_foam) AS "APAR FOAM", 
  SUM(APAR_dry_chemical_powder) AS "APAR Dry Chemical Powder",
  SUM(APAR_CO2) AS "APAR CO2",
  SUM(APAB_foam) AS "APAB Foam",
  SUM(APAB_wet_chemical) AS "APAB Wet Chemical"
FROM
( SELECT pp.id_peristiwa AS id_peristiwa, lk.daerah_kejadian AS daerah_kejadian,
    CASE WHEN id_perlengkapan = 1 THEN qty_pemakaian ELSE 0 END AS APAR_foam,
    CASE WHEN id_perlengkapan = 2 THEN qty_pemakaian ELSE 0 END AS APAR_dry_chemical_powder,
    CASE WHEN id_perlengkapan = 3 THEN qty_pemakaian ELSE 0 END AS APAR_CO2,
    CASE WHEN id_perlengkapan = 4 THEN qty_pemakaian ELSE 0 END AS APAB_foam,
    CASE WHEN id_perlengkapan = 5 THEN qty_pemakaian ELSE 0 END AS APAB_wet_chemical
  FROM 
    peristiwa_penyelamatan pp
      INNER JOIN 
    laporan_kejadian lk ON pp.id_laporan = lk.id_laporan
      INNER JOIN
    penggunaan_perlengkapan pper ON pper.id_peristiwa = pp.id_peristiwa)
GROUP BY id_peristiwa, daerah_kejadian;
