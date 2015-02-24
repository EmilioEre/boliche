<?php

?>
<html>	
	<head>
	<title>Templo MIddas</title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url("css/login.css") ?>"/>
	</head>
	<body>
		<div id="contenedor">
			<?php echo form_open("index.php/Boliche/login") ?>
			<fieldset>
				<legend>ACCEDE A BENEFICIOS</legend>
				<label for="usuario">Usuario</label>
				<input type="text" name="usuario"/><br/>
				<label for="clave">Clave</label>
				<input type="text" name="clave"/><br/>
				<input type="submit" name="Ingresar" value="Ingresar"/>
				
			</fieldset>
			<span>			
			 <?php
			 echo $alerta;
			 
			?></span> 
			
			</form>
			 <?php
			 if(isset($activar))
			 {
			 ?>
			 <form action="http://localhost/boliche/index.php/Boliche/subirfoto" method="POST" enctype="multipart/form-data">
			<fieldset>
				<legend>SUBIR UNA FOTO</legend>
				foto:<input type="file" name="foto"/><br/>
				fecha:<input type="date" name="fecha"/><br/>
				<input type="submit" name="Subir" value="Subir"/>
				
			</fieldset>
			 
			
			</form>
			 <?php	
			 }
			 
			?>
			</div>			
	</body>
</html>
