--user--
--create--
create user wahyu with password '123' createdb;
create user wahyuni with password 'yss' createdb;
create user fauziah with password 'uzii' createdb;

--mengubah password--
alter user wahyu with password '111';

--group--
--membuat group--
reate group anak_magang

--membuat user dan langsung dimasukan ke group serta tenggat waktu--
create user penyusup
  with password 'penyusup123'
  createdb
  in group anak_magang
  valid until '2025-12-13';

--memasukan user yang sudah ada ke dalam group--
alter group anak_magang add user wahyuni,fauziah,wahyu;

--mengeluarkan user dari group--
alter group anak_magang drop user wahyu;

--memberi dan menghapus akses pada user--
grant select on dokter to wahyu;
revoke select on dokter from wahyu;

--memberi dan menghapus akses pada group--
grant all on dokter to group anak_magang;
revoke all on dokter from group anak_magang;

--memberi dan menghapus akses pada publik--
grant all on dokter to public;
revoke all on dokter from public;

--back up--
rumah_sakit=# \q
C:\Program Files\PostgreSQL\18\pgAdmin 4\runtime>pg_dump -U postgres -f "D:\rumah_sakit.sql" rumah_sakit

C:\Program Files\PostgreSQL\18\pgAdmin 4\runtime>psql -U postgres -d rumah_sakit
psql (18.1)
WARNING: Console code page (437) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

rumah_sakit=#

--membuang sampah dalam direktori database--
vacuum;

vacuum analyze;
