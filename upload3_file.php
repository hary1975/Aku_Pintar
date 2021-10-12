<?php
include('config.php');
include('action_upload.php');
ini_set("display_errors","Off");
?>
<style type="text/css">
	.table{
		font:normal 12px Tahoma,verdana;
		border:silver 1px solid;
		width:350px;
	}
	.table tr td{
		border-bottom:silver 1px solid;
		border-right:silver 1px solid;
		padding:0 5px 0 5px;
	}
	.table tr td.title{
		font:bold 12px Tahoma,verdana;
		background-color:#999999;
		color:#000000;
	}
	input{
		font:normal 12px Tahoma,verdana;
	}
	#eror{
		width:345px;;
		border:red 1px solid;
		margin-left:auto;
		margin-right:auto;
		margin-bottom:5px;
		padding:0 0 0 5px;
	}
	#msg{
		width:345px;;
		border:green 1px solid;
		margin-left:auto;
		margin-right:auto;
		margin-bottom:5px;
		padding:0 0 0 5px;
	}
</style>
<form method="post" enctype="multipart/form-data" action="">
<table width="412" align="center" cellpadding="0" cellspacing="0" class="table">
<tr>
	<td colspan="2" height="25" class="title">Form Upload File</td>
</tr>
<tr>
	<td width="100">Masukan Nis Siswa</td>
	<td><input type="text" name="nis" /></td>
</tr>

<tr>
	<td width="100">File</td>
	<td><input type="file" name="data_upload" /></td>
</tr>
<tr>
	<td width="100" valign="top">Keterangan</td>
	<td><textarea name="keterangan" cols="30" rows="3"></textarea></td>
</tr>
<tr>
	<td></td>
	<td><input type="submit" name="btnUpload" value="Upload" /></td>
</tr>
</table>
</form>

<hr>
<b>List File PDF</b>
<table width="651" border='0' cellpadding="2" cellspacing="1" bgcolor="#000000">
<tr>
 <th width="378" bgcolor="#CCFF00">Judul</th>
  <th bgcolor="#CCFF00" width="143">Password</th>
 <th bgcolor="#CCFF00" width="143">View</th>
 <th bgcolor="#CCFF00" width="133">Hapus</th>
</tr>
<?php
$query=mysql_query("SELECT * FROM file_upload ORDER BY id DESC");
while($data=mysql_fetch_array($query))
{
?>
<tr>
 <td bgcolor="#ffffff"><?php echo $data[filename];?></td>
  <td bgcolor="#ffffff"><?php echo $data[pass];?></td>
 <th bgcolor="#ffffff"><a href="vieww.php?id=<?php echo $data[id];?>">Lihat File</a></th>
 <th bgcolor="#ffffff"><a href="hapus.php?id=<?php echo $data[id];?>">Hapus File</a></th>
</tr>
<?php
}
?>
</table>
</body>&nbsp;</h1>
