use tugas1_rumah_sakit;


--menampilkan nama pasien, penyakit pasien, usia pasien, nama dokter, nomor hp dokter, nama ruangan, dan tarif ruangan perhari--
select pasien.nama_pasien, pasien.penyakit, pasien.usia, dokter.nama_dokter, dokter.no_hp, ruangan.nama_ruangan, ruangan.tarif_per_hari
    from pasien, dokter, ruangan
    where pasien.id_dokter = dokter.id_dokter and pasien.id_ruangan = ruangan.id_ruangan;
    
+------------------+--------------------+------+---------------------+-------------+----------------------+----------------+
| nama_pasien      | penyakit           | usia | nama_dokter         | no_hp       | nama_ruangan         | tarif_per_hari |
+------------------+--------------------+------+---------------------+-------------+----------------------+----------------+
| Andi Saputra     | Demam Berdarah     |   32 | dr. Rudi Prasetyo   | 81266677788 | Ruang Infeksi        |         400000 |
| Siti Rahmawati   | Diabetes           |   45 | dr. Hendra Kusuma   | 81244455566 | Ruang Gizi           |         350000 |
| Budi Santoso     | Asma               |   28 | dr. Bambang Hidayat | 81223344556 | Ruang Paru-paru      |         420000 |
| Rina Marlina     | Hipertensi         |   36 | dr. Sulastri Ahmad  | 81233344455 | Ruang Penyakit Dalam |         375000 |
| Joko Pranoto     | Stroke             |   50 | dr. Dimas Putra     | 81233300122 | Ruang Saraf          |         450000 |
| Dewi Lestari     | Tifus              |   27 | dr. Rudi Prasetyo   | 81266677788 | Ruang Infeksi        |         400000 |
| Ahmad Fauzi      | COVID-19           |   33 | dr. Intan Permata   | 81255566677 | Ruang Umum A         |         300000 |
| Putri Amelia     | Infeksi Kulit      |   22 | dr. Wahyu Saputra   | 81277744466 | Ruang Kulit          |         250000 |
| Rahmat Hidayat   | TBC                |   29 | dr. Bambang Hidayat | 81223344556 | Ruang Paru-paru      |         420000 |
| Nia Kurnia       | Anemia             |   40 | dr. Hendra Kusuma   | 81244455566 | Ruang Gizi           |         350000 |
| Yanto Prabowo    | Gastritis          |   35 | dr. Rudi Prasetyo   | 81266677788 | Ruang Infeksi        |         400000 |
| Melati Ayu       | Demam              |   30 | dr. Intan Permata   | 81255566677 | Ruang Umum A         |         300000 |
| Dedi Kurniawan   | Luka Bakar         |   26 | dr. Nurul Fauziah   | 81277788899 | Ruang Luka Bakar     |         650000 |
| Nur Aisyah       | Demam              |   21 | dr. Intan Permata   | 81255566677 | Ruang Umum A         |         300000 |
| Fajar Setiawan   | Diabetes           |   47 | dr. Hendra Kusuma   | 81244455566 | Ruang Gizi           |         350000 |
| Yuliana Sari     | Migrain            |   38 | dr. Sulastri Ahmad  | 81233344455 | Ruang Penyakit Dalam |         375000 |
| Hasan Basri      | Hipertensi         |   42 | dr. Laila Amalia    | 81244411133 | Ruang Jantung A      |         500000 |
| Ratna Dewi       | Anemia             |   25 | dr. Hendra Kusuma   | 81244455566 | Ruang Gizi           |         350000 |
| Arman Rahim      | Tifus              |   31 | dr. Rudi Prasetyo   | 81266677788 | Ruang Infeksi        |         400000 |
| Sri Wahyuni      | COVID-19           |   29 | dr. Intan Permata   | 81255566677 | Ruang Umum A         |         300000 |
| Rafi Nugraha     | Demam Tinggi       |    8 | dr. Arif Setiawan   | 81288899900 | Ruang Anak A         |         325000 |
| Dinda Safitri    | Batuk              |    6 | dr. Arif Setiawan   | 81288899900 | Ruang Anak B         |         320000 |
| Laila Prameswari | Hamil              |   31 | dr. Fitri Handayani | 81299900011 | Ruang Kandungan      |         380000 |
| Eko Purnomo      | Cedera Kaki        |   37 | dr. Putra Ramadhan  | 81299966688 | Ruang Ortopedi       |         500000 |
| Rosi Amelia      | Gigi Berlubang     |   44 | dr. Dwi Lestari     | 81288855577 | Ruang Gigi           |         200000 |
| Farhan Yusuf     | Gangguan Saraf     |   52 | dr. Dimas Putra     | 81233300122 | Ruang Saraf          |         450000 |
| Lina Kartika     | Gangguan Jantung   |   48 | dr. Laila Amalia    | 81244411133 | Ruang Jantung B      |         800000 |
| Ahmad Zulkifli   | Stroke             |   56 | dr. Dimas Putra     | 81233300122 | Ruang Saraf          |         450000 |
| Nabila Fitri     | Radang Tenggorokan |   23 | dr. Rizky Aditya    | 81255522244 | Ruang THT            |         250000 |
| Fathur Rahman    | Katarak            |   34 | dr. Maya Rosdiana   | 81266633355 | Ruang Mata           |         230000 |
| Intan Maharani   | Aritmia            |   27 | dr. Budi Raharjo    | 81266677788 | Ruang Jantung A      |         500000 |
| Rizky Ramadan    | Demam              |   19 | dr. Intan Permata   | 81255566677 | Ruang Umum A         |         300000 |
| Ayu Lestari      | Gangguan Saraf     |   30 | dr. Fajar Santoso   | 81288899911 | Ruang Saraf          |         450000 |
| M. Irfan         | Infeksi Paru       |   41 | dr. Rian Nugroho    | 81233355566 | Ruang Paru-paru      |         420000 |
| Vina Pratiwi     | Rehabilitasi Fisik |   32 | dr. Siti Komariah   | 81222233344 | Ruang Rehabilitasi   |         270000 |
+------------------+--------------------+------+---------------------+-------------+----------------------+----------------+


  --menampilkan nama pasien, nama penyakit, usia dan jenis kelamin pasien, nama dan nomor hp dokter--
  --yang pasiennya berusia 30 tahun atau lebih dan jenis kelaminnya peerempuan--
