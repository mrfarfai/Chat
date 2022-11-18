<?php 
	require 'config.php';

	$id = $_POST['id'];
	$from = $_POST['from'];
	$to = $_POST['to'];

	$res = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM `user` WHERE `id` = $from"));
	$st = min(max(-2, $res['status'] - 2 + $id - 2), 2) + 2;

	mysqli_query($conn, "UPDATE `user` SET `status` = $st WHERE `id` = $from");
	
	mysqli_query($conn, "INSERT INTO `chat` (`from_user`, `to_user`, `msg`, `status` , `send_dt`) VALUES ($from, $to, '{[$id]}', 0, NOW())");
?>