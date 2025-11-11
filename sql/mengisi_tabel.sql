use tugas1_rumah_sakit;

--mengisi tabel--
INSERT INTO pasien VALUES
     ('P001', 'Andi Saputra', 'L', 32, 'Jl. Melati No. 4, Makassar', '81234567890', 'Demam Berdarah', 'D005', 'R003'),
     ('P002', 'Siti Rahmawati', 'P', 45, 'Jl. Anggrek No. 12, Gowa', '81298765432', 'Diabetes', 'D003', 'R002'),
     ('P003', 'Budi Santoso', 'L', 28, 'Jl. Cendana No. 8, Maros', '82198765432', 'Asma', 'D001', 'R021'),
     ('P004', 'Rina Marlina', 'P', 36, 'Jl. Mawar No. 15, Makassar', '85678912345', 'Hipertensi', 'D002', 'R004'),
     ('P005', 'Joko Pranoto', 'L', 50, 'Jl. Dahlia No. 9, Gowa', '81345678901', 'Stroke', 'D009', 'R013'),
     ('P006', 'Dewi Lestari', 'P', 27, 'Jl. Flamboyan No. 3, Maros', '82134567890', 'Tifus', 'D005', 'R003'),
     ('P007', 'Ahmad Fauzi', 'L', 33, 'Jl. Kenanga No. 10, Makassar', '81298712345', 'COVID-19', 'D004', 'R006'),
     ('P008', 'Putri Amelia', 'P', 22, 'Jl. Teratai No. 6, Gowa', '81234599876', 'Infeksi Kulit', 'D013', 'R007'),
     ('P009', 'Rahmat Hidayat', 'L', 29, 'Jl. Kamboja No. 17, Makassar', '82345678910', 'TBC', 'D001', 'R021'),
     ('P010', 'Nia Kurnia', 'P', 40, 'Jl. Angsana No. 2, Maros', '81376543210', 'Anemia', 'D003', 'R002'),
     ('P011', 'Yanto Prabowo', 'L', 35, 'Jl. Merpati No. 11, Gowa', '81277788899', 'Gastritis', 'D005', 'R003'),
     ('P012', 'Melati Ayu', 'P', 30, 'Jl. Cempaka No. 5, Makassar', '82199900011', 'Demam', 'D004', 'R006'),
     ('P013', 'Dedi Kurniawan', 'L', 26, 'Jl. Kemuning No. 14, Maros', '81255577799', 'Luka Bakar', 'D006', 'R008'),
     ('P014', 'Nur Aisyah', 'P', 21, 'Jl. Pandan No. 18, Gowa', '81233344455', 'Demam', 'D004', 'R006'),
     ('P015', 'Fajar Setiawan', 'L', 47, 'Jl. Ketapang No. 9, Makassar', '81245678912', 'Diabetes', 'D003', 'R002'),
     ('P016', 'Yuliana Sari', 'P', 38, 'Jl. Mangga No. 7, Maros', '82166677788', 'Migrain', 'D002', 'R004'),
     ('P017', 'Hasan Basri', 'L', 42, 'Jl. Melur No. 16, Makassar', '81299988877', 'Hipertensi', 'D010', 'R011'),
     ('P018', 'Ratna Dewi', 'P', 25, 'Jl. Jambu No. 19, Gowa', '81255512345', 'Anemia', 'D003', 'R002'),
     ('P019', 'Arman Rahim', 'L', 31, 'Jl. Nangka No. 13, Maros', '81244433322', 'Tifus', 'D005', 'R003'),
     ('P020', 'Sri Wahyuni', 'P', 29, 'Jl. Belimbing No. 1, Makassar', '81200011122', 'COVID-19', 'D004', 'R006'),
     ('P021', 'Rafi Nugraha', 'L', 8, 'Jl. Rambutan No. 11, Gowa', '81222334455', 'Demam Tinggi', 'D007', 'R009'),
     ('P022', 'Dinda Safitri', 'P', 6, 'Jl. Jeruk No. 22, Maros', '81233445566', 'Batuk', 'D007', 'R010'),
     ('P023', 'Laila Prameswari', 'P', 31, 'Jl. Pinang No. 3, Makassar', '81244556677', 'Hamil', 'D008', 'R014'),
     ('P024', 'Eko Purnomo', 'L', 37, 'Jl. Belimbing No. 7, Gowa', '81255667788', 'Cedera Kaki', 'D015', 'R016'),
     ('P025', 'Rosi Amelia', 'P', 44, 'Jl. Nusa Indah No. 19, Maros', '81266778899', 'Gigi Berlubang', 'D014', 'R015'),
     ('P026', 'Farhan Yusuf', 'L', 52, 'Jl. Kelapa No. 12, Makassar', '81277889900', 'Gangguan Saraf', 'D009', 'R013'),
     ('P027', 'Lina Kartika', 'P', 48, 'Jl. Sirsak No. 4, Gowa', '81288990011', 'Gangguan Jantung', 'D010', 'R012'),
     ('P028', 'Ahmad Zulkifli', 'L', 56, 'Jl. Pisang No. 8, Maros', '81299001122', 'Stroke', 'D009', 'R013'),
     ('P029', 'Nabila Fitri', 'P', 23, 'Jl. Pepaya No. 9, Gowa', '81211122233', 'Radang Tenggorokan', 'D011', 'R018'),
     ('P030', 'Fathur Rahman', 'L', 34, 'Jl. Durian No. 5, Makassar', '81222233344', 'Katarak', 'D012', 'R019');

