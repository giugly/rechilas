<?php

function conectar() {

$direccion='localhost';
$usuario='root'; 
$passwd='';
$nombredb= 'rechilas';

try{

   return new PDO('mysql:host=' . $direccion . ';dbname=' .$nombredb  . ';charset=utf8', $usuario, $passwd);

}catch (PDOException $exception) { 
exit('No se pudo conectar a la base de datos');

   }
}
?>