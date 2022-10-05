<?php
	$db = mysqli_connect('local host', 'root', '1234', 'mysitedb') or die('Fail');
?>

<html>
	<body>
		<h1>Conexion establecida</h1>
		<?php
		// Lanzar una query
			$query = 'SELECT * FROM tCanciones';
			mysqli_query($db, $query) or die('Query error');
			$query = 'SELECT * FROM tCanciones';
			$result = mysqli_query($db, $query)  or die('Query error');
			// Recorrer el resultado
			while ($row = mysqli_fetch_array($result)) {
				echo $row['titulo'];
				echo '<br>';
				echo $row[2];
				echo '<br>';
			}
		mysqli_close($db);
		?>

		<ul>
			
		</ul>

	</body>
</html>
