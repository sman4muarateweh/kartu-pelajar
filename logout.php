<?php
session_start();
session_unset();
session_destroy();
setcookie('user_login', '', time() - 3600, "/");
header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");
header("Expires: 0");
echo '<script type="text/javascript">
        location.replace(".."); // Ganti dengan nama file login Anda
      </script>';
exit();
?>
