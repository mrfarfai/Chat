<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Chat login</title>
</head>
<style type="text/css">
	body {
		display: flex;
		align-items: center;
		justify-content: center;
		height: 100vh;
		background-color: #c9fff2;
	}
	.btn a {
		display: block;
		margin: 10px 0;
		padding: 10px 20px;
		text-align: center;
		text-decoration: none;
		color: #000;
	}
	
	.btn {
	    text-align: center;
	}
	
	.btn img {
	    width: 150px;
	}

	.btn .user1 {
		border: 2px solid green;
		background-color: #00800029;
	}
	.btn .user2 {
		border: 2px solid red;
		background-color: #ff000029;
	}
</style>
<body>
	<div class="btn">
	    <img src="logo.png" alt="logo">
		<h1>Добро пожаловать!</h1>
		<a href="/?id=1" class="user1">Пользователь 1</a>
		<a href="/?id=2" class="user2">Пользователь 2</a>
	</div>
</body>
</html>