<!DOCTYPE HTML 5>
<?php
session_start();
include 'config.php';
if(isset($_SESSION['login']) && $_SESSION['login']=='true')
{}
else {
	header('location:login.html');
}
?>
<html>
	<head>
		<title>Index file</title>
		<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
<meta content="utf-8" http-equiv="encoding">
		<script type="text/javascript" src="js/jquery.js"></script>
				 <script type="text/javascript" src="js/chat.js"></script>

   
		 <script type="text/javascript">
	
check_invite();
setInterval("check_invite()", 1000);
	function check_invite()
	{
		//alert('hi');
	$.ajax({
	  url: baseurl+"chat.php?action=check_invite",
	  cache: false,
	  dataType: "json",
	  success: function(data) {
	  	//alert(data);
	  	if(data==1)
	  	{
	  		startChatSessiongroup();
	  		
	  	}
	  }
	  
 	});
 	
 	
	}
	//	check_invite();
		

	
	</script>
  
 
    <link type="text/css" rel="stylesheet" media="all" href="css/chat.css" />
    <link type="text/css" rel="stylesheet" media="all" href="css/screen.css" />

		                    <!--===========================FreiChat=======START=========================-->
<!--	For uninstalling ME , first remove/comment all FreiChat related code i.e below code
	 Then remove FreiChat tables frei_session & frei_chat if necessary
         The best/recommended way is using the module for installation                         -->

<?php
$ses=$_SESSION['id'];
if(!function_exists("freichatx_get_hash")){
function freichatx_get_hash($ses){

       if(is_file("/var/www/Custome_chat_codologic/freichat/hardcode.php")){

               require "/var/www/Custome_chat_codologic/freichat/hardcode.php";

               $temp_id =  $ses . $uid;

               return md5($temp_id);

       }
       else
       {
               echo "<script>alert('module freichatx says: hardcode.php file not
found!');</script>";
       }

       return 0;
}
}
?>
<!--<script type="text/javascript" language="javascipt" src="http://localhost/Custome_chat_codologic/freichat/client/main.php?id=<?php echo $ses;?>&xhash=<?php echo freichatx_get_hash($ses); ?>"></script>
	<link rel="stylesheet" href="http://localhost/Custome_chat_codologic/freichat/client/jquery/freichat_themes/freichatcss.php" type="text/css">-->
