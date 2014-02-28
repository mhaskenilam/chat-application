<?php
//print_r($_POST);
session_start();
include('config.php');

print_r($_POST);
if($_POST['group_type']=='mentor')
	{
		//print_r($_POST);
		$insert=mysql_query("insert into user_request (`frm_usr`, `to_user`, `request_for`, `status`) values('$_SESSION[id]','$_POST[users_lists]','$_POST[group_type]','not_accept')");	
		$insert=mysql_query("insert into user_request (`frm_usr`, `to_user`, `request_for`, `status`) values('$_POST[users_lists]','$_SESSION[id]','shishya','accepted')");	
	}
	else if($_POST['group_type']=='mate')
	{
		//print_r($_POST);
		$insert=mysql_query("insert into user_request (`frm_usr`, `to_user`, `request_for`, `status`) values('$_SESSION[id]','$_POST[users_lists]','$_POST[group_type]','not_accept')");
		$insert=mysql_query("insert into user_request (`frm_usr`, `to_user`, `request_for`, `status`) values('$_POST[users_lists]','$_SESSION[id]','$_POST[group_type]','accepted')");
	}
	$_SESSION['message']='request_send';
	header('location:index.php');

?>
