<?php 
session_start();
include('config.php');

mysql_connect($host,$db_username,$db_pass);
mysql_select_db($db_name);
$usr_name=$_POST['username'];
$pass=$_POST['password'];
$select=mysql_query("select * from  $table_name where username='$usr_name' and 	password='$pass'");
$num_rows=mysql_num_rows($select);
if($num_rows==1)
{
	$_SESSION['login']='true';
	$_SESSION['username']=$usr_name;
	$array=mysql_fetch_assoc($select);
	$uid=$array['id'];
	$_SESSION['id']=$uid;
	header("location:index.php");
}
else
{
	echo "invalid user";
}?>
