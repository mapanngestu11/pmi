<?php 
// mengaktifkan session pada php
session_start();

// menghubungkan php dengan koneksi database
include 'koneksi.php';

// menangkap data yang dikirim dari form login

$username = $_POST['username'];
$password = $_POST['password'];
$nama_instansi = $_POST['nama_instansi'];



// menyeleksi data user dengan username dan password yang sesuai
$login = mysqli_query($koneksi,"select * from tbl_instansi where username='$username' and password='$password' and status='aktif' and nama_instansi='$nama_instansi'");
// menghitung jumlah data yang ditemukan

$cek = mysqli_num_rows($login);

// cek apakah username dan password di temukan pada database
if($cek > 0){

	$data = mysqli_fetch_assoc($login);
	
	// cek jika user login sebagai admin
	if($data['hak_akses']=="pendonor"){
		
	
		// buat session login dan username
		$_SESSION['username'] = $username;
		$_SESSION['nama_instansi'] = $nama_instansi;
		$_SESSION['hak_akses'] = "pendonor";

		// alihkan ke halaman dashboard admin
		header("location:pendonor/index.php");

	}else{

		// alihkan ke halaman login kembali
		header("location:index.php?pesan=gagal");
	}	
	}else{
	header("location:index.php?pesan=gagal");
}

?>