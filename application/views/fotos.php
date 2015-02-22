<?php

?>
<html>
	<head>
	<title>Templo MIddas</title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url("css/foto.css") ?>"/>
	</head>
	<body>
	<?php
		foreach ($fotos->result() as $foto)
		{
	?>
			<div id="menufoto">
				<img src="<?php echo base_url("fotos/$foto->nombre_archivo") ?>"/>
				<span><?php echo "$foto->fecha" ?></span>
			</div>
	<?php		
		}
	?>
	</body>
</html>
