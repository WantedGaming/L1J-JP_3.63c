@echo on
C:\xampp\xampp_start
C:\xampp\mysql\bin\mysqld
C:\xampp\mysql\bin\mysql -u root -e "DROP DATABASE l1jdb_363";
C:\xampp\mysql\bin\mysql -u root -e "CREATE DATABASE IF NOT EXISTS l1jdb_363";
C:\xampp\mysql\bin\mysql -u root -p l1jdb_363 < C:\Lineage\L1J-JP_3.63c\db\l1jdb_363.sql
pause