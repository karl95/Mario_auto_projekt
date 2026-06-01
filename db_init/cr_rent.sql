-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Aprill 17, 2026 kell 10:55 EL
-- Serveri versioon: 10.4.32-MariaDB
-- PHP versioon: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `auto_rent`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `mark` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `year` int(4) NOT NULL DEFAULT 2010,
  `engine` varchar(255) NOT NULL,
  `fuel` enum('bensiin','diisel','gaas','hübriid(diisel/elekter)','hübriid(bensiin/elekter)','täiselekter') NOT NULL,
  `transmission` varchar(50) NOT NULL DEFAULT 'automaat',
  `kohad` int(2) NOT NULL DEFAULT 5,
  `price` decimal(4,0) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `seats` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `cars`
--

INSERT INTO `cars` (`id`, `mark`, `model`, `year`, `engine`, `fuel`, `transmission`, `kohad`, `price`, `image`, `status`, `seats`) VALUES
(3, 'Mitsubishi', 'Truck', 2010, 'v8', 'diisel', 'automaat', 5, 13, '?integer=in&ac=consequat&neque=ut&duis=nulla&bibendum=sed&morbi=accumsan&non=felis&quam=ut&nec=at&dui=dolor&luctus=quis&rutrum=odio&nulla=consequat&tellus=varius&in=integer&sagittis=ac&dui=leo&vel=pellentesque&nisl=ultrices&duis=mattis&ac=odio&nibh=donec&', NULL, NULL),
(4, 'Mazda', 'Mazda3', 2010, 'v10', 'gaas', 'automaat', 5, 35, '?orci=pede&eget=justo&orci=lacinia&vehicula=eget&condimentum=tincidunt&curabitur=eget&in=tempus&libero=vel&ut=pede&massa=morbi&volutpat=porttitor&convallis=lorem&morbi=id&odio=ligula&odio=suspendisse&elementum=ornare&eu=consequat&interdum=lectus&eu=in&tin', NULL, NULL),
(5, 'MINI', 'Cooper', 2010, 'v6', 'täiselekter', 'automaat', 5, 56, '?dui=in&luctus=hac&rutrum=habitasse&nulla=platea&tellus=dictumst&in=etiam&sagittis=faucibus&dui=cursus&vel=urna&nisl=ut&duis=tellus&ac=nulla&nibh=ut&fusce=erat&lacus=id&purus=mauris&aliquet=vulputate&at=elementum&feugiat=nullam&non=varius&pretium=nulla&qu', NULL, NULL),
(6, 'Volkswagen', 'Touareg', 2010, 'v8', 'gaas', 'automaat', 5, 95, '?eros=nec&vestibulum=condimentum&ac=neque&est=sapien&lacinia=placerat&nisi=ante&venenatis=nulla&tristique=justo&fusce=aliquam&congue=quis&diam=turpis&id=eget&ornare=elit&imperdiet=sodales&sapien=scelerisque&urna=mauris&pretium=sit&nisl=amet&ut=eros&volutp', NULL, NULL),
(7, 'Panoz', 'Esperante', 2010, 'v6', 'hübriid(bensiin/elekter)', 'automaat', 5, 76, '?cubilia=mus&curae=vivamus&mauris=vestibulum&viverra=sagittis&diam=sapien&vitae=cum&quam=sociis&suspendisse=natoque&potenti=penatibus&nullam=et&porttitor=magnis&lacus=dis&at=parturient&turpis=montes&donec=nascetur&posuere=ridiculus&metus=mus&vitae=etiam&i', NULL, NULL),
(8, 'Mercury', 'Topaz', 2010, 'v10', 'täiselekter', 'automaat', 5, 82, '?morbi=leo&non=maecenas&quam=pulvinar&nec=lobortis&dui=est&luctus=phasellus&rutrum=sit&nulla=amet&tellus=erat&in=nulla&sagittis=tempus&dui=vivamus&vel=in&nisl=felis&duis=eu&ac=sapien&nibh=cursus&fusce=vestibulum&lacus=proin&purus=eu&aliquet=mi&at=nulla&fe', NULL, NULL),
(9, 'Ford', 'Mustang', 2010, 'v8', 'täiselekter', 'automaat', 5, 38, '?nunc=gravida&nisl=sem&duis=praesent&bibendum=id&felis=massa&sed=id&interdum=nisl&venenatis=venenatis&turpis=lacinia&enim=aenean&blandit=sit&mi=amet&in=justo&porttitor=morbi&pede=ut&justo=odio&eu=cras&massa=mi&donec=pede&dapibus=malesuada&duis=in&at=imper', NULL, NULL),
(10, 'Ford', 'E350', 2010, 'v6', 'täiselekter', 'automaat', 5, 78, '?luctus=volutpat&nec=sapien&molestie=arcu&sed=sed&justo=augue&pellentesque=aliquam&viverra=erat&pede=volutpat&ac=in&diam=congue&cras=etiam&pellentesque=justo&volutpat=etiam&dui=pretium&maecenas=iaculis&tristique=justo&est=in&et=hac&tempus=habitasse&semper', NULL, NULL),
(11, 'Mercury', 'Lynx', 2010, 'v8', 'hübriid(bensiin/elekter)', 'automaat', 5, 100, '?ac=quisque&diam=ut&cras=erat&pellentesque=curabitur&volutpat=gravida&dui=nisi&maecenas=at&tristique=nibh&est=in&et=hac&tempus=habitasse&semper=platea&est=dictumst&quam=aliquam&pharetra=augue&magna=quam&ac=sollicitudin&consequat=vitae&metus=consectetuer&s', NULL, NULL),
(12, 'Mercedes-Benz', '500SL', 2010, 'v8', 'hübriid(bensiin/elekter)', 'automaat', 5, 89, '?mi=proin&sit=leo&amet=odio&lobortis=porttitor&sapien=id&sapien=consequat&non=in&mi=consequat&integer=ut&ac=nulla&neque=sed&duis=accumsan&bibendum=felis&morbi=ut&non=at&quam=dolor&nec=quis&dui=odio&luctus=consequat&rutrum=varius&nulla=integer', NULL, NULL),
(13, 'Buick', 'Century', 2010, 'v6', 'bensiin', 'automaat', 5, 9, '?proin=tortor&risus=quis&praesent=turpis&lectus=sed&vestibulum=ante&quam=vivamus&sapien=tortor&varius=duis&ut=mattis&blandit=egestas&non=metus&interdum=aenean&in=fermentum&ante=donec&vestibulum=ut&ante=mauris&ipsum=eget&primis=massa&in=tempor&faucibus=con', NULL, NULL),
(14, 'BMW', 'M3', 2010, 'v8', 'bensiin', 'automaat', 5, 4, '?sed=est&magna=quam&at=pharetra&nunc=magna&commodo=ac&placerat=consequat&praesent=metus&blandit=sapien&nam=ut&nulla=nunc&integer=vestibulum&pede=ante&justo=ipsum&lacinia=primis&eget=in&tincidunt=faucibus&eget=orci&tempus=luctus&vel=et&pede=ultrices&morbi=', NULL, NULL),
(15, 'Subaru', 'Loyale', 2010, 'v8', 'diisel', 'automaat', 5, 60, '?scelerisque=justo&mauris=in&sit=hac&amet=habitasse&eros=platea&suspendisse=dictumst&accumsan=etiam&tortor=faucibus&quis=cursus&turpis=urna&sed=ut&ante=tellus&vivamus=nulla&tortor=ut&duis=erat&mattis=id&egestas=mauris&metus=vulputate&aenean=elementum&ferm', NULL, NULL),
(16, 'Mercedes-Benz', 'C-Class', 2010, 'v8', 'hübriid(diisel/elekter)', 'automaat', 5, 50, '?amet=elementum&justo=in&morbi=hac&ut=habitasse&odio=platea&cras=dictumst&mi=morbi&pede=vestibulum&malesuada=velit&in=id&imperdiet=pretium&et=iaculis&commodo=diam&vulputate=erat&justo=fermentum&in=justo&blandit=nec&ultrices=condimentum&enim=neque&lorem=sa', NULL, NULL),
(17, 'Honda', 'Crosstour', 2010, 'v8', 'hübriid(diisel/elekter)', 'automaat', 5, 64, '?lobortis=proin&est=risus&phasellus=praesent&sit=lectus&amet=vestibulum&erat=quam&nulla=sapien&tempus=varius&vivamus=ut&in=blandit&felis=non&eu=interdum&sapien=in&cursus=ante&vestibulum=vestibulum&proin=ante&eu=ipsum&mi=primis&nulla=in&ac=faucibus&enim=or', NULL, NULL),
(18, 'Honda', 'S2000', 2010, 'v8', 'hübriid(diisel/elekter)', 'automaat', 5, 66, '?eu=laoreet&massa=ut&donec=rhoncus&dapibus=aliquet&duis=pulvinar&at=sed&velit=nisl&eu=nunc&est=rhoncus&congue=dui&elementum=vel&in=sem&hac=sed&habitasse=sagittis&platea=nam&dictumst=congue&morbi=risus&vestibulum=semper&velit=porta&id=volutpat&pretium=quam', NULL, NULL),
(19, 'Suzuki', 'Swift', 2010, 'v10', 'hübriid(bensiin/elekter)', 'automaat', 5, 39, '?at=justo&nunc=etiam&commodo=pretium&placerat=iaculis&praesent=justo&blandit=in&nam=hac&nulla=habitasse&integer=platea&pede=dictumst&justo=etiam&lacinia=faucibus&eget=cursus&tincidunt=urna&eget=ut&tempus=tellus&vel=nulla&pede=ut&morbi=erat&porttitor=id&lo', NULL, NULL),
(20, 'Buick', 'Hearse', 2010, 'v8', 'gaas', 'automaat', 5, 78, '?odio=laoreet&porttitor=ut&id=rhoncus&consequat=aliquet&in=pulvinar&consequat=sed&ut=nisl&nulla=nunc&sed=rhoncus&accumsan=dui&felis=vel&ut=sem&at=sed&dolor=sagittis&quis=nam&odio=congue&consequat=risus&varius=semper&integer=porta&ac=volutpat&leo=quam&pell', NULL, NULL),
(21, 'Dodge', 'D250 Club', 2010, 'v8', 'diisel', 'automaat', 5, 55, '?in=sem&hac=sed&habitasse=sagittis&platea=nam&dictumst=congue&morbi=risus&vestibulum=semper&velit=porta&id=volutpat&pretium=quam&iaculis=pede&diam=lobortis&erat=ligula&fermentum=sit&justo=amet&nec=eleifend&condimentum=pede&neque=libero&sapien=quis&placera', NULL, NULL),
(22, 'Volvo', 'XC90', 2010, 'v10', 'bensiin', 'automaat', 5, 46, '?quis=urna&turpis=ut&sed=tellus&ante=nulla&vivamus=ut&tortor=erat&duis=id&mattis=mauris&egestas=vulputate&metus=elementum&aenean=nullam&fermentum=varius&donec=nulla&ut=facilisi&mauris=cras&eget=non&massa=velit&tempor=nec&convallis=nisi&nulla=vulputate&neq', NULL, NULL),
(23, 'Volkswagen', 'New Beetle', 2010, 'v8', 'diisel', 'automaat', 5, 71, '?mauris=semper&laoreet=rutrum&ut=nulla&rhoncus=nunc&aliquet=purus&pulvinar=phasellus&sed=in&nisl=felis&nunc=donec&rhoncus=semper&dui=sapien&vel=a&sem=libero&sed=nam&sagittis=dui&nam=proin&congue=leo&risus=odio&semper=porttitor&porta=id&volutpat=consequat&', NULL, NULL),
(24, 'GMC', 'Envoy', 2010, 'v10', 'bensiin', 'automaat', 5, 8, '?eget=blandit&elit=ultrices&sodales=enim&scelerisque=lorem&mauris=ipsum&sit=dolor&amet=sit&eros=amet&suspendisse=consectetuer&accumsan=adipiscing&tortor=elit&quis=proin&turpis=interdum&sed=mauris&ante=non&vivamus=ligula&tortor=pellentesque&duis=ultrices&m', NULL, NULL),
(25, 'Mercedes-Benz', 'SL-Class', 2010, 'v10', 'gaas', 'automaat', 5, 100, '?dui=curae&nec=donec&nisi=pharetra&volutpat=magna&eleifend=vestibulum&donec=aliquet&ut=ultrices&dolor=erat&morbi=tortor&vel=sollicitudin&lectus=mi', NULL, NULL),
(26, 'Pontiac', 'Firefly', 2010, 'v6', 'hübriid(diisel/elekter)', 'automaat', 5, 100, '?consequat=ipsum&metus=praesent&sapien=blandit&ut=lacinia&nunc=erat&vestibulum=vestibulum&ante=sed&ipsum=magna&primis=at&in=nunc&faucibus=commodo&orci=placerat&luctus=praesent&et=blandit&ultrices=nam&posuere=nulla&cubilia=integer&curae=pede&mauris=justo&v', NULL, NULL),
(27, 'Plymouth', 'Fury', 2010, 'v8', 'täiselekter', 'automaat', 5, 72, '?habitasse=justo&platea=nec&dictumst=condimentum&maecenas=neque&ut=sapien&massa=placerat&quis=ante&augue=nulla&luctus=justo&tincidunt=aliquam&nulla=quis&mollis=turpis&molestie=eget&lorem=elit&quisque=sodales&ut=scelerisque&erat=mauris&curabitur=sit&gravid', NULL, NULL),
(28, 'Ford', 'Crown Victoria', 2010, 'v10', 'hübriid(diisel/elekter)', 'automaat', 5, 63, '?sed=etiam&vestibulum=pretium&sit=iaculis&amet=justo&cursus=in&id=hac&turpis=habitasse&integer=platea&aliquet=dictumst&massa=etiam&id=faucibus&lobortis=cursus&convallis=urna&tortor=ut&risus=tellus&dapibus=nulla&augue=ut&vel=erat&accumsan=id&tellus=mauris&', NULL, NULL),
(29, 'Buick', 'Century', 2010, 'v6', 'hübriid(bensiin/elekter)', 'automaat', 5, 27, '?cras=turpis&in=sed&purus=ante&eu=vivamus&magna=tortor&vulputate=duis&luctus=mattis&cum=egestas&sociis=metus&natoque=aenean&penatibus=fermentum&et=donec&magnis=ut&dis=mauris&parturient=eget&montes=massa&nascetur=tempor&ridiculus=convallis&mus=nulla&vivamu', NULL, NULL),
(30, 'Chevrolet', 'Corvette', 2010, 'v6', 'gaas', 'automaat', 5, 58, '?habitasse=sit&platea=amet&dictumst=sapien&morbi=dignissim&vestibulum=vestibulum&velit=vestibulum&id=ante&pretium=ipsum&iaculis=primis&diam=in&erat=faucibus&fermentum=orci&justo=luctus&nec=et&condimentum=ultrices&neque=posuere&sapien=cubilia&placerat=cura', NULL, NULL),
(31, 'Mercury', 'Capri', 2010, 'v6', 'hübriid(bensiin/elekter)', 'automaat', 5, 6, '?in=velit&hac=eu&habitasse=est&platea=congue&dictumst=elementum&morbi=in&vestibulum=hac&velit=habitasse&id=platea&pretium=dictumst&iaculis=morbi&diam=vestibulum&erat=velit&fermentum=id&justo=pretium&nec=iaculis&condimentum=diam&neque=erat&sapien=fermentum', NULL, NULL),
(32, 'Toyota', 'Avalon', 2010, 'v6', 'hübriid(diisel/elekter)', 'automaat', 5, 65, '?morbi=eu&non=felis&lectus=fusce&aliquam=posuere&sit=felis&amet=sed&diam=lacus&in=morbi&magna=sem&bibendum=mauris&imperdiet=laoreet&nullam=ut&orci=rhoncus&pede=aliquet&venenatis=pulvinar&non=sed&sodales=nisl&sed=nunc&tincidunt=rhoncus&eu=dui&felis=vel&fus', NULL, NULL),
(33, 'Pontiac', 'Firefly', 2010, 'v6', 'bensiin', 'automaat', 5, 40, '?bibendum=varius&morbi=ut&non=blandit&quam=non&nec=interdum&dui=in&luctus=ante&rutrum=vestibulum&nulla=ante&tellus=ipsum&in=primis&sagittis=in&dui=faucibus&vel=orci&nisl=luctus&duis=et&ac=ultrices&nibh=posuere&fusce=cubilia&lacus=curae&purus=duis&aliquet=', NULL, NULL),
(34, 'Ferrari', '612 Scaglietti', 2010, 'v10', 'hübriid(bensiin/elekter)', 'automaat', 5, 11, '?ultrices=aliquet&enim=maecenas&lorem=leo&ipsum=odio&dolor=condimentum&sit=id&amet=luctus&consectetuer=nec&adipiscing=molestie&elit=sed&proin=justo&interdum=pellentesque&mauris=viverra&non=pede&ligula=ac&pellentesque=diam&ultrices=cras&phasellus=pellentes', NULL, NULL),
(35, 'Lexus', 'LS', 2010, 'v10', 'gaas', 'automaat', 5, 31, '?donec=nulla&dapibus=justo&duis=aliquam&at=quis&velit=turpis&eu=eget&est=elit&congue=sodales&elementum=scelerisque&in=mauris&hac=sit&habitasse=amet&platea=eros', NULL, NULL),
(36, 'Suzuki', 'Aerio', 2010, 'v10', 'hübriid(bensiin/elekter)', 'automaat', 5, 72, '?non=felis&quam=eu&nec=sapien&dui=cursus&luctus=vestibulum&rutrum=proin&nulla=eu&tellus=mi&in=nulla&sagittis=ac&dui=enim&vel=in&nisl=tempor&duis=turpis&ac=nec&nibh=euismod&fusce=scelerisque&lacus=quam&purus=turpis&aliquet=adipiscing&at=lorem&feugiat=vitae', NULL, NULL),
(37, 'Buick', 'LeSabre', 2010, 'v6', 'hübriid(bensiin/elekter)', 'automaat', 5, 76, '?ipsum=rhoncus&dolor=sed&sit=vestibulum&amet=sit&consectetuer=amet&adipiscing=cursus&elit=id&proin=turpis&interdum=integer&mauris=aliquet&non=massa&ligula=id&pellentesque=lobortis&ultrices=convallis&phasellus=tortor&id=risus&sapien=dapibus&in=augue&sapien', NULL, NULL),
(38, 'Porsche', 'Boxster', 2010, 'v8', 'hübriid(bensiin/elekter)', 'automaat', 5, 22, '?bibendum=duis&felis=at&sed=velit&interdum=eu&venenatis=est&turpis=congue&enim=elementum&blandit=in&mi=hac&in=habitasse&porttitor=platea&pede=dictumst&justo=morbi&eu=vestibulum&massa=velit&donec=id&dapibus=pretium&duis=iaculis&at=diam&velit=erat&eu=fermen', NULL, NULL),
(39, 'Audi', 'Allroad', 2010, 'v6', 'hübriid(diisel/elekter)', 'automaat', 5, 79, '?aliquam=nulla&sit=facilisi&amet=cras&diam=non&in=velit&magna=nec&bibendum=nisi&imperdiet=vulputate&nullam=nonummy&orci=maecenas&pede=tincidunt&venenatis=lacus&non=at&sodales=velit&sed=vivamus&tincidunt=vel&eu=nulla&felis=eget&fusce=eros&posuere=elementum', NULL, NULL),
(40, 'Chevrolet', 'Avalanche 2500', 2010, 'v6', 'gaas', 'automaat', 5, 36, '?in=non&hac=velit&habitasse=nec&platea=nisi&dictumst=vulputate&morbi=nonummy&vestibulum=maecenas&velit=tincidunt&id=lacus&pretium=at&iaculis=velit&diam=vivamus&erat=vel&fermentum=nulla&justo=eget&nec=eros&condimentum=elementum&neque=pellentesque&sapien=qu', NULL, NULL),
(41, 'Volkswagen', 'GTI', 2010, 'v10', 'diisel', 'automaat', 5, 26, '?sapien=etiam&cum=pretium&sociis=iaculis&natoque=justo&penatibus=in&et=hac&magnis=habitasse&dis=platea&parturient=dictumst&montes=etiam&nascetur=faucibus&ridiculus=cursus&mus=urna&etiam=ut&vel=tellus&augue=nulla&vestibulum=ut&rutrum=erat&rutrum=id&neque=m', NULL, NULL),
(42, 'Infiniti', 'FX', 2010, 'v8', 'hübriid(bensiin/elekter)', 'automaat', 5, 72, '/nisl/duis/bibendum/felis/sed/interdum.aspx', NULL, NULL),
(43, 'Kia', 'Sorento', 2010, 'v8', 'hübriid(bensiin/elekter)', 'automaat', 5, 99, '/vitae/consectetuer/eget/rutrum/at/lorem.html', NULL, NULL),
(44, 'BMW', '5 Series', 2010, 'v6', 'gaas', 'automaat', 5, 61, '/ut/tellus/nulla/ut/erat.aspx', NULL, NULL),
(45, 'Mitsubishi', 'Mighty Max', 2010, 'v8', 'täiselekter', 'automaat', 5, 25, '/vel/ipsum.jpg', NULL, NULL),
(46, 'Land Rover', 'Range Rover Sport', 2010, 'v8', 'hübriid(bensiin/elekter)', 'automaat', 5, 31, '/at/ipsum.xml', NULL, NULL),
(47, 'Dodge', 'Viper', 2010, 'v10', 'diisel', 'automaat', 5, 13, '/pede/justo/lacinia/eget/tincidunt.json', NULL, NULL),
(48, 'Mazda', 'MX-5', 2010, 'v6', 'gaas', 'automaat', 5, 91, '/vestibulum.aspx', NULL, NULL),
(49, 'Volkswagen', 'Passat', 2010, 'v8', 'hübriid(diisel/elekter)', 'automaat', 5, 56, '/nulla.jsp', NULL, NULL),
(50, 'Acura', 'Integra', 2010, 'v10', 'diisel', 'automaat', 5, 26, '/in/hac/habitasse/platea.xml', NULL, NULL),
(51, 'Ford', 'Mustang', 2010, 'v8', 'täiselekter', 'automaat', 5, 89, '/gravida/nisi/at/nibh/in/hac/habitasse.png', NULL, NULL),
(52, 'Pontiac', 'Solstice', 2010, 'v8', 'hübriid(bensiin/elekter)', 'automaat', 5, 13, '/lectus/suspendisse/potenti.json', NULL, NULL),
(53, 'BMW', 'M5', 2010, 'v8', 'hübriid(diisel/elekter)', 'automaat', 5, 42, '/nibh/in.jpg', NULL, NULL),
(54, 'Ford', 'Windstar', 2010, 'v10', 'hübriid(diisel/elekter)', 'automaat', 5, 20, '/habitasse/platea/dictumst.jsp', NULL, NULL),
(55, 'Chevrolet', 'Camaro', 2010, 'v6', 'bensiin', 'automaat', 5, 47, '/purus/sit/amet.jsp', NULL, NULL),
(56, 'Buick', 'LeSabre', 2010, 'v6', 'täiselekter', 'automaat', 5, 61, '/felis/fusce/posuere/felis/sed/lacus.html', NULL, NULL),
(57, 'Buick', 'LeSabre', 2010, 'v6', 'gaas', 'automaat', 5, 35, '/iaculis/justo/in/hac/habitasse/platea.json', NULL, NULL),
(58, 'Subaru', 'Forester', 2010, 'v10', 'hübriid(diisel/elekter)', 'automaat', 5, 10, '/velit/nec/nisi/vulputate/nonummy/maecenas.js', NULL, NULL),
(59, 'Toyota', 'Land Cruiser', 2010, 'v8', 'gaas', 'automaat', 5, 92, '/diam.html', NULL, NULL),
(60, 'BMW', '3 Series', 2010, 'v6', 'hübriid(bensiin/elekter)', 'automaat', 5, 79, '/consectetuer/adipiscing/elit/proin/interdum/mauris/non.png', NULL, NULL),
(61, 'Buick', 'Coachbuilder', 2010, 'v6', 'diisel', 'automaat', 5, 48, '/pretium/quis/lectus.aspx', NULL, NULL),
(62, 'Lexus', 'GX', 2010, 'v8', 'diisel', 'automaat', 5, 20, '/aliquam/erat/volutpat/in/congue/etiam.jsp', NULL, NULL),
(63, 'Saab', '900', 2010, 'v6', 'hübriid(diisel/elekter)', 'automaat', 5, 13, '/metus/vitae/ipsum/aliquam/non/mauris/morbi.json', NULL, NULL),
(64, 'Volkswagen', 'New Beetle', 2010, 'v8', 'bensiin', 'automaat', 5, 49, '/risus/praesent/lectus/vestibulum/quam/sapien.png', NULL, NULL),
(65, 'Chevrolet', 'Monte Carlo', 2010, 'v6', 'täiselekter', 'automaat', 5, 25, '/id.html', NULL, NULL),
(66, 'Hyundai', 'Elantra', 2010, 'v8', 'hübriid(diisel/elekter)', 'automaat', 5, 82, '/aliquam/sit/amet.png', NULL, NULL),
(67, 'Chrysler', 'Fifth Ave', 2010, 'v6', 'bensiin', 'automaat', 5, 42, '/justo/sollicitudin/ut/suscipit/a.jsp', NULL, NULL),
(68, 'Volkswagen', 'GTI', 2010, 'v8', 'hübriid(bensiin/elekter)', 'automaat', 5, 41, '/felis/sed.aspx', NULL, NULL),
(69, 'Mercedes-Benz', 'E-Class', 2010, 'v10', 'diisel', 'automaat', 5, 44, '/odio/cras.js', NULL, NULL),
(70, 'Mazda', 'RX-7', 2010, 'v6', 'bensiin', 'automaat', 5, 75, '/mauris/enim/leo/rhoncus.xml', NULL, NULL),
(71, 'GMC', 'Sierra 1500', 2010, 'v6', 'diisel', 'automaat', 5, 14, '/ut.aspx', NULL, NULL),
(72, 'GMC', 'Canyon', 2010, 'v6', 'bensiin', 'automaat', 5, 99, '/dolor/sit/amet/consectetuer/adipiscing/elit.xml', NULL, NULL),
(73, 'Ford', 'F350', 2010, 'v10', 'hübriid(diisel/elekter)', 'automaat', 5, 36, '/odio/condimentum/id/luctus/nec.xml', NULL, NULL),
(74, 'Mitsubishi', 'Eclipse', 2010, 'v8', 'hübriid(diisel/elekter)', 'automaat', 5, 66, '/nullam.json', NULL, NULL),
(75, 'Mercury', 'Cougar', 2010, 'v8', 'hübriid(diisel/elekter)', 'automaat', 5, 16, '/proin/interdum.xml', NULL, NULL),
(76, 'Volkswagen', 'GTI', 2010, 'v8', 'täiselekter', 'automaat', 5, 89, '/morbi/non/quam.json', NULL, NULL),
(77, 'Pontiac', 'Chevette', 2010, 'v8', 'hübriid(bensiin/elekter)', 'automaat', 5, 3, '/curabitur/in/libero/ut/massa/volutpat/convallis.html', NULL, NULL),
(78, 'Chevrolet', 'Corvette', 2010, 'v8', 'bensiin', 'automaat', 5, 52, '/amet/lobortis/sapien/sapien/non.js', NULL, NULL),
(79, 'Bentley', 'Continental GT', 2010, 'v6', 'diisel', 'automaat', 5, 51, '/faucibus/orci/luctus/et.xml', NULL, NULL),
(80, 'Saab', '9-5', 2010, 'v10', 'täiselekter', 'automaat', 5, 53, '/morbi/vel/lectus/in/quam/fringilla.jpg', NULL, NULL),
(81, 'Lincoln', 'MKS', 2010, 'v8', 'täiselekter', 'automaat', 5, 64, '/varius/integer/ac/leo/pellentesque.xml', NULL, NULL);

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
