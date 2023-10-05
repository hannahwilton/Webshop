<?php
require "settings/init.php";

$produkter = $db->sql("SELECT * FROM produkter WHERE prodId = 46");

?>

<!DOCTYPE html>
<html lang="da">
<head>
    <meta charset="utf-8">

    <title>Produkt</title>

    <meta name="robots" content="All">
    <meta name="author" content="Udgiver">
    <meta name="copyright" content="Information om copyright">

    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/styles.css" rel="stylesheet" type="text/css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Mooli&display=swap" rel="stylesheet">

    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>

<?php
foreach ($produkter as $produkt)
?>

    <div class="container">
        <div class="row m-2 pt-3">
            <div class="col-12 col-md-4 messageBox">
                <div class="bg-boxColor p-3">
                    <img class="borderBox" src="uploads/<?php echo $produkt->prodBillede; ?>">
                </div>
            </div>


            <div class="col-12 col-md-8">
                <div class="row m-md-3 m-lg-5 mt-md-0 mt-lg-0 ">
                    <div class="col-12 py-3">
                        <h2 class="fw-bold"><?php echo $produkt->prodTitel; ?></h2>
                    </div>

                    <div class="col-12 py-3 pt-0">
                        <h4>Af: <?php echo $produkt->prodAuthor; ?></h4>
                    </div>

                    <div class="col-12 py-3 pt-0">
                        <h4><?php echo $produkt->prodGenre; ?></h4>
                    </div>

                    <div class="col-12 py-3">
                        <h4 class="fw-bold">Pris: <?php echo number_format($produkt->prodPrice, 2, ",", "."); ?></h4>
                    </div>

                    <div class="col-6 col-md-4 d-grid">
                        <button class="text-center px-3 btn btn-button text-white fw-bold">Køb</button>
                    </div>

                    <div class="col-12">
                        <h5 class="py-3">Beskrivelse:</h5>
                        <p><?php echo $produkt->prodDescription; ?></p>
                    </div>

                    <div class="col-12 ">
                        <h5 class="py-4">Forlag: <?php echo $produkt->prodPublisher . "<br>"; ?></h5>
                    </div>

                    <div class="col-12">
                        <h5 class="py-4 pt-0">Udgivelsesdato: <?php echo $produkt->prodPublishDate . "<br>"; ?></h5>
                    </div>

                    <div class="col-12">
                        <h5 class="py-4 pt-0">Sprog:  <?php echo $produkt->prodLanguage . "<br>"; ?></h5>
                    </div>

                    <div class="col-12">
                        <h5 class="py-4 pt-0"> <?php echo $produkt->prodFormat . "<br>"; ?></h5>
                    </div>

                    <div class="col-12">
                        <h5 class="py-4 pt-0">Sideantal: <?php echo $produkt->prodPages . "<br>"; ?></h5>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>



<script src="node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