select pasien.nama_pasien, pasien.penyakit, pasien.usia, pasien.jenis_kelamin, dokter.nama_dokter, dokter.no_hp
    from pasien
    join dokter on pasien.id_dokter = dokter.id_dokter
    where pasien.usia >= 30 and pasien.jenis_kelamin = 'p';
+------------------+--------------------+------+---------------+---------------------+-------------+
| nama_pasien      | penyakit           | usia | jenis_kelamin | nama_dokter         | no_hp       |
+------------------+--------------------+------+---------------+---------------------+-------------+
| Siti Rahmawati   | Diabetes           |   45 | P             | dr. Hendra Kusuma   | 81244455566 |
| Rina Marlina     | Hipertensi         |   36 | P             | dr. Sulastri Ahmad  | 81233344455 |
| Nia Kurnia       | Anemia             |   40 | P             | dr. Hendra Kusuma   | 81244455566 |
| Melati Ayu       | Demam              |   30 | P             | dr. Intan Permata   | 81255566677 |
| Yuliana Sari     | Migrain            |   38 | P             | dr. Sulastri Ahmad  | 81233344455 |
| Laila Prameswari | Hamil              |   31 | P             | dr. Fitri Handayani | 81299900011 |
| Rosi Amelia      | Gigi Berlubang     |   44 | P             | dr. Dwi Lestari     | 81288855577 |
| Lina Kartika     | Gangguan Jantung   |   48 | P             | dr. Laila Amalia    | 81244411133 |
| Ayu Lestari      | Gangguan Saraf     |   30 | P             | dr. Fajar Santoso   | 81288899911 |
| Vina Pratiwi     | Rehabilitasi Fisik |   32 | P             | dr. Siti Komariah   | 81222233344 |
+------------------+--------------------+------+---------------+---------------------+-------------+

select
    pasien.nama_pasien, pasien.penyakit, pasien.usia, pasien.jenis_kelamin,
    dokter.nama_dokter, dokter.no_hp, timediff (dokter.jam_selesai_praktek, dokter.jam_mulai_praktek) as Durasi_kerja_dokter
    from pasien
    join dokter on pasien.id_dokter = dokter.id_dokter
    where pasien.usia >= 30 and pasien.jenis_kelamin = 'p';