<!--===========================FreiChatX=======END=========================-->                
	</head>
	<body>
		<p>Hello  <?php echo $_SESSION['username']; ?></p>
		<p style="text-align:right;"><a href="logout.php">Logout</a></p>
		<div>
			<?php if($_SESSION['message']!=''){ echo $_SESSION['message']; unset($_SESSION['message']);}?>
		<form action="send_request.php" method="post">
			<select name="group_type">
			<option value="mentor">Join as shishya</option>
			<option value="mate">Join as mates</option>
			</select>
			<select name="users_lists">
				<?php
				$selc=mysql_query("select * from users_list where id!='$_SESSION[id]'") ;
				while($rows=mysql_fetch_assoc($selc))
				{?>
					<option value="<?php echo $rows['id'];?>"><?php echo $rows['username'];?></option>
				<?php }
				?>
			</select>
			<input type="submit" value="send request">
			
		</form>
		</div>
		<div style="float:left;width:75%;margin-right:4%;border:1px solid black;">
		<p>My Requestes</p>
		<?php
		
			$sqlrq=mysql_query("select * from  user_request where to_user='$_SESSION[id]'");
			$num_rowsrqt=mysql_num_rows($sqlrq);
			if($num_rowsrqt>0)
			{
				//echo $num_rowsrqt;
				while($row=mysql_fetch_assoc($sqlrq))
				{
					$frm_user=mysql_query("select * from users_list where id='$row[frm_usr]' ");
					$reqst_frm=mysql_fetch_assoc($frm_user);
					echo $reqst_frm['email'];
					echo "&nbsp;&nbsp;&nbsp;".$row['request_for'];
					if($row['status']=='not_accept')
					{
					echo "&nbsp;&nbsp;&nbsp;<a href='set_rq.php?accept=true&id=$row[id]'>Accept</a>";
					echo "&nbsp;&nbsp;&nbsp;<a href='set_rq.php?accept=false&id=$row[id]'>cancel</a>";
					}
					else {
						echo "&nbsp;&nbsp;&nbsp;Accepted";
					}
					echo "<br/>";
				}	
			}
			
		//echo "<span style='color:red;'>already registered</span>";
		//} 
		?>
		</div>
		<div style="float:left;width:20%; border:1px solid black;">
			
			<div style="height: 180px;">
				<p style="background:gray; text-align:center;margin-top:0%;">Mentor</p>
				<?php
				$user_lis=mysql_query("select * from user_request where request_for='mentor' and frm_usr='$_SESSION[id]'");
				//echo mysql_num_rows($user_lis);
				while($data=mysql_fetch_assoc($user_lis))
				{
					//print_r($data);
					$frm_users=mysql_query("select * from users_list where id='$data[to_user]'");
					$reqst_frms=mysql_fetch_assoc($frm_users);
					?>
					<p style="cursor: pointer; vertical-align: top;" onclick="chatWith('<?php echo $reqst_frms['username'];?>','<?php echo $reqst_frms['id'];?>');">&nbsp;&nbsp;&nbsp;&nbsp;<img src="<?php echo $reqst_frms['image'];?>" width="8%">&nbsp;&nbsp;&nbsp;&nbsp;<span style="padding: 0px;"><?php echo $reqst_frms['username'];?> &nbsp;&nbsp;&nbsp;<?php echo $reqst_frms['online'];?></span></p>
					<?php //print_r($reqst_frms);
					//echo $reqst_frms['username'].'<br/>';
				}
				?>
			</div>
			<div style="height: 180px;">
				<p style="background:gray; text-align:center;margin-top:0%;">Mates</p>
				<?php
				$user_lis=mysql_query("select * from user_request where request_for='mate' and frm_usr='$_SESSION[id]'");
				//echo mysql_num_rows($user_lis);
				while($data=mysql_fetch_assoc($user_lis))
				{
					//print_r($data);
					$frm_users=mysql_query("select * from users_list where id='$data[to_user]'");
					$reqst_frms=mysql_fetch_assoc($frm_users);
					?>
					<p style="cursor: pointer; vertical-align: top;" onclick="chatWith('<?php echo $reqst_frms['username'];?>','<?php echo $reqst_frms['id'];?>');">&nbsp;&nbsp;&nbsp;&nbsp;<img src="<?php echo $reqst_frms['image'];?>" width="8%">&nbsp;&nbsp;&nbsp;&nbsp;<span style="padding: 0px;"><?php echo $reqst_frms['username'];?> &nbsp;&nbsp;&nbsp;<?php echo $reqst_frms['online'];?></span></p>
					<?php //print_r($reqst_frms);
					//echo $reqst_frms['username'].'<br/>';
				}
				?>
			</div>
			<div style="height: 180px;">
				<p style="background:gray; text-align:center;margin-top:0%;">Shishya</p>
				<?php
				$user_lis=mysql_query("select * from user_request where request_for='shishya' and frm_usr='$_SESSION[id]'");
				//echo mysql_num_rows($user_lis);
				while($data=mysql_fetch_assoc($user_lis))
				{
					//print_r($data);
					$frm_users=mysql_query("select * from users_list where id='$data[to_user]'");
					$reqst_frms=mysql_fetch_assoc($frm_users);
					?>
					<p style="cursor: pointer; vertical-align: top;" onclick="chatWith('<?php echo $reqst_frms['username'];?>','<?php echo $reqst_frms['id'];?>');">&nbsp;&nbsp;&nbsp;&nbsp;<img src="<?php echo $reqst_frms['image'];?>" width="8%">&nbsp;&nbsp;&nbsp;&nbsp;<span style="padding: 0px;"><?php echo $reqst_frms['username'];?> &nbsp;&nbsp;&nbsp;<?php echo $reqst_frms['online'];?></span></p>
					<?php //print_r($reqst_frms);
					//echo $reqst_frms['username'].'<br/>';
				}
				?>
			</div>
		</div>
		
		<div style="clear: both;"></div>
	</body>
</html>
