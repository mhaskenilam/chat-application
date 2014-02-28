<?php
$db_username="root";
$db_pass="foo.bar";
$db_name="test";
$table_name="users_list";
$host="localhost";

mysql_connect($host,$db_username,$db_pass);
mysql_select_db($db_name);
?>