+------------------+--------------------+------+---------------+---------------------+-------------+---------------------+
| nama_pasien      | penyakit           | usia | jenis_kelamin | nama_dokter         | no_hp       | Durasi_kerja_dokter |
+------------------+--------------------+------+---------------+---------------------+-------------+---------------------+
| Siti Rahmawati   | Diabetes           |   45 | P             | dr. Hendra Kusuma   | 81244455566 | 06:00:00            |
| Rina Marlina     | Hipertensi         |   36 | P             | dr. Sulastri Ahmad  | 81233344455 | 06:00:00            |
| Nia Kurnia       | Anemia             |   40 | P             | dr. Hendra Kusuma   | 81244455566 | 06:00:00            |
| Melati Ayu       | Demam              |   30 | P             | dr. Intan Permata   | 81255566677 | 07:00:00            |
| Yuliana Sari     | Migrain            |   38 | P             | dr. Sulastri Ahmad  | 81233344455 | 06:00:00            |
| Laila Prameswari | Hamil              |   31 | P             | dr. Fitri Handayani | 81299900011 | 07:00:00            |
| Rosi Amelia      | Gigi Berlubang     |   44 | P             | dr. Dwi Lestari     | 81288855577 | 06:00:00            |
| Lina Kartika     | Gangguan Jantung   |   48 | P             | dr. Laila Amalia    | 81244411133 | 06:00:00            |
| Ayu Lestari      | Gangguan Saraf     |   30 | P             | dr. Fajar Santoso   | 81288899911 | 07:00:00            |
| Vina Pratiwi     | Rehabilitasi Fisik |   32 | P             | dr. Siti Komariah   | 81222233344 | 06:00:00            |
+------------------+--------------------+------+---------------+---------------------+-------------+---------------------+


  --menampilkan nama pasien penyakit dan jenis kelamin pasien, nama dan nomor hp dokter, nama, kapasitas dan tarif ruangan--
  --yang jenis kelaminnya laki laki dan kapasitas ruangan diatas 3--
 select pasien.nama_pasien, pasien.penyakit, pasien.usia, pasien.jenis_kelamin, dokter.nama_dokter, dokter.no_hp, ruangan.nama_ruangan, ruangan.kapasitas, ruangan.tarif_per_hari
    from pasien
    join dokter on pasien.id_dokter = dokter.id_dokter
    join ruangan on pasien.id_ruangan = ruangan.id_ruangan
    where pasien.jenis_kelamin = 'L'
    and ruangan.kapasitas > 3;
+----------------+----------------+------+---------------+---------------------+-------------+-----------------+-----------+----------------+
| nama_pasien    | penyakit       | usia | jenis_kelamin | nama_dokter         | no_hp       | nama_ruangan    | kapasitas | tarif_per_hari |
+----------------+----------------+------+---------------+---------------------+-------------+-----------------+-----------+----------------+
| Budi Santoso   | Asma           |   28 | L             | dr. Bambang Hidayat | 81223344556 | Ruang Paru-paru |         4 |         420000 |
| Joko Pranoto   | Stroke         |   50 | L             | dr. Dimas Putra     | 81233300122 | Ruang Saraf     |         4 |         450000 |
| Ahmad Fauzi    | COVID-19       |   33 | L             | dr. Intan Permata   | 81255566677 | Ruang Umum A    |         5 |         300000 |
| Rahmat Hidayat | TBC            |   29 | L             | dr. Bambang Hidayat | 81223344556 | Ruang Paru-paru |         4 |         420000 |
| Fajar Setiawan | Diabetes       |   47 | L             | dr. Hendra Kusuma   | 81244455566 | Ruang Gizi      |         4 |         350000 |
| Rafi Nugraha   | Demam Tinggi   |    8 | L             | dr. Arif Setiawan   | 81288899900 | Ruang Anak A    |         6 |         325000 |
| Eko Purnomo    | Cedera Kaki    |   37 | L             | dr. Putra Ramadhan  | 81299966688 | Ruang Ortopedi  |         4 |         500000 |
| Farhan Yusuf   | Gangguan Saraf |   52 | L             | dr. Dimas Putra     | 81233300122 | Ruang Saraf     |         4 |         450000 |
| Ahmad Zulkifli | Stroke         |   56 | L             | dr. Dimas Putra     | 81233300122 | Ruang Saraf     |         4 |         450000 |
| Rizky Ramadan  | Demam          |   19 | L             | dr. Intan Permata   | 81255566677 | Ruang Umum A    |         5 |         300000 |
| M. Irfan       | Infeksi Paru   |   41 | L             | dr. Rian Nugroho    | 81233355566 | Ruang Paru-paru |         4 |         420000 |
+----------------+----------------+------+---------------+---------------------+-------------+-----------------+-----------+----------------+
