<?php

// get params from post
$title = $_POST["title"];

// get user from the session
$userid = "1"; // @TODO load from session

// upload the image
$ext = strtolower(pathinfo($_FILES["image"]["name"], PATHINFO_EXTENSION));
$filename = md5(rand() . $title . date()) . ".$ext";
copy($_FILES["image"]["tmp_name"], "images/$filename");

// insert into the database
$db->query("
	INSERT INTO stamps (title, picture, userid) 
	VALUES ('$title', '$filename', '$userid')");

// redirect to list
header("Location: ?p=list");