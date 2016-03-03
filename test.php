<?php

	class mysql {
		
	}

	if (class_exists('mysqli')) {
		new mysqli();
	} else {
		new mysql();  //
	}

?>