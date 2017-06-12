<html>
<body>

<?php
echo "<pre>";var_dump($_POST['address']);echo "</pre>";
echo "<pre>";var_dump($_POST['city']);echo "</pre>";
echo "<pre>";var_dump($_POST['state']);echo "</pre>";
echo "<pre>";var_dump($_POST['news']);echo "</pre>";
echo "<pre>";var_dump($_POST['format']);echo "</pre>";

// Connection data
$hostdb = 'localhost';
$portdb = '8889';
$namedb = 'ideas-in-motion-test';
$userdb = 'Steve';
$passdb = 'Gambit123';

try {
	// Connect and create the PDO object
	$dbh = new PDO("mysql:host=$hostdb; port=$portdb; dbname=$namedb", $userdb, $passdb);

	// format arrays for sql insert
	$news = $_POST['news'];
	$format = $_POST['format'];
	
	// Define an insert query
	$sql = "INSERT INTO `form` 
	(
		`address`, 
		`city`, 
		`state`,
		`news[0]`,
		`news[1]`,
		`news[2]`,
		`news[3]`,
		`format[0]`,
		`format[1]`,
		`format[2]`,
		`format[3]`,
		`other`
	)
	
	VALUES 
	( 
		'" . $_POST['address'] . "',
		'" . $_POST['city'] . "',
		'" . $_POST['state'] . "',
		'" . $news[0] . "',
		'" . $news[1] . "',
		'" . $news[2] . "',
		'" . $news[3] . "',
		'" . $format[0] . "',
		'" . $format[1] . "',
		'" . $format[2] . "',
		'" . $format[3] . "',
		'" . $_POST['other'] . "'
	)";
	
	// execute query
	$dbh->exec($sql);
	
	// and now we're done; close it
	$dbh = null;
} catch (PDOException $e) {
	print "Error!: " . $e->getMessage() . "<br/>";
	die();
}

?>
</body>
</html>

