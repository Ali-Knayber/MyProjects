<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Content-Type');

include "connection.php";

$data = json_decode(file_get_contents("php://input"));
$id=$_GET["id"];
$query = "SELECT * FROM items_bid INNER JOIN users on items_bid.user_id=users.user_id WHERE items_bid.item_id = ?;";
$stmt = $connection->prepare($query);

$stmt->bind_param("i", $id);
$stmt->execute();
$results = $stmt->get_result();
while($row=$results->fetch_assoc()){
    $rows[]=$row;
}
$stmt->close();
$connection->close();

$json=json_encode($rows);

echo $json;







?>
