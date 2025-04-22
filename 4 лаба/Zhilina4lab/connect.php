<?php
	$connect = mysqli_connect('127.0.0.1', 'root', '', 'Zhilina');
	if (!$connect) {
		die("Ошибка подключения к БД");
	}
	