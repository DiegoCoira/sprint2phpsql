<?php
	$db = mysqli_connect('local host', 'root', '1234', 'mysitedb') or die('Fail');
?>

<html>
	<body>
		<h1>Conexion establecida</h1>
		<table>
			<?php
			// Lanzar una query
			$select = 'SELECT * FROM tUsuarios';
			$query = mysqli_query($db, $query)  or die('Query error');
			while($row = mysqli_fetch_array($query)) {
					<h3>tUsuarios</h3>
					echo '<li>'.$row[1].'</li>';
					echo '<li>'.$row[2].'</li>';
					echo '<li>'.$row[3].'</li>';
					echo '<li>'.$row[4].'</li>';
					echo '<li>'.$row[5].'</li>';
			}
			?>
			<?php
				$select = 'SELECT * FROM tCanciones';
				$query = mysqli_query($db,$query) or die('Query error')
				while ($row = mysqli_fetch_array($query)) {
					<ul>
					echo '<li id='$row[1]'href=/detail.php?id='$row[1]'>'.$row[1].'</li>';						echo '<li>'.$row[2].'</li>';						echo '<li src='.$row[3]'>'.$row[3].'>''</li>';
					echo '<li>'.$row[4].'</li>';
					echo '<li>'.$row[5].'</li>';
					echo '<li>'.$row[6].'</li>';
					</ul>
				}
			<?php
				$select = 'SELECT * FROM tComentarios';
				$query = mysqli_query($db,$select) or die('Query error')
				while($row = mysqli_fetch_array($query)){
					<ul>
					<h3>tComentarios</h3>
					echo '<li>'.$row[1].'</li>';
					echo '<li>'.$row[2].'</li>';
					echo '<li>'.$row[3].'</li>';
					echo '<li>'.$row[4].'</li>';
					</ul>
				}
			?>
		mysqli_close($db);
	</body>
</html>
