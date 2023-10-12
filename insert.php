<?php
require "settings/init.php";

if (!empty($_POST["data"])){
    $data = $_POST["data"];
    $file = $_FILES;

    if (!empty($file["prodBillede"]["tmp_name"])){
        move_uploaded_file($file["prodBillede"]["tmp_name"], "uploads/" . basename($file["prodBillede"]["name"]));
    }

    $sql = "INSERT INTO produkter (prodTitel, prodAuthor, prodGenre, prodPublisher, prodLanguage, prodPublishDate, prodFormat, prodPages, prodPrice, prodDescription, prodBillede) values(:prodTitel, :prodAuthor, :prodGenre, :prodPublisher, :prodLanguage, :prodPublishDate, :prodFormat, :prodPages, :prodPrice, :prodDescription, :prodBillede)";
    $bind = [":prodTitel" => $data["prodTitel"], ":prodAuthor" => $data["prodAuthor"], ":prodGenre" => $data["prodGenre"], ":prodPublisher" => $data["prodPublisher"], ":prodLanguage" => $data["prodLanguage"], ":prodPublishDate" => $data["prodPublishDate"], ":prodFormat" => $data["prodFormat"], ":prodPages" => $data["prodPages"], ":prodPrice" => $data["prodPrice"], ":prodDescription" => $data["prodDescription"],
            ":prodBillede" => (!empty($file["prodBillede"]["tmp_name"])) ? $file["prodBillede"]["name"] : null,
    ];

    $db->sql($sql, $bind, false);

    echo "Produktet er nu indsat. <a href='insert.php'>Indsæt et produkt mere</a>";
    header("Location: result.php");
    exit();

}
?>

<!DOCTYPE html>
<html lang="da">
<head>
    <meta charset="utf-8">

    <title>Admin</title>

    <meta name="robots" content="All">
    <meta name="author" content="Udgiver">
    <meta name="copyright" content="Information om copyright">

    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/styles.css" rel="stylesheet" type="text/css">
    <script src="https://kit.fontawesome.com/ddc56212a6.js" crossorigin="anonymous"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Mooli&display=swap" rel="stylesheet">

    <script src="https://cdn.tiny.cloud/1/ovjm1zsqixh11hefby1viqpa0fa0y5g4rx4xzs1vfj4we7tq/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>


    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>

<?php include "includes/nav.php";?>

