<?php
require_once '../ConexionPHP/conexion.php';

header('Content-Type: application/json; charset=utf-8');

$num_control = "21051412";
$contraseña = "BangtanBTS13$$";

// Usar comillas invertidas ` para nombres de columnas con caracteres especiales
$sql = "SELECT * FROM usuarios WHERE num_control = ? AND `contrasena` = ?";
$stmt = $conexion->prepare($sql);
$stmt->bind_param("ss", $num_control, $contraseña);
$stmt->execute();
$resultado = $stmt->get_result();

if ($resultado->num_rows > 0) {
    echo json_encode(["success" => true, "message" => "Usuario encontrado"]);
} else {
    echo json_encode(["success" => false, "message" => "Usuario no encontrado"]);
}
?>
