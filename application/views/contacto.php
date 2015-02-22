<?php

?>
<html>	
	<head>
	<title>Templo MIddas</title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url("css/contacto.css") ?>"/>
	</head>
	<body>
			<div id="contenedor">
			<?php echo form_open("index.php/Boliche/contacto") ?>
			<fieldset>
				<legend>DEJE UN MENSAJE</legend>
				<label for="asunto">Asunto</label>
				<input type="text" name="asunto"/><br/>
				<label for="mensaje">Mensaje</label><br/>
				<textarea name="mensaje" rows="10" cols="50"></textarea><br/>
				<input type="submit" name="enviar" value="enviar"/>
				
			</fieldset>
			<span>
			<?php
			 echo $alerta;
			 echo validation_errors(); 
			?></span>
			</form>
			</div>
	</body>
</html>
