CREATE DATABASE IF NOT EXISTS `gossby` CHARACTER SET utf8mb4 collate utf8mb4_unicode_ci;
CREATE DATABASE IF NOT EXISTS `wordpress` CHARACTER SET utf8mb4 collate utf8mb4_unicode_ci;
CREATE DATABASE IF NOT EXISTS `teawork` CHARACTER SET utf8mb4 collate utf8mb4_unicode_ci;
GRANT ALL ON `gossby`.* TO 'dongtt'@'%';
GRANT ALL ON `teawork`.* TO 'dongtt'@'%';
GRANT ALL ON `wordpress`.* TO 'dongtt'@'%';
FLUSH PRIVILEGES;