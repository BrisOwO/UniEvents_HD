<?php
$servername = "unievents-db"; // 👈 nombre del contenedor MySQL
$username = "root";
$password = "root";           // 👈 misma contraseña que pusiste en docker run -e MYSQL_ROOT_PASSWORD
$dbname = "unievents";

// Crear conexión
$mysqli = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($mysqli->connect_errno) {
    die("Error de conexión a MySQL (" . $mysqli->connect_errno . "): " . $mysqli->connect_error);
}
?>

