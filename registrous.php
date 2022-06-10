<?php

$correo = isset($_POST['correo']) ? $_POST['correo'] : '';
$usuario = isset($_POST['usuario']) ? $_POST['usuario'] : '';
$contra = isset($_POST['contra']) ? $_POST['contra'] : '';

try {

    $conexion = new PDO("mysql:host=localhost;port=3306;dbname=rechilas", "root", "");
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);

    $pdo = $conexion->prepare('INSERT INTO usuarixs(correo, usuario, contra) VALUES(?, ?, ?)');
    $pdo->bindParam(1, $correo);
    $pdo->bindParam(2, $usuario);
    $pdo->bindParam(3, $contra);

    $pdo->execute() or die(print($pdo->errorInfo()));

    echo json_encode('true');

} catch(PDOException $error) {
    echo $error->getMessage();
    die();
}