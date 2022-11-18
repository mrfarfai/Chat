<?php 
	require 'config.php';

	function check($text) {
		global $dic;
		global $conn;

		$chars = ['!', ',', '.', '?'];
		$text = str_replace($chars, '', $text);

		$words = explode(' ', $text);

		$count = 0;
		$st = 0;
		foreach ($words as $word) {
			$word = mb_strtolower($word);
			if($dic[$word] === 0 || $dic[$word] > 0) {
				$st += $dic[$word] - 2;
				$count++;
			}
		}
		$st = min(max(-2, $st), 2) + 2;
		
		if($count) {
			echo $st;
		}
	}

	check($_POST['text']);

?>