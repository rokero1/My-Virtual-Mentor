<?php
//Proceso de conexión con la base de datos
include"conexion.php";

//Iniciar Sesión
session_start();

//Validar si se está ingresando con sesión correctamente
if (!$_SESSION){
echo '<script language = javascript>
alert("usuario no autenticado")
self.location = "index.php"
</script>';
}

$id_usuario = $_SESSION['nombres'];
$id_usuario = $_SESSION['idusuario'];
$consulta= "SELECT nombres, usuario FROM usuario WHERE idusuario='".$id_usuario."'" ; 
$resultado= mysql_query($consulta,$conex) or die (mysql_error());
$fila=mysql_fetch_array($resultado);
$usuario= $fila['usuario'];
$nombres= $fila['nombres'];
 
 ?>
 
 
<!DOCTYPE HTML>
<html>

<head>
  <title>My Virtual Mentor</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine&amp;v1" />
  <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz" />
  <link rel="stylesheet" type="text/css" href="style/style.css" />
</head>

<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <h1>Universidad<a href="#">La Salle </a></h1>
        <div class="slogan">My Virtual Mentor </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="current" in the li tag for the selected page - to highlight which page you're on -->
          <li class="current"><a href="principal.php">Inicio</a></li>
  	  <li class="current"><a href="miscursos.php">Mis cursos</a></li>
		  <li class="current"><a href="mistutorias.php">Mis tutorias</a></li>
          <li><a href="desconectar_usuario.php">Cerrar sesión </a></li>
        </ul>
      </div>
    </div>
    <div id="site_content">
      <div id="sidebar_container">
        <img class="paperclip" src="style/paperclip.png" alt="paperclip" />
        <div class="sidebar">
        <!-- insert your sidebar items here -->
        <h3>Bienvenido <?php echo $nombres;?></h3>
        <h3 align="center">&nbsp;</h3>
        <h4>&nbsp;</h4>
        <p><a href="registrousuarios.php"></a></p>
        </div>
      </div>
      <div id="content">
        <!-- insert the page content here -->
        <h1 align="center"></p>
        <h3 align="center" id="sites-page-title-header" xmlns="http://www.w3.org/1999/xhtml"><strong>CURSO DE PROGRAMACION LINEAL </strong></h3>
        <h3 xmlns="http://www.w3.org/1999/xhtml" align="left"><span dir="ltr">Contenido</span></h3>
        <div id="sites-canvas-main">
          <div id="sites-canvas-main-content">
            <table xmlns="http://www.w3.org/1999/xhtml" cellspacing="0">
              <tbody>
                <tr>
                  <td><div dir="ltr">
                    <p><strong>INTRODUCCI&Oacute;N&nbsp;</strong><br>
                        <strong><br>
                        UNIDAD 1&nbsp;</strong><strong>INTRODUCCI&Oacute;N A LA PROGRAMACI&Oacute;N LINEAL&nbsp;</strong><br>
                      CAPITULO 1&nbsp;LA INVESTIGACION DE OPERACIONES&nbsp;<br>
                      Introducci&oacute;n&nbsp;<br>
                      Lecci&oacute;n 1 <a href="pl_1.php">Antecedentes y origen de la I.O&nbsp;</a><br>
                      Lecci&oacute;n 2 &iquest;Qu&eacute; es la Investigaci&oacute;n de operaciones?&nbsp;<br>
                      Lecci&oacute;n 3 Metodolog&iacute;a de la I.O.&nbsp;<br>
                      Lecci&oacute;n 4 Componentes de investigaci&oacute;n de Operaciones&nbsp;</p>
					  <p>Practica Nº 1
                        </p>
                    </p>
					  <p>CAPITULO 2&nbsp;CONJUNTOS CONCAVOS Y CONVEXOS&nbsp;<br>
					    Introducci&oacute;n&nbsp;<br>
					    Lecci&oacute;n 5 Concepto de conjunto convexo&nbsp;<br>
					    Lecci&oacute;n 6 Propiedades de los conjuntos convexos<br>
					    Lecci&oacute;n 7 Ejercicios de aplicaci&oacute;n&nbsp;<br>
					    Lecci&oacute;n 8 Funciones c&oacute;ncavas convexas&nbsp;<br>
					    CAPITULO 3&nbsp;CONCEPTUALIZACION DE LA PROGRAMACION LINEAL&nbsp;<br>
					    Introducci&oacute;n&nbsp;<br>
					    Lecci&oacute;n 9 Concepto&nbsp;<br>
					    Lecci&oacute;n 10 Formulaci&oacute;n del problema de programaci&oacute;n lineal&nbsp;<br>
					    Lecci&oacute;n 11 Modelo general de programaci&oacute;n lineal&nbsp;<br>
					    Lecci&oacute;n 12 Otras formas de modelos de P.L.&nbsp;<br>
					    Lecci&oacute;n 13 Terminolog&iacute;a y conceptos b&aacute;sicos&nbsp;<br>
                        <strong><br>
                        UNIDAD 2&nbsp;</strong><strong>METODOS DE SOLUCION&nbsp;</strong><br>
                        CAPITULO 1&nbsp;METODO GRAFICO&nbsp;<br>
                        Lecci&oacute;n 14 Introducci&oacute;n m&eacute;todo Grafico&nbsp;<br>
                        Lecci&oacute;n 15 Definici&oacute;n&nbsp;<br>
                        Lecci&oacute;n 16 Concepto general del M&eacute;todo Grafico&nbsp;<br>
                        Lecci&oacute;n 17 Pasos para soluci&oacute;n mediante el m&eacute;todo grafico&nbsp;<br>
                        Lecci&oacute;n 18 Ejemplos&nbsp;<br>
                        CAPITULO 2&nbsp;METODO ALGEBRAICO&nbsp;<br>
                        Introducci&oacute;n&nbsp;<br>
                        Lecci&oacute;n 19 Pasos para utilizar un m&eacute;todo Algebraico&nbsp;<br>
                        Lecci&oacute;n 20 Ejemplos desarrollados&nbsp;<br>
                        Lecci&oacute;n 21 Taller&nbsp;<br>
                        CAPITULO 3&nbsp;METODO SIMPLEX&nbsp;<br>
                        Introducci&oacute;n&nbsp;<br>
                        Lecci&oacute;n 22 Pasos para desarrollar el m&eacute;todo Simplex<br>
                        Lecci&oacute;n 23 Dualidad&nbsp;<br>
                        Lecci&oacute;n 24 Comparaci&oacute;n entre el m&eacute;todo simplex y dual &ndash; simplex&nbsp;<br>
                        Lecci&oacute;n 25 An&aacute;lisis de sensibilidad&nbsp;<br>
                        Lecci&oacute;n 26 Taller del m&eacute;todo Simplex&nbsp;<br>
                        Lecci&oacute;n 27 Taller Dualidad&nbsp;<br>
                        Lecci&oacute;n 28 Degeneraci&oacute;n&nbsp;<br>
                        Lecci&oacute;n 29 Problemas de programaci&oacute;n lineal con variables acotadas&nbsp;<br>
                        Lecci&oacute;n 30 Algoritmo de descomposici&oacute;n&nbsp;<br>
                        Lecci&oacute;n 31 La Programaci&oacute;n Lineal basada en los computadores
                        </p>
                          </p>
                  </div></td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
        <p>&nbsp;</p>
		<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/es_LA/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div class="fb-comments" data-href="http://www.MyVirtualTutor.com" data-width="470" data-num-posts="10"></div>
        <p>		</p>
      </div>
    </div>
    <div id="footer">
      <p>Copyright &copy;RCP-ULS2013 </p>
    </div>
  </div>
</body>
</html>
