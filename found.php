<?php 
session_start();
include('config.php');

mysql_connect($host,$db_username,$db_pass);
mysql_select_db($db_name);
//print_r($_GET);
if($_GET['action']=='online_users')
{
	$slct=mysql_query("select * from users_list where in_community='yes'");
			//echo mysql_num_rows($slct);
			while($rows=mysql_fetch_assoc($slct))
			{
				$ol_user[]=$rows;
			}
	echo json_encode($ol_user);
	
}
if($_GET['action']=='check_user')
{
	if($_GET['path']=='community.php')
	{
		mysql_query("update users_list set in_community	='yes' where id='".$_GET['session']."'");
		echo json_encode('1');
	}
}

if($_GET['action']=='check_user_leave')
{
	mysql_query("update users_list set in_community	='no' where id='".$_GET['sessions']."'");
	echo json_encode('1');
}
if($_GET['action']=='sendchatgroup')
{
	mysql_query("insert into group_community_chat(`from_user`, `uid`, `msg`, `recd`, `date`) values('$_POST[from]','$_POST[from_uid]','$_POST[message]','0','".date('Y-m-d H:i:s')."')");
	echo '1';
	//print_r($_POST);
}

if($_GET['action']=='chat_mesgs')
{
	$chat_msg=mysql_query("select * from group_community_chat where date  BETWEEN '".date('Y-m-d H:i:s', strtotime("-2 seconds"))."' AND '".date("Y-m-d H:i:s")."';");
	while($rs=mysql_fetch_assoc($chat_msg))
	{
		$result[]=$rs;
	}
	echo json_encode($result);
}


if($_GET['action']=='updatechat')
{
	$chat_msg=mysql_query("update group_community_chat set recd=1 where id='$_POST[valid]'");
}

?>
