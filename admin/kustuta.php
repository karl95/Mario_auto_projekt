<?php
session_start();

// Admini kontroll
if (!isset($_SESSION["admin"]) || $_SESSION["admin"] !== true) {
    header("Location: login.php");
    exit;
}

require_once '../config.php';

if (isset($_GET['id'])) {
    $id = intval($_GET['id']);

    $paring = "DELETE FROM cars WHERE id = $id";
    mysqli_query($yhendus, $paring);

    header("Location: index.php?msg=kustutatud");
    exit;
} else {
    echo "Viga: ID puudub!";
}
?>
