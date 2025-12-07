create database rumah_sakit;

\c rumah_sakit;
--mencopy tabel--
select into dokter_baru from dokter;
select into ruangan_baru from ruangan;
select into pasien_baru from pasien;

select * into temp dokter_terbaru from dokter;
select * into temp ruangan_terbaru from ruangan;
select * into temp pasien_terbaru from pasien;

select*into pasien_1 from pasien;
select*into ruangan_1 from ruangan;
select*into dokter_1 from dokter;

select*from ruangan_baru;
--
(35 rows)

select*from ruangan_terbaru;
 id_ruangan |     nama_ruangan      | tipe_ruangan  | kapasitas | tarif_per_hari
------------+-----------------------+---------------+-----------+----------------
 R001       | Ruang Isolasi Paru    | Isolasi       |         2 |         500000
 R002       | Ruang Gizi            | Rawat Inap    |         4 |         350000
 R003       | Ruang Infeksi         | Rawat Inap    |         3 |         400000
 R004       | Ruang Penyakit Dalam  | Rawat Inap    |         3 |         375000
 R005       | Ruang Bedah Umum      | Operasi       |         2 |         600000
 R006       | Ruang Umum A          | Rawat Inap    |         5 |         300000
 R007       | Ruang Kulit           | Rawat Jalan   |         4 |         250000
 R008       | Ruang Luka Bakar      | Operasi       |         2 |         650000
 R009       | Ruang Anak A          | Rawat Inap    |         6 |         325000
 R010       | Ruang Anak B          | Rawat Inap    |         4 |         320000
 R011       | Ruang Jantung A       | Rawat Inap    |         3 |         500000
 R012       | Ruang Jantung B       | ICU           |         2 |         800000
 R013       | Ruang Saraf           | Rawat Inap    |         4 |         450000
 R014       | Ruang Kandungan       | Rawat Inap    |         5 |         380000
 R015       | Ruang Gigi            | Rawat Jalan   |         3 |         200000
 R016       | Ruang Ortopedi        | Rawat Inap    |         4 |         500000
 R017       | Ruang Bedah Minor     | Operasi       |         2 |         550000
 R018       | Ruang THT             | Rawat Jalan   |         3 |         250000
 R019       | Ruang Mata            | Rawat Jalan   |         3 |         230000
 R020       | Ruang Umum B          | Rawat Inap    |         5 |         300000
 R021       | Ruang Paru-paru       | Rawat Inap    |         4 |         420000
 R022       | Ruang IGD             | Gawat Darurat |         6 |         600000
 R023       | Ruang ICU             | Intensif      |         2 |         900000
 R024       | Ruang Rawat VIP       | VIP           |         2 |        1000000
 R025       | Ruang Bayi            | Rawat Inap    |         5 |         350000
 R026       | Ruang Anak C          | Rawat Inap    |         2 |         300000
 R027       | Ruang Jantung C       | Rawat Inap    |         3 |         400000
 R028       | Ruang IGD             | Gawat Darurat |         4 |         500000
 R029       | Ruang ICU             | Intensif      |         4 |         800000
 R030       | Ruang Bayi            | Rawat Inap    |         6 |         300000
 R031       | Ruang Psikiatri       | Rawat Inap    |         3 |         380000
 R032       | Ruang Rehabilitasi    | Rawat Jalan   |         4 |         270000
 R033       | Ruang Bedah Saraf     | Operasi       |         2 |         750000
 R034       | Ruang Gizi VIP        | VIP           |         2 |         950000
 R035       | Ruang Isolasi Infeksi | Isolasi       |         2 |         550000
(35 rows)

select*from pasien_1;
 id_pasien |   nama_pasien    | jenis_kelamin | usia |            alamat             |    no_hp    |      penyakit      | id_dokter | id_ruangan
