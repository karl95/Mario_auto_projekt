<?php
require_once "config.php";
require_once "header.php";
?>
<!DOCTYPE html>
<html lang="et">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Autorent</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<h1 class="text-center mt-3">Auto rent</h1>

<!-- menüü -->
    <div class="container">

        <a class="navbar-brand" href="/index.php">Autorent</a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mainMenu">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="mainMenu">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                <li class="nav-item">
                    <a class="nav-link" href="/singlecar.php">Autode nimekiri</a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">
                        Admin keskkond
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/admin/index.php">Admin avaleht</a></li>
                        <li><a class="dropdown-item" href="/admin/lisa.php">Lisa auto</a></li>
                        <li><a class="dropdown-item" href="/admin/muuda.php">Muuda auto</a></li>
                        <li><a class="dropdown-item" href="/admin/kustuta.php">Kustuta auto</a></li>
                    </ul>
                </li>

            </ul>

            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Otsi...">
                <button class="btn btn-outline-success" type="submit">Otsi</button>
            </form>
        </div>

    </div>
<!-- /menüü -->

<!-- sisu -->
<div class="container mt-4">
    <div class="row row-cols-1 row-cols-md-3 g-4">

        <?php
        $paring = "SELECT * FROM cars LIMIT 9";
        $valjund = mysqli_query($yhendus, $paring);

        while ($rida = mysqli_fetch_assoc($valjund)):
        ?>
            <div class="col">
                <div class="card h-100 shadow-sm">
                    <img src="https://loremflickr.com/400/250/<?= $rida['mark'] ?>" class="card-img-top">

                    <div class="card-body">
                        <h5 class="card-title">
                            <?= $rida['mark'] . " " . $rida['model'] ?>
                        </h5>

                        <p>Kütus: <?= $rida['fuel'] ?></p>
                        <p>Mootor: <?= $rida['engine'] ?></p>
                        <p>Hind: <?= $rida['price'] ?> €</p>

                        <a href="singlecar.php?id=<?= $rida['id'] ?>" class="btn btn-dark w-100">Rendi</a>
                    </div>
                </div>
            </div>
        <?php endwhile; ?>

    </div>
</div>
<!-- /sisu -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
