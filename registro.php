<?php
  include'conexion.php';
  $pdo = conectar();

  if (!empty($_POST)) {/* Verifica que al enviar el post no este vacio*/
   $correo = isset($_POST['correo']) ? $_POST['correo'] : '';/* Comprobamos y asignamos las variables */
   $apodo = isset($_POST['apodo']) ? $_POST['apodo'] : ''; 
   $clave = isset($_POST['clave']) ? $_POST['clave'] : '';

   $sen = $pdo->prepare('INSERT INTO usuarixs VALUES (?, ?, ?)');/*hacemos el QUERY ahora insertando*/
   $sen->execute([$correo, $apodo,  $clave]);/*le pasamos como parametro las variables */
   header('Location: registradx.html');

}
?>
