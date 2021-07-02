<?php 
	session_start();
 
	// cek apakah yang mengakses halaman ini sudah login
	if($_SESSION['hak_akses']==""){
		header("location:../index.php?pesan=gagal");
	}
 
	?>
<?php


echo $_SESSION['username']; 
 echo $_SESSION['nama_instansi']; 



?>