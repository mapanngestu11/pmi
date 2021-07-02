<?php 
// mengaktifkan session pada php
session_start();

// menghubungkan php dengan koneksi database
include 'koneksi.php';

// menangkap data yang dikirim dari form login
$username = $_POST['username'];
$password = $_POST['password'];


// menyeleksi data user dengan username dan password yang sesuai
$login = mysqli_query($koneksi,"select * from tbl_user where username='$username' and password='$password'");
// menghitung jumlah data yang ditemukan
    
$cek = mysqli_num_rows($login);

// cek apakah username dan password di temukan pada database
if($cek > 0){

	$data = mysqli_fetch_assoc($login);

	// cek jika user login sebagai admin
	if($data['hak_akses']=="admin"){

		// buat session login dan username
		$_SESSION['username'] = $username;
		$_SESSION['hak_akses'] = "admin";
		// alihkan ke halaman dashboard admin
		header("location:admin/index.php");

	}else if($data['hak_akses']=="tim survei"){
		// buat session login dan username
		$_SESSION['username'] = $username;
		$_SESSION['hak_akses'] = "tim survei";

		header("location:tim_survei/index.php");

	}
	else if($data['hak_akses']=="koordinator"){
		// buat session login dan username
		$_SESSION['username'] = $username;
		$_SESSION['hak_akses'] = "koordinator";

		header("location:koordinator/index.php");

	}else{

		// alihkan ke halaman login kembali
		header("location:index.php?pesan=gagal");
	}	
	}else{
	header("location:index.php?pesan=gagal");
}

?>