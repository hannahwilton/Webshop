<!DOCTYPE html>
<html lang="da">
<head>
	<meta charset="utf-8">
	
	<title>Oversigt</title>
	
	<meta name="robots" content="All">
	<meta name="author" content="Udgiver">
	<meta name="copyright" content="Information om copyright">
	
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="css/styles.css" rel="stylesheet" type="text/css">
    <script src="https://kit.fontawesome.com/ddc56212a6.js" crossorigin="anonymous"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Mooli&display=swap" rel="stylesheet">
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>

<?php include "includes/nav.php";?>


<div class="container">

    <h2 class="text-center text-primary mt-5">Alle bøger</h2>


	<div class="products">
		<div class="filter p-5">

			<div class="row">
                <h5 class="my-2">Filtrer:</h5>
				<div class="col-md-4 col-md-4 my-5 mt-0">
					<input type="search" class="form-control nameSearch border border-2 border-boxColor" placeholder="Søg efter titel">
				</div>

                <div class="col-md-4 col-md-4 my-5 mt-0">
                    <input type="search" class="form-control priceSearch border border-2 border-boxColor" placeholder="Søg efter pris">
                </div>

                <div class="col-md-4 col-md-4 my-5 mt-0">
                    <input type="search" class="form-control authorSearch border border-2 border-boxColor" placeholder="Søg efter forfatter">
                </div>
			</div>


			<div class="items">

			</div>

		</div>
	</div>
</div>

<?php include "includes/footer.php";?>


<script src="node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>


<script type="module">

	import Products from "./js/products.js";

	const products = new Products();
	products.init();
</script>
</body>
</html>
