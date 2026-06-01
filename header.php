<?php
// Käivitame sessiooni, kui veel ei ole
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
?>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
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

                <?php if (!empty($_SESSION['admin']) && $_SESSION['admin'] === true): ?>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">
                            Admin keskkond
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="/admin/index.php">Admin avaleht</a></li>
                            <li><a class="dropdown-item" href="/admin/lisa.php">Lisa auto</a></li>
                            <li><a class="dropdown-item" href="/admin/index.php">Muuda / kustuta</a></li>
                            <li><a class="dropdown-item" href="/admin/logout.php">Logi välja</a></li>
                        </ul>
                    </li>
                <?php else: ?>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/login.php">Admin login</a>
                    </li>
                <?php endif; ?>

            </ul>

            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Otsi...">
                <button class="btn btn-outline-success" type="submit">Otsi</button>
            </form>
        </div>

    </div>
</nav>
