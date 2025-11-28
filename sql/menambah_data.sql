
--menambah tabel--
insert into ruangan values
    ('R026', 'Ruang Anak C', 'Rawat Inap', 2, 300000),
    ('R027', 'Ruang Jantung C', 'Rawat Inap', 3, 400000),
    ('R028', 'Ruang IGD', 'Gawat Darurat', 4, 500000),
    ('R029', 'Ruang ICU', 'Intensif', 4, 800000),
    ('R030', 'Ruang Bayi', 'Rawat Inap', 6, 300000);

insert into dokter values
    ('D016','dr. Farhan Pratama','Bedah Saraf','81211122233','08:00:00','14:00:00'),
    ('D017','dr. Siti Komariah','Rehabilitasi Medis','81222233344','09:00:00','15:00:00'),
    ('D018','dr. Agus Wijaya','Psikiatri','81233344455','10:00:00','16:00:00'),
    ('D019','dr. Nina Lestari','Gizi Klinik','81244455566','07:30:00','13:30:00'),
    ('D020','dr. Diana Kusumawati','Penyakit Dalam','81255566677','08:00:00','14:00:00'),
    ('D021','dr. Budi Raharjo','Jantung','81266677788','09:00:00','15:00:00'),
    ('D022','dr. Ratna Dewi','Anak','81277788899','07:00:00','13:00:00'),
    ('D023','dr. Fajar Santoso','Saraf','81288899911','10:00:00','17:00:00'),
    ('D024','dr. Lilis Nuraini','Kandungan','81299911122','08:00:00','15:00:00'),
    ('D025','dr. Andi Prabowo','Bedah Umum','81211133344','09:00:00','16:00:00'),
    ('D026','dr. Diah Puspitasari','Kulit & Kelamin','81222244455','11:00:00','17:00:00'),
    ('D027','dr. Rian Nugroho','Paru-paru','81233355566','08:00:00','14:00:00'),
    ('D028','dr. Ayu Kartika','Mata','81244466677','08:30:00','14:30:00'),
    ('D029','dr. Hendra Firmansyah','Gigi','81255577788','09:00:00','15:00:00'),
    ('D030','dr. Silvia Ramadhani','Umum','81266688899','10:00:00','17:00:00');

--menampilkan tabel--

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
| R026       | Ruang Anak C         | Rawat Inap    |         2 |         300000 |
| R027       | Ruang Jantung C      | Rawat Inap    |         3 |         400000 |
| R028       | Ruang IGD            | Gawat Darurat |         4 |         500000 |
| R029       | Ruang ICU            | Intensif      |         4 |         800000 |
| R030       | Ruang Bayi           | Rawat Inap    |         6 |         300000 |
+------------+----------------------+---------------+-----------+----------------+

select*from dokter;
+-----------+-----------------------+--------------------+-------------+-------------------+---------------------+
| id_dokter | nama_dokter           | spesialis          | no_hp       | jam_mulai_praktek | jam_selesai_praktek |
+-----------+-----------------------+--------------------+-------------+-------------------+---------------------+
| D001      | dr. Bambang Hidayat   | Paru-paru          | 81223344556 | 08:00:00          | 14:00:00            |
| D002      | dr. Sulastri Ahmad    | Penyakit Dalam     | 81233344455 | 09:00:00          | 15:00:00            |
| D003      | dr. Hendra Kusuma     | Gizi Klinik        | 81244455566 | 07:30:00          | 13:30:00            |
| D004      | dr. Intan Permata     | Umum               | 81255566677 | 10:00:00          | 17:00:00            |
| D005      | dr. Rudi Prasetyo     | Infeksi Tropis     | 81266677788 | 08:30:00          | 14:30:00            |
| D006      | dr. Nurul Fauziah     | Bedah Umum         | 81277788899 | 09:00:00          | 16:00:00            |
| D007      | dr. Arif Setiawan     | Anak               | 81288899900 | 07:00:00          | 13:00:00            |
| D008      | dr. Fitri Handayani   | Kandungan          | 81299900011 | 08:00:00          | 15:00:00            |
| D009      | dr. Dimas Putra       | Saraf              | 81233300122 | 10:00:00          | 18:00:00            |
| D010      | dr. Laila Amalia      | Jantung            | 81244411133 | 07:30:00          | 13:30:00            |
| D011      | dr. Rizky Aditya      | THT                | 81255522244 | 09:00:00          | 15:00:00            |
| D012      | dr. Maya Rosdiana     | Mata               | 81266633355 | 08:00:00          | 14:00:00            |
| D013      | dr. Wahyu Saputra     | Kulit & Kelamin    | 81277744466 | 11:00:00          | 17:00:00            |
| D014      | dr. Dwi Lestari       | Gigi               | 81288855577 | 09:00:00          | 15:00:00            |
| D015      | dr. Putra Ramadhan    | Ortopedi           | 81299966688 | 08:00:00          | 14:00:00            |
| D016      | dr. Farhan Pratama    | Bedah Saraf        | 81211122233 | 08:00:00          | 14:00:00            |
| D017      | dr. Siti Komariah     | Rehabilitasi Medis | 81222233344 | 09:00:00          | 15:00:00            |
| D018      | dr. Agus Wijaya       | Psikiatri          | 81233344455 | 10:00:00          | 16:00:00            |
| D019      | dr. Nina Lestari      | Gizi Klinik        | 81244455566 | 07:30:00          | 13:30:00            |
| D020      | dr. Diana Kusumawati  | Penyakit Dalam     | 81255566677 | 08:00:00          | 14:00:00            |
| D021      | dr. Budi Raharjo      | Jantung            | 81266677788 | 09:00:00          | 15:00:00            |
| D022      | dr. Ratna Dewi        | Anak               | 81277788899 | 07:00:00          | 13:00:00            |
| D023      | dr. Fajar Santoso     | Saraf              | 81288899911 | 10:00:00          | 17:00:00            |
| D024      | dr. Lilis Nuraini     | Kandungan          | 81299911122 | 08:00:00          | 15:00:00            |
| D025      | dr. Andi Prabowo      | Bedah Umum         | 81211133344 | 09:00:00          | 16:00:00            |
| D026      | dr. Diah Puspitasari  | Kulit & Kelamin    | 81222244455 | 11:00:00          | 17:00:00            |
| D027      | dr. Rian Nugroho      | Paru-paru          | 81233355566 | 08:00:00          | 14:00:00            |
| D028      | dr. Ayu Kartika       | Mata               | 81244466677 | 08:30:00          | 14:30:00            |
| D029      | dr. Hendra Firmansyah | Gigi               | 81255577788 | 09:00:00          | 15:00:00            |
| D030      | dr. Silvia Ramadhani  | Umum               | 81266688899 | 10:00:00          | 17:00:00            |
+-----------+-----------------------+--------------------+-------------+-------------------+---------------------+

