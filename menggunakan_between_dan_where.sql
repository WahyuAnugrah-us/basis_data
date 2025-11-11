use tugas1_rumah_sakit;

--menampilkan pasien laki laki yang menggunakan ruangan dengan kapasitas diatas 2 dengan rentang usia antara 17 dan 35--
--tampilkan nama pasien, jenis kelamin, penyakit, nama dokter, dan tipe ruangan yang digunakan--
 select pasien.nama_pasien, pasien.jenis_kelamin, pasien.penyakit, dokter.nama_dokter, ruangan.tipe_ruangan from pasien
     join dokter on pasien.id_dokter = dokter.id_dokter
     join ruangan on pasien.id_ruangan = ruangan.id_ruangan
     where pasien.jenis_kelamin = 'L'
     and ruangan.kapasitas > 2
     and pasien.usia between 17 and 35;
+----------------+---------------+----------------+---------------------+--------------+
| nama_pasien    | jenis_kelamin | penyakit       | nama_dokter         | tipe_ruangan |
+----------------+---------------+----------------+---------------------+--------------+
| Andi Saputra   | L             | Demam Berdarah | dr. Rudi Prasetyo   | Rawat Inap   |
| Budi Santoso   | L             | Asma           | dr. Bambang Hidayat | Rawat Inap   |
| Ahmad Fauzi    | L             | COVID-19       | dr. Intan Permata   | Rawat Inap   |
| Rahmat Hidayat | L             | TBC            | dr. Bambang Hidayat | Rawat Inap   |
| Yanto Prabowo  | L             | Gastritis      | dr. Rudi Prasetyo   | Rawat Inap   |
| Arman Rahim    | L             | Tifus          | dr. Rudi Prasetyo   | Rawat Inap   |
| Fathur Rahman  | L             | Katarak        | dr. Maya Rosdiana   | Rawat Jalan  |
+----------------+---------------+----------------+---------------------+--------------+
