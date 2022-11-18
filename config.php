<?php
	$db_host = "localhost";
	$db_user = "root";
	$db_pass = "root";
	$db_name = "chat_hack";

	$conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

	$status = ['ужасно', 'плохо', 'нормально', 'хорошо', 'прекрасно'];
	$status_color = ['#ff3a3a', '#ffc233', '#edff00', '#7eff50', '#8bdeff'];

	$dic = [
		"прекрасно" => 4,
		"хорошо" => 3,
		"нормально" => 2,
		"норм" => 2,
		"плохо" => 1,
		"ужасно" => 0,
		"ужас" => 0,
		"не плохо" => 2,
		"круто" => 3,
		"отлично" => 4,
		"страшно" => 0,
		"нравиться" => 3,
	];
?>