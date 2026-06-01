<?php
session_start();

if (!empty($_SESSION['admin']) && $_SESSION['admin'] === true) {
    header("Location: index.php");
    exit;
}

$error = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $user = $_POST['username'] ?? '';
    $pass = $_POST['password'] ?? '';

    if ($user === 'admin' && $pass === 'admin') {
        $_SESSION['admin'] = true;
        header("Location: index.php");
        exit;
    } else {
        $error = 'Vale kasutajanimi või parool!';
    }
}
?>
<!DOCTYPE html>
<html lang="et">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5" style="max-width: 400px;">
    <h2 class="mb-4">Admin login</h2>

    <?php if (!empty($error)): ?>
        <div class="alert alert-danger"><?= htmlspecialchars($error) ?></div>
    <?php endif; ?>

    <form method="post">
        <div class="mb-3">
            <label class="form-label">Kasutajanimi</label>
            <input type="text" name="username" class="form-control" required value="admin">
        </div>
        <div class="mb-3">
            <label class="form-label">Parool</label>
            <input type="password" name="password" class="form-control" required value="admin">
        </div>
        <button type="submit" class="btn btn-primary w-100">Logi sisse</button>
    </form>

    <a href="/index.php" class="btn btn-link mt-3 w-100">← Avaleht</a>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
