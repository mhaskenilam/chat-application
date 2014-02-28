<?php
//print_r($_POST);
session_start();
include('config.php');
//print_r($_GET);
if($_GET['accept']=='true')
{
	$insert=mysql_query("update user_request set `status` ='accepted' where id ='$_GET[id]'");	
	$_SESSION['message_rqst']='Accept Your Request';
	header('location:index.php');
}
else {
	$insert=mysql_query("update user_request set `status` ='cancelled' where id ='$_GET[id]'");	
	$_SESSION['message_rqst']='Cancel Your Request';
	header('location:index.php');
}

?>
