<?php

?>
<html>
	<head>
		<title>login</title>
	</head>
	<body>
		<?=form_open("index.php/Proyecto/validar"); ?>
			<label>usuario</label>
			<input  type="text" name="nombre"/>
			<br>
			<label>clave</label>
			<input  type="text" name="clave"/>
			<br />
			<input type="submit" name="btnlogin" value="login"/>
		</form>
	</body>
</html>