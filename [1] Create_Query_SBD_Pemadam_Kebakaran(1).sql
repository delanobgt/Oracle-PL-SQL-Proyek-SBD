CREATE TABLE OperatorLaporan (
    id_operator     NUMBER(10),
    nama            VARCHAR2(30),
    jenis_kelamin   VARCHAR2(1),
    alamat          VARCHAR2(30),
    tgl_lahir       DATE,
    PRIMARY KEY (id_operator)
);

CREATE TABLE LaporanKejadian (
    id_laporan      NUMBER(10),
    nama_pelapor    VARCHAR2(30),
    no_hp_pelapor   VARCHAR2(12),
    daerah_kejadian VARCHAR2(30),
    tgl_kejadian    DATE,
    id_operator     NUMBER(10),
    PRIMARY KEY (id_laporan),
    FOREIGN KEY (id_operator) REFERENCES OperatorLaporan(id_operator)
);

CREATE TABLE PeristiwaPenyelamatan (
    id_peristiwa    NUMBER(10),
    id_laporan      NUMBER(10),
    waktu_mulai     TIMESTAMP,
    waktu_selesai   TIMESTAMP,
    info_peristiwa  VARCHAR2(50),
    PRIMARY KEY (id_peristiwa),
    FOREIGN KEY (id_laporan) REFERENCES LaporanKejadian(id_laporan)
);

CREATE TABLE KorbanKejadian (
    id_korban       NUMBER(10),
    nama_korban     VARCHAR2(30),
    tgl_lahir       DATE,
    kondisi         VARCHAR2(50),
    id_peristiwa    NUMBER(10),
    PRIMARY KEY (id_korban),
    FOREIGN KEY (id_peristiwa) REFERENCES PeristiwaPenyelamatan(id_peristiwa)
);

CREATE TABLE PetugasPemadam (
    id_petugas      NUMBER(10),
    nama            VARCHAR2(30),
    jenis_kelamin   VARCHAR2(1),
    alamat          VARCHAR2(30),
    tgl_lahir       DATE,
    PRIMARY KEY (id_petugas)
);

CREATE TABLE Perlengkapan (
    id_perlengkapan NUMBER(10),
    nama            VARCHAR(30),
    qty_stok        NUMBER(10),
    PRIMARY KEY (id_perlengkapan)
);

CREATE TABLE KendaraanPemadam (
    no_plat_kendaraan   VARCHAR2(10),
    tipe_kendaraan      VARCHAR2(30),
    PRIMARY KEY (no_plat_kendaraan)
);

CREATE TABLE AnjingPenyelamat (
    id_anjing   NUMBER(10),
    nama        VARCHAR2(30),
    PRIMARY KEY (id_anjing)
);

CREATE TABLE PenugasanPetugas (
    id_peristiwa    NUMBER(10),
    id_petugas      NUMBER(10),
    PRIMARY KEY (id_peristiwa, id_petugas),
    FOREIGN KEY (id_peristiwa) REFERENCES PeristiwaPenyelamatan(id_peristiwa),
    FOREIGN KEY (id_petugas) REFERENCES PetugasPemadam(id_petugas)
);

CREATE TABLE PenggunaanPerlengkapan (
    id_peristiwa    NUMBER(10),
    id_perlengkapan NUMBER(10),
    qty_pemakaian   NUMBER(5),
    PRIMARY KEY (id_peristiwa, id_perlengkapan),
    FOREIGN KEY (id_peristiwa) REFERENCES PeristiwaPenyelamatan(id_peristiwa),
    FOREIGN KEY (id_perlengkapan) REFERENCES Perlengkapan(id_perlengkapan)
);

CREATE TABLE PenggunaanKendaraan (
    id_peristiwa        NUMBER(10),
    no_plat_kendaraan   VARCHAR2(10),
    PRIMARY KEY (id_peristiwa, no_plat_kendaraan),
    FOREIGN KEY (id_peristiwa) REFERENCES PeristiwaPenyelamatan(id_peristiwa),
    FOREIGN KEY (no_plat_kendaraan) REFERENCES KendaraanPemadam(no_plat_kendaraan)
);

CREATE TABLE PenggunaanAnjing (
    id_peristiwa    NUMBER(10),
    id_anjing       NUMBER(10),
    PRIMARY KEY (id_peristiwa, id_anjing),
    FOREIGN KEY (id_peristiwa) REFERENCES PeristiwaPenyelamatan(id_peristiwa),
    FOREIGN KEY (id_anjing) REFERENCES AnjingPenyelamat(id_anjing)
);