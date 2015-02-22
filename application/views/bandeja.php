<?php

?>
<html>
	<head>
	<title>Templo MIddas</title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url("css/bandeja.css") ?>"/>
	</head>
	<body>
	<div id="contenedor"> 
		<div id="encabezado">
			<div id="titulo">
			</div>
			<div id="menuh"> 
				<ul>
					<li><a href="<?php echo site_url('index.php/Boliche/novedad');?>" target="centro">INICIO</a></li>
					<li><a href="<?php echo site_url('index.php/Boliche/shows');?>" target="centro">SHOWS</a></li>
					<li><a href="<?php echo site_url('index.php/Boliche/fotos');?>" target="centro">FOTOS</a></li>
					<li><a href="<?php echo site_url('index.php/Boliche/ubicacion');?>" target="centro">UBICACION</a></li>
					<li><a href="<?php echo site_url('index.php/Boliche/contacto');?>" target="centro">CONTACTO</a></li>
					<li id="btnlogin"><a href="<?php echo site_url('index.php/Boliche/login');?>" target="centro">LOGIN</a></li>
				</ul>
			</div>
		</div>
		<div id="cuerpo">
			<iframe id="ifra" src="<?php echo site_url('index.php/Boliche/novedad');?>"
			 name="centro" height="100%" width="100%" frameborder="0"></iframe>
		</div>
		<div id="pie">
			<h2></h2>
		</div>
	</div>
	</body>
</html>
