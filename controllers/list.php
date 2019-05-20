<?php

$title = "Pictures";

// get the images
$images = $db->query("
	SELECT A.description, A.Year_issued, A.picture AS pic
	FROM stamps A
	JOIN users B
	ON A.userid = B.id
	ORDER BY (A.Year_issued) DESC");

// include the view
include "views/list.tpl";