-----------+------------------+---------------+------+-------------------------------+-------------+--------------------+-----------+------------
 P001      | Andi Saputra     | L             |   32 | Jl. Melati No. 4, Makassar    | 81234567890 | Demam Berdarah     | D005      | R003
 P002      | Siti Rahmawati   | P             |   45 | Jl. Anggrek No. 12, Gowa      | 81298765432 | Diabetes           | D003      | R002
 P003      | Budi Santoso     | L             |   28 | Jl. Cendana No. 8, Maros      | 82198765432 | Asma               | D001      | R021
 P004      | Rina Marlina     | P             |   36 | Jl. Mawar No. 15, Makassar    | 85678912345 | Hipertensi         | D002      | R004
 P005      | Joko Pranoto     | L             |   50 | Jl. Dahlia No. 9, Gowa        | 81345678901 | Stroke             | D009      | R013
 P006      | Dewi Lestari     | P             |   27 | Jl. Flamboyan No. 3, Maros    | 82134567890 | Tifus              | D005      | R003
 P007      | Ahmad Fauzi      | L             |   33 | Jl. Kenanga No. 10, Makassar  | 81298712345 | COVID-19           | D004      | R006
 P008      | Putri Amelia     | P             |   22 | Jl. Teratai No. 6, Gowa       | 81234599876 | Infeksi Kulit      | D013      | R007
 P009      | Rahmat Hidayat   | L             |   29 | Jl. Kamboja No. 17, Makassar  | 82345678910 | TBC                | D001      | R021
 P010      | Nia Kurnia       | P             |   40 | Jl. Angsana No. 2, Maros      | 81376543210 | Anemia             | D003      | R002
 P011      | Yanto Prabowo    | L             |   35 | Jl. Merpati No. 11, Gowa      | 81277788899 | Gastritis          | D005      | R003
 P012      | Melati Ayu       | P             |   30 | Jl. Cempaka No. 5, Makassar   | 82199900011 | Demam              | D004      | R006
 P013      | Dedi Kurniawan   | L             |   26 | Jl. Kemuning No. 14, Maros    | 81255577799 | Luka Bakar         | D006      | R008
 P014      | Nur Aisyah       | P             |   21 | Jl. Pandan No. 18, Gowa       | 81233344455 | Demam              | D004      | R006
 P015      | Fajar Setiawan   | L             |   47 | Jl. Ketapang No. 9, Makassar  | 81245678912 | Diabetes           | D003      | R002
 P016      | Yuliana Sari     | P             |   38 | Jl. Mangga No. 7, Maros       | 82166677788 | Migrain            | D002      | R004
 P017      | Hasan Basri      | L             |   42 | Jl. Melur No. 16, Makassar    | 81299988877 | Hipertensi         | D010      | R011
 P018      | Ratna Dewi       | P             |   25 | Jl. Jambu No. 19, Gowa        | 81255512345 | Anemia             | D003      | R002
 P019      | Arman Rahim      | L             |   31 | Jl. Nangka No. 13, Maros      | 81244433322 | Tifus              | D005      | R003
 P020      | Sri Wahyuni      | P             |   29 | Jl. Belimbing No. 1, Makassar | 81200011122 | COVID-19           | D004      | R006
 P021      | Rafi Nugraha     | L             |    8 | Jl. Rambutan No. 11, Gowa     | 81222334455 | Demam Tinggi       | D007      | R009
 P022      | Dinda Safitri    | P             |    6 | Jl. Jeruk No. 22, Maros       | 81233445566 | Batuk              | D007      | R010
 P023      | Laila Prameswari | P             |   31 | Jl. Pinang No. 3, Makassar    | 81244556677 | Hamil              | D008      | R014
 P024      | Eko Purnomo      | L             |   37 | Jl. Belimbing No. 7, Gowa     | 81255667788 | Cedera Kaki        | D015      | R016
 P025      | Rosi Amelia      | P             |   44 | Jl. Nusa Indah No. 19, Maros  | 81266778899 | Gigi Berlubang     | D014      | R015
 P026      | Farhan Yusuf     | L             |   52 | Jl. Kelapa No. 12, Makassar   | 81277889900 | Gangguan Saraf     | D009      | R013
 P027      | Lina Kartika     | P             |   48 | Jl. Sirsak No. 4, Gowa        | 81288990011 | Gangguan Jantung   | D010      | R012
 P028      | Ahmad Zulkifli   | L             |   56 | Jl. Pisang No. 8, Maros       | 81299001122 | Stroke             | D009      | R013
 P029      | Nabila Fitri     | P             |   23 | Jl. Pepaya No. 9, Gowa        | 81211122233 | Radang Tenggorokan | D011      | R018
 P030      | Fathur Rahman    | L             |   34 | Jl. Durian No. 5, Makassar    | 81222233344 | Katarak            | D012      | R019
 P031      | Intan Maharani   | P             |   27 | Jl. Mawar No. 2, Makassar     | 81233311122 | Aritmia            | D021      | R011
 P032      | Rizky Ramadan    | L             |   19 | Jl. Sakura No. 7, Gowa        | 81244422233 | Demam              | D004      | R006
 P033      | Ayu Lestari      | P             |   30 | Jl. Anggrek No. 3, Maros      | 81255533344 | Gangguan Saraf     | D023      | R013
 P034      | M. Irfan         | L             |   41 | Jl. Cendana No. 9, Makassar   | 81266644455 | Infeksi Paru       | D027      | R021
 P035      | Vina Pratiwi     | P             |   32 | Jl. Kenanga No. 18, Gowa      | 81277755566 | Rehabilitasi Fisik | D017      | R032
(35 rows)

--SubSELECTsebagai Field--
select nama_pasien, penyakit,
  (select nama_dokter from dokter where dokter.id_dokter = pasien.id_dokter)as dokter_penanggung_jawab,
  (select tipe_ruangan from ruangan where ruangan.id_ruangan = pasien.id_ruangan)as ruangan
from pasien
where usia > 25;
   nama_pasien    |      penyakit      | dokter_penanggung_jawab |   ruangan
