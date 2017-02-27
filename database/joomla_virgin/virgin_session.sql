-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.2.3-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping data for table joomla_virgin.virgin_session: ~2 rows (approximately)
/*!40000 ALTER TABLE `virgin_session` DISABLE KEYS */;
INSERT INTO `virgin_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
	('jotsuj82a18fbtn3l388vskh2j', 1, 0, '1487169115', 'joomla|s:7744:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToyMTg7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNDg3MTY1OTUwO3M6NDoibGFzdCI7aToxNDg3MTY5MTA5O3M6Mzoibm93IjtpOjE0ODcxNjkxMTQ7fXM6NToidG9rZW4iO3M6MzI6IkxWR3ZBaGt3VVc4TUpDZFllZUFkMXhmbnRaaFVzeTJGIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjQ6e3M6MTM6ImNvbV9pbnN0YWxsZXIiO086ODoic3RkQ2xhc3MiOjY6e3M6NzoibWVzc2FnZSI7czowOiIiO3M6MTc6ImV4dGVuc2lvbl9tZXNzYWdlIjtzOjA6IiI7czo2OiJ1cGRhdGUiO086ODoic3RkQ2xhc3MiOjM6e3M6NjoiZmlsdGVyIjthOjQ6e3M6Njoic2VhcmNoIjtzOjA6IiI7czo5OiJjbGllbnRfaWQiO3M6MDoiIjtzOjQ6InR5cGUiO3M6MDoiIjtzOjY6ImZvbGRlciI7czowOiIiO31zOjQ6Imxpc3QiO2E6Mjp7czoxMjoiZnVsbG9yZGVyaW5nIjtzOjEwOiJ1Lm5hbWUgQVNDIjtzOjU6ImxpbWl0IjtzOjI6IjI1Ijt9czoxMDoibGltaXRzdGFydCI7aTowO31zOjg6Indhcm5pbmdzIjtPOjg6InN0ZENsYXNzIjoxOntzOjg6Im9yZGVyY29sIjtOO31zOjc6Imluc3RhbGwiO086ODoic3RkQ2xhc3MiOjE6e3M6MTc6Imluc3RhbGxfZGlyZWN0b3J5IjtzOjIzOiJEOlwwcHJvamVjdHNcajFcYXBwL3RtcCI7fXM6MTI6InJlZGlyZWN0X3VybCI7Tjt9czoxMDoiY29tX2NvbmZpZyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJjb25maWciO086ODoic3RkQ2xhc3MiOjE6e3M6NjoiZ2xvYmFsIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO2E6OTE6e3M6Nzoib2ZmbGluZSI7czoxOiIwIjtzOjE1OiJvZmZsaW5lX21lc3NhZ2UiO3M6Njk6IlRoaXMgc2l0ZSBpcyBkb3duIGZvciBtYWludGVuYW5jZS48YnIgLz5QbGVhc2UgY2hlY2sgYmFjayBhZ2FpbiBzb29uLiI7czoyMzoiZGlzcGxheV9vZmZsaW5lX21lc3NhZ2UiO3M6MToiMSI7czoxMzoib2ZmbGluZV9pbWFnZSI7czowOiIiO3M6ODoic2l0ZW5hbWUiO3M6MTI6InN0YXJsaW5rLmRldiI7czo2OiJlZGl0b3IiO3M6MzoiamNlIjtzOjc6ImNhcHRjaGEiO3M6MToiMCI7czoxMDoibGlzdF9saW1pdCI7czoyOiIyMCI7czo2OiJhY2Nlc3MiO3M6MToiMSI7czo1OiJkZWJ1ZyI7czoxOiIwIjtzOjEwOiJkZWJ1Z19sYW5nIjtzOjE6IjAiO3M6NjoiZGJ0eXBlIjtzOjY6Im15c3FsaSI7czo0OiJob3N0IjtzOjk6ImxvY2FsaG9zdCI7czo0OiJ1c2VyIjtzOjM6ImRldiI7czo4OiJwYXNzd29yZCI7czozOiJkZXYiO3M6MjoiZGIiO3M6MTI6InN0YXJsaW5rLmRldiI7czo4OiJkYnByZWZpeCI7czo2OiJta2Mxcl8iO3M6OToibGl2ZV9zaXRlIjtzOjA6IiI7czo2OiJzZWNyZXQiO3M6MTY6InhPSm1jdUVQWkxkTUxPV3giO3M6NDoiZ3ppcCI7czoxOiIwIjtzOjE1OiJlcnJvcl9yZXBvcnRpbmciO3M6NzoiZGVmYXVsdCI7czo3OiJoZWxwdXJsIjtzOjgwOiJodHRwczovL2hlbHAuam9vbWxhLm9yZy9wcm94eT9rZXlyZWY9SGVscHttYWpvcn17bWlub3J9OntrZXlyZWZ9Jmxhbmc9e2xhbmdjb2RlfSI7czo4OiJmdHBfaG9zdCI7czowOiIiO3M6ODoiZnRwX3BvcnQiO3M6MDoiIjtzOjg6ImZ0cF91c2VyIjtzOjA6IiI7czo4OiJmdHBfcGFzcyI7czowOiIiO3M6ODoiZnRwX3Jvb3QiO3M6MDoiIjtzOjEwOiJmdHBfZW5hYmxlIjtzOjE6IjAiO3M6Njoib2Zmc2V0IjtzOjExOiJFdXJvcGUvS2lldiI7czoxMDoibWFpbG9ubGluZSI7czoxOiIxIjtzOjY6Im1haWxlciI7czo0OiJtYWlsIjtzOjg6Im1haWxmcm9tIjtzOjE1OiJtYW9Ac3RhcmxpbmsudWEiO3M6ODoiZnJvbW5hbWUiO3M6MTI6InN0YXJsaW5rLmRldiI7czo4OiJzZW5kbWFpbCI7czoxODoiL3Vzci9zYmluL3NlbmRtYWlsIjtzOjg6InNtdHBhdXRoIjtzOjE6IjAiO3M6ODoic210cHVzZXIiO3M6MDoiIjtzOjg6InNtdHBwYXNzIjtzOjA6IiI7czo4OiJzbXRwaG9zdCI7czo5OiJsb2NhbGhvc3QiO3M6MTA6InNtdHBzZWN1cmUiO3M6NDoibm9uZSI7czo4OiJzbXRwcG9ydCI7czoyOiIyNSI7czo3OiJjYWNoaW5nIjtzOjE6IjAiO3M6MTM6ImNhY2hlX2hhbmRsZXIiO3M6NDoiZmlsZSI7czo5OiJjYWNoZXRpbWUiO3M6MjoiMTUiO3M6MjA6ImNhY2hlX3BsYXRmb3JtcHJlZml4IjtzOjE6IjAiO3M6ODoiTWV0YURlc2MiO3M6MDoiIjtzOjg6Ik1ldGFLZXlzIjtzOjA6IiI7czo5OiJNZXRhVGl0bGUiO3M6MToiMSI7czoxMDoiTWV0YUF1dGhvciI7czoxOiIxIjtzOjExOiJNZXRhVmVyc2lvbiI7czoxOiIwIjtzOjY6InJvYm90cyI7czowOiIiO3M6Mzoic2VmIjtzOjE6IjAiO3M6MTE6InNlZl9yZXdyaXRlIjtzOjE6IjAiO3M6MTA6InNlZl9zdWZmaXgiO3M6MToiMCI7czoxMjoidW5pY29kZXNsdWdzIjtzOjE6IjAiO3M6MTA6ImZlZWRfbGltaXQiO3M6MjoiMTAiO3M6MTA6ImZlZWRfZW1haWwiO3M6NDoibm9uZSI7czo4OiJsb2dfcGF0aCI7czozODoiRDpcMHByb2plY3RzXGoxXGFwcFxhZG1pbmlzdHJhdG9yL2xvZ3MiO3M6ODoidG1wX3BhdGgiO3M6MjM6IkQ6XDBwcm9qZWN0c1xqMVxhcHAvdG1wIjtzOjg6ImxpZmV0aW1lIjtzOjI6IjE1IjtzOjE1OiJzZXNzaW9uX2hhbmRsZXIiO3M6ODoiZGF0YWJhc2UiO3M6MTY6Im1lbWNhY2hlX3BlcnNpc3QiO3M6MToiMSI7czoxNzoibWVtY2FjaGVfY29tcHJlc3MiO3M6MToiMCI7czoyMDoibWVtY2FjaGVfc2VydmVyX2hvc3QiO3M6OToibG9jYWxob3N0IjtzOjIwOiJtZW1jYWNoZV9zZXJ2ZXJfcG9ydCI7czo1OiIxMTIxMSI7czoxNzoibWVtY2FjaGVkX3BlcnNpc3QiO3M6MToiMSI7czoxODoibWVtY2FjaGVkX2NvbXByZXNzIjtzOjE6IjAiO3M6MjE6Im1lbWNhY2hlZF9zZXJ2ZXJfaG9zdCI7czo5OiJsb2NhbGhvc3QiO3M6MjE6Im1lbWNhY2hlZF9zZXJ2ZXJfcG9ydCI7czo1OiIxMTIxMSI7czoxMzoicmVkaXNfcGVyc2lzdCI7czoxOiIxIjtzOjE3OiJyZWRpc19zZXJ2ZXJfaG9zdCI7czo5OiJsb2NhbGhvc3QiO3M6MTc6InJlZGlzX3NlcnZlcl9wb3J0IjtzOjQ6IjYzNzkiO3M6MTc6InJlZGlzX3NlcnZlcl9hdXRoIjtzOjA6IiI7czoxNToicmVkaXNfc2VydmVyX2RiIjtzOjE6IjAiO3M6MTI6InByb3h5X2VuYWJsZSI7czoxOiIwIjtzOjEwOiJwcm94eV9ob3N0IjtzOjA6IiI7czoxMDoicHJveHlfcG9ydCI7czowOiIiO3M6MTA6InByb3h5X3VzZXIiO3M6MDoiIjtzOjEwOiJwcm94eV9wYXNzIjtzOjA6IiI7czoxMToibWFzc21haWxvZmYiO3M6MToiMCI7czoxMDoiTWV0YVJpZ2h0cyI7czowOiIiO3M6MTk6InNpdGVuYW1lX3BhZ2V0aXRsZXMiO3M6MToiMCI7czo5OiJmb3JjZV9zc2wiO3M6MToiMCI7czoyODoic2Vzc2lvbl9tZW1jYWNoZV9zZXJ2ZXJfaG9zdCI7czo5OiJsb2NhbGhvc3QiO3M6Mjg6InNlc3Npb25fbWVtY2FjaGVfc2VydmVyX3BvcnQiO3M6NToiMTEyMTEiO3M6Mjk6InNlc3Npb25fbWVtY2FjaGVkX3NlcnZlcl9ob3N0IjtzOjk6ImxvY2FsaG9zdCI7czoyOToic2Vzc2lvbl9tZW1jYWNoZWRfc2VydmVyX3BvcnQiO3M6NToiMTEyMTEiO3M6MTI6ImZyb250ZWRpdGluZyI7czoxOiIxIjtzOjEzOiJjb29raWVfZG9tYWluIjtzOjA6IiI7czoxMToiY29va2llX3BhdGgiO3M6MDoiIjtzOjg6ImFzc2V0X2lkIjtpOjE7czo3OiJmaWx0ZXJzIjthOjk6e2k6MTthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjI6Ik5IIjtzOjExOiJmaWx0ZXJfdGFncyI7czowOiIiO3M6MTc6ImZpbHRlcl9hdHRyaWJ1dGVzIjtzOjA6IiI7fWk6OTthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjI6IkJMIjtzOjExOiJmaWx0ZXJfdGFncyI7czowOiIiO3M6MTc6ImZpbHRlcl9hdHRyaWJ1dGVzIjtzOjA6IiI7fWk6NjthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjI6IkJMIjtzOjExOiJmaWx0ZXJfdGFncyI7czowOiIiO3M6MTc6ImZpbHRlcl9hdHRyaWJ1dGVzIjtzOjA6IiI7fWk6NzthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjQ6Ik5PTkUiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aToyO2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6MjoiTkgiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aTozO2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6MjoiQkwiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aTo0O2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6MjoiQkwiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aTo1O2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6MjoiQkwiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aTo4O2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6NDoiTk9ORSI7czoxMToiZmlsdGVyX3RhZ3MiO3M6MDoiIjtzOjE3OiJmaWx0ZXJfYXR0cmlidXRlcyI7czowOiIiO319fX19fXM6MTk6ImNvbV9hZHZhbmNlZG1vZHVsZXMiO086ODoic3RkQ2xhc3MiOjM6e3M6NzoibW9kdWxlcyI7Tzo4OiJzdGRDbGFzcyI6NDp7czo2OiJmaWx0ZXIiO2E6Nzp7czo2OiJzZWFyY2giO3M6MDoiIjtzOjU6InN0YXRlIjtzOjI6Ii0yIjtzOjg6InBvc2l0aW9uIjtzOjA6IiI7czo2OiJtb2R1bGUiO3M6MDoiIjtzOjY6Im1lbnVpZCI7czowOiIiO3M6NjoiYWNjZXNzIjtzOjA6IiI7czo4OiJsYW5ndWFnZSI7czowOiIiO31zOjk6ImNsaWVudF9pZCI7czoxOiIwIjtzOjQ6Imxpc3QiO2E6Mjp7czoxMjoiZnVsbG9yZGVyaW5nIjtzOjExOiJhLnRpdGxlIEFTQyI7czo1OiJsaW1pdCI7czoxOiIwIjt9czoxMDoibGltaXRzdGFydCI7aTowO31zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoibW9kdWxlIjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjE6e2k6MDtpOjk1O31zOjQ6ImRhdGEiO047fX1zOjM6ImFkZCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MTI6ImV4dGVuc2lvbl9pZCI7TjtzOjY6InBhcmFtcyI7Tjt9fX1zOjk6ImNvbV9jYWNoZSI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJjYWNoZSI7Tzo4OiJzdGRDbGFzcyI6NDp7czo2OiJmaWx0ZXIiO2E6MTp7czo2OiJzZWFyY2giO3M6MDoiIjt9czo5OiJjbGllbnRfaWQiO2k6MTtzOjQ6Imxpc3QiO2E6Mjp7czoxMjoiZnVsbG9yZGVyaW5nIjtzOjA6IiI7czo1OiJsaW1pdCI7czoyOiIyMCI7fXM6MTA6ImxpbWl0c3RhcnQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO3M6MzoiNTYxIjt9czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToicXVldWUiO047fX1zOjg6Il9fYWtlZWJhIjtPOjg6InN0ZENsYXNzIjoxOntzOjc6InByb2ZpbGUiO2k6MTt9czoxMjoiX19jb21fYWtlZWJhIjtPOjg6InN0ZENsYXNzIjoxOntzOjI0OiJtYWdpY1BhcmFtc1VwZGF0ZVZlcnNpb24iO3M6NToiNS4yLjUiO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 561, 'starlink'),
	('u12gha4lee8vjvb9ecn747fupu', 0, 1, '1487168997', 'joomla|s:724:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToyODtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE0ODcxNjY5OTE7czo0OiJsYXN0IjtpOjE0ODcxNjgxNTQ7czozOiJub3ciO2k6MTQ4NzE2ODk5Njt9fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MTtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX1zOjE2OiJfX2NvbV9mb3hjb250YWN0IjtPOjg6InN0ZENsYXNzIjoxOntzOjg6ImZvcm1fbTk1IjtOO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 0, '');
/*!40000 ALTER TABLE `virgin_session` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;