INSERT INTO dokter VALUES
    ('D001', 'dr. Bambang Hidayat', 'Paru-paru', 81223344556, '08:00:00', '14:00:00'),
    ('D002', 'dr. Sulastri Ahmad', 'Penyakit Dalam', 81233344455, '09:00:00', '15:00:00'),
    ('D003', 'dr. Hendra Kusuma', 'Gizi Klinik', 81244455566, '07:30:00', '13:30:00'),
    ('D004', 'dr. Intan Permata', 'Umum', 81255566677, '10:00:00', '17:00:00'),
    ('D005', 'dr. Rudi Prasetyo', 'Infeksi Tropis', 81266677788, '08:30:00', '14:30:00'),
    ('D006', 'dr. Nurul Fauziah', 'Bedah Umum', 81277788899, '09:00:00', '16:00:00'),
    ('D007', 'dr. Arif Setiawan', 'Anak', 81288899900, '07:00:00', '13:00:00'),
    ('D008', 'dr. Fitri Handayani', 'Kandungan', 81299900011, '08:00:00', '15:00:00'),
    ('D009', 'dr. Dimas Putra', 'Saraf', 81233300122, '10:00:00', '18:00:00'),
    ('D010', 'dr. Laila Amalia', 'Jantung', 81244411133, '07:30:00', '13:30:00'),
    ('D011', 'dr. Rizky Aditya', 'THT', 81255522244, '09:00:00', '15:00:00'),
    ('D012', 'dr. Maya Rosdiana', 'Mata', 81266633355, '08:00:00', '14:00:00'),
    ('D013', 'dr. Wahyu Saputra', 'Kulit & Kelamin', 81277744466, '11:00:00', '17:00:00'),
    ('D014', 'dr. Dwi Lestari', 'Gigi', 81288855577, '09:00:00', '15:00:00'),
    ('D015', 'dr. Putra Ramadhan', 'Ortopedi', 81299966688, '08:00:00', '14:00:00');