------------------+--------------------+-------------------------+-------------
 Andi Saputra     | Demam Berdarah     | dr. Rudi Prasetyo       | Rawat Inap
 Siti Rahmawati   | Diabetes           | dr. Hendra Kusuma       | Rawat Inap
 Budi Santoso     | Asma               | dr. Bambang Hidayat     | Rawat Inap
 Rina Marlina     | Hipertensi         | dr. Sulastri Ahmad      | Rawat Inap
 Joko Pranoto     | Stroke             | dr. Dimas Putra         | Rawat Inap
 Dewi Lestari     | Tifus              | dr. Rudi Prasetyo       | Rawat Inap
 Ahmad Fauzi      | COVID-19           | dr. Intan Permata       | Rawat Inap
 Rahmat Hidayat   | TBC                | dr. Bambang Hidayat     | Rawat Inap
 Nia Kurnia       | Anemia             | dr. Hendra Kusuma       | Rawat Inap
 Yanto Prabowo    | Gastritis          | dr. Rudi Prasetyo       | Rawat Inap
 Melati Ayu       | Demam              | dr. Intan Permata       | Rawat Inap
 Dedi Kurniawan   | Luka Bakar         | dr. Nurul Fauziah       | Operasi
 Fajar Setiawan   | Diabetes           | dr. Hendra Kusuma       | Rawat Inap
 Yuliana Sari     | Migrain            | dr. Sulastri Ahmad      | Rawat Inap
 Hasan Basri      | Hipertensi         | dr. Laila Amalia        | Rawat Inap
 Arman Rahim      | Tifus              | dr. Rudi Prasetyo       | Rawat Inap
 Sri Wahyuni      | COVID-19           | dr. Intan Permata       | Rawat Inap
 Laila Prameswari | Hamil              | dr. Fitri Handayani     | Rawat Inap
 Eko Purnomo      | Cedera Kaki        | dr. Putra Ramadhan      | Rawat Inap
 Rosi Amelia      | Gigi Berlubang     | dr. Dwi Lestari         | Rawat Jalan
 Farhan Yusuf     | Gangguan Saraf     | dr. Dimas Putra         | Rawat Inap
 Lina Kartika     | Gangguan Jantung   | dr. Laila Amalia        | ICU
 Ahmad Zulkifli   | Stroke             | dr. Dimas Putra         | Rawat Inap
 Fathur Rahman    | Katarak            | dr. Maya Rosdiana       | Rawat Jalan
 Intan Maharani   | Aritmia            | dr. Budi Raharjo        | Rawat Inap
 Ayu Lestari      | Gangguan Saraf     | dr. Fajar Santoso       | Rawat Inap
 M. Irfan         | Infeksi Paru       | dr. Rian Nugroho        | Rawat Inap
 Vina Pratiwi     | Rehabilitasi Fisik | dr. Siti Komariah       | Rawat Jalan
(28 rows)

--Query=Himpunan--
--union--
rumah_sakit=# select nama_pasien as nama from pasien
rumah_sakit-# union
rumah_sakit-# select nama_dokter from dokter;
         nama
-----------------------
 Arman Rahim
 Siti Rahmawati
 Dinda Safitri
 dr. Rian Nugroho
 dr. Yohana Prameswari
 Ahmad Zulkifli
 dr. Citra Anggraini
 dr. Putra Ramadhan
 dr. Andi Prabowo
 dr. Maya Rosdiana
 dr. Dimas Putra
 dr. Bambang Hidayat
 Yanto Prabowo
 Rizky Ramadan
 Laila Prameswari
 Ratna Dewi
 Fajar Setiawan
 dr. Fitri Handayani
 Vina Pratiwi
 dr. Diah Puspitasari
 dr. Hendra Kusuma
 Dedi Kurniawan
 Ayu Lestari
 dr. Siti Komariah
 dr. Wahyu Saputra
 Hasan Basri
 Dewi Lestari
 dr. Intan Permata
 Nabila Fitri
 dr. Ratna Dewi
 dr. Farhan Pratama
 dr. Rudi Prasetyo
 Farhan Yusuf
 dr. Ahmad Fadhil
 dr. Lilis Nuraini
 Putri Amelia
 dr. Laila Amalia
 dr. Dewi Karlina
 Rahmat Hidayat
 dr. Arif Setiawan
 Rafi Nugraha
 Budi Santoso
 dr. Nurul Fauziah
 Nur Aisyah
 Sri Wahyuni
 Nia Kurnia
 Rina Marlina
 Rosi Amelia
 Fathur Rahman
 dr. Fajar Santoso
 dr. Silvia Ramadhani
 Intan Maharani
 dr. Nina Lestari
 Joko Pranoto
 Melati Ayu
 dr. Diana Kusumawati
 Ahmad Fauzi
 dr. Sulastri Ahmad
 dr. Ayu Kartika
 M. Irfan
 Lina Kartika
 dr. Budi Raharjo
 dr. Agus Wijaya
 Eko Purnomo
 Yuliana Sari
 dr. Hendra Firmansyah
 Andi Saputra
 dr. Rizky Aditya
 dr. Rangga Sutrisno
 dr. Dwi Lestari
(70 rows)

--INTERSECT--
select nama_pasien as nama from pasien
intersect
select nama_dokter from dokter;
 nama
------
(0 rows)
