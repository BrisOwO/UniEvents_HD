<?php
$servername = "db";  
$username = "root";
$password = "root";
$dbname = "unievents";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}
?>

