\c rumah_sakit;

--create view--
create view v_pasien as
  select id_pasien, nama_pasien, jenis_kelamin, usia
  from pasien;

--create rule--
create rule "_RET_v_pasien" as
  on select to v_pasien do instead
  select id_pasien, nama_pasien, jenis_kelamin, usia
  from pasien;
--umumnya postgres telah membuat rule untuk view--
--ERROR:  "v_pasien" is already a view--
--ini adalah error yang umumnya muncul sebagai tanda rule telah dibuat secara otomatis--

--tampilan pasien--
 select*from pasien;
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

--tampilan view pasien--
select*from v_pasien;
 id_pasien |   nama_pasien    | jenis_kelamin | usia
-----------+------------------+---------------+------
 P001      | Andi Saputra     | L             |   32
 P002      | Siti Rahmawati   | P             |   45
 P003      | Budi Santoso     | L             |   28
 P004      | Rina Marlina     | P             |   36
 P005      | Joko Pranoto     | L             |   50
 P006      | Dewi Lestari     | P             |   27
 P007      | Ahmad Fauzi      | L             |   33
 P008      | Putri Amelia     | P             |   22
 P009      | Rahmat Hidayat   | L             |   29
 P010      | Nia Kurnia       | P             |   40
 P011      | Yanto Prabowo    | L             |   35
 P012      | Melati Ayu       | P             |   30
 P013      | Dedi Kurniawan   | L             |   26
 P014      | Nur Aisyah       | P             |   21
 P015      | Fajar Setiawan   | L             |   47
 P016      | Yuliana Sari     | P             |   38
 P017      | Hasan Basri      | L             |   42
 P018      | Ratna Dewi       | P             |   25
 P019      | Arman Rahim      | L             |   31
 P020      | Sri Wahyuni      | P             |   29
 P021      | Rafi Nugraha     | L             |    8
 P022      | Dinda Safitri    | P             |    6
 P023      | Laila Prameswari | P             |   31
 P024      | Eko Purnomo      | L             |   37
 P025      | Rosi Amelia      | P             |   44
 P026      | Farhan Yusuf     | L             |   52
 P027      | Lina Kartika     | P             |   48
 P028      | Ahmad Zulkifli   | L             |   56
 P029      | Nabila Fitri     | P             |   23
 P030      | Fathur Rahman    | L             |   34
 P031      | Intan Maharani   | P             |   27
 P032      | Rizky Ramadan    | L             |   19
 P033      | Ayu Lestari      | P             |   30
 P034      | M. Irfan         | L             |   41
 P035      | Vina Pratiwi     | P             |   32
(35 rows)

--insert rule--
insert into pasien (id_pasien, nama_pasien, jenis_kelamin, usia)
  values (NEW.id_pasien, NEW.nama_pasien, NEW.jenis_kelamin, NEW.usia);

--mencoba insert rule--
insert into v_pasien values ('P036','Radit','L',19);

--test apakah berhasil pada view v_pasien dan tabel pasien--
select*from v_pasien;
 id_pasien |   nama_pasien    | jenis_kelamin | usia
-----------+------------------+---------------+------
 P001      | Andi Saputra     | L             |   32
 P002      | Siti Rahmawati   | P             |   45
 P003      | Budi Santoso     | L             |   28
 P004      | Rina Marlina     | P             |   36
 P005      | Joko Pranoto     | L             |   50
 P006      | Dewi Lestari     | P             |   27
 P007      | Ahmad Fauzi      | L             |   33
 P008      | Putri Amelia     | P             |   22
 P009      | Rahmat Hidayat   | L             |   29
 P010      | Nia Kurnia       | P             |   40
 P011      | Yanto Prabowo    | L             |   35
 P012      | Melati Ayu       | P             |   30
 P013      | Dedi Kurniawan   | L             |   26
 P014      | Nur Aisyah       | P             |   21
 P015      | Fajar Setiawan   | L             |   47
 P016      | Yuliana Sari     | P             |   38
 P017      | Hasan Basri      | L             |   42
 P018      | Ratna Dewi       | P             |   25
 P019      | Arman Rahim      | L             |   31
 P020      | Sri Wahyuni      | P             |   29
 P021      | Rafi Nugraha     | L             |    8
 P022      | Dinda Safitri    | P             |    6
 P023      | Laila Prameswari | P             |   31
 P024      | Eko Purnomo      | L             |   37
 P025      | Rosi Amelia      | P             |   44
 P026      | Farhan Yusuf     | L             |   52
 P027      | Lina Kartika     | P             |   48
 P028      | Ahmad Zulkifli   | L             |   56
 P029      | Nabila Fitri     | P             |   23
 P030      | Fathur Rahman    | L             |   34
 P031      | Intan Maharani   | P             |   27
 P032      | Rizky Ramadan    | L             |   19
 P033      | Ayu Lestari      | P             |   30
 P034      | M. Irfan         | L             |   41
 P035      | Vina Pratiwi     | P             |   32
 P036      | Radit            | L             |   19
(36 rows)
--berhasil pada view v_pasien--

