<?php
session_start();
if (isset($_SESSION['id']) || isset($_COOKIE['user_login'])) {
    header('Location: beranda');
} else {
    header('Location: login');
}
exit();
?>