INSERT INTO ruangan VALUES
    ('R001', 'Ruang Isolasi Paru', 'Isolasi', 2, 500000),
    ('R002', 'Ruang Gizi', 'Rawat Inap', 4, 350000),
    ('R003', 'Ruang Infeksi', 'Rawat Inap', 3, 400000),
    ('R004', 'Ruang Penyakit Dalam', 'Rawat Inap', 3, 375000),
    ('R005', 'Ruang Bedah Umum', 'Operasi', 2, 600000),
    ('R006', 'Ruang Umum A', 'Rawat Inap', 5, 300000),
    ('R007', 'Ruang Kulit', 'Rawat Jalan', 4, 250000),
    ('R008', 'Ruang Luka Bakar', 'Operasi', 2, 650000),
    ('R009', 'Ruang Anak A', 'Rawat Inap', 6, 325000),
    ('R010', 'Ruang Anak B', 'Rawat Inap', 4, 320000),
    ('R011', 'Ruang Jantung A', 'Rawat Inap', 3, 500000),
    ('R012', 'Ruang Jantung B', 'ICU', 2, 800000),
    ('R013', 'Ruang Saraf', 'Rawat Inap', 4, 450000),
    ('R014', 'Ruang Kandungan', 'Rawat Inap', 5, 380000),
    ('R015', 'Ruang Gigi', 'Rawat Jalan', 3, 200000),
    ('R016', 'Ruang Ortopedi', 'Rawat Inap', 4, 500000),
    ('R017', 'Ruang Bedah Minor', 'Operasi', 2, 550000),
    ('R018', 'Ruang THT', 'Rawat Jalan', 3, 250000),
    ('R019', 'Ruang Mata', 'Rawat Jalan', 3, 230000),
    ('R020', 'Ruang Umum B', 'Rawat Inap', 5, 300000),
    ('R021', 'Ruang Paru-paru', 'Rawat Inap', 4, 420000),
    ('R022', 'Ruang IGD', 'Gawat Darurat', 6, 600000),
    ('R023', 'Ruang ICU', 'Intensif', 2, 900000),
    ('R024', 'Ruang Rawat VIP', 'VIP', 2, 1000000),
    ('R025', 'Ruang Bayi', 'Rawat Inap', 5, 350000);

