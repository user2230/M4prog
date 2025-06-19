<?php


include_once("../source/database.php");

$connection = database_connect();

$result = $connection->query("SELECT * FROM huis");

$rows = $result->fetch_all();
