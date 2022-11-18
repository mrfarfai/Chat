<?php
	require 'config.php';

	function status($text, $user) {
		global $dic;
		global $conn;
		$query = "SELECT * FROM `user` WHERE `id` = $user";
		$res = mysqli_fetch_assoc(mysqli_query($conn, $query));

		$chars = ['!', ',', '.', '?'];
		$text = str_replace($chars, '', $text);

		$words = explode(' ', $text);

		$count = 0;
		$st = $res['status'] - 2;
		foreach ($words as $word) {
			$word = mb_strtolower($word);
			if($dic[$word] === 0 || $dic[$word] > 0) {
				$st += $dic[$word] - 2;
				$count++;
			}
		}
		$st = min(max(-2, $st), 2) + 2;
		
		if($count) {
			$final = $st;
			$query = "UPDATE `user` SET `status` = $final WHERE `id` = $user";
			mysqli_query($conn, $query);
		}
	}

	$from = $_POST['from'];
	$to = $_POST['to'];
	$msg = $_POST['msg'];

	status($msg, $from);

	mysqli_query($conn, "INSERT INTO `chat` (`from_user`, `to_user`, `msg`, `status`, `send_dt`) VALUES ($from, $to, '$msg', 0, NOW())");

?>