<?php
	$db= mysqli_connect('localhost','root','1234','web_canciones') or die('Fail');
?>
<html>
	<body>
		<?php
			$cancion_id = $_POST['cancion_id'];
			$comentario = $_POST['new_coment'];

			$query = "INSERT INTO tcomentarios(comentario,cancion_id, usuario_id) VALUES ('".$comentario."',".$cancion_id.",NULL";

			mysqli_query($db, $query) or die ('Error');

			echo "<p>Nuevo Comentario ";
			echo mysqli_insert_id($db);

			echo "<a href='/detail.php?cancion_id=".$cancion_id."'>Volver>/a>";
			mysqli_close($db);
		?>
	</body>
</html>

