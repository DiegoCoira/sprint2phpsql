<?php
	$db = mysqli_connect('local host', 'root', '1234', 'mysitedb') or die('Fail');
?>

<html>
	<body>
		<h1>Conexion establecida</h1>
		<?php
		// Lanzar una query
			$query = 'SELECT * FROM tUsuarios';
			mysqli_query($db, $query) or die('Query error');
			$query = 'SELECT * FROM tUsuarios';
			$row = mysqli_query($db, $query)  or die('Query error');
		?>
		<table>
			<ul><h3>tUsuarios</h3>
				<?php
					echo '<li id= href="/detail.php?id='.$row[1].'</li>';
					echo '<li>'.$row[2].'</li>';
					echo '<li>'.$row[3].'</li>';
					echo '<li>'.$row[4].'</li>';
					echo '<li>'.$row[5].'</li>';
				?>
			</ul>
				<?php
					$query = 'SELECT * FROM tCanciones';
					$row = mysql_query($db,$query) or die('Query error');
				?>
			<ul><h3>tCanciones</h3>
				<?php
				echo '<li>'.$row[1].'</li>';
				echo '<li>'.$row[2].'</li>';
				echo '<li src='.$row[3].'>''</li>';
				echo '<li>'.$row[4].'</li>';
				echo '<li>'.$row[5].'</li>';
				echo '<li>'.$row[6].'</li>';
				?>
			</ul>
				<?php
					$query = 'SELECT * FROM tComentarios';
					$row = mysql_query($db,$query) or die('Query error')
				?>
			<ul><h3>tComentarios</h3>
				<?php
				echo '<li>'.$row[1].'</li>';
				echo '<li>'.$row[2].'</li>';
				echo '<li>'.$row[3].'</li>';
				echo '<li>'.$row[4].'</li>';
				?>
			</ul>
		mysqli_close($db);
	</body>
</html>
