create database bengkel;

\c bengkel;

create table mekanik (
id_mekanik int primary key,
nama varchar(100),
keahlian varchar(100),
kontak varchar(20),
status varchar(20) check (status in ('aktif', 'tidak aktif'))
);

create table pelanggan (
id_pelanggan int primary key,
nama varchar(100),
kontak varchar(20)
);

create table layanan (
id_layanan int primary key,
jenis varchar(100),
harga int
);

create table transaksi (
id_transaksi int primary key,
id_mekanik int references mekanik(id_mekanik),
id_pelanggan int references pelanggan(id_pelanggan),
id_layanan int references layanan(id_layanan),
tanggal_masuk date,
status varchar(20) check (status in ('selesai', 'belum selesai'))
);

\d mekanik;
                        Table "public.mekanik"
   Column   |          Type          | Collation | Nullable | Default
------------+------------------------+-----------+----------+---------
 id_mekanik | integer                |           | not null |
 nama       | character varying(100) |           |          |
 keahlian   | character varying(100) |           |          |
 kontak     | character varying(20)  |           |          |
 status     | character varying(20)  |           |          |
Indexes:
    "mekanik_pkey" PRIMARY KEY, btree (id_mekanik)
Check constraints:
    "mekanik_status_check" CHECK (status::text = ANY (ARRAY['aktif'::character varying, 'tidak aktif'::character varying]::text[]))
Referenced by:
    TABLE "transaksi" CONSTRAINT "transaksi_id_mekanik_fkey" FOREIGN KEY (id_mekanik) REFERENCES mekanik(id_mekanik)


\d pelanggan;
                        Table "public.pelanggan"
    Column    |          Type          | Collation | Nullable | Default
--------------+------------------------+-----------+----------+---------
 id_pelanggan | integer                |           | not null |
 nama         | character varying(100) |           |          |
 kontak       | character varying(20)  |           |          |
Indexes:
    "pelanggan_pkey" PRIMARY KEY, btree (id_pelanggan)
Referenced by:
    TABLE "transaksi" CONSTRAINT "transaksi_id_pelanggan_fkey" FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan)


\d layanan;
                        Table "public.layanan"
   Column   |          Type          | Collation | Nullable | Default
------------+------------------------+-----------+----------+---------
 id_layanan | integer                |           | not null |
 jenis      | character varying(100) |           |          |
 harga      | integer                |           |          |
Indexes:
    "layanan_pkey" PRIMARY KEY, btree (id_layanan)
Referenced by:
    TABLE "transaksi" CONSTRAINT "transaksi_id_layanan_fkey" FOREIGN KEY (id_layanan) REFERENCES layanan(id_layanan)


\d transaksi;
                        Table "public.transaksi"
    Column     |         Type          | Collation | Nullable | Default
---------------+-----------------------+-----------+----------+---------
 id_transaksi  | integer               |           | not null |
 id_mekanik    | integer               |           |          |
 id_pelanggan  | integer               |           |          |
 id_layanan    | integer               |           |          |
 tanggal_masuk | date                  |           |          |
 status        | character varying(20) |           |          |
Indexes:
    "transaksi_pkey" PRIMARY KEY, btree (id_transaksi)
Check constraints:
    "transaksi_status_check" CHECK (status::text = ANY (ARRAY['selesai'::character varying, 'belum selesai'::character varying]::text[]))
Foreign-key constraints:
    "transaksi_id_layanan_fkey" FOREIGN KEY (id_layanan) REFERENCES layanan(id_layanan)
    "transaksi_id_mekanik_fkey" FOREIGN KEY (id_mekanik) REFERENCES mekanik(id_mekanik)
    "transaksi_id_pelanggan_fkey" FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan)


insert into mekanik (id_mekanik, nama, keahlian, kontak, status) values
(1, 'budi santoso', 'spesialis mesin 4 tak', '081234567890', 'aktif'),
(2, 'andi pratama', 'sistem injeksi', '081298765432', 'aktif'),
(3, 'cahyo nugroho', 'spesialis cvt matic', '081345678901', 'aktif'),
(4, 'dani setiawan', 'spesialis motor 2 tak', '085712345678', 'tidak aktif'),
(5, 'eko purnomo', 'kelistrikan body', '081122334455', 'aktif');

insert into pelanggan (id_pelanggan, nama, kontak) values
(1, 'fajar shadiq', '081211112222'),
(2, 'rina wati', '081333334444'),
(3, 'agus salim', '081555556666'),
(4, 'dewi sartika', '081777778888'),
(5, 'rudi hartono', '081999990000'),
(6, 'siti amina', '085712341234'),
(7, 'bambang pamungkas', '085656785678'),
(8, 'lina marlina', '081298769876'),
(9, 'joko susilo', '081354325432'),
(10, 'indah permatasari', '081112345678'),
(11, 'reza rahardian', '082110203040'),
(12, 'tri utami', '082250607080'),
(13, 'bayu nugraha', '082390807060'),
(14, 'putri ayu', '081234509870'),
(15, 'hendra setiawan', '081367894321');

