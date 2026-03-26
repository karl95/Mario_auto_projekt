<?php
// *** Protseduuriline *** //
// Sinu andmed
$db_server = 'localhost';
$db_andmebaas = 'auto_rent';
$db_kasutaja = 'karlk';
$db_salasona = 'Passw0rd';


// Ühendus andmebaasiga
$yhendus = mysqli_connect($db_server, $db_kasutaja, $db_salasona, $db_andmebaas);


// Ühenduse kontroll
if (!$yhendus) {
    die('Ei saa ühendust andmebaasiga');
}
?>