--menampilkan tabel--
select*from pasien;
+-----------+------------------+---------------+------+-------------------------------+-------------+--------------------+-----------+------------+
| id_pasien | nama_pasien      | jenis_kelamin | usia | alamat                        | no_hp       | penyakit           | id_dokter | id_ruangan |
+-----------+------------------+---------------+------+-------------------------------+-------------+--------------------+-----------+------------+
| P001      | Andi Saputra     | L             |   32 | Jl. Melati No. 4, Makassar    | 81234567890 | Demam Berdarah     | D005      | R003       |
| P002      | Siti Rahmawati   | P             |   45 | Jl. Anggrek No. 12, Gowa      | 81298765432 | Diabetes           | D003      | R002       |
| P003      | Budi Santoso     | L             |   28 | Jl. Cendana No. 8, Maros      | 82198765432 | Asma               | D001      | R021       |
| P004      | Rina Marlina     | P             |   36 | Jl. Mawar No. 15, Makassar    | 85678912345 | Hipertensi         | D002      | R004       |
| P005      | Joko Pranoto     | L             |   50 | Jl. Dahlia No. 9, Gowa        | 81345678901 | Stroke             | D009      | R013       |
| P006      | Dewi Lestari     | P             |   27 | Jl. Flamboyan No. 3, Maros    | 82134567890 | Tifus              | D005      | R003       |
| P007      | Ahmad Fauzi      | L             |   33 | Jl. Kenanga No. 10, Makassar  | 81298712345 | COVID-19           | D004      | R006       |
| P008      | Putri Amelia     | P             |   22 | Jl. Teratai No. 6, Gowa       | 81234599876 | Infeksi Kulit      | D013      | R007       |
| P009      | Rahmat Hidayat   | L             |   29 | Jl. Kamboja No. 17, Makassar  | 82345678910 | TBC                | D001      | R021       |
| P010      | Nia Kurnia       | P             |   40 | Jl. Angsana No. 2, Maros      | 81376543210 | Anemia             | D003      | R002       |
| P011      | Yanto Prabowo    | L             |   35 | Jl. Merpati No. 11, Gowa      | 81277788899 | Gastritis          | D005      | R003       |
| P012      | Melati Ayu       | P             |   30 | Jl. Cempaka No. 5, Makassar   | 82199900011 | Demam              | D004      | R006       |
| P013      | Dedi Kurniawan   | L             |   26 | Jl. Kemuning No. 14, Maros    | 81255577799 | Luka Bakar         | D006      | R008       |
| P014      | Nur Aisyah       | P             |   21 | Jl. Pandan No. 18, Gowa       | 81233344455 | Demam              | D004      | R006       |
| P015      | Fajar Setiawan   | L             |   47 | Jl. Ketapang No. 9, Makassar  | 81245678912 | Diabetes           | D003      | R002       |
| P016      | Yuliana Sari     | P             |   38 | Jl. Mangga No. 7, Maros       | 82166677788 | Migrain            | D002      | R004       |
| P017      | Hasan Basri      | L             |   42 | Jl. Melur No. 16, Makassar    | 81299988877 | Hipertensi         | D010      | R011       |
| P018      | Ratna Dewi       | P             |   25 | Jl. Jambu No. 19, Gowa        | 81255512345 | Anemia             | D003      | R002       |
| P019      | Arman Rahim      | L             |   31 | Jl. Nangka No. 13, Maros      | 81244433322 | Tifus              | D005      | R003       |
| P020      | Sri Wahyuni      | P             |   29 | Jl. Belimbing No. 1, Makassar | 81200011122 | COVID-19           | D004      | R006       |
| P021      | Rafi Nugraha     | L             |    8 | Jl. Rambutan No. 11, Gowa     | 81222334455 | Demam Tinggi       | D007      | R009       |
| P022      | Dinda Safitri    | P             |    6 | Jl. Jeruk No. 22, Maros       | 81233445566 | Batuk              | D007      | R010       |
| P023      | Laila Prameswari | P             |   31 | Jl. Pinang No. 3, Makassar    | 81244556677 | Hamil              | D008      | R014       |
| P024      | Eko Purnomo      | L             |   37 | Jl. Belimbing No. 7, Gowa     | 81255667788 | Cedera Kaki        | D015      | R016       |
| P025      | Rosi Amelia      | P             |   44 | Jl. Nusa Indah No. 19, Maros  | 81266778899 | Gigi Berlubang     | D014      | R015       |
| P026      | Farhan Yusuf     | L             |   52 | Jl. Kelapa No. 12, Makassar   | 81277889900 | Gangguan Saraf     | D009      | R013       |
| P027      | Lina Kartika     | P             |   48 | Jl. Sirsak No. 4, Gowa        | 81288990011 | Gangguan Jantung   | D010      | R012       |
| P028      | Ahmad Zulkifli   | L             |   56 | Jl. Pisang No. 8, Maros       | 81299001122 | Stroke             | D009      | R013       |
| P029      | Nabila Fitri     | P             |   23 | Jl. Pepaya No. 9, Gowa        | 81211122233 | Radang Tenggorokan | D011      | R018       |
| P030      | Fathur Rahman    | L             |   34 | Jl. Durian No. 5, Makassar    | 81222233344 | Katarak            | D012      | R019       |
+-----------+------------------+---------------+------+-------------------------------+-------------+--------------------+-----------+------------+

