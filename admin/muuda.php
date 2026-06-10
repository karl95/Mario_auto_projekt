<?php
session_start();

if (!isset($_SESSION["admin"]) || $_SESSION["admin"] !== true) {
    header("Location: login.php");
    exit;
}

require_once '../config.php';

$rida = [
    'id' => '',
    'mark' => '',
    'model' => '',
    'engine' => '',
    'fuel' => '',
    'price' => '',
    'year' => '',
    'transmission' => '',
    'seats' => '',
    'description' => '',
    'status' => ''
];

if (isset($_GET["editid"])) {
    $id = intval($_GET["editid"]);
    $paring = "SELECT * FROM cars WHERE id = $id";
    $valjund = mysqli_query($yhendus, $paring);
    $rida = mysqli_fetch_assoc($valjund);
}

if (isset($_GET["updateid"])) {
    $id = intval($_GET["updateid"]);

    $mark = $_GET['mark'] ?? '';
    $model = $_GET['model'] ?? '';
    $engine = $_GET['engine'] ?? '';
    $fuel = $_GET['fuel'] ?? '';
    
    $price = (!empty($_GET['price'])) ? floatval($_GET['price']) : 0;
    $year = (!empty($_GET['year'])) ? intval($_GET['year']) : 0;
    $seats = (!empty($_GET['seats'])) ? intval($_GET['seats']) : 0;
    
    $transmission = $_GET['transmission'] ?? '';
    $description = $_GET['description'] ?? '';
    $status = $_GET['status'] ?? '';

    $paring = "
        UPDATE cars SET 
            mark = '$mark',
            model = '$model',
            engine = '$engine',
            fuel = '$fuel',
            price = $price,
            year = $year,
            transmission = '$transmission',
            seats = $seats,
            description = '$description',
            status = '$status'
        WHERE id = $id
    ";

    mysqli_query($yhendus, $paring);
    if (mysqli_affected_rows($yhendus) == 1) {
        header("Location: index.php?msg=uuendatud");
        exit;
    } else {
        $error = "Kirjet ei uuendatud!";
    }
}
?>
<!DOCTYPE html>
<html lang="et">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Muuda auto</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<?php require_once '../header.php'; ?>

<div class="container mt-4">
    <h2>Auto muutmine</h2>

    <a href="index.php" class="btn btn-dark btn-lg mb-3">← Admin avaleht</a>

    <?php if (!empty($error)): ?>
        <div class="alert alert-danger"><?= htmlspecialchars($error) ?></div>
    <?php endif; ?>

    <form action="muuda.php" method="get">
        <input type="hidden" name="updateid" value="<?= $rida['id']; ?>">

        <div class="row g-4">
            <div class="col-sm-6">
                <label class="form-label">Mark</label>
                <input type="text" class="form-control" name="mark" value="<?= $rida['mark']; ?>">

                <label class="form-label mt-2">Model</label>
                <input type="text" class="form-control" name="model" value="<?= $rida['model']; ?>">

                <label class="form-label mt-2">Mootor</label>
                <input type="text" class="form-control" name="engine" value="<?= $rida['engine']; ?>">

                <label class="form-label mt-2">Kütus</label>
                <input type="text" class="form-control" name="fuel" value="<?= $rida['fuel']; ?>">

                <label class="form-label mt-2">Hind (€)</label>
                <input type="number" class="form-control" name="price" value="<?= $rida['price']; ?>">
            </div>

            <div class="col-sm-6">
                <label class="form-label">Aasta</label>
                <input type="number" class="form-control" name="year" value="<?= $rida['year']; ?>">

                <label class="form-label mt-2">Käigukast</label>
                <input type="text" class="form-control" name="transmission" value="<?= $rida['transmission']; ?>">

                <label class="form-label mt-2">Istmete arv</label>
                <input type="number" class="form-control" name="seats" value="<?= $rida['seats']; ?>">

                <label class="form-label mt-2">Muu info</label>
                <input type="text" class="form-control" name="description" value="<?= $rida['description']; ?>">

                <label class="form-label mt-2">Olek</label>
                <input type="text" class="form-control" name="status" value="<?= $rida['status']; ?>">
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
