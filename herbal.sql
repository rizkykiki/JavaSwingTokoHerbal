-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jul 2019 pada 10.15
-- Versi server: 10.3.15-MariaDB
-- Versi PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `al_ihya`
--
CREATE DATABASE IF NOT EXISTS `al_ihya` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `al_ihya`;
--
-- Database: `dbregresi`
--
CREATE DATABASE IF NOT EXISTS `dbregresi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbregresi`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbcacat`
--

CREATE TABLE `tbcacat` (
  `tanggal` int(100) NOT NULL,
  `rata_suhu_ruangan` int(100) NOT NULL,
  `jumlah_cacat` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbcacat2`
--

CREATE TABLE `tbcacat2` (
  `no_sampel` int(11) NOT NULL,
  `data_permintaan_minyak` int(11) NOT NULL,
  `data_harga_minyak` int(11) NOT NULL,
  `data_pendapatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbcacat2`
--

INSERT INTO `tbcacat2` (`no_sampel`, `data_permintaan_minyak`, `data_harga_minyak`, `data_pendapatan`) VALUES
(1, 2, 3, 4),
(2, 3, 3333, 333);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbcacat`
--
ALTER TABLE `tbcacat`
  ADD PRIMARY KEY (`tanggal`);

--
-- Indeks untuk tabel `tbcacat2`
--
ALTER TABLE `tbcacat2`
  ADD PRIMARY KEY (`no_sampel`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbcacat`
--
ALTER TABLE `tbcacat`
  MODIFY `tanggal` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `tbcacat2`
--
ALTER TABLE `tbcacat2`
  MODIFY `no_sampel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Database: `herbal`
--
CREATE DATABASE IF NOT EXISTS `herbal` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `herbal`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customerr`
--

CREATE TABLE `customerr` (
  `kd_cus` varchar(14) NOT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `contact` varchar(13) DEFAULT NULL,
  `kategori` varchar(20) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `alamat` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customerr`
--

INSERT INTO `customerr` (`kd_cus`, `nama`, `contact`, `kategori`, `keterangan`, `alamat`) VALUES
('C001', 'lulu', '082242773898', 'Agen', 'konsultasi saja		', 'jonggol'),
('C002', 'balqis', '083345678989', 'Agen', 'sahara 10', 'depok'),
('C003', 'Joko', '089533344778', 'Agen', 'beli Madu Batuk 5	', 'Bekasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hitung`
--

CREATE TABLE `hitung` (
  `x` varchar(11) DEFAULT NULL,
  `y` varchar(11) DEFAULT NULL,
  `xy` varchar(11) DEFAULT NULL,
  `xx` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hitung`
--

INSERT INTO `hitung` (`x`, `y`, `xy`, `xx`) VALUES
('2', '2', '4', '4'),
('2', '4', '8', '4'),
('3', '3', '5', '16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lapopenjualan`
--

CREATE TABLE `lapopenjualan` (
  `kd_obat` varchar(14) NOT NULL,
  `nama` varchar(24) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jenis` varchar(12) DEFAULT '',
  `harga` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lapopenjualan`
--

INSERT INTO `lapopenjualan` (`kd_obat`, `nama`, `tanggal`, `jenis`, `harga`) VALUES
('0011', 'sahara', '2019-07-03', 'SARI KURMA', '26000'),
('0013', 'karomah', '2019-07-10', 'SARI KURMA', '26000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obatherbal`
--

CREATE TABLE `obatherbal` (
  `kd_obat` varchar(14) NOT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `stok` varchar(12) DEFAULT NULL,
  `manfaat` varchar(50) DEFAULT NULL,
  `jenisobat` varchar(15) DEFAULT NULL,
  `harga` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `obatherbal`
--

INSERT INTO `obatherbal` (`kd_obat`, `nama`, `stok`, `manfaat`, `jenisobat`, `harga`) VALUES
('0011', 'sahara', '18', 'meningkatkan stamina', 'SARI KURMA', '22000'),
('0012', 'al_jazira', '23', 'menambah stamina', 'SARI KURMA', '25000'),
('0013', 'karomah', '16', 'meningkatkan stamina', 'SARI KURMA', '26000'),
('0014', 'Tamr', '100', 'menguatkan penglihatan', 'SARI KURMA', '35000'),
('002', 'Habatusauda', '22', 'menyembuhkan kutil', 'HABATUSAUDA', '45000'),
('003', 'leriche', '31', 'mengobati kangker', 'MINYAK ZAITUN', '78000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prediksi`
--

CREATE TABLE `prediksi` (
  `kd_ramal` varchar(13) NOT NULL,
  `kd_barang` varchar(13) DEFAULT NULL,
  `tgl_ramal` varchar(13) DEFAULT NULL,
  `hasil` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblregister`
--

CREATE TABLE `tblregister` (
  `no` varchar(5) DEFAULT '',
  `nama` varchar(20) NOT NULL COMMENT 'Nama Karyawan',
  `password` varchar(20) NOT NULL COMMENT 'Password',
  `status` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblregister`
--

INSERT INTO `tblregister` (`no`, `nama`, `password`, `status`) VALUES
('1', 'lulu', '12345', 'admin'),
('2', 'balqis', '3211', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr`
--

CREATE TABLE `tr` (
  `kd_transaksi` varchar(14) NOT NULL,
  `nama` varchar(24) DEFAULT NULL,
  `kd_obat` varchar(14) DEFAULT NULL,
  `tahun` varchar(11) DEFAULT '',
  `bulan` varchar(11) DEFAULT '',
  `tanggal` varchar(11) DEFAULT '',
  `harga` varchar(12) DEFAULT NULL,
  `jumlah` varchar(12) DEFAULT '',
  `total` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tr`
--

INSERT INTO `tr` (`kd_transaksi`, `nama`, `kd_obat`, `tahun`, `bulan`, `tanggal`, `harga`, `jumlah`, `total`) VALUES
('IHYA001', 'sahara', '0011', '2019', 'juni', '31', '22000', '2', '44000'),
('IHYA002', 'sahara', '0011', '2019', 'juni', '31', '22000', '4', '88000'),
('IHYA004', 'tamr', '0014', '2019', 'juli', '13', '35000', '12', '420000'),
('IHYA005', 'tamr', '0014', '2019', 'juli', '14', '35000', '3', '105000'),
('IHYA006', 'al_jazira', '0012', '2019', 'mei', '19', '25000', '3', '75000'),
('IHYA007', 'tamr', '0014', '2019', 'juli', '21', '35000', '4', '140000'),
('IHYA008', 'karomah', '0013', '2019', 'mei', '12', '26000', '11', '286000'),
('IHYA009', 'sahara', '0011', '2019', 'juli', '20', '22000', '5', '110000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customerr`
--
ALTER TABLE `customerr`
  ADD PRIMARY KEY (`kd_cus`);

--
-- Indeks untuk tabel `lapopenjualan`
--
ALTER TABLE `lapopenjualan`
  ADD PRIMARY KEY (`kd_obat`);

--
-- Indeks untuk tabel `obatherbal`
--
ALTER TABLE `obatherbal`
  ADD PRIMARY KEY (`kd_obat`);

--
-- Indeks untuk tabel `prediksi`
--
ALTER TABLE `prediksi`
  ADD PRIMARY KEY (`kd_ramal`);

--
-- Indeks untuk tabel `tr`
--
ALTER TABLE `tr`
  ADD PRIMARY KEY (`kd_transaksi`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data untuk tabel `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'herbal', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"al_ihya\",\"dbregresi\",\"herbal\",\"phpmyadmin\",\"psb_smp\",\"sekolah\",\"spk_apotek\",\"test\",\"toko\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktur tabel @TABLE@\",\"latex_structure_continued_caption\":\"Struktur tabel @TABLE@ (dilanjutkan)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Isi tabel @TABLE@\",\"latex_data_continued_caption\":\"Isi tabel @TABLE@ (dilanjutkan)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"spk_apotek\",\"table\":\"persediaan\"},{\"db\":\"spk_apotek\",\"table\":\"peramalan\"},{\"db\":\"spk_apotek\",\"table\":\"penjualan\"},{\"db\":\"spk_apotek\",\"table\":\"pembelian\"},{\"db\":\"spk_apotek\",\"table\":\"admin\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('', '2019-07-24 08:13:11', '{\"lang\":\"id\"}'),
('root', '2019-07-22 08:12:38', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `psb_smp`
--
CREATE DATABASE IF NOT EXISTS `psb_smp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `psb_smp`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tadmin`
--

CREATE TABLE `tadmin` (
  `id` varchar(300) NOT NULL DEFAULT '',
  `nama` varchar(300) DEFAULT NULL,
  `jabatan` varchar(300) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tadmin`
--

INSERT INTO `tadmin` (`id`, `nama`, `jabatan`, `password`) VALUES
('Adm0001', 'huft', 'dsadas', 'wadaw');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tcalon_siswa`
--

CREATE TABLE `tcalon_siswa` (
  `idcalonsiswa` varchar(200) NOT NULL DEFAULT '',
  `nisn` varchar(30) NOT NULL,
  `clnnama_siswa` varchar(150) DEFAULT NULL,
  `asalsekolah` varchar(300) DEFAULT NULL,
  `gelombang` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tcalon_siswa`
--

INSERT INTO `tcalon_siswa` (`idcalonsiswa`, `nisn`, `clnnama_siswa`, `asalsekolah`, `gelombang`) VALUES
('CSW0001', '241412', 'joni', 'wirabuana', 'Gelombang 1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tformulir_pendaftaran`
--

CREATE TABLE `tformulir_pendaftaran` (
  `id_daftar` varchar(30) NOT NULL DEFAULT '',
  `nisn` varchar(15) NOT NULL,
  `nama_siswa` varchar(300) DEFAULT NULL,
  `berat_badan` varchar(30) DEFAULT NULL,
  `tinggi_badan` varchar(30) DEFAULT NULL,
  `gol_darah` varchar(30) DEFAULT NULL,
  `jenis_kel` varchar(30) DEFAULT NULL,
  `anak_ke` varchar(30) DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tanggal_lahir` varchar(15) NOT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `no_telp` varchar(30) DEFAULT NULL,
  `asal_sekolah` varchar(30) DEFAULT NULL,
  `nomor_induk` varchar(30) DEFAULT NULL,
  `tahun_lulus` varchar(30) DEFAULT NULL,
  `no_ijazah` varchar(30) DEFAULT NULL,
  `alamat_sekolah_asal` varchar(30) DEFAULT NULL,
  `nama_ayah` varchar(30) DEFAULT NULL,
  `tempat_ayah` varchar(30) DEFAULT NULL,
  `tanggal_lahir_ayah` varchar(30) DEFAULT NULL,
  `pendidikan_terakhir_ayah` varchar(30) DEFAULT NULL,
  `pekerjaan_ayah` varchar(30) DEFAULT NULL,
  `penghasilan_ayah` varchar(30) DEFAULT NULL,
  `nama_ibu` varchar(30) DEFAULT NULL,
  `tempat_ibu` varchar(30) DEFAULT NULL,
  `tanggal_lahir_ibu` varchar(30) DEFAULT NULL,
  `pendidikan_terakhir_ibu` varchar(30) DEFAULT NULL,
  `pekerjaan_ibu` varchar(30) DEFAULT NULL,
  `penghasilan_ibu` varchar(30) DEFAULT NULL,
  `gelombang` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tformulir_pendaftaran`
--

INSERT INTO `tformulir_pendaftaran` (`id_daftar`, `nisn`, `nama_siswa`, `berat_badan`, `tinggi_badan`, `gol_darah`, `jenis_kel`, `anak_ke`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `no_telp`, `asal_sekolah`, `nomor_induk`, `tahun_lulus`, `no_ijazah`, `alamat_sekolah_asal`, `nama_ayah`, `tempat_ayah`, `tanggal_lahir_ayah`, `pendidikan_terakhir_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `nama_ibu`, `tempat_ibu`, `tanggal_lahir_ibu`, `pendidikan_terakhir_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `gelombang`) VALUES
('FDS0001', '241412', 'joni', '55', '60', 'B', 'Perempuan', '3', 'Jakarta/Jakarta Barat', '03-02-1997', 'jl raya .kp pabuaran rt 01 rw 02 jalan nanggrek', '08123213', 'wirabuana', '23123214213', '2015', '321321421', 'jalan camat kanang', 'bahrul', 'Jakarta/Jakarta Barat', '03-04-1969', 'SMP', 'wiraswasta', '5.000.000', 'dwi', 'Jakarta/Jakarta Pusat', '20-04-1979', 'SMK', 'Ibu Rumah Tangga', '5.000.000', 'Gelombang 1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tgel_1`
--

CREATE TABLE `tgel_1` (
  `id_gel1` varchar(255) NOT NULL DEFAULT '',
  `gelombang` varchar(200) DEFAULT NULL,
  `pendaftaran` varchar(30) DEFAULT NULL,
  `kegiatan_mpls_ldks` varchar(30) DEFAULT NULL,
  `kegiatan_osis_1_tahun` varchar(30) DEFAULT NULL,
  `baju_batik` varchar(30) DEFAULT NULL,
  `seragam_olahraga` varchar(30) DEFAULT NULL,
  `baju_muslim` varchar(30) DEFAULT NULL,
  `idcard_bet_nama` varchar(30) DEFAULT NULL,
  `dsp` varchar(30) DEFAULT NULL,
  `infaq_pengembangan_sekolah` varchar(30) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tgel_1`
--

INSERT INTO `tgel_1` (`id_gel1`, `gelombang`, `pendaftaran`, `kegiatan_mpls_ldks`, `kegiatan_osis_1_tahun`, `baju_batik`, `seragam_olahraga`, `baju_muslim`, `idcard_bet_nama`, `dsp`, `infaq_pengembangan_sekolah`, `total`) VALUES
('Gl10001', 'Gelombang 1', '324', '234', '324', '234', '234', '234', '234', '234', '32432', '34484');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tgel_2`
--

CREATE TABLE `tgel_2` (
  `id_gel2` varchar(30) NOT NULL DEFAULT '',
  `gelombang` varchar(30) DEFAULT NULL,
  `nama_siswa` varchar(30) DEFAULT NULL,
  `pendaftaran` varchar(30) DEFAULT NULL,
  `kegiatan_mpls_ldks` varchar(30) DEFAULT NULL,
  `kegiatan_osis_1_tahun` varchar(30) DEFAULT NULL,
  `baju_batik` varchar(30) DEFAULT NULL,
  `seragam_olahraga` varchar(30) DEFAULT NULL,
  `baju_muslim` varchar(30) DEFAULT NULL,
  `idcard_bet_nama` varchar(30) DEFAULT NULL,
  `dsp` varchar(30) DEFAULT NULL,
  `infaq_pengembangan_sekolah` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tgel_2`
--

INSERT INTO `tgel_2` (`id_gel2`, `gelombang`, `nama_siswa`, `pendaftaran`, `kegiatan_mpls_ldks`, `kegiatan_osis_1_tahun`, `baju_batik`, `seragam_olahraga`, `baju_muslim`, `idcard_bet_nama`, `dsp`, `infaq_pengembangan_sekolah`) VALUES
('Gl20001', 'Gelombang 2', '21213', '32213', '231213', '3', '32131', '3323', '23131', '21321', '2313', '366861');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tkhusus_mi_lanjut`
--

CREATE TABLE `tkhusus_mi_lanjut` (
  `id_mi_lanjut` varchar(30) NOT NULL DEFAULT '',
  `pendaftaran` varchar(30) DEFAULT NULL,
  `kegiatan_mpls_ldks` varchar(30) DEFAULT NULL,
  `kegiatan_osis_1_tahun` varchar(30) DEFAULT NULL,
  `baju_batik` varchar(30) DEFAULT NULL,
  `seragam_olahraga` varchar(30) DEFAULT NULL,
  `baju_muslim` varchar(30) DEFAULT NULL,
  `id_card_bet_nama(bordier)` varchar(30) DEFAULT NULL,
  `dsp` varchar(30) DEFAULT NULL,
  `infaq_pengembangan_sekolah` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tpembayaran`
--

CREATE TABLE `tpembayaran` (
  `no_pembayaran` varchar(255) NOT NULL DEFAULT '',
  `tanggal_pembayaran` varchar(30) DEFAULT NULL,
  `nisn` varchar(30) DEFAULT NULL,
  `nama_siswa` varchar(45) DEFAULT NULL,
  `asal_sekolah` varchar(30) DEFAULT NULL,
  `gelombang` varchar(200) DEFAULT NULL,
  `pendaftaran` varchar(30) DEFAULT NULL,
  `kegiatan_mpls_ldks` varchar(30) DEFAULT NULL,
  `kegiatan_osis_1_tahun` varchar(30) DEFAULT NULL,
  `baju_batik` varchar(30) DEFAULT NULL,
  `seragam_olahraga` varchar(30) DEFAULT NULL,
  `baju_muslim` varchar(30) DEFAULT NULL,
  `idcard_bet_nama` varchar(30) DEFAULT NULL,
  `dsp` varchar(30) DEFAULT NULL,
  `infaq_pengembangan_sekolah` varchar(30) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tpembayaran`
--

INSERT INTO `tpembayaran` (`no_pembayaran`, `tanggal_pembayaran`, `nisn`, `nama_siswa`, `asal_sekolah`, `gelombang`, `pendaftaran`, `kegiatan_mpls_ldks`, `kegiatan_osis_1_tahun`, `baju_batik`, `seragam_olahraga`, `baju_muslim`, `idcard_bet_nama`, `dsp`, `infaq_pengembangan_sekolah`, `total`) VALUES
('NOP0001', '14-03-2019', '241412', 'joni', 'wirabuana', 'Gelombang 1', '324', '234', '324', '234', '234', '234', '234', '234', '32432', '34484');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tadmin`
--
ALTER TABLE `tadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tcalon_siswa`
--
ALTER TABLE `tcalon_siswa`
  ADD PRIMARY KEY (`idcalonsiswa`);

--
-- Indeks untuk tabel `tformulir_pendaftaran`
--
ALTER TABLE `tformulir_pendaftaran`
  ADD PRIMARY KEY (`id_daftar`);

--
-- Indeks untuk tabel `tgel_1`
--
ALTER TABLE `tgel_1`
  ADD PRIMARY KEY (`id_gel1`);

--
-- Indeks untuk tabel `tgel_2`
--
ALTER TABLE `tgel_2`
  ADD PRIMARY KEY (`id_gel2`);

--
-- Indeks untuk tabel `tkhusus_mi_lanjut`
--
ALTER TABLE `tkhusus_mi_lanjut`
  ADD PRIMARY KEY (`id_mi_lanjut`);

--
-- Indeks untuk tabel `tpembayaran`
--
ALTER TABLE `tpembayaran`
  ADD PRIMARY KEY (`no_pembayaran`);
--
-- Database: `sekolah`
--
CREATE DATABASE IF NOT EXISTS `sekolah` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sekolah`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi_pegawai`
--
-- Kesalahan membaca struktur untuk tabel sekolah.absensi_pegawai: #1932 - Table 'sekolah.absensi_pegawai' doesn't exist in engine
-- Kesalahan membaca data untuk tabel sekolah.absensi_pegawai: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `sekolah`.`absensi_pegawai`' at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_honor`
--
-- Kesalahan membaca struktur untuk tabel sekolah.data_honor: #1932 - Table 'sekolah.data_honor' doesn't exist in engine
-- Kesalahan membaca data untuk tabel sekolah.data_honor: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `sekolah`.`data_honor`' at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_jabatan`
--
-- Kesalahan membaca struktur untuk tabel sekolah.data_jabatan: #1932 - Table 'sekolah.data_jabatan' doesn't exist in engine
-- Kesalahan membaca data untuk tabel sekolah.data_jabatan: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `sekolah`.`data_jabatan`' at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pegawai`
--
-- Kesalahan membaca struktur untuk tabel sekolah.data_pegawai: #1932 - Table 'sekolah.data_pegawai' doesn't exist in engine
-- Kesalahan membaca data untuk tabel sekolah.data_pegawai: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `sekolah`.`data_pegawai`' at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_siswa`
--
-- Kesalahan membaca struktur untuk tabel sekolah.data_siswa: #1932 - Table 'sekolah.data_siswa' doesn't exist in engine
-- Kesalahan membaca data untuk tabel sekolah.data_siswa: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `sekolah`.`data_siswa`' at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_spp`
--
-- Kesalahan membaca struktur untuk tabel sekolah.data_spp: #1932 - Table 'sekolah.data_spp' doesn't exist in engine
-- Kesalahan membaca data untuk tabel sekolah.data_spp: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `sekolah`.`data_spp`' at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--
-- Kesalahan membaca struktur untuk tabel sekolah.login: #1932 - Table 'sekolah.login' doesn't exist in engine
-- Kesalahan membaca data untuk tabel sekolah.login: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `sekolah`.`login`' at line 1
--
-- Database: `spk_apotek`
--
CREATE DATABASE IF NOT EXISTS `spk_apotek` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `spk_apotek`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(8) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `hak_akses` enum('Admin','User') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `hak_akses`) VALUES
('US001', 'admin', '12345', 'Admin'),
('US002', 'user', '99999', 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `kd_faktur` varchar(8) NOT NULL,
  `nm_supplier` varchar(25) NOT NULL,
  `kd_barang` varchar(20) NOT NULL,
  `hrg_beli` int(11) NOT NULL,
  `jml_beli` int(9) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`kd_faktur`, `nm_supplier`, `kd_barang`, `hrg_beli`, `jml_beli`, `total`) VALUES
('FK001', 'otong', 'DKL9306409410A1', 75000, 15, 1125000),
('FK002', 'hh', 'DKL911480340A1', 4000, 4, 16000);

--
-- Trigger `pembelian`
--
DELIMITER $$
CREATE TRIGGER `INPUT_BELI` BEFORE INSERT ON `pembelian` FOR EACH ROW BEGIN
 UPDATE persediaan SET stok=stok+NEW.jml_beli  
 WHERE kd_barang=NEW.kd_barang; 
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `UPDATE_BELI` AFTER UPDATE ON `pembelian` FOR EACH ROW BEGIN
 UPDATE persediaan SET stok=stok-(OLD.jml_beli-NEW.jml_beli)  
 WHERE kd_barang=NEW.kd_barang; 
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_detail` int(8) NOT NULL,
  `kd_jual` varchar(8) NOT NULL,
  `kd_barang` varchar(20) NOT NULL,
  `jml` int(9) NOT NULL,
  `harga` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_detail`, `kd_jual`, `kd_barang`, `jml`, `harga`, `total`) VALUES
(23, 'NJ001', 'DKL9306409410A1', 5, 2500, 12500),
(24, 'NJ001', 'DKL911480340A1', 5, 10000, 50000),
(25, 'NJ002', 'DKL911480340A1', 10, 10000, 100000),
(26, 'NJ003', 'DKL911480340A1', 15, 10000, 150000),
(28, 'NJ005', 'DKL911480340A1', 2, 10000, 20000),
(29, 'NJ005', 'DKL9306409410A1', 1, 2500, 2500),
(30, 'NJ006', 'DTL9131102504A1', 54, 5000, 270000),
(31, 'NJ007', 'DTL9131102504A1', 32, 5000, 160000),
(32, 'NJ008', 'DTL9131102504A1', 22, 5000, 110000),
(33, 'NJ009', 'DTL9131102504A1', 21, 5000, 105000),
(34, 'NJ010', 'DTL9131102504A1', 11, 5000, 55000),
(35, 'NJ011', 'DTL9131102504A1', 12, 5000, 60000),
(36, 'NJ012', 'DTL9131102504A1', 13, 5000, 65000),
(37, 'NJ013', 'DTL9131102504A1', 33, 5000, 165000),
(38, 'NJ014', 'DTL9131102504A1', 35, 5000, 175000),
(39, 'NJ015', 'DTL9131102504A1', 44, 5000, 220000),
(40, 'NJ016', 'DTL9131102504A1', 45, 5000, 225000),
(41, 'NJ017', 'DTL9131102504A1', 55, 5000, 275000),
(42, 'NJ018', 'DTL9131102504A1', 40, 5000, 200000),
(43, 'NJ019', 'DTL9131102504A1', 21, 5000, 105000),
(44, 'NJ020', 'DTL9131102504A1', 14, 5000, 70000);

--
-- Trigger `penjualan`
--
DELIMITER $$
CREATE TRIGGER `INPUT_JUAL` AFTER INSERT ON `penjualan` FOR EACH ROW BEGIN
 UPDATE persediaan SET stok=stok-NEW.jml  
 WHERE kd_barang=NEW.kd_barang; 
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `UPDATE_JUAL` AFTER UPDATE ON `penjualan` FOR EACH ROW BEGIN
 UPDATE persediaan SET stok=stok+(OLD.jml-NEW.jml)  
 WHERE kd_barang=NEW.kd_barang; 
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peramalan`
--

CREATE TABLE `peramalan` (
  `kd_ramal` int(8) NOT NULL,
  `kd_barang` varchar(20) NOT NULL,
  `tgl_ramal` date NOT NULL,
  `hasil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `persediaan`
--

CREATE TABLE `persediaan` (
  `kd_barang` varchar(20) NOT NULL,
  `nm_barang` varchar(25) NOT NULL,
  `hrg_jual` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `stok` int(9) NOT NULL,
  `tgl_exp` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `persediaan`
--

INSERT INTO `persediaan` (`kd_barang`, `nm_barang`, `hrg_jual`, `satuan`, `stok`, `tgl_exp`) VALUES
('DKL9306409410A1', 'Dexteem plus', 250, 'tablet', 34, '2017-08-01'),
('DTL9131102504A1', 'Grantusif', 5000, 'kaplet', 50, '2017-08-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prediksi`
--

CREATE TABLE `prediksi` (
  `kd_obat` varchar(11) NOT NULL,
  `nama` varchar(11) DEFAULT NULL,
  `harga` varchar(11) DEFAULT NULL,
  `xx` varchar(11) DEFAULT NULL,
  `xy` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trans_penjualan`
--

CREATE TABLE `trans_penjualan` (
  `kd_jual` varchar(8) NOT NULL,
  `total` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `trans_penjualan`
--

INSERT INTO `trans_penjualan` (`kd_jual`, `total`, `tanggal`) VALUES
('NJ001', 62500, '2017-04-23'),
('NJ002', 100000, '2017-05-23'),
('NJ003', 150000, '2017-06-23'),
('NJ005', 22500, '2017-07-01'),
('NJ006', 270000, '2016-01-04'),
('NJ007', 160000, '2016-02-04'),
('NJ008', 110000, '2016-03-04'),
('NJ009', 105000, '2016-04-04'),
('NJ010', 55000, '2016-05-04'),
('NJ011', 60000, '2016-06-04'),
('NJ012', 65000, '2016-07-04'),
('NJ013', 165000, '2016-08-04'),
('NJ014', 175000, '2016-09-04'),
('NJ015', 220000, '2016-10-04'),
('NJ016', 225000, '2016-11-04'),
('NJ017', 275000, '2016-12-04'),
('NJ018', 200000, '2017-01-04'),
('NJ019', 105000, '2017-02-04'),
('NJ020', 70000, '2017-03-04');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`kd_faktur`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indeks untuk tabel `peramalan`
--
ALTER TABLE `peramalan`
  ADD PRIMARY KEY (`kd_ramal`);

--
-- Indeks untuk tabel `persediaan`
--
ALTER TABLE `persediaan`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indeks untuk tabel `prediksi`
--
ALTER TABLE `prediksi`
  ADD PRIMARY KEY (`kd_obat`);

--
-- Indeks untuk tabel `trans_penjualan`
--
ALTER TABLE `trans_penjualan`
  ADD PRIMARY KEY (`kd_jual`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_detail` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `peramalan`
--
ALTER TABLE `peramalan`
  MODIFY `kd_ramal` int(8) NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `toko`
--
CREATE DATABASE IF NOT EXISTS `toko` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `toko`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblbrg_keluar`
--

CREATE TABLE `tblbrg_keluar` (
  `no` int(5) DEFAULT NULL COMMENT 'Nomor Urut',
  `kd_kebutuhan` varchar(20) NOT NULL COMMENT 'Kode Kebutuhan Kantor',
  `nm_kebutuhan` varchar(50) NOT NULL COMMENT 'Nama Kebutuhan Kantor',
  `jns_kebutuhan` varchar(20) NOT NULL COMMENT 'Jenis Kebutuhan Kantor',
  `nm_kary` varchar(30) NOT NULL COMMENT 'Nama Karyawan',
  `jml` int(5) NOT NULL COMMENT 'Jumlah Barang',
  `ket` varchar(60) NOT NULL COMMENT 'Keteraangan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblbrg_keluar`
--

INSERT INTO `tblbrg_keluar` (`no`, `kd_kebutuhan`, `nm_kebutuhan`, `jns_kebutuhan`, `nm_kary`, `jml`, `ket`) VALUES
(NULL, '100011', 'AHSKJ', 'AKSHJK', 'NASJKA', 100, 'wdrawd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblkaryawan`
--

CREATE TABLE `tblkaryawan` (
  `no` int(5) DEFAULT NULL COMMENT 'Nomor Urut',
  `kd_staff` int(20) NOT NULL COMMENT 'Kode Staff',
  `nm_staff` varchar(50) NOT NULL COMMENT 'Nama Staff',
  `alamat` varchar(60) NOT NULL COMMENT 'Alamat',
  `tmpt_lahir` varchar(20) NOT NULL COMMENT 'Tempat Lahir',
  `tgl_lahir` date NOT NULL COMMENT 'Tanggal Lahir',
  `jns_kelamin` varchar(14) NOT NULL COMMENT 'Jenis Kelamin',
  `jabatan` varchar(10) NOT NULL COMMENT 'Jabatan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblkaryawan`
--

INSERT INTO `tblkaryawan` (`no`, `kd_staff`, `nm_staff`, `alamat`, `tmpt_lahir`, `tgl_lahir`, `jns_kelamin`, `jabatan`) VALUES
(NULL, 1, 'Administrator', 'Jakarta', 'Jakarta', '2019-05-01', 'Laki - laki', 'Manager'),
(NULL, 3, 'dsdzsc', 'zczxczxcz', 'czxczxc', '2019-05-03', 'Laki - laki', 'Manager');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblkebutuhan`
--

CREATE TABLE `tblkebutuhan` (
  `no` int(5) DEFAULT NULL COMMENT 'Nomor Urut',
  `kd_kebutuhan` int(10) NOT NULL COMMENT 'Kode Kebutuhan Kantor',
  `kd_staff` int(15) NOT NULL,
  `nm_staff` varchar(50) NOT NULL,
  `jabatan` varchar(20) NOT NULL COMMENT 'Jabatan Pegawai',
  `kd_brg` int(10) NOT NULL COMMENT 'Kode Barang',
  `nm_brg` varchar(50) NOT NULL COMMENT 'Nama Barang',
  `jns_kebutuhan` varchar(20) NOT NULL COMMENT 'Jenis Kebutuhan',
  `jml_brg` int(8) NOT NULL COMMENT 'Jumlah Barang',
  `tgl_pengajuan` date NOT NULL COMMENT 'Tanggal Pengajuan',
  `Keterangan` varchar(60) NOT NULL COMMENT 'Keterangan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblkebutuhan`
--

INSERT INTO `tblkebutuhan` (`no`, `kd_kebutuhan`, `kd_staff`, `nm_staff`, `jabatan`, `kd_brg`, `nm_brg`, `jns_kebutuhan`, `jml_brg`, `tgl_pengajuan`, `Keterangan`) VALUES
(NULL, 10001, 1, 'Administrator', 'Manager', 12312, 'asdasd', 'dasd', 2, '2019-05-01', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblpenerimaan`
--

CREATE TABLE `tblpenerimaan` (
  `no` int(5) DEFAULT NULL COMMENT 'Nomor Urut',
  `kd_terima` int(10) NOT NULL COMMENT 'kode Penerimaan',
  `kd_kebutuhan` int(10) NOT NULL COMMENT 'Kode Kebutuhan Kantor',
  `kd_staff` int(10) NOT NULL COMMENT 'Nomor Induk Karyawan',
  `nm_staff` varchar(50) NOT NULL COMMENT 'Nama Karyawan',
  `jabatan` varchar(20) NOT NULL COMMENT 'Level Jabatan',
  `kd_brg` int(12) NOT NULL COMMENT 'Kode Barang',
  `nm_brg` varchar(50) NOT NULL COMMENT 'Nama Barang',
  `jns_kebutuhan` varchar(18) NOT NULL COMMENT 'Jenis Kebutuhan',
  `jml_brg` int(6) NOT NULL COMMENT 'Jumlah Barang',
  `tgl_penerimaan` date NOT NULL COMMENT 'Tanggal Penerimaan',
  `ket` varchar(160) NOT NULL COMMENT 'Keterangan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblpenerimaan`
--

INSERT INTO `tblpenerimaan` (`no`, `kd_terima`, `kd_kebutuhan`, `kd_staff`, `nm_staff`, `jabatan`, `kd_brg`, `nm_brg`, `jns_kebutuhan`, `jml_brg`, `tgl_penerimaan`, `ket`) VALUES
(NULL, 100001, 10001, 1, 'Administrator', 'Manager', 12312, 'asdasd', 'dasd', 2, '2019-05-01', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblpesanan`
--

CREATE TABLE `tblpesanan` (
  `no` int(5) DEFAULT NULL,
  `no_faktur` int(20) NOT NULL,
  `pemb` varchar(50) NOT NULL,
  `nm_kebut_kantor` varchar(60) NOT NULL,
  `nm_brg` varchar(60) NOT NULL,
  `ttl_pem` int(12) NOT NULL,
  `tgl` date NOT NULL,
  `status_pemb` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblpesanan`
--

INSERT INTO `tblpesanan` (`no`, `no_faktur`, `pemb`, `nm_kebut_kantor`, `nm_brg`, `ttl_pem`, `tgl`, `status_pemb`) VALUES
(NULL, 1000111, 'APA', 'ITU', 'INI', 100000, '2019-05-01', 'LUNAS'),
(NULL, 1000112, 'ASA', 'DAXAXA', 'ZXADAA', 1000000, '2018-05-26', 'LUNAS'),
(NULL, 1000113, 'ASA', 'DAXAXA', 'ZXAD', 11000000, '2018-05-26', 'BELUM LUNAS'),
(NULL, 1000114, 'ASA', 'DAXAXA', 'ZXAD', 100, '2018-05-26', 'BELUM LUNAS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblregister`
--

CREATE TABLE `tblregister` (
  `no` int(5) DEFAULT NULL,
  `username` varchar(20) NOT NULL COMMENT 'Username',
  `password` varchar(20) NOT NULL COMMENT 'Password',
  `nip` int(10) NOT NULL COMMENT 'Nomor Induk Karyawan',
  `nama` varchar(20) NOT NULL COMMENT 'Nama Karyawan',
  `level` varchar(15) NOT NULL COMMENT 'Level Jabatan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblregister`
--

INSERT INTO `tblregister` (`no`, `username`, `password`, `nip`, `nama`, `level`) VALUES
(NULL, 'Admin', '1231', 10001, 'Administrator', 'ADMIN'),
(NULL, 'Admin2', '123', 10002, 'Administrator', 'ADMIN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblstok_barang`
--

CREATE TABLE `tblstok_barang` (
  `no` int(5) DEFAULT NULL COMMENT 'Nomor Urut',
  `kd_brg` int(10) NOT NULL COMMENT 'Kode Barang',
  `nm_brg` varchar(50) NOT NULL COMMENT 'Nama Barang',
  `jns_kebutuhan` varchar(20) NOT NULL COMMENT 'Jenis Kebutuhan Kantor',
  `jml_brg` int(8) NOT NULL COMMENT 'Jumlah Barang',
  `tgl_input` date NOT NULL COMMENT 'Tanggal Input',
  `Ket` varchar(50) NOT NULL COMMENT 'Keterangan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblstok_barang`
--

INSERT INTO `tblstok_barang` (`no`, `kd_brg`, `nm_brg`, `jns_kebutuhan`, `jml_brg`, `tgl_input`, `Ket`) VALUES
(NULL, 12312, 'asdasd', 'dasd', 12, '2019-05-11', 'sada');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tblbrg_keluar`
--
ALTER TABLE `tblbrg_keluar`
  ADD PRIMARY KEY (`kd_kebutuhan`);

--
-- Indeks untuk tabel `tblkaryawan`
--
ALTER TABLE `tblkaryawan`
  ADD PRIMARY KEY (`kd_staff`);

--
-- Indeks untuk tabel `tblkebutuhan`
--
ALTER TABLE `tblkebutuhan`
  ADD PRIMARY KEY (`kd_kebutuhan`);

--
-- Indeks untuk tabel `tblpenerimaan`
--
ALTER TABLE `tblpenerimaan`
  ADD PRIMARY KEY (`kd_terima`);

--
-- Indeks untuk tabel `tblpesanan`
--
ALTER TABLE `tblpesanan`
  ADD PRIMARY KEY (`no_faktur`);

--
-- Indeks untuk tabel `tblregister`
--
ALTER TABLE `tblregister`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `tblstok_barang`
--
ALTER TABLE `tblstok_barang`
  ADD PRIMARY KEY (`kd_brg`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