<div class="container">
<form method="post" action="insert.php" enctype="multipart/form-data">
    <div class="row">

        <div class="col-12 col-lg-6 offset-lg-3 p-3">
            <h2 class="text-primary my-2">Indsæt ny bog</h2>
        </div>

        <div class="col-12 col-lg-6 offset-lg-3 p-3">
            <div class="form-control bg-boxColor">
                <label class="py-1 text-primary" for="prodTitel">Titel på bog:</label>
                <input class="form-control bg-boxColor border border-3 border-white" type="text" name="data[prodTitel]" id="prodTitel" placeholder="Titel" value="">
            </div>
        </div>

        <div class="col-12 col-lg-6 offset-lg-3 p-3">
            <div class="form-control bg-boxColor">
                <label class="py-1 text-primary" for="prodAuthor">Forfatter:</label>
                <input class="form-control bg-boxColor border border-3 border-white" type="text" name="data[prodAuthor]" id="prodAuthor" placeholder="Forfatter" value="">
            </div>
        </div>

        <div class="col-12 col-lg-6 offset-lg-3 p-3">
            <div class="form-control bg-boxColor">
                <label class="py-1 text-primary" for="prodGenre">Genre:</label>
                <input class="form-control bg-boxColor border border-3 border-white" type="text" name="data[prodGenre]" id="prodGenre" placeholder="Genre" value="">
            </div>
        </div>

        <div class="col-12 col-lg-6 offset-lg-3 p-3">
            <div class="form-control bg-boxColor">
                <label class="py-1 text-primary" for="prodPublisher">Forlag:</label>
                <input class="form-control bg-boxColor border border-3 border-white" type="text" name="data[prodPublisher]" id="prodPublisher" placeholder="Forlag" value="">
            </div>
        </div>


        <div class="col-12 col-lg-6 offset-lg-3 p-3">
            <div class="form-control bg-boxColor">
                <label class="py-1 text-primary" for="prodLanguage">Sprog:</label>
                <input class="form-control bg-boxColor border border-3 border-white" type="text" name="data[prodLanguage]" id="prodLanguage" placeholder="Sprog" value="">
            </div>
        </div>

        <div class="col-12 col-lg-6 offset-lg-3 p-3">
            <div class="form-control bg-boxColor">
                <label class="py-1 text-primary" for="prodPublishDate">Udgivelsesdato:</label>
                <input class="form-control bg-boxColor border border-3 border-white" type="date" name="data[prodPublishDate]" id="prodPublishDate" placeholder="Udgivelsesdato" value="">
            </div>
        </div>

        <div class="col-12 col-lg-6 offset-lg-3 p-3">
            <div class="form-control bg-boxColor">
                <label class="py-1 text-primary" for="prodFormat">Format:</label>
                <input class="form-control bg-boxColor border border-3 border-white" type="text" name="data[prodFormat]" id="prodFormat" placeholder="Format" value="">
            </div>
        </div>

        <div class="col-12 col-lg-6 offset-lg-3 p-3">
            <div class="form-control bg-boxColor">
                <label class="py-1 text-primary" for="prodPages">Antal sider:</label>
                <input class="form-control bg-boxColor border border-3 border-white" type="number" name="data[prodPages]" id="prodPages" placeholder="Sider" value="">
            </div>
        </div>

        <div class="col-12 col-lg-6 offset-lg-3 p-3">
            <div class="form-control bg-boxColor">
                <label class="py-1 text-primary" for="prodPrice">Pris:</label>
                <input class="form-control bg-boxColor border border-3 border-white" type="number" step="0.01" name="data[prodPrice]" id="prodPrice" placeholder="Pris" value="">
            </div>
        </div>

        <div class="col-12 col-lg-6 offset-lg-3 p-3">
            <div class="form-control bg-boxColor">
                <label class="py-1 text-primary" for="prodBillede">Produkt billede:</label>
                <input class="form-control bg-boxColor border border-3 border-white" type="file" name="prodBillede" id="prodBillede">
            </div>
        </div>


        <div class="col-12 col-lg-6 offset-lg-3 p-3">
            <div class="form-control bg-boxColor">
                <label class="py-1 text-primary" for="prodDescription">Beskrivelse:</label>
                <textarea class="form-control bg-boxColor border border-3 border-white" name="data[prodDescription]" id="prodDescription"></textarea>

            </div>

        </div>

        <div class="col-12 col-md-6 offset-md-3 p-3">
            <button class="form-control btn btn-button btn-submit" type="submit" id="btnSubmit">
                <strong class="text-white">Opret produkt</strong>
            </button>

        </div>
    </div>
</form>
</div>

<?php include "includes/footer.php";?>

<script src="node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<script>
    tinymce.init({
        selector: 'textarea',
        plugins: 'ai tinycomments mentions anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount checklist mediaembed casechange export formatpainter pageembed permanentpen footnotes advtemplate advtable advcode editimage tableofcontents mergetags powerpaste tinymcespellchecker autocorrect a11ychecker typography inlinecss',
        toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table mergetags | align lineheight | tinycomments | checklist numlist bullist indent outdent | emoticons charmap | removeformat',
        tinycomments_mode: 'embedded',
        tinycomments_author: 'Author name',
        mergetags_list: [
            { value: 'First.Name', title: 'First Name' },
            { value: 'Email', title: 'Email' },
        ],
        ai_request: (request, respondWith) => respondWith.string(() => Promise.reject("See docs to implement AI Assistant"))
    });
</script>
</body>
</html>
