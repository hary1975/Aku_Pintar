<?php
include "config.php";
?>
<!DOCTYPE html>
<html>
<head>
 <title>Aplikasi Untuk Mengupload File PDF Dengan PHP | belajarwebpedia.com</title>
 <style type="text/css">
 body {
  font-family: verdana;
  font-size: 12px;
 }
 a {
  text-decoration: none;
  color: #3050F3;
 }
 a:hover {
  color: #000F5E;
 } 
</style>
</head>
<body>
<?php
$id    = mysql_real_escape_string($_GET['id']);
$query = mysql_query("SELECT * FROM file_upload WHERE id='$id' ");
$data= mysql_fetch_array($query);
$folder	= './upload/';
?>
<h1>Aplikasi Untuk Mengupload File PDF Dengan PHP</h1>
<hr>
<p><b>Judul:</b> <?php echo $data['filename'];?> | <a href='upload.php'> Kembali</a>| <a href='download.php?id=<?php echo $data['id'];?>'>Download File</a></p>
<p>
  <embed src="upload/<?php echo $data['filename'];?>" type="application/pdf" width="742" height="574" ></embed>
</p>
</body>
</html>