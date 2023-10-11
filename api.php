<?php
require "settings/init.php";

$data = json_decode(file_get_contents('php://input'), true);

header('Content-Type: application/json; charset=utf-8');

$data["password"] = "KickPHP";

if (isset($data["password"]) && $data["password"] == "KickPHP"){

    $sql = "SELECT * FROM produkter WHERE 1=1";
    $bind = [];

    if (!empty($data["nameSearch"])){
        $sql .= " AND prodTitel LIKE CONCAT('%', :prodTitel, '%')";
        $bind[":prodTitel"] = $data["nameSearch"];

    }

    if (!empty($data["priceSearch"])){
        $sql .= " AND prodPrice LIKE CONCAT('%', :prodPrice, '%')";
        $bind[":prodPrice"] = $data["priceSearch"];

    }

    if (!empty($data["authorSearch"])){
        $sql .= " AND prodAuthor LIKE CONCAT ('%', :prodAuthor, '%')";
        $bind[":prodAuthor"] = $data["authorSearch"];

    }


    $sql .= " ORDER BY prodTitel";

    $produkter = $db->sql($sql, $bind);
    header("HTTP/1.1 200 OK");

    echo json_encode($produkter);


} else{
    header("HTTP/1.1 401 Unauthorized");
    $error["errorMessage"] = "Dit kodeord var forkert";
    echo json_encode($error);

}
?>