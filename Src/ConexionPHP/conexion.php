<?php
$servername = "db"; 
$username = "root";
$password = "root";
$database = "unievents";

$conexion = new mysqli($servername, $username, $password, $database);

if ($conexion->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}
?>