select*from dokter;
+-----------+---------------------+-----------------+-------------+-------------------+---------------------+
| id_dokter | nama_dokter         | spesialis       | no_hp       | jam_mulai_praktek | jam_selesai_praktek |
+-----------+---------------------+-----------------+-------------+-------------------+---------------------+
| D001      | dr. Bambang Hidayat | Paru-paru       | 81223344556 | 08:00:00          | 14:00:00            |
| D002      | dr. Sulastri Ahmad  | Penyakit Dalam  | 81233344455 | 09:00:00          | 15:00:00            |
| D003      | dr. Hendra Kusuma   | Gizi Klinik     | 81244455566 | 07:30:00          | 13:30:00            |
| D004      | dr. Intan Permata   | Umum            | 81255566677 | 10:00:00          | 17:00:00            |
| D005      | dr. Rudi Prasetyo   | Infeksi Tropis  | 81266677788 | 08:30:00          | 14:30:00            |
| D006      | dr. Nurul Fauziah   | Bedah Umum      | 81277788899 | 09:00:00          | 16:00:00            |
| D007      | dr. Arif Setiawan   | Anak            | 81288899900 | 07:00:00          | 13:00:00            |
| D008      | dr. Fitri Handayani | Kandungan       | 81299900011 | 08:00:00          | 15:00:00            |
| D009      | dr. Dimas Putra     | Saraf           | 81233300122 | 10:00:00          | 18:00:00            |
| D010      | dr. Laila Amalia    | Jantung         | 81244411133 | 07:30:00          | 13:30:00            |
| D011      | dr. Rizky Aditya    | THT             | 81255522244 | 09:00:00          | 15:00:00            |
| D012      | dr. Maya Rosdiana   | Mata            | 81266633355 | 08:00:00          | 14:00:00            |
| D013      | dr. Wahyu Saputra   | Kulit & Kelamin | 81277744466 | 11:00:00          | 17:00:00            |
| D014      | dr. Dwi Lestari     | Gigi            | 81288855577 | 09:00:00          | 15:00:00            |
| D015      | dr. Putra Ramadhan  | Ortopedi        | 81299966688 | 08:00:00          | 14:00:00            |
+-----------+---------------------+-----------------+-------------+-------------------+---------------------+

select*from ruangan;
+------------+----------------------+---------------+-----------+----------------+
| id_ruangan | nama_ruangan         | tipe_ruangan  | kapasitas | tarif_per_hari |
+------------+----------------------+---------------+-----------+----------------+
| R001       | Ruang Isolasi Paru   | Isolasi       |         2 |         500000 |
| R002       | Ruang Gizi           | Rawat Inap    |         4 |         350000 |
| R003       | Ruang Infeksi        | Rawat Inap    |         3 |         400000 |
| R004       | Ruang Penyakit Dalam | Rawat Inap    |         3 |         375000 |
| R005       | Ruang Bedah Umum     | Operasi       |         2 |         600000 |
| R006       | Ruang Umum A         | Rawat Inap    |         5 |         300000 |
| R007       | Ruang Kulit          | Rawat Jalan   |         4 |         250000 |
| R008       | Ruang Luka Bakar     | Operasi       |         2 |         650000 |
| R009       | Ruang Anak A         | Rawat Inap    |         6 |         325000 |
| R010       | Ruang Anak B         | Rawat Inap    |         4 |         320000 |
| R011       | Ruang Jantung A      | Rawat Inap    |         3 |         500000 |
| R012       | Ruang Jantung B      | ICU           |         2 |         800000 |
| R013       | Ruang Saraf          | Rawat Inap    |         4 |         450000 |
| R014       | Ruang Kandungan      | Rawat Inap    |         5 |         380000 |
| R015       | Ruang Gigi           | Rawat Jalan   |         3 |         200000 |
| R016       | Ruang Ortopedi       | Rawat Inap    |         4 |         500000 |
| R017       | Ruang Bedah Minor    | Operasi       |         2 |         550000 |
| R018       | Ruang THT            | Rawat Jalan   |         3 |         250000 |
| R019       | Ruang Mata           | Rawat Jalan   |         3 |         230000 |
| R020       | Ruang Umum B         | Rawat Inap    |         5 |         300000 |
| R021       | Ruang Paru-paru      | Rawat Inap    |         4 |         420000 |
| R022       | Ruang IGD            | Gawat Darurat |         6 |         600000 |
| R023       | Ruang ICU            | Intensif      |         2 |         900000 |
| R024       | Ruang Rawat VIP      | VIP           |         2 |        1000000 |
| R025       | Ruang Bayi           | Rawat Inap    |         5 |         350000 |
+------------+----------------------+---------------+-----------+----------------+