insert into layanan (id_layanan, jenis, harga) values
(1, 'servis ringan', 45000),
(2, 'servis besar', 350000),
(3, 'ganti oli mesin', 50000),
(4, 'ganti oli gardan', 15000),
(5, 'servis cvt', 35000),
(6, 'ganti kampas rem', 40000),
(7, 'ganti ban luar', 180000),
(8, 'ganti aki', 210000);

insert into transaksi (id_transaksi, id_mekanik, id_pelanggan, id_layanan, tanggal_masuk, status) values
(1, 1, 1, 3, '2025-02-01', 'selesai'),
(2, 2, 3, 1, '2025-02-01', 'selesai'),
(3, 3, 5, 5, '2025-02-02', 'selesai'),
(4, 5, 7, 2, '2025-02-03', 'selesai'),
(5, 1, 9, 4, '2025-02-04', 'selesai'),
(6, 2, 11, 6, '2025-02-05', 'selesai'),
(7, 3, 13, 8, '2025-02-06', 'selesai'),
(8, 5, 15, 7, '2025-02-07', 'selesai'),
(9, 1, 2, 3, '2025-02-08', 'selesai'),
(10, 2, 4, 1, '2025-02-09', 'selesai'),
(11, 3, 6, 5, '2025-02-10', 'selesai'),
(12, 5, 8, 3, '2025-02-11', 'selesai'),
(13, 1, 10, 6, '2025-02-12', 'selesai'),
(14, 2, 12, 4, '2025-02-13', 'selesai'),
(15, 3, 14, 1, '2025-02-14', 'selesai'),
(16, 5, 1, 7, '2025-02-15', 'belum selesai'),
(17, 1, 3, 2, '2025-02-15', 'belum selesai'),
(18, 2, 5, 3, '2025-02-15', 'belum selesai'),
(19, 3, 7, 5, '2025-02-15', 'belum selesai'),
(20, 5, 9, 1, '2025-02-15', 'belum selesai');

select*from mekanik;
 id_mekanik |     nama      |       keahlian        |    kontak    |   status
------------+---------------+-----------------------+--------------+-------------
          1 | budi santoso  | spesialis mesin 4 tak | 081234567890 | aktif
          2 | andi pratama  | sistem injeksi        | 081298765432 | aktif
          3 | cahyo nugroho | spesialis cvt matic   | 081345678901 | aktif
          4 | dani setiawan | spesialis motor 2 tak | 085712345678 | tidak aktif
          5 | eko purnomo   | kelistrikan body      | 081122334455 | aktif

select*from pelanggan;
 id_pelanggan |       nama        |    kontak
--------------+-------------------+--------------
            1 | fajar shadiq      | 081211112222
            2 | rina wati         | 081333334444
            3 | agus salim        | 081555556666
            4 | dewi sartika      | 081777778888
            5 | rudi hartono      | 081999990000
            6 | siti amina        | 085712341234
            7 | bambang pamungkas | 085656785678
            8 | lina marlina      | 081298769876
            9 | joko susilo       | 081354325432
           10 | indah permatasari | 081112345678
           11 | reza rahardian    | 082110203040
           12 | tri utami         | 082250607080
           13 | bayu nugraha      | 082390807060
           14 | putri ayu         | 081234509870
           15 | hendra setiawan   | 081367894321

select*from layanan;
 id_layanan |      jenis       | harga
------------+------------------+--------
          1 | servis ringan    |  45000
          2 | servis besar     | 350000
          3 | ganti oli mesin  |  50000
          4 | ganti oli gardan |  15000
          5 | servis cvt       |  35000
          6 | ganti kampas rem |  40000
          7 | ganti ban luar   | 180000
          8 | ganti aki        | 210000

select*from transaksi;
 id_transaksi | id_mekanik | id_pelanggan | id_layanan | tanggal_masuk |    status
--------------+------------+--------------+------------+---------------+---------------
            1 |          1 |            1 |          3 | 2025-02-01    | selesai
            2 |          2 |            3 |          1 | 2025-02-01    | selesai
            3 |          3 |            5 |          5 | 2025-02-02    | selesai
            4 |          5 |            7 |          2 | 2025-02-03    | selesai
            5 |          1 |            9 |          4 | 2025-02-04    | selesai
            6 |          2 |           11 |          6 | 2025-02-05    | selesai
            7 |          3 |           13 |          8 | 2025-02-06    | selesai
            8 |          5 |           15 |          7 | 2025-02-07    | selesai
            9 |          1 |            2 |          3 | 2025-02-08    | selesai
           10 |          2 |            4 |          1 | 2025-02-09    | selesai
           11 |          3 |            6 |          5 | 2025-02-10    | selesai
           12 |          5 |            8 |          3 | 2025-02-11    | selesai
           13 |          1 |           10 |          6 | 2025-02-12    | selesai
           14 |          2 |           12 |          4 | 2025-02-13    | selesai
           15 |          3 |           14 |          1 | 2025-02-14    | selesai
           16 |          5 |            1 |          7 | 2025-02-15    | belum selesai
           17 |          1 |            3 |          2 | 2025-02-15    | belum selesai
           18 |          2 |            5 |          3 | 2025-02-15    | belum selesai
           19 |          3 |            7 |          5 | 2025-02-15    | belum selesai
           20 |          5 |            9 |          1 | 2025-02-15    | belum selesai

