DELETE FROM penugasan_petugas;
DELETE FROM penggunaan_perlengkapan;
DELETE FROM penggunaan_kendaraan;
DELETE FROM penggunaan_anjing;

DELETE FROM petugas_pemadam;
DELETE FROM perlengkapan;
DELETE FROM kendaraan_pemadam;
DELETE FROM anjing_penyelamat;

DELETE FROM korban_kejadian;
DELETE FROM peristiwa_penyelamatan;
DELETE FROM laporan_kejadian;
DELETE FROM operator_laporan;

/*Tabel Anjing Penyelamat*/
INSERT INTO anjing_penyelamat VALUES(1, 'Cuckoo');
INSERT INTO anjing_penyelamat VALUES(2, 'Alexia');
INSERT INTO anjing_penyelamat VALUES(3, 'Asako');
INSERT INTO anjing_penyelamat VALUES(4, 'Azra');
INSERT INTO anjing_penyelamat VALUES(5, 'Chapa');

/*Tabel Kendaraan Pemadam*/
INSERT INTO kendaraan_pemadam VALUES('BK 1213 LJ', 'ringan');
INSERT INTO kendaraan_pemadam VALUES('BK 4132 KJ', 'besar');
INSERT INTO kendaraan_pemadam VALUES('BK 1237 LP', 'busa');
INSERT INTO kendaraan_pemadam VALUES('BK 1290 OJ', 'tepung kimia');
INSERT INTO kendaraan_pemadam VALUES('BK 1945 LL', 'tangga');
INSERT INTO kendaraan_pemadam VALUES('BK 1965 KF', 'pompa');
INSERT INTO kendaraan_pemadam VALUES('BK 2018 UH', 'ganda');

/*Tabel Perlengkapan*/
INSERT INTO perlengkapan VALUES(1, 'APAR Foam', 60);
INSERT INTO perlengkapan VALUES(2, 'APAR Dry Chemical Powder', 45);
INSERT INTO perlengkapan VALUES(3, 'APAR CO2', 40);
INSERT INTO perlengkapan VALUES(4, 'APAB Foam', 42);
INSERT INTO perlengkapan VALUES(5, 'APAB Wet Chemical', 15);

/*Tabel Petugas Pemadam*/
INSERT INTO petugas_pemadam VALUES(1, 'Andi', 'L', 'Jl. Karya No.1', '01-JAN-88');
INSERT INTO petugas_pemadam VALUES(2, 'Budi', 'L', 'Jl. Kreatif No.2', '01-FEB-78');
INSERT INTO petugas_pemadam VALUES(3, 'Charlie', 'L', 'Jl. Asinan No.3', '01-MAR-98');
INSERT INTO petugas_pemadam VALUES(4, 'Doni', 'L', 'Jl. Betawi  No.4', '01-APR-78');
INSERT INTO petugas_pemadam VALUES(5, 'Endang', 'L', 'Jl. Enak No.5', '01-MAY-78');

/*Tabel Operator Laporan*/
INSERT INTO operator_laporan VALUES(1, 'Lisa', 'P', 'Jl. Gudeg No.6', '15-JUN-97');
INSERT INTO operator_laporan VALUES(2, 'Wendy', 'P', 'Jl. Ayam No.7', '15-JUL-97');
INSERT INTO operator_laporan VALUES(3, 'Tzuyu', 'P', 'Jl. Yogyakarta No.8', '15-AUG-97');
INSERT INTO operator_laporan VALUES(4, 'Irene', 'P', 'Jl. Memang No.9', '15-DEC-97');
INSERT INTO operator_laporan VALUES(5, 'Jennie', 'P', 'Jl. Enak No.10', '15-NOV-97');

/*Tabel Laporan Kejadian*/
INSERT INTO laporan_kejadian VALUES(1, 'Butet', '081234567890', 'Jl. Kuningan', '12-DEC-18', 5);
INSERT INTO laporan_kejadian VALUES(2, 'Ucok', '081132321321', 'Jl. Helvetia', '12-NOV-18', 4);
INSERT INTO laporan_kejadian VALUES(3, 'Zulaiha', '085547478383', 'Jl. Grogol', '12-OCT-18', 3);
INSERT INTO laporan_kejadian VALUES(4, 'Pak Raden', '082187659043', 'Jl. Pluit', '12-SEP-18', 2);
INSERT INTO laporan_kejadian VALUES(5, 'Unyil', '081176584932', 'Jl. Tembung', '12-AUG-18', 1);
INSERT INTO laporan_kejadian VALUES(6, 'Ana', '081173334932', 'Jl. Belawan', '14-FEB-18', 2);
INSERT INTO laporan_kejadian VALUES(7, 'Joko', '081176582222', 'Jl. Cemara', '10-APR-18', 1);

