<?php include("config.php"); ?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Single car</title>
  </head>
  <body>
    <h1>Single car</h1>
<!-- menüü -->
        <div class="container">
            <a href="/index.php" class="btn btn-dark btn-lg mb-3">
            ← Avaleht
            </a>

                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"/>
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
<!-- /menüü -->

<?php
        $paring = "SELECT * FROM cars WHERE id=25";
        $valjund = mysqli_query($yhendus, $paring);
        $rida = mysqli_fetch_assoc($valjund);


        //while($rida = mysqli_fetch_assoc($valjund)){
        //var_dump($rida);
      ?>

<!-- sisu -->
    <div class="container mt-4">
        <div class="row">
            <div class="col-sm-6">
                <img src="https://loremflickr.com/400/250/<?php echo $rida ['mark']; ?>" class="card-img-top" alt="audi">
            </div>
            <div class="col-sm-6">
                <h1><?php echo $rida["mark"]; ?> <?php echo $rida["model"]; ?></h1>
                <p>Mootor:  <?php echo $rida["engine"]; ?></p>
                <p>Kütus:  <?php echo $rida["fuel"]; ?></p>
                <p>Aasta:  <?= $rida["year"]; ?></p>
                <p>Staatus:  <?php echo $rida["status"]; ?></p>
                <p>Käigukast:  <?php echo $rida["transmission"]; ?></p>
                <p>Istmed:  <?php echo $rida["seats"]; ?></p>
                <p class="fs-5">Hind:  <?php echo $rida["price"]; ?></p>
                <a href="#" class="btn btn-dark w-100">Rendi auto</a>
            </div>
        </div>
    </div>
<!-- /sisu -->

<!--Andmebaas:   
    https:\\localhost/phpmyadmin
    kasutajanimi: karlk ja parool: Passw0rd
-->

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  </body>
</html>
