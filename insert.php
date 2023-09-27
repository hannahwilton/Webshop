<?php
require "settings/init.php";

if (!empty($_POST["data"])){
    $data = $_POST["data"];

    $sql = "INSERT INTO produkter (prodNavn, prodBeskrivelse, prodPris) values(:prodNavn, :prodBeskrivelse, :prodPris)";
    $bind = [":prodNavn" => $data["prodNavn"], ":prodBeskrivelse" => $data["prodBeskrivelse"], ":prodPris" => $data["prodPris"]];

    $db->sql($sql, $bind, false);

    echo "produktet er nu indsat. <a href='insert.php'>Indsæt et produkt mere</a>";
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

    <script src="https://cdn.tiny.cloud/1/ovjm1zsqixh11hefby1viqpa0fa0y5g4rx4xzs1vfj4we7tq/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>


    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>

<form method="post" action="insert.php">
    <div class="row">
        <div class="col-12 col-md-6">
            <div class="form-control">
                <label for="prodTitel">Titel på bog</label>
                <input class="form-control" type="text" name="data[prodTitel]" id="prodTitel" placeholder="Titel på bog" value="">
            </div>
        </div>

        <div class="col-12 col-md-6">
            <div class="form-control">
                <label for="prodAuthor">Forfatter</label>
                <input class="form-control" type="text" name="data[prodAuthor]" id="prodAuthor" placeholder="Forfatter" value="">
            </div>
        </div>

        <div class="col-12 col-md-6">
            <div class="form-control">
                <label for="prodGenre">Genre</label>
                <input class="form-control" type="text" name="data[prodGenre]" id="prodGenre" placeholder="Genre" value="">
            </div>
        </div>

        <div class="col-12 col-md-6">
            <div class="form-control">
                <label for="prodPublisher">Forlag</label>
                <input class="form-control" type="text" name="data[prodPublisher]" id="prodPublisher" placeholder="Forlag" value="">
            </div>
        </div>


        <div class="col-12 col-md-6">
            <div class="form-control">
                <label for="prodLanguage">Sprog</label>
                <input class="form-control" type="text" name="data[prodLanguage]" id="prodLanguage" placeholder="Sprog" value="">
            </div>
        </div>

        <div class="col-12 col-md-6">
            <div class="form-control">
                <label for="prodPublishDate">Udgivelsesdato</label>
                <input class="form-control" type="date" name="data[prodPublishDate]" id="prodPublishDate" placeholder="Udgivelsesdato" value="">
            </div>
        </div>

        <div class="col-12 col-md-6">
            <div class="form-control">
                <label for="prodFormat">Format</label>
                <input class="form-control" type="text" name="data[prodFormat]" id="prodFormat" placeholder="Format" value="">
            </div>
        </div>

        <div class="col-12 col-md-6">
            <div class="form-control">
                <label for="prodPages">Antal sider</label>
                <input class="form-control" type="text" name="data[prodPages]" id="prodPages" placeholder="Sider" value="">
            </div>
        </div>

        <div class="col-12 col-md-6">
            <div class="form-control">
                <label for="prodPrice">Pris</label>
                <input class="form-control" type="number" step="0.01" name="data[prodPrice]" id="prodPrice" placeholder="Pris" value="">
            </div>
        </div>


        <div class="col-12">
            <div class="form-control">
                <label for="prodDescription">Beskrivelse</label>
                <textarea class="form-control" name="data[prodDescription]" id="prodDescription"></textarea>

            </div>

        </div>

        <div class="col-12 col-md-6 offset-md-6">
            <button class="form-control btn btn-primary" type="submit" id="btnSubmit">Opret produkt</button>

        </div>
    </div>
</form>


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
