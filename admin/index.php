<?php
session_start();

// Admini kontroll
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
    <title>Admin – Autode haldus</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<?php require_once '../header.php'; ?>

<div class="container mt-4">

    <h2>Admin – Autode haldus</h2>

    <a href="/index.php" class="btn btn-dark btn-lg mb-3">← Avaleht</a>
    <a href="lisa.php" class="btn btn-success btn-lg mb-3">+ Lisa uus auto</a>

    <?php if (!empty($_GET['msg'])): ?>
        <div class="alert alert-success">
            <?= htmlspecialchars($_GET['msg']) ?>
        </div>
    <?php endif; ?>

    <table class="table table-striped table-bordered">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Mark</th>
                <th>Model</th>
                <th>Hind</th>
                <th>Aasta</th>
                <th>Olek</th>
                <th>Tegevused</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $paring = "SELECT * FROM cars ORDER BY id DESC";
            $valjund = mysqli_query($yhendus, $paring);

            while ($rida = mysqli_fetch_assoc($valjund)):
            ?>
            <tr>
                <td><?= $rida['id'] ?></td>
                <td><?= $rida['mark'] ?></td>
                <td><?= $rida['model'] ?></td>
                <td><?= $rida['price'] ?> €</td>
                <td><?= $rida['year'] ?></td>
                <td><?= $rida['status'] ?></td>
                <td>
                    <a href="muuda.php?editid=<?= $rida['id'] ?>" class="btn btn-warning btn-sm">Muuda</a>
                    <a href="kustuta.php?id=<?= $rida['id'] ?>" class="btn btn-danger btn-sm"
                       onclick="return confirm('Kas oled kindel, et soovid kustutada?')">Kustuta</a>
                </td>
            </tr>
            <?php endwhile; ?>
        </tbody>
    </table>

</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