select*from pasien;
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
 P036      | Radit            | L             |   19 |                               |             |                    |           |
(36 rows)
--berhasil pada tabel pasien--

--update rule--
create rule v_pasien_update as
on update to v_pasien do instead
update pasien
set nama_pasien   = NEW.nama_pasien,
    jenis_kelamin = NEW.jenis_kelamin,
    usia          = NEW.usia
where id_pasien = OLD.id_pasien;

--mencoba update rule--
update v_pasien
  set nama_pasien='raditya dika', usia = 22
  where id_pasien = 'P036';

--cek apakah berhasil pada view v_pasien--
select*from v_pasien;
 id_pasien |   nama_pasien    | jenis_kelamin | usia
-----------+------------------+---------------+------
 P001      | Andi Saputra     | L             |   32
 P002      | Siti Rahmawati   | P             |   45
 P003      | Budi Santoso     | L             |   28
 P004      | Rina Marlina     | P             |   36
 P005      | Joko Pranoto     | L             |   50
 P006      | Dewi Lestari     | P             |   27
 P007      | Ahmad Fauzi      | L             |   33
 P008      | Putri Amelia     | P             |   22
 P009      | Rahmat Hidayat   | L             |   29
 P010      | Nia Kurnia       | P             |   40
 P011      | Yanto Prabowo    | L             |   35
 P012      | Melati Ayu       | P             |   30
 P013      | Dedi Kurniawan   | L             |   26
 P014      | Nur Aisyah       | P             |   21
 P015      | Fajar Setiawan   | L             |   47
 P016      | Yuliana Sari     | P             |   38
 P017      | Hasan Basri      | L             |   42
 P018      | Ratna Dewi       | P             |   25
 P019      | Arman Rahim      | L             |   31
 P020      | Sri Wahyuni      | P             |   29
 P021      | Rafi Nugraha     | L             |    8
 P022      | Dinda Safitri    | P             |    6
 P023      | Laila Prameswari | P             |   31
 P024      | Eko Purnomo      | L             |   37
 P025      | Rosi Amelia      | P             |   44
 P026      | Farhan Yusuf     | L             |   52
 P027      | Lina Kartika     | P             |   48
 P028      | Ahmad Zulkifli   | L             |   56
 P029      | Nabila Fitri     | P             |   23
 P030      | Fathur Rahman    | L             |   34
 P031      | Intan Maharani   | P             |   27
 P032      | Rizky Ramadan    | L             |   19
 P033      | Ayu Lestari      | P             |   30
 P034      | M. Irfan         | L             |   41
 P035      | Vina Pratiwi     | P             |   32
 P036      | raditya dika     | L             |   22
(36 rows)

--cek apakah berhasil pada tabel pasien--
select*from pasien;
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
 P036      | raditya dika     | L             |   22 |                               |             |                    |           |
(36 rows)

--membuat rule--
create rule v_pasien_delete as
on delete to v_pasien do instead
delete from pasien
where id_pasien = OLD.id_pasien;

--mencoba rule--
delete from v_pasien
where id_pasien = 'P036';

--cek apakah rule berhasil pada view v_pasien--
select*from v_pasien;
 id_pasien |   nama_pasien    | jenis_kelamin | usia
-----------+------------------+---------------+------
 P001      | Andi Saputra     | L             |   32
 P002      | Siti Rahmawati   | P             |   45
 P003      | Budi Santoso     | L             |   28
 P004      | Rina Marlina     | P             |   36
 P005      | Joko Pranoto     | L             |   50
 P006      | Dewi Lestari     | P             |   27
 P007      | Ahmad Fauzi      | L             |   33
 P008      | Putri Amelia     | P             |   22
 P009      | Rahmat Hidayat   | L             |   29
 P010      | Nia Kurnia       | P             |   40
 P011      | Yanto Prabowo    | L             |   35
 P012      | Melati Ayu       | P             |   30
 P013      | Dedi Kurniawan   | L             |   26
 P014      | Nur Aisyah       | P             |   21
 P015      | Fajar Setiawan   | L             |   47
 P016      | Yuliana Sari     | P             |   38
 P017      | Hasan Basri      | L             |   42
 P018      | Ratna Dewi       | P             |   25
 P019      | Arman Rahim      | L             |   31
 P020      | Sri Wahyuni      | P             |   29
 P021      | Rafi Nugraha     | L             |    8
 P022      | Dinda Safitri    | P             |    6
 P023      | Laila Prameswari | P             |   31
 P024      | Eko Purnomo      | L             |   37
 P025      | Rosi Amelia      | P             |   44
 P026      | Farhan Yusuf     | L             |   52
 P027      | Lina Kartika     | P             |   48
 P028      | Ahmad Zulkifli   | L             |   56
 P029      | Nabila Fitri     | P             |   23
 P030      | Fathur Rahman    | L             |   34
 P031      | Intan Maharani   | P             |   27
 P032      | Rizky Ramadan    | L             |   19
 P033      | Ayu Lestari      | P             |   30
 P034      | M. Irfan         | L             |   41
 P035      | Vina Pratiwi     | P             |   32
(35 rows)

