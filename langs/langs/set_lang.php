<?php
switch ($_SESSION['language']) {
case 'Maanyan':
	include_once $path."langs/maanyan.php";
	break;
case 'Indonesian':
	include_once $path."langs/indonesian.php";
	break;
case 'Japanese':
	include_once $path."langs/japanese.php";
	break;
case 'English':
	include_once $path."langs/english.php";
	break;
case 'Arabic':
	include_once $path."langs/arabic.php";
	break;
default:
	$_SESSION['language'] = "Indonesian";
	include_once $path."langs/indonesian.php";
	break;
}
?>
