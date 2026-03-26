
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Märts 12, 2026 kell 10:57 EL
-- Serveri versioon: 10.4.32-MariaDB
-- PHP versioon: 8.0.30

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
  `engine` varchar(255) NOT NULL,
  `fuel` enum('bensiin','diisel','gaas','hübriid(diisel/elekter)','hübriid(bensiin/elekter)','täiselekter') NOT NULL,
  `price` decimal(4,0) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `cars`
--

INSERT INTO `cars` (`id`, `mark`, `model`, `engine`, `fuel`, `price`, `image`) VALUES
(1, 'Audi', 'Q8', 'V8', 'bensiin', 1500, 'audi Q8.jpg'),
(2, 'Volkswagen', 'Rabbit', 'v10', 'täiselekter', 71, '?felis=vitae&sed=quam&interdum=suspendisse&venenatis=potenti&turpis=nullam&enim=porttitor&blandit=lacus&mi=at&in=turpis&porttitor=donec&pede=posuere&justo=metus&eu=vitae&massa=ipsum&donec=aliquam&dapibus=non&duis=mauris&at=morbi&velit=non&eu=lectus&est=al'),
(3, 'Mitsubishi', 'Truck', 'v8', 'diisel', 13, '?integer=in&ac=consequat&neque=ut&duis=nulla&bibendum=sed&morbi=accumsan&non=felis&quam=ut&nec=at&dui=dolor&luctus=quis&rutrum=odio&nulla=consequat&tellus=varius&in=integer&sagittis=ac&dui=leo&vel=pellentesque&nisl=ultrices&duis=mattis&ac=odio&nibh=donec&'),
(4, 'Mazda', 'Mazda3', 'v10', 'gaas', 35, '?orci=pede&eget=justo&orci=lacinia&vehicula=eget&condimentum=tincidunt&curabitur=eget&in=tempus&libero=vel&ut=pede&massa=morbi&volutpat=porttitor&convallis=lorem&morbi=id&odio=ligula&odio=suspendisse&elementum=ornare&eu=consequat&interdum=lectus&eu=in&tin'),
(5, 'MINI', 'Cooper', 'v6', 'täiselekter', 56, '?dui=in&luctus=hac&rutrum=habitasse&nulla=platea&tellus=dictumst&in=etiam&sagittis=faucibus&dui=cursus&vel=urna&nisl=ut&duis=tellus&ac=nulla&nibh=ut&fusce=erat&lacus=id&purus=mauris&aliquet=vulputate&at=elementum&feugiat=nullam&non=varius&pretium=nulla&qu'),
(6, 'Volkswagen', 'Touareg', 'v8', 'gaas', 95, '?eros=nec&vestibulum=condimentum&ac=neque&est=sapien&lacinia=placerat&nisi=ante&venenatis=nulla&tristique=justo&fusce=aliquam&congue=quis&diam=turpis&id=eget&ornare=elit&imperdiet=sodales&sapien=scelerisque&urna=mauris&pretium=sit&nisl=amet&ut=eros&volutp'),
(7, 'Panoz', 'Esperante', 'v6', 'hübriid(bensiin/elekter)', 76, '?cubilia=mus&curae=vivamus&mauris=vestibulum&viverra=sagittis&diam=sapien&vitae=cum&quam=sociis&suspendisse=natoque&potenti=penatibus&nullam=et&porttitor=magnis&lacus=dis&at=parturient&turpis=montes&donec=nascetur&posuere=ridiculus&metus=mus&vitae=etiam&i'),
(8, 'Mercury', 'Topaz', 'v10', 'täiselekter', 82, '?morbi=leo&non=maecenas&quam=pulvinar&nec=lobortis&dui=est&luctus=phasellus&rutrum=sit&nulla=amet&tellus=erat&in=nulla&sagittis=tempus&dui=vivamus&vel=in&nisl=felis&duis=eu&ac=sapien&nibh=cursus&fusce=vestibulum&lacus=proin&purus=eu&aliquet=mi&at=nulla&fe'),
(9, 'Ford', 'Mustang', 'v8', 'täiselekter', 38, '?nunc=gravida&nisl=sem&duis=praesent&bibendum=id&felis=massa&sed=id&interdum=nisl&venenatis=venenatis&turpis=lacinia&enim=aenean&blandit=sit&mi=amet&in=justo&porttitor=morbi&pede=ut&justo=odio&eu=cras&massa=mi&donec=pede&dapibus=malesuada&duis=in&at=imper'),
(10, 'Ford', 'E350', 'v6', 'täiselekter', 78, '?luctus=volutpat&nec=sapien&molestie=arcu&sed=sed&justo=augue&pellentesque=aliquam&viverra=erat&pede=volutpat&ac=in&diam=congue&cras=etiam&pellentesque=justo&volutpat=etiam&dui=pretium&maecenas=iaculis&tristique=justo&est=in&et=hac&tempus=habitasse&semper'),
(11, 'Mercury', 'Lynx', 'v8', 'hübriid(bensiin/elekter)', 100, '?ac=quisque&diam=ut&cras=erat&pellentesque=curabitur&volutpat=gravida&dui=nisi&maecenas=at&tristique=nibh&est=in&et=hac&tempus=habitasse&semper=platea&est=dictumst&quam=aliquam&pharetra=augue&magna=quam&ac=sollicitudin&consequat=vitae&metus=consectetuer&s'),
(12, 'Mercedes-Benz', '500SL', 'v8', 'hübriid(bensiin/elekter)', 89, '?mi=proin&sit=leo&amet=odio&lobortis=porttitor&sapien=id&sapien=consequat&non=in&mi=consequat&integer=ut&ac=nulla&neque=sed&duis=accumsan&bibendum=felis&morbi=ut&non=at&quam=dolor&nec=quis&dui=odio&luctus=consequat&rutrum=varius&nulla=integer'),
(13, 'Buick', 'Century', 'v6', 'bensiin', 9, '?proin=tortor&risus=quis&praesent=turpis&lectus=sed&vestibulum=ante&quam=vivamus&sapien=tortor&varius=duis&ut=mattis&blandit=egestas&non=metus&interdum=aenean&in=fermentum&ante=donec&vestibulum=ut&ante=mauris&ipsum=eget&primis=massa&in=tempor&faucibus=con'),
(14, 'BMW', 'M3', 'v8', 'bensiin', 4, '?sed=est&magna=quam&at=pharetra&nunc=magna&commodo=ac&placerat=consequat&praesent=metus&blandit=sapien&nam=ut&nulla=nunc&integer=vestibulum&pede=ante&justo=ipsum&lacinia=primis&eget=in&tincidunt=faucibus&eget=orci&tempus=luctus&vel=et&pede=ultrices&morbi='),
(15, 'Subaru', 'Loyale', 'v8', 'diisel', 60, '?scelerisque=justo&mauris=in&sit=hac&amet=habitasse&eros=platea&suspendisse=dictumst&accumsan=etiam&tortor=faucibus&quis=cursus&turpis=urna&sed=ut&ante=tellus&vivamus=nulla&tortor=ut&duis=erat&mattis=id&egestas=mauris&metus=vulputate&aenean=elementum&ferm'),
(16, 'Mercedes-Benz', 'C-Class', 'v8', 'hübriid(diisel/elekter)', 50, '?amet=elementum&justo=in&morbi=hac&ut=habitasse&odio=platea&cras=dictumst&mi=morbi&pede=vestibulum&malesuada=velit&in=id&imperdiet=pretium&et=iaculis&commodo=diam&vulputate=erat&justo=fermentum&in=justo&blandit=nec&ultrices=condimentum&enim=neque&lorem=sa'),
(17, 'Honda', 'Crosstour', 'v8', 'hübriid(diisel/elekter)', 64, '?lobortis=proin&est=risus&phasellus=praesent&sit=lectus&amet=vestibulum&erat=quam&nulla=sapien&tempus=varius&vivamus=ut&in=blandit&felis=non&eu=interdum&sapien=in&cursus=ante&vestibulum=vestibulum&proin=ante&eu=ipsum&mi=primis&nulla=in&ac=faucibus&enim=or'),
(18, 'Honda', 'S2000', 'v8', 'hübriid(diisel/elekter)', 66, '?eu=laoreet&massa=ut&donec=rhoncus&dapibus=aliquet&duis=pulvinar&at=sed&velit=nisl&eu=nunc&est=rhoncus&congue=dui&elementum=vel&in=sem&hac=sed&habitasse=sagittis&platea=nam&dictumst=congue&morbi=risus&vestibulum=semper&velit=porta&id=volutpat&pretium=quam'),
(19, 'Suzuki', 'Swift', 'v10', 'hübriid(bensiin/elekter)', 39, '?at=justo&nunc=etiam&commodo=pretium&placerat=iaculis&praesent=justo&blandit=in&nam=hac&nulla=habitasse&integer=platea&pede=dictumst&justo=etiam&lacinia=faucibus&eget=cursus&tincidunt=urna&eget=ut&tempus=tellus&vel=nulla&pede=ut&morbi=erat&porttitor=id&lo'),
(20, 'Buick', 'Hearse', 'v8', 'gaas', 78, '?odio=laoreet&porttitor=ut&id=rhoncus&consequat=aliquet&in=pulvinar&consequat=sed&ut=nisl&nulla=nunc&sed=rhoncus&accumsan=dui&felis=vel&ut=sem&at=sed&dolor=sagittis&quis=nam&odio=congue&consequat=risus&varius=semper&integer=porta&ac=volutpat&leo=quam&pell'),
(21, 'Dodge', 'D250 Club', 'v8', 'diisel', 55, '?in=sem&hac=sed&habitasse=sagittis&platea=nam&dictumst=congue&morbi=risus&vestibulum=semper&velit=porta&id=volutpat&pretium=quam&iaculis=pede&diam=lobortis&erat=ligula&fermentum=sit&justo=amet&nec=eleifend&condimentum=pede&neque=libero&sapien=quis&placera'),
(22, 'Volvo', 'XC90', 'v10', 'bensiin', 46, '?quis=urna&turpis=ut&sed=tellus&ante=nulla&vivamus=ut&tortor=erat&duis=id&mattis=mauris&egestas=vulputate&metus=elementum&aenean=nullam&fermentum=varius&donec=nulla&ut=facilisi&mauris=cras&eget=non&massa=velit&tempor=nec&convallis=nisi&nulla=vulputate&neq'),
(23, 'Volkswagen', 'New Beetle', 'v8', 'diisel', 71, '?mauris=semper&laoreet=rutrum&ut=nulla&rhoncus=nunc&aliquet=purus&pulvinar=phasellus&sed=in&nisl=felis&nunc=donec&rhoncus=semper&dui=sapien&vel=a&sem=libero&sed=nam&sagittis=dui&nam=proin&congue=leo&risus=odio&semper=porttitor&porta=id&volutpat=consequat&'),
(24, 'GMC', 'Envoy', 'v10', 'bensiin', 8, '?eget=blandit&elit=ultrices&sodales=enim&scelerisque=lorem&mauris=ipsum&sit=dolor&amet=sit&eros=amet&suspendisse=consectetuer&accumsan=adipiscing&tortor=elit&quis=proin&turpis=interdum&sed=mauris&ante=non&vivamus=ligula&tortor=pellentesque&duis=ultrices&m'),
(25, 'Mercedes-Benz', 'SL-Class', 'v10', 'gaas', 100, '?dui=curae&nec=donec&nisi=pharetra&volutpat=magna&eleifend=vestibulum&donec=aliquet&ut=ultrices&dolor=erat&morbi=tortor&vel=sollicitudin&lectus=mi'),
(26, 'Pontiac', 'Firefly', 'v6', 'hübriid(diisel/elekter)', 100, '?consequat=ipsum&metus=praesent&sapien=blandit&ut=lacinia&nunc=erat&vestibulum=vestibulum&ante=sed&ipsum=magna&primis=at&in=nunc&faucibus=commodo&orci=placerat&luctus=praesent&et=blandit&ultrices=nam&posuere=nulla&cubilia=integer&curae=pede&mauris=justo&v'),
(27, 'Plymouth', 'Fury', 'v8', 'täiselekter', 72, '?habitasse=justo&platea=nec&dictumst=condimentum&maecenas=neque&ut=sapien&massa=placerat&quis=ante&augue=nulla&luctus=justo&tincidunt=aliquam&nulla=quis&mollis=turpis&molestie=eget&lorem=elit&quisque=sodales&ut=scelerisque&erat=mauris&curabitur=sit&gravid'),
(28, 'Ford', 'Crown Victoria', 'v10', 'hübriid(diisel/elekter)', 63, '?sed=etiam&vestibulum=pretium&sit=iaculis&amet=justo&cursus=in&id=hac&turpis=habitasse&integer=platea&aliquet=dictumst&massa=etiam&id=faucibus&lobortis=cursus&convallis=urna&tortor=ut&risus=tellus&dapibus=nulla&augue=ut&vel=erat&accumsan=id&tellus=mauris&'),
(29, 'Buick', 'Century', 'v6', 'hübriid(bensiin/elekter)', 27, '?cras=turpis&in=sed&purus=ante&eu=vivamus&magna=tortor&vulputate=duis&luctus=mattis&cum=egestas&sociis=metus&natoque=aenean&penatibus=fermentum&et=donec&magnis=ut&dis=mauris&parturient=eget&montes=massa&nascetur=tempor&ridiculus=convallis&mus=nulla&vivamu'),
(30, 'Chevrolet', 'Corvette', 'v6', 'gaas', 58, '?habitasse=sit&platea=amet&dictumst=sapien&morbi=dignissim&vestibulum=vestibulum&velit=vestibulum&id=ante&pretium=ipsum&iaculis=primis&diam=in&erat=faucibus&fermentum=orci&justo=luctus&nec=et&condimentum=ultrices&neque=posuere&sapien=cubilia&placerat=cura'),
(31, 'Mercury', 'Capri', 'v6', 'hübriid(bensiin/elekter)', 6, '?in=velit&hac=eu&habitasse=est&platea=congue&dictumst=elementum&morbi=in&vestibulum=hac&velit=habitasse&id=platea&pretium=dictumst&iaculis=morbi&diam=vestibulum&erat=velit&fermentum=id&justo=pretium&nec=iaculis&condimentum=diam&neque=erat&sapien=fermentum'),
(32, 'Toyota', 'Avalon', 'v6', 'hübriid(diisel/elekter)', 65, '?morbi=eu&non=felis&lectus=fusce&aliquam=posuere&sit=felis&amet=sed&diam=lacus&in=morbi&magna=sem&bibendum=mauris&imperdiet=laoreet&nullam=ut&orci=rhoncus&pede=aliquet&venenatis=pulvinar&non=sed&sodales=nisl&sed=nunc&tincidunt=rhoncus&eu=dui&felis=vel&fus'),
(33, 'Pontiac', 'Firefly', 'v6', 'bensiin', 40, '?bibendum=varius&morbi=ut&non=blandit&quam=non&nec=interdum&dui=in&luctus=ante&rutrum=vestibulum&nulla=ante&tellus=ipsum&in=primis&sagittis=in&dui=faucibus&vel=orci&nisl=luctus&duis=et&ac=ultrices&nibh=posuere&fusce=cubilia&lacus=curae&purus=duis&aliquet='),
(34, 'Ferrari', '612 Scaglietti', 'v10', 'hübriid(bensiin/elekter)', 11, '?ultrices=aliquet&enim=maecenas&lorem=leo&ipsum=odio&dolor=condimentum&sit=id&amet=luctus&consectetuer=nec&adipiscing=molestie&elit=sed&proin=justo&interdum=pellentesque&mauris=viverra&non=pede&ligula=ac&pellentesque=diam&ultrices=cras&phasellus=pellentes'),
(35, 'Lexus', 'LS', 'v10', 'gaas', 31, '?donec=nulla&dapibus=justo&duis=aliquam&at=quis&velit=turpis&eu=eget&est=elit&congue=sodales&elementum=scelerisque&in=mauris&hac=sit&habitasse=amet&platea=eros'),
(36, 'Suzuki', 'Aerio', 'v10', 'hübriid(bensiin/elekter)', 72, '?non=felis&quam=eu&nec=sapien&dui=cursus&luctus=vestibulum&rutrum=proin&nulla=eu&tellus=mi&in=nulla&sagittis=ac&dui=enim&vel=in&nisl=tempor&duis=turpis&ac=nec&nibh=euismod&fusce=scelerisque&lacus=quam&purus=turpis&aliquet=adipiscing&at=lorem&feugiat=vitae'),
(37, 'Buick', 'LeSabre', 'v6', 'hübriid(bensiin/elekter)', 76, '?ipsum=rhoncus&dolor=sed&sit=vestibulum&amet=sit&consectetuer=amet&adipiscing=cursus&elit=id&proin=turpis&interdum=integer&mauris=aliquet&non=massa&ligula=id&pellentesque=lobortis&ultrices=convallis&phasellus=tortor&id=risus&sapien=dapibus&in=augue&sapien'),
(38, 'Porsche', 'Boxster', 'v8', 'hübriid(bensiin/elekter)', 22, '?bibendum=duis&felis=at&sed=velit&interdum=eu&venenatis=est&turpis=congue&enim=elementum&blandit=in&mi=hac&in=habitasse&porttitor=platea&pede=dictumst&justo=morbi&eu=vestibulum&massa=velit&donec=id&dapibus=pretium&duis=iaculis&at=diam&velit=erat&eu=fermen'),
(39, 'Audi', 'Allroad', 'v6', 'hübriid(diisel/elekter)', 79, '?aliquam=nulla&sit=facilisi&amet=cras&diam=non&in=velit&magna=nec&bibendum=nisi&imperdiet=vulputate&nullam=nonummy&orci=maecenas&pede=tincidunt&venenatis=lacus&non=at&sodales=velit&sed=vivamus&tincidunt=vel&eu=nulla&felis=eget&fusce=eros&posuere=elementum'),
(40, 'Chevrolet', 'Avalanche 2500', 'v6', 'gaas', 36, '?in=non&hac=velit&habitasse=nec&platea=nisi&dictumst=vulputate&morbi=nonummy&vestibulum=maecenas&velit=tincidunt&id=lacus&pretium=at&iaculis=velit&diam=vivamus&erat=vel&fermentum=nulla&justo=eget&nec=eros&condimentum=elementum&neque=pellentesque&sapien=qu'),
(41, 'Volkswagen', 'GTI', 'v10', 'diisel', 26, '?sapien=etiam&cum=pretium&sociis=iaculis&natoque=justo&penatibus=in&et=hac&magnis=habitasse&dis=platea&parturient=dictumst&montes=etiam&nascetur=faucibus&ridiculus=cursus&mus=urna&etiam=ut&vel=tellus&augue=nulla&vestibulum=ut&rutrum=erat&rutrum=id&neque=m'),
(42, 'Infiniti', 'FX', 'v8', 'hübriid(bensiin/elekter)', 72, '/nisl/duis/bibendum/felis/sed/interdum.aspx'),
(43, 'Kia', 'Sorento', 'v8', 'hübriid(bensiin/elekter)', 99, '/vitae/consectetuer/eget/rutrum/at/lorem.html'),
(44, 'BMW', '5 Series', 'v6', 'gaas', 61, '/ut/tellus/nulla/ut/erat.aspx'),
(45, 'Mitsubishi', 'Mighty Max', 'v8', 'täiselekter', 25, '/vel/ipsum.jpg'),
(46, 'Land Rover', 'Range Rover Sport', 'v8', 'hübriid(bensiin/elekter)', 31, '/at/ipsum.xml'),
(47, 'Dodge', 'Viper', 'v10', 'diisel', 13, '/pede/justo/lacinia/eget/tincidunt.json'),
(48, 'Mazda', 'MX-5', 'v6', 'gaas', 91, '/vestibulum.aspx'),
(49, 'Volkswagen', 'Passat', 'v8', 'hübriid(diisel/elekter)', 56, '/nulla.jsp'),
(50, 'Acura', 'Integra', 'v10', 'diisel', 26, '/in/hac/habitasse/platea.xml'),
(51, 'Ford', 'Mustang', 'v8', 'täiselekter', 89, '/gravida/nisi/at/nibh/in/hac/habitasse.png'),
(52, 'Pontiac', 'Solstice', 'v8', 'hübriid(bensiin/elekter)', 13, '/lectus/suspendisse/potenti.json'),
(53, 'BMW', 'M5', 'v8', 'hübriid(diisel/elekter)', 42, '/nibh/in.jpg'),
(54, 'Ford', 'Windstar', 'v10', 'hübriid(diisel/elekter)', 20, '/habitasse/platea/dictumst.jsp'),
(55, 'Chevrolet', 'Camaro', 'v6', 'bensiin', 47, '/purus/sit/amet.jsp'),
(56, 'Buick', 'LeSabre', 'v6', 'täiselekter', 61, '/felis/fusce/posuere/felis/sed/lacus.html'),
(57, 'Buick', 'LeSabre', 'v6', 'gaas', 35, '/iaculis/justo/in/hac/habitasse/platea.json'),
(58, 'Subaru', 'Forester', 'v10', 'hübriid(diisel/elekter)', 10, '/velit/nec/nisi/vulputate/nonummy/maecenas.js'),
(59, 'Toyota', 'Land Cruiser', 'v8', 'gaas', 92, '/diam.html'),
(60, 'BMW', '3 Series', 'v6', 'hübriid(bensiin/elekter)', 79, '/consectetuer/adipiscing/elit/proin/interdum/mauris/non.png'),
(61, 'Buick', 'Coachbuilder', 'v6', 'diisel', 48, '/pretium/quis/lectus.aspx'),
(62, 'Lexus', 'GX', 'v8', 'diisel', 20, '/aliquam/erat/volutpat/in/congue/etiam.jsp'),
(63, 'Saab', '900', 'v6', 'hübriid(diisel/elekter)', 13, '/metus/vitae/ipsum/aliquam/non/mauris/morbi.json'),
(64, 'Volkswagen', 'New Beetle', 'v8', 'bensiin', 49, '/risus/praesent/lectus/vestibulum/quam/sapien.png'),
(65, 'Chevrolet', 'Monte Carlo', 'v6', 'täiselekter', 25, '/id.html'),
(66, 'Hyundai', 'Elantra', 'v8', 'hübriid(diisel/elekter)', 82, '/aliquam/sit/amet.png'),
(67, 'Chrysler', 'Fifth Ave', 'v6', 'bensiin', 42, '/justo/sollicitudin/ut/suscipit/a.jsp'),
(68, 'Volkswagen', 'GTI', 'v8', 'hübriid(bensiin/elekter)', 41, '/felis/sed.aspx'),
(69, 'Mercedes-Benz', 'E-Class', 'v10', 'diisel', 44, '/odio/cras.js'),
(70, 'Mazda', 'RX-7', 'v6', 'bensiin', 75, '/mauris/enim/leo/rhoncus.xml'),
(71, 'GMC', 'Sierra 1500', 'v6', 'diisel', 14, '/ut.aspx'),
(72, 'GMC', 'Canyon', 'v6', 'bensiin', 99, '/dolor/sit/amet/consectetuer/adipiscing/elit.xml'),
(73, 'Ford', 'F350', 'v10', 'hübriid(diisel/elekter)', 36, '/odio/condimentum/id/luctus/nec.xml'),
(74, 'Mitsubishi', 'Eclipse', 'v8', 'hübriid(diisel/elekter)', 66, '/nullam.json'),
(75, 'Mercury', 'Cougar', 'v8', 'hübriid(diisel/elekter)', 16, '/proin/interdum.xml'),
(76, 'Volkswagen', 'GTI', 'v8', 'täiselekter', 89, '/morbi/non/quam.json'),
(77, 'Pontiac', 'Chevette', 'v8', 'hübriid(bensiin/elekter)', 3, '/curabitur/in/libero/ut/massa/volutpat/convallis.html'),
(78, 'Chevrolet', 'Corvette', 'v8', 'bensiin', 52, '/amet/lobortis/sapien/sapien/non.js'),
(79, 'Bentley', 'Continental GT', 'v6', 'diisel', 51, '/faucibus/orci/luctus/et.xml'),
(80, 'Saab', '9-5', 'v10', 'täiselekter', 53, '/morbi/vel/lectus/in/quam/fringilla.jpg'),
(81, 'Lincoln', 'MKS', 'v8', 'täiselekter', 64, '/varius/integer/ac/leo/pellentesque.xml');

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