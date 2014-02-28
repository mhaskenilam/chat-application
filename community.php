<?php 
session_start();
include('config.php');
if(isset($_SESSION['login']) && $_SESSION['login']=='true')
{}
else {
	header('location:login.html');
}
?>
<!DOCTYPE HTML 5>
<html>
	<head>
	<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
<meta content="utf-8" http-equiv="encoding">	
	<title>Community chat</title>
	
    <link type="text/css" rel="stylesheet" media="all" href="css/chat.css" />
    <link type="text/css" rel="stylesheet" media="all" href="css/screen.css" />

		<script type="text/javascript" src="js/jquery.js"></script>
	
		 <script type="text/javascript">
	 window.onbeforeunload = check_user_leave;
 	 function check_user_leave()
	{
		var session= <?php echo $_SESSION['id'];?>;
		//alert(session);
		//alert(path);
	$.ajax({
	  url: "found.php?action=check_user_leave&sessions="+session,
	  cache: false,
	  dataType: "json",
	  success: function(data) {
	  	alert(data);
	  	
	  }
	  
 	});
 	
 	return "are you sure leave this page";
	}
online_users();
chat_msg_load();
check_user();
setInterval("check_user()", 1000);
	function check_user()
	{
		var path = document.location.pathname.split("/").pop();
		var session= <?php echo $_SESSION['id'];?>;
		//alert(session);
		//alert(path);
	$.ajax({
	  url: "found.php?action=check_user&path="+path+'&session='+session,
	  cache: false,
	  dataType: "json",
	  success: function(data) {
	  	//alert(data);
	  } 
 	});
 	
 	
	}
	//	check_invite();
		

	function create_group_chat(event,username)
	{
		if(event.keyCode == 13 && event.shiftKey == 0)  {
		//alert('hi');
		session= <?php echo $_SESSION['id'];?>;
		message = $('#user_msg').val();
		message = message.replace(/^\s+|\s+$/g,"");
		$('#user_msg').val('');
		$('#user_msg').focus();
		$('#user_msg').css('height','44px');
		//alert(message);
		if (message != '') {
			$.post("found.php?action=sendchatgroup", {from: username, message: message,from_uid:session} , function(data){
				message = message.replace(/</g,"&lt;").replace(/>/g,"&gt;").replace(/\"/g,"&quot;");
				//$("#chat_msgs").append('<div class="chatboxmessage"><span class="chatboxmessagefrom">'+username+':&nbsp;&nbsp;</span><span class="chatboxmessagecontent">'+message+'</span></div>');
			});
		}
		}
	}
	
	
	function online_users()
	{
		$.ajax({
	  url: "found.php?action=online_users",
	  cache: false,
	  dataType: "json",
	  success: function(datamsg) {
	  	//alert(datamsg);
	  	$("#online_users").html('');
	  	$.each(datamsg, function(key,val){
	  		//alert(key+":"+val.username);
	  	$("#online_users").append('<p style="padding-left:2%;">'+val.username+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; online<br/></p>');
		update_chat_msg(val.id);
	 });
	  }
	  
 	});

		setTimeout('online_users();',1000);

	}

//setInterval("chat_msg_load()", 1000);
	function chat_msg_load()
	{
		//alert('hi');
	
		
	$.ajax({
	  url: "found.php?action=chat_mesgs",
	  cache: false,
	  dataType: "json",
	  success: function(datamsg) {
	  	//alert(datamsg);
	  	$.each(datamsg, function(key,val){
	  		//alert(key+":"+val.from_user);
	  	$("#chat_msgs").append('<div class="chatboxmessage"><span class="chatboxmessagefrom">'+val.from_user+':&nbsp;&nbsp;</span><span class="chatboxmessagecontent">'+val.msg+'</span></div>');
		update_chat_msg(val.id);
	 });
	  }
	  
 	});
setTimeout('chat_msg_load();',3000);
 }
 
 function update_chat_msg(valid)
 {
 //alert(valid);
 $.post("found.php?action=updatechat", {valid: valid} , function(data){});
	
 }
 
	</script>

	</head>
	<body>

		<p style="margin-top:2%;"><center><a href="index.php">Community chat</a></center></p>
		<div style="width:25%;float:left;border:1px solid black;">
			<h3 style="text-align: center;">Online Users</h3>
			<div id="online_users">
			<?php 
			$slct=mysql_query("select * from users_list where in_community='yes'");
			//echo mysql_num_rows($slct);
			while($rows=mysql_fetch_assoc($slct))
			{
				echo '<p style="padding-left:2%;">'.$rows['username'].'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; online<br/></p>';
			}
			?>
			</div>
			<h3 style="text-align: center;">Chat Room</h3>
			<div id="chat_msgs" style="overflow: scroll; height:200px;">
				<?php $sect=mysql_query("select * from group_community_chat where date  BETWEEN '".date('Y-m-d H:i:s', strtotime("-2000 seconds"))."' AND '".date("Y-m-d H:i:s")."';");
	while($rs=mysql_fetch_assoc($sect))
	{?>
		<div class="chatboxmessage"><span class="chatboxmessagefrom"><?php echo $rs['from_user'];?>&nbsp;&nbsp;</span>
			<span class="chatboxmessagecontent"><?php echo $rs['msg'];?></span></div>
	<?php }
	?>
			</div>
		Enter Message: <textarea name="user_msg" id="user_msg" onkeydown="create_group_chat(event,'<?php echo $_SESSION['username'];?>');" placeholder="Enter Your message " ></textarea>
		</div>
		<div style="margin-left:2%;width:71%; float:left;border:1px solid black;">
			
		</div>
	</body>
</html> 