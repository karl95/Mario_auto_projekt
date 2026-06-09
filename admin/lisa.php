<?php
ob_start(); // <--- LISA SEE KÄSK SIIA!
session_start();

if (!isset($_SESSION["admin"]) || $_SESSION["admin"] !== true) {
    header("Location: login.php");
    exit;
}

require_once '../config.php';
?>
<!DOCTYPE html>
<html lang="et">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lisa auto</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<?php require_once '../header.php'; ?>

<div class="container mt-4">
    <h2>Auto lisamine</h2>

    <a href="index.php" class="btn btn-dark btn-lg mb-3">← Admin avaleht</a>

    <?php
    if (!empty($_GET)) {
        $mark = $_GET['mark'] ?? '';
        $model = $_GET['model'] ?? '';
        $engine = $_GET['engine'] ?? '';
        $fuel = $_GET['fuel'] ?? '';
        $price = $_GET['price'] ?? '';
        $year = $_GET['year'] ?? '';
        $transmission = $_GET['transmission'] ?? '';
        $seats = $_GET['seats'] ?? '';
        $description = $_GET['description'] ?? '';
        $status = $_GET['status'] ?? '';

        $sql = "
            INSERT INTO cars 
                (mark, model, engine, fuel, price, year, transmission, seats, description, status)
            VALUES 
                ('$mark', '$model', '$engine', '$fuel', '$price', '$year', '$transmission', '$seats', '$description', '$status')
        ";

        mysqli_query($yhendus, $sql);
        if (mysqli_affected_rows($yhendus) == 1) {
            header("Location: index.php?msg=lisatud");
            exit;
        } else {
            echo "<div class='alert alert-danger'>Kirjet ei lisatud!</div>";
        }
    }
    ?>

    <form action="lisa.php" method="get">
        <div class="row g-4">
            <div class="col-sm-6">
                <label class="form-label">Mark</label>
                <input type="text" class="form-control" name="mark" required>

                <label class="form-label mt-2">Model</label>
                <input type="text" class="form-control" name="model" required>

                <label class="form-label mt-2">Mootor</label>
                <input type="text" class="form-control" name="engine" required>

                <label class="form-label mt-2">Kütus</label>
                <input type="text" class="form-control" name="fuel" required>

                <label class="form-label mt-2">Hind (€)</label>
                <input type="number" class="form-control" name="price" required>
            </div>

            <div class="col-sm-6">
                <label class="form-label">Aasta</label>
                <input type="number" class="form-control" name="year" required>

                <label class="form-label mt-2">Käigukast</label>
                <input type="text" class="form-control" name="transmission" required>

                <label class="form-label mt-2">Istmete arv</label>
                <input type="number" class="form-control" name="seats" required>

                <label class="form-label mt-2">Muu info</label>
                <input type="text" class="form-control" name="description">

                <label class="form-label mt-2">Olek</label>
                <input type="text" class="form-control" name="status" required>
            </div>

            <div class="mt-3">
                <input type="submit" value="Salvesta" class="btn btn-success btn-lg">
            </div>
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
