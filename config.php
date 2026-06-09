<?php
// *** Protseduuriline *** //
$db_server = 'db';           // Ühtib docker-compose.yml teenuse nimega
$db_andmebaas = 'cr_rent';    // Ühtib MYSQL_DATABASE väärtusega
$db_kasutaja = 'autorent';    // Ühtib MYSQL_USER väärtusega
$db_salasona = 'autorent';    // Ühtib MYSQL_PASSWORD väärtusega

// Ühendus andmebaasiga
$yhendus = mysqli_connect($db_server, $db_kasutaja, $db_salasona, $db_andmebaas);

// Ühenduse kontroll
if (!$yhendus) {
    die('Ei saa ühendust andmebaasiga: ' . mysqli_connect_error());
}
?>
