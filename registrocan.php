<?php

$nombre = isset($_POST['nombre']) ? $_POST['nombre'] : '';
$artistx = isset($_POST['artistx']) ? $_POST['artistx'] : '';
$genero = isset($_POST['genero']) ? $_POST['genero'] : '';
$link = isset($_POST['link']) ? $_POST['link'] : '';

try {

    $conexion = new PDO("mysql:host=localhost;port=3306;dbname=rechilas", "root", "");
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);

    $pdo = $conexion->prepare('INSERT INTO canciones(nombre, artistx, genero, link) VALUES(?, ?, ?, ?)');
    $pdo->bindParam(1, $nombre);
    $pdo->bindParam(2, $artistx);
    $pdo->bindParam(3, $genero);
    $pdo->bindParam(4, $link);
    $pdo->execute() or die(print($pdo->errorInfo()));

    echo json_encode('true');

} catch(PDOException $error) {
    echo $error->getMessage();
    die();
}