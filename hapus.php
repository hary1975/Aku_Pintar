<?php
include "config.php";
$id    = mysql_real_escape_string($_GET['id']);
$query = mysql_query("DELETE FROM file_upload WHERE id='$id' ");
header('location:upload4_file.php?pesan=hapus-berhasil');
?>