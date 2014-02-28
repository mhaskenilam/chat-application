<?php 
session_start();
include('config.php');
if(isset($_POST['insert']))
{
$usr_name=$_POST['username'];
$pass=$_POST['password'];
$email=$_POST['email'];

$select=mysql_query("select * from  $table_name where email='$email'");
$num_rows=mysql_num_rows($select);
if($num_rows==1)
{
	echo "<span style='color:red;'>already registered</span>";
}
else
{
	$selectuser=mysql_query("select * from  $table_name where username='$usr_name'");
	$num_rowsuser=mysql_num_rows($selectuser);
	if($num_rowsuser==1)
	{
		echo "<span style='color:red;'>please select another user name</span>";
	}
	else {
	$insert=mysql_query("insert into $table_name (`username`, `password`, `email`) values('$usr_name','$pass','$email')");
	$_SESSION['login']='true';
	$_SESSION['username']=$usr_name;
	$arrayid=mysql_insert_id();
	$uid=$arrayid;
	$_SESSION['id']=$uid;
	header("location:index.php");
	}
}
}
else
{
	echo "<span style='color:red;'>please insert values</span>";
}?>
<html>
	<head>
		<title>Register file</title>
	</head>
	<body>
		<form method="post" action="register.php">
				<p>
					Enter Email Id :<input type="text" name="email" />
				</p>
				<p>
					Enter user name :<input type="text" name="username" />
				</p>
				<p>
					Password :<input type="password" name="password" />
				</p>
				

				<p>
					<input type="submit" value="Register" name="insert" />
					<input type="reset" value="Reset" /> &nbsp; <a href="login.html">Alreay register ?</a>
				</p>
		</form>
	</body>
</html>