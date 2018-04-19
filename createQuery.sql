DROP TABLE penugasan_petugas;
DROP TABLE penggunaan_perlengkapan;
DROP TABLE penggunaan_kendaraan;
DROP TABLE penggunaan_anjing;

DROP TABLE korban_kejadian;
DROP TABLE peristiwa_penyelamatan;
DROP TABLE laporan_kejadian;
DROP TABLE operator_laporan;

DROP TABLE petugas_pemadam;
DROP TABLE perlengkapan;
DROP TABLE kendaraan_pemadam;
DROP TABLE anjing_penyelamat;



CREATE TABLE operator_laporan (
	id_operator		NUMBER(10),
	nama			VARCHAR2(30),
	jenis_kelamin	VARCHAR2(1),
	alamat			VARCHAR2(30),
	tgl_lahir		DATE
);
ALTER TABLE operator_laporan
ADD CONSTRAINT operator_laporan_pk PRIMARY KEY (id_operator);



CREATE TABLE laporan_kejadian (
	id_laporan		NUMBER(10),
	nama_pelapor	VARCHAR2(30),
	no_hp_pelapor	VARCHAR2(12),
	daerah_kejadian	VARCHAR2(30),
	tgl_kejadian	DATE,
	id_operator		NUMBER(10)
);
ALTER TABLE laporan_kejadian
ADD CONSTRAINT laporan_kejadian_pk PRIMARY KEY (id_laporan);

ALTER TABLE laporan_kejadian
ADD CONSTRAINT operator_laporan_fk FOREIGN KEY (id_operator) 
REFERENCES operator_laporan(id_operator);



CREATE TABLE peristiwa_penyelamatan (
	id_peristiwa	NUMBER(10),
	id_laporan		NUMBER(10),
	waktu_mulai		TIMESTAMP,
	waktu_selesai	TIMESTAMP,
	info_peristiwa	VARCHAR2(50)
);

ALTER TABLE peristiwa_penyelamatan
ADD CONSTRAINT peristiwa_penyelamatan_pk PRIMARY KEY (id_peristiwa);

ALTER TABLE peristiwa_penyelamatan
ADD CONSTRAINT laporan_kejadian_fk FOREIGN KEY (id_laporan) 
REFERENCES laporan_kejadian(id_laporan);



CREATE TABLE korban_kejadian (
	id_korban		NUMBER(10),
	nama_korban		VARCHAR2(30),
	tgl_lahir		DATE,
	kondisi			VARCHAR2(50),
	id_peristiwa	NUMBER(10)
);

ALTER TABLE korban_kejadian
ADD CONSTRAINT korban_kejadian_pk PRIMARY KEY (id_korban);

ALTER TABLE korban_kejadian
ADD CONSTRAINT peristiwa_penyelamatan_fk FOREIGN KEY (id_peristiwa) 
REFERENCES peristiwa_penyelamatan(id_peristiwa);



CREATE TABLE petugas_pemadam (
	id_petugas		NUMBER(10),
	nama			VARCHAR2(30),
	jenis_kelamin	VARCHAR2(1),
	alamat			VARCHAR2(30),
	tgl_lahir		DATE
);

ALTER TABLE petugas_pemadam
ADD CONSTRAINT petugas_pemadam_pk PRIMARY KEY (id_petugas);



CREATE TABLE perlengkapan (
	id_perlengkapan	NUMBER(10),
	nama			VARCHAR(30),
	qty_stok		NUMBER(10)
);

ALTER TABLE perlengkapan
ADD CONSTRAINT perlengkapan_pk PRIMARY KEY (id_perlengkapan);



CREATE TABLE kendaraan_pemadam (
	no_plat_kendaraan	VARCHAR2(10),
	tipe_kendaraan		VARCHAR2(30)
);

ALTER TABLE kendaraan_pemadam
ADD CONSTRAINT kendaraan_pemadam_pk PRIMARY KEY (no_plat_kendaraan);



CREATE TABLE anjing_penyelamat (
	id_anjing	NUMBER(10),
	nama		VARCHAR2(30)
);

ALTER TABLE anjing_penyelamat
ADD CONSTRAINT anjing_penyelamat_pk PRIMARY KEY (id_anjing);



CREATE TABLE penugasan_petugas (
	id_peristiwa	NUMBER(10),
	id_petugas		NUMBER(10)
);

ALTER TABLE penugasan_petugas
ADD CONSTRAINT penugasan_petugas_pk PRIMARY KEY (id_peristiwa, id_petugas);

ALTER TABLE penugasan_petugas
ADD CONSTRAINT peristiwa_penyelamatan1_fk FOREIGN KEY (id_peristiwa) 
REFERENCES peristiwa_penyelamatan(id_peristiwa);

ALTER TABLE penugasan_petugas
ADD CONSTRAINT petugas_pemadam_fk FOREIGN KEY (id_petugas) 
REFERENCES petugas_pemadam(id_petugas);



CREATE TABLE penggunaan_perlengkapan (
	id_peristiwa	NUMBER(10),
	id_perlengkapan	NUMBER(10),
	qty_pemakaian	NUMBER(5)
);

ALTER TABLE penggunaan_perlengkapan 
ADD CONSTRAINT penggunaan_perlengkapan_pk PRIMARY KEY (id_peristiwa, id_perlengkapan);

ALTER TABLE penggunaan_perlengkapan 
ADD CONSTRAINT peristiwa_penyelamatan2_fk FOREIGN KEY (id_peristiwa) 
REFERENCES peristiwa_penyelamatan(id_peristiwa);

ALTER TABLE penggunaan_perlengkapan 
ADD CONSTRAINT perlengkapan_fk FOREIGN KEY (id_perlengkapan) 
REFERENCES perlengkapan(id_perlengkapan);



CREATE TABLE penggunaan_kendaraan (
	id_peristiwa		NUMBER(10),
	no_plat_kendaraan	VARCHAR2(10)
);

ALTER TABLE penggunaan_kendaraan
ADD CONSTRAINT penggunaan_kendaraan_pk PRIMARY KEY (id_peristiwa, no_plat_kendaraan);

ALTER TABLE penggunaan_kendaraan
ADD CONSTRAINT peristiwa_penyelamatan3_fk FOREIGN KEY (id_peristiwa) 
REFERENCES peristiwa_penyelamatan(id_peristiwa);

ALTER TABLE penggunaan_kendaraan
ADD CONSTRAINT kendaraan_pemadam_fk FOREIGN KEY (no_plat_kendaraan) 
REFERENCES kendaraan_pemadam(no_plat_kendaraan);



CREATE TABLE penggunaan_anjing (
	id_peristiwa	NUMBER(10),
	id_anjing		NUMBER(10)
);

ALTER TABLE penggunaan_anjing 
ADD CONSTRAINT penggunaan_anjing_pk PRIMARY KEY (id_peristiwa, id_anjing);

ALTER TABLE penggunaan_anjing 
ADD CONSTRAINT peristiwa_penyelamatan4_fk FOREIGN KEY (id_peristiwa) 
REFERENCES peristiwa_penyelamatan(id_peristiwa);

ALTER TABLE penggunaan_anjing 
ADD CONSTRAINT anjing_penyelamat_fk FOREIGN KEY (id_anjing) 
REFERENCES anjing_penyelamat(id_anjing);


