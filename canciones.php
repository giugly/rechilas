<?php
include 'conexion.php';
    $pdo = conectar();
    $sen = $pdo -> prepare('SELECT * FROM canciones ORDER BY id_cancion');
    $sen -> execute();
    $canciones = $sen -> fetchAll(PDO::FETCH_ASSOC);
?>

<html>
<body>
    <title>Canciones recomendadas</title>
    <header>
        <div>
            <ul id="menu">
                <li id="titulo">Recomendaciones chilas</li>
            </ul>
        </div>
    </header>

    <nav>
        <ul class="tira-h">
            <li><a href="base.html">Inicio</a></li>
            <li><a href="registrous.html">Registrarse</a></li>
            <li>
                <a href="registrocan.html">Recomendar</a>
            </li>

            <li>
                <a href="canciones.php">Recomendaciones</a>
            </li>

            <li><a href="info.html">Info</a></li>
        </ul>
    </nav>

    <ul id="menu">
        <h2><li id="titulo">Canciones recomendados por otrxs usuarixs!</li></h2>
    </ul>


    <div id="lista">
        <?php foreach ($canciones as $cancion): ?>
                <p><a  id="links" href="<?=$cancion['link'] ?>"><?=$cancion['nombre'] ?> de <?=$cancion['artistx'] ?></a></p>
        <?php endforeach;?>
    </div>

    <div id="logo"align=center>
        <img src="img/logo.png" width="200" height="200">
    </div>
</html>
</body>

<style>
    @font-face{
        font-family:titulospunk;
        src: url(fuentes/ShonenPunk-negritas.ttf);
    }

    @font-face{
        font-family:textonormal;
        src: url(fuentes/ugly.otf);
    }

    @font-face{
        font-family:links;
        src: url(fuentes/paf.ttf);
    }
    @font-face{
        font-family:WillRock;
        src: url(fuentes/WillRock.ttf);
    }

    body{
        background: #090A09;
        color: #0033C7;
        padding: 0px;
        background-image: url(img/vynils.PNG);
        background-size: cover;
    }

    *::selection {
        background-color: white;
        color: black;
    }

    header{
        font-family:titulospunk;
        color: white;
        font-size: 50px;
        margin: 50px auto;
        width: 1300px;
    }

    #menu{
        padding: 5px ;
        text-align: center;
    }

    #menu ul{
        margin: 0;
        padding: 0;
    }
    #menu li{
        display: inline-block;
        padding: 10px
        vertical-align: middle;
    }

    header div ul #menu{
        color: white;
        text-decoration: none;
    }

    nav{
       max-width: 1200px;
       margin: auto;
       background-color: white;
       font-size: 20px;
       margin-top: 50px;
       font-family: WillRock;
       background-image:linear-gradient(to right,#BEDCFA,#98ACF8,#505BDA,#0033C7);
    }

    .tira-h{
       list-style: none;
       display: flex;
       justify-content: space-around;
    }

    .tira-h > li > a{
       display: block;
       padding: 15px 20px;
       color: white;
       text-decoration: none;
    }

    .tira-h > li:hover{
       background-image:linear-gradient(to right,#98ACF8,#505BDA,#0033C7);
    }

    .tira-v{
       position: absolute;
       display: none;
       list-style: none;
       width: 200px;
       background-color: rgba(0, 0, 0, 0.5);
    }

    .tira-h li:hover .tira-v{
       display: block;
    }

    #lista{
        margin-right: 15%;
        margin-left: 100px;
        font-family:WillRock;
        color: #0033C7;
        font-size:25px;
        text-decoration:none;
    }

    #links{
        color: #506399;
        font-size:25px;
        text-decoration:none;
    }
    #links:hover{
        text-decoration:underline;
    }

    #links:active{
        color: #B3C2EE;
        text-decoration:none;
    }

    h2{
        font-family:titulospunk;
        font-size:20px;
    }
</style>