<?php
	session_start();
	include '../php/session.php';
?>

<!DOCTYPE html>
<html>
<head>
	<title>About</title>
	<link rel="stylesheet" type="text/css" href="../css/body.css">
    <link rel="stylesheet" type="text/css" href="../css/nav.css">
    <link rel="stylesheet" type="text/css" href="../css/adminNav.css">
	<link rel="stylesheet" type="text/css" href="../css/about.css">
</head>
<body>
	<?php
		if(isset($_SESSION['id']) || isset($_COOKIE['remember'])){
			if($c_type == '0'){
				include '../views/sellerNav.html';
			} else if($c_type == '1'){
				include '../views/buyerNav.html';
			} else if($c_type == '2'){
				include '../views/dealerNav.html';
			} else if($c_type == '3'){
				include '../views/adminNav.html';
			}
			
		} else {
			include '../views/nav.html';
		}
	?>
	<p>This website is an online service marketplace. Here you can find home services and the service provider will be your neighbor. Make your life more convenient and hassle-free.</p>
</body>
</html>