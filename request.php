<?php
	require 'config.php';

	$id = $_POST['id'];

	$res = mysqli_query($conn, "SELECT * FROM `user`");

	$users = [];
	while($row = mysqli_fetch_assoc($res)) {
		$user = [
			"id" => $row["id"],
			"status" => $status[$row["status"]],
			"status_color" => $status_color[$row["status"]]
		];
		array_push($users, $user);
	}

	$res = mysqli_query($conn, "SELECT * FROM `chat` WHERE `status` = 0");	

	$msg = [];
	if(mysqli_num_rows($res)) {
		while($row = mysqli_fetch_assoc($res)) {
			array_push($msg, $row);
		}
	}
	$json = [];
	array_push($json, $users);
	array_push($json, $msg);

	mysqli_query($conn, "UPDATE `chat` SET `status` = 1 WHERE `to_user` = $id");

	echo json_encode($json);
?>