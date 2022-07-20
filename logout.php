<?php
session_start();
include "config/connect.php";
$myid = $_SESSION['id'];
$online_status = "0";
$setStatus = $conn->prepare("UPDATE signup SET online = :online_status WHERE id = :myid");
$setStatus->bindParam(':online_status',$online_status,PDO::PARAM_INT);
$setStatus->bindParam(':myid',$myid,PDO::PARAM_INT);
$setStatus->execute();
session_destroy();
session_unset();
header("location: index");
exit;
?>