/*Tabel Persitiwa Penyelamatan*/
INSERT INTO peristiwa_penyelamatan VALUES(1, 1, TIMESTAMP '2018-12-12 20:12:32', TIMESTAMP '2018-12-12 23:00:12', 'kebakaran kelas B');
INSERT INTO peristiwa_penyelamatan VALUES(2, 3, TIMESTAMP '2018-10-12 12:00:42', TIMESTAMP '2018-10-12 14:00:42', 'kecelakaan pohon runtuh');
INSERT INTO peristiwa_penyelamatan VALUES(3, 4, TIMESTAMP '2018-09-12 22:19:37', TIMESTAMP '2018-09-12 22:39:17', 'kecelakaan truk minyak');
INSERT INTO peristiwa_penyelamatan VALUES(4, 6, TIMESTAMP '2018-02-14 15:12:22', TIMESTAMP '2018-02-14 17:12:22', 'kebakaran kelas A');
INSERT INTO peristiwa_penyelamatan VALUES(5, 7, TIMESTAMP '2018-04-10 19:16:52', TIMESTAMP '2018-04-10 21:23:52', 'kecelakaan mobil');

/*Tabel Korban Kejadian*/
INSERT INTO korban_kejadian VALUES(1, 'Shinchan', '29-FEB-92', 'luka ringan', 1);
INSERT INTO korban_kejadian VALUES(2, 'Naruto', '21-MAR-93', 'meninggal', 2);
INSERT INTO korban_kejadian VALUES(3, 'Doraemon', '24-APR-94', 'luka berat', 2);
INSERT INTO korban_kejadian VALUES(4, 'Shizuka', '15-MAY-95', 'luka ringan', 3);
INSERT INTO korban_kejadian VALUES(5, 'Sasuke', '17-JUN-96', 'kritis', 5);

/*Tabel Penugasan Petugas*/
INSERT INTO penugasan_petugas VALUES(1, 2);
INSERT INTO penugasan_petugas VALUES(1, 3);
INSERT INTO penugasan_petugas VALUES(2, 5);
INSERT INTO penugasan_petugas VALUES(3, 3);
INSERT INTO penugasan_petugas VALUES(4, 2);
INSERT INTO penugasan_petugas VALUES(4, 1);
INSERT INTO penugasan_petugas VALUES(5, 4);

/*Tabel Penggunaan Perlengkapan*/
INSERT INTO penggunaan_perlengkapan VALUES(1, 1, 3);
INSERT INTO penggunaan_perlengkapan VALUES(1, 2, 2);
INSERT INTO penggunaan_perlengkapan VALUES(2, 1, 1);
INSERT INTO penggunaan_perlengkapan VALUES(2, 3, 3);
INSERT INTO penggunaan_perlengkapan VALUES(3, 5, 1);
INSERT INTO penggunaan_perlengkapan VALUES(4, 3, 2);
INSERT INTO penggunaan_perlengkapan VALUES(5, 4, 1);

/*Tabel Penggunaan Kendaraan*/
INSERT INTO penggunaan_kendaraan VALUES(1, 'BK 4132 KJ');
INSERT INTO penggunaan_kendaraan VALUES(1, 'BK 1213 LJ');
INSERT INTO penggunaan_kendaraan VALUES(2, 'BK 4132 KJ');
INSERT INTO penggunaan_kendaraan VALUES(3, 'BK 1237 LP');
INSERT INTO penggunaan_kendaraan VALUES(4, 'BK 1290 OJ');
INSERT INTO penggunaan_kendaraan VALUES(4, 'BK 1237 LP');
INSERT INTO penggunaan_kendaraan VALUES(4, 'BK 1945 LL');
INSERT INTO penggunaan_kendaraan VALUES(5, 'BK 1945 LL');

/*Tabel Penggunaan Anjing*/
INSERT INTO penggunaan_anjing VALUES(1, 1);
INSERT INTO penggunaan_anjing VALUES(1, 3);
INSERT INTO penggunaan_anjing VALUES(2, 4);
INSERT INTO penggunaan_anjing VALUES(2, 5);
INSERT INTO penggunaan_anjing VALUES(3, 2);
INSERT INTO penggunaan_anjing VALUES(4, 3);
INSERT INTO penggunaan_anjing VALUES(5, 5);
INSERT INTO penggunaan_anjing VALUES(5, 2);
