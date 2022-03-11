set names 'utf8';
create database bulgaria character set utf8 collate utf8_general_ci;
grant all on bulgaria.* to 'web_user'@'%' identified by 'Password1';
USE bulgaria;

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `region_name` varchar(100) DEFAULT NULL,
  `men` bigint(20) UNSIGNED DEFAULT NULL,
  `women` bigint(20) UNSIGNED DEFAULT NULL,
  `region_photo_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `region` (`region_name`, `men`, `women`, `region_photo_name`) VALUES
('Благоевград', 146369, 154769, 'blagoevrgad.jpg'),
('Бургас', 197692, 212058, 'burgas.jpg'),
('Варна', 228625, 241499, 'varna.jpg'),
('Велико Търново', 110803, 118915, 'veliko_turnovo.jpg'),
('Видин', 39487, 41725, 'vidin.jpg'),
('Враца', 77196, 80441, 'vratza.jpg'),
('Габрово', 50874, 54914, 'gabrovo.jpg'),
('Добрич', 82505, 87793, 'dobrich.jpg'),
('Кърджали', 79430, 81351, 'kurdjali.jpg'),
('Кюстендил', 56699, 59920, 'kiustendil.jpg'),
('Ловеч', 59580, 62910, 'lovech.jpg'),
('Монтана', 61166, 64229, 'montana.jpg'),
('Пазарджик', 122821, 128479, 'pazardjik.jpg'),
('Перник', 58550, 61876, 'pernik.jpg'),
('Плевен', 113082, 120356, 'pleven.jpg'),
('Пловдив', 319851, 346547, 'plovdiv.jpg'),
('Разград', 53467, 56343, 'razgrad.jpg'),
('Русе', 103521, 109208, 'ruse.jpg'),
('Силистра', 52049, 54803, 'silistra.jpg'),
('Сливен', 88576, 93975, 'sliven.jpg'),
('Смолян', 48940, 52947, 'smolyan.jpg'),
('София (столица)', 627198, 681214, 'sofia_stolica.jpg'),
('София', 117261, 121215, 'sofia.jpg'),
('Стара Загора', 150524, 160876, 'stara_zagora.jpg'),
('Търговище', 53665, 56362, 'turgovishte.jpg'),
('Хасково', 109127, 114498, 'haskovo.jpg'),
('Шумен', 83696, 88085, 'shumen.jpg'),
('Ямбол', 56961, 59525, 'yambol.jpg');