delete from mekanik
where status = 'tidak aktif'
;

select*from mekanik;
 id_mekanik |     nama      |       keahlian        |    kontak    | status
------------+---------------+-----------------------+--------------+--------
          1 | budi santoso  | spesialis mesin 4 tak | 081234567890 | aktif
          2 | andi pratama  | sistem injeksi        | 081298765432 | aktif
          3 | cahyo nugroho | spesialis cvt matic   | 081345678901 | aktif
          5 | eko purnomo   | kelistrikan body      | 081122334455 | aktif

update layanan set harga = '200000'
where id_layanan = 8;

select*from layanan;
 id_layanan |      jenis       | harga
------------+------------------+--------
          1 | servis ringan    |  45000
          2 | servis besar     | 350000
          3 | ganti oli mesin  |  50000
          4 | ganti oli gardan |  15000
          5 | servis cvt       |  35000
          6 | ganti kampas rem |  40000
          7 | ganti ban luar   | 180000
          8 | ganti aki        | 200000


create user kasir with password 'kasir123';

create user mekanik with password 'mekanik123';

grant all privileges on all tables in schema public to kasir;

grant select on all tables in schema public to kasir;

create view laporan_lengkap as
select
t.id_transaksi,
t.tanggal_masuk,
p.nama as nama_pelanggan,
p.kontak as kontak_pelanggan,
m.nama as nama_mekanik,
l.jenis as jenis_layanan,
l.harga,
t.status
from transaksi t
join pelanggan p on t.id_pelanggan = p.id_pelanggan
join mekanik m on t.id_mekanik = m.id_mekanik
join layanan l on t.id_layanan = l.id_layanan;

grant select on laporan_lengkap to mekanik;                ^
                  
grant all privileges on laporan_lengkap to kasir;

create table rekap_kinerja as
select m.nama as nama_mekanik,
  count(t.id_transaksi) as total_servis,
  sum(l.harga) as total_pendapatan
from transaksi t
  join mekanik m on t.id_mekanik = m.id_mekanik
  join layanan l on t.id_layanan = l.id_layanan
where t.status = 'selesai'
group by m.nama;

select*from rekap_kinerja;
 nama_mekanik  | total_servis | total_pendapatan
---------------+--------------+------------------
 andi pratama  |            4 |           145000
 budi santoso  |            4 |           155000
 cahyo nugroho |            4 |           315000
 eko purnomo   |            3 |           580000

select p.nama as nama_pelanggan,
t.tanggal_masuk,
l.jenis as jenis_layanan,
m.nama as nama_mekanik,
t.status
from transaksi t
join pelanggan p on t.id_pelanggan = p.id_pelanggan
join layanan l on t.id_layanan = l.id_layanan
join mekanik m on t.id_mekanik = m.id_mekanik;
  nama_pelanggan   | tanggal_masuk |  jenis_layanan   | nama_mekanik  |    status
-------------------+---------------+------------------+---------------+---------------
 fajar shadiq      | 2025-02-01    | ganti oli mesin  | budi santoso  | selesai
 agus salim        | 2025-02-01    | servis ringan    | andi pratama  | selesai
 rudi hartono      | 2025-02-02    | servis cvt       | cahyo nugroho | selesai
 bambang pamungkas | 2025-02-03    | servis besar     | eko purnomo   | selesai
 joko susilo       | 2025-02-04    | ganti oli gardan | budi santoso  | selesai
 reza rahardian    | 2025-02-05    | ganti kampas rem | andi pratama  | selesai
 bayu nugraha      | 2025-02-06    | ganti aki        | cahyo nugroho | selesai
 hendra setiawan   | 2025-02-07    | ganti ban luar   | eko purnomo   | selesai
 rina wati         | 2025-02-08    | ganti oli mesin  | budi santoso  | selesai
 dewi sartika      | 2025-02-09    | servis ringan    | andi pratama  | selesai
 siti amina        | 2025-02-10    | servis cvt       | cahyo nugroho | selesai
 lina marlina      | 2025-02-11    | ganti oli mesin  | eko purnomo   | selesai
 indah permatasari | 2025-02-12    | ganti kampas rem | budi santoso  | selesai
 tri utami         | 2025-02-13    | ganti oli gardan | andi pratama  | selesai
 putri ayu         | 2025-02-14    | servis ringan    | cahyo nugroho | selesai
 fajar shadiq      | 2025-02-15    | ganti ban luar   | eko purnomo   | belum selesai
 agus salim        | 2025-02-15    | servis besar     | budi santoso  | belum selesai
 rudi hartono      | 2025-02-15    | ganti oli mesin  | andi pratama  | belum selesai
 bambang pamungkas | 2025-02-15    | servis cvt       | cahyo nugroho | belum selesai
 joko susilo       | 2025-02-15    | servis ringan    | eko purnomo   | belum selesai