--cek apakah rule berhasil pada tabel pasien--
select*from pasien;
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

--rule vs trigger--
--buat tabel untuk menyimpan log tabel--
create table log_pasien (
    id_log serial primary key,
    aksi varchar(20),
    waktu timestamp default current_timestamp,
    id_pasien char(4),
    nama_pasien varchar(70),
    jenis_kelamin char(1),
    usia int,
    alamat varchar(70),
    no_hp varchar(15),
    penyakit varchar(70),
    id_dokter char(4),
    id_ruangan char(4)
);

--membuat function untuk menyimpan data pada tabel log_pasien--
create or replace function log_pasien_all()
returns trigger as $$
begin
    insert into log_pasien (
        aksi, id_pasien, nama_pasien, jenis_kelamin, usia,
        alamat, no_hp, penyakit, id_dokter, id_ruangan
    ) values (
        tg_op,
        case when tg_op = 'INSERT' then new.id_pasien else old.id_pasien end,
        case when tg_op = 'INSERT' then new.nama_pasien else old.nama_pasien end,
        case when tg_op = 'INSERT' then new.jenis_kelamin else old.jenis_kelamin end,
        case when tg_op = 'INSERT' then new.usia else old.usia end,
        case when tg_op = 'INSERT' then new.alamat else old.alamat end,
        case when tg_op = 'INSERT' then new.no_hp else old.no_hp end,
        case when tg_op = 'INSERT' then new.penyakit else old.penyakit end,
        case when tg_op = 'INSERT' then new.id_dokter else old.id_dokter end,
        case when tg_op = 'INSERT' then new.id_ruangan else old.id_ruangan end
    );

    if tg_op = 'DELETE' then
        return old;
    else
        return new;
    end if;
end;
$$ language plpgsql;

--membuat trigger untuk mengeksekusi function--
create trigger trg_log_pasien
after insert or update or delete on pasien
for each row
execute function log_pasien_all();

--insert, update, dan delete untuk mengecek apakah trigger telah berhasil menjalankan function--

--insert--
insert into v_pasien (id_pasien, nama_pasien, jenis_kelamin, usia) values
('P036', 'Dewi Anggraeni', 'P', 21),
('P037', 'Rizky Pratama', 'L', 34),
('P038', 'Salsa Amelia', 'P', 29),
('P039', 'Aldi Saputra', 'L', 42),
('P040', 'Mega Putri', 'P', 25);

--update--
update v_pasien
    set nama_pasien ='Dwi Anggriani', usia = 22
    where id_pasien = 'P036';

update v_pasien
    set nama_pasien ='Reski pratama', usia = 29
    where id_pasien = 'P037';

update v_pasien
    set nama_pasien ='Salsabila Alya', usia = 19
    where id_pasien = 'P038';

--delete--
delete from v_pasien
where id_pasien in ('P036','P037','P038','P039','P040');

--cek tabel log_pasien apakah perubahan telah tercatat--
select*from log_pasien;
 id_log |  aksi  |           waktu            | id_pasien |  nama_pasien   | jenis_kelamin | usia | alamat | no_hp | penyakit | id_dokter | id_ruangan
--------+--------+----------------------------+-----------+----------------+---------------+------+--------+-------+----------+-----------+------------
      1 | INSERT | 2025-12-07 23:02:09.544308 | P036      | Dewi Anggraeni | P             |   21 |        |       |          |           |
      2 | INSERT | 2025-12-07 23:02:09.544308 | P037      | Rizky Pratama  | L             |   34 |        |       |          |           |
      3 | INSERT | 2025-12-07 23:02:09.544308 | P038      | Salsa Amelia   | P             |   29 |        |       |          |           |
      4 | INSERT | 2025-12-07 23:02:09.544308 | P039      | Aldi Saputra   | L             |   42 |        |       |          |           |
      5 | INSERT | 2025-12-07 23:02:09.544308 | P040      | Mega Putri     | P             |   25 |        |       |          |           |
      6 | UPDATE | 2025-12-07 23:06:35.826919 | P036      | Dewi Anggraeni | P             |   21 |        |       |          |           |
      7 | UPDATE | 2025-12-07 23:06:46.596644 | P037      | Rizky Pratama  | L             |   34 |        |       |          |           |
      8 | UPDATE | 2025-12-07 23:07:04.517814 | P038      | Salsa Amelia   | P             |   29 |        |       |          |           |
      9 | DELETE | 2025-12-07 23:10:32.164735 | P039      | Aldi Saputra   | L             |   42 |        |       |          |           |
     10 | DELETE | 2025-12-07 23:10:32.164735 | P040      | Mega Putri     | P             |   25 |        |       |          |           |
     11 | DELETE | 2025-12-07 23:10:32.164735 | P036      | Dwi Anggriani  | P             |   22 |        |       |          |           |
     12 | DELETE | 2025-12-07 23:10:32.164735 | P037      | Reski pratama  | L             |   29 |        |       |          |           |
     13 | DELETE | 2025-12-07 23:10:32.164735 | P038      | Salsabila Alya | P             |   19 |        |       |          |           |
(13 rows)
