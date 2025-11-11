***Membuat database***
  *hanya menampilkan querry*
create tugas1_rumah_sakit
use tugas1_rumah_sakit;

***Membuat tabel***
  *hanya menampilkan querry*
CREATE TABLE pasien (
     id_pasien CHAR(4) NOT NULL PRIMARY KEY,
     nama_pasien VARCHAR(70),
     jenis_kelamin VARCHAR(70),
     usia INT(2),
     alamat VARCHAR(70),
     no_hp VARCHAR(15),
     penyakit VARCHAR(70),
     id_dokter CHAR(4),
     id_ruangan CHAR(4)
 );
alter table pasien modify jenis_kelamin enum('L','P');

CREATE TABLE dokter(
     id_dokter CHAR(4) NOT NULL PRIMARY KEY,
     nama_dokter VARCHAR(70),
     spesialis VARCHAR(70),
     no_hp VARCHAR(15),
     jam_mulai_praktek TIME,
     jam_selesai_praktek TIME
 );

 create table ruangan(
     id_ruangan char(4) not null primary key,
     nama_ruangan varchar(70),
     tipe_ruangan varchar(70),
     kapasitas int(2),
     tarif_per_hari int(9));

***Struktur tabel***
  *menampilkan querry dan output*
desc pasien;
+---------------+---------------+------+-----+---------+-------+
| Field         | Type          | Null | Key | Default | Extra |
+---------------+---------------+------+-----+---------+-------+
| id_pasien     | char(4)       | NO   | PRI | NULL    |       |
| nama_pasien   | varchar(70)   | YES  |     | NULL    |       |
| jenis_kelamin | enum('L','P') | YES  |     | NULL    |       |
| usia          | int(2)        | YES  |     | NULL    |       |
| alamat        | varchar(70)   | YES  |     | NULL    |       |
| no_hp         | varchar(15)   | YES  |     | NULL    |       |
| penyakit      | varchar(70)   | YES  |     | NULL    |       |
| id_dokter     | char(4)       | YES  |     | NULL    |       |
| id_ruangan    | char(4)       | YES  |     | NULL    |       |
+---------------+---------------+------+-----+---------+-------+

desc dokter;
+---------------------+-------------+------+-----+---------+-------+
| Field               | Type        | Null | Key | Default | Extra |
+---------------------+-------------+------+-----+---------+-------+
| id_dokter           | char(4)     | NO   | PRI | NULL    |       |
| nama_dokter         | varchar(70) | YES  |     | NULL    |       |
| spesialis           | varchar(70) | YES  |     | NULL    |       |
| no_hp               | varchar(15) | YES  |     | NULL    |       |
| jam_mulai_praktek   | time        | YES  |     | NULL    |       |
| jam_selesai_praktek | time        | YES  |     | NULL    |       |
+---------------------+-------------+------+-----+---------+-------+

desc ruangan;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| id_ruangan     | char(4)     | NO   | PRI | NULL    |       |
| nama_ruangan   | varchar(70) | YES  |     | NULL    |       |
| tipe_ruangan   | varchar(70) | YES  |     | NULL    |       |
| kapasitas      | int(2)      | YES  |     | NULL    |       |
| tarif_per_hari | int(9)      | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
