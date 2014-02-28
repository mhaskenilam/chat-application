<?php

/*

Copyright (c) 2009 Anant Garg (anantgarg.com | inscripts.com)

This script may be used for non-commercial purposes only. For any
commercial purposes, please contact the author at 
anant.garg@inscripts.com

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

*/

//define ('DBPATH','localhost');
//define ('DBUSER','root');
//define ('DBPASS','root');
//define ('DBNAME','heartins_hi');

define ('DBPATH','localhost');
define ('DBUSER','root');
define ('DBPASS','foo.bar');
define ('DBNAME','test');

session_start();

global $dbh;
$dbh = mysql_connect(DBPATH,DBUSER,DBPASS);
mysql_selectdb(DBNAME,$dbh);
//echo $_GET['action'];

if ($_GET['action'] == "chatheartbeat")
{
	//print_r($_GET);
	//exit();
    chatHeartbeat();
} 
if($_GET['action']=="chatHeartbeatgroup")
{
	chatHeartbeatgroup();
}
if($_GET['action']=="check_invite")
{
	check_invite();
}

if($_GET['action']=="sendchatgroup")
{
	sendChatgroup();//print_r($_POST);
}
if ($_GET['action'] == "sendchat")
{
    sendChat();
} 
if ($_GET['action'] == "closechat")
{
    closeChat();
} 
if ($_GET['action'] == "startchatsession")
{
	if($_SESSION['username']!='')
	{
    startChatSession();
	}
} 
if($_GET['action']=="startchatsessiongroup")
{
	startChatSessiongroup();
}
if($_GET['action']=='invite_user')
{
	invite_user();
}

if (!isset($_SESSION['chatHistory']))
{
	$_SESSION['chatHistory'] = array();	
}

if (!isset($_SESSION['openChatBoxes']))
{
	$_SESSION['openChatBoxes'] = array();	
}
//print_r($_SESSION['chatHistory']);
//print_r($_SESSION['openChatBoxes']);
function check_invite()
{
	$sqls="select * from invite_users where (to_id='".$_SESSION['id']."' or with_user='".$_SESSION['id']."') and entry_time  BETWEEN '".date('Y-m-d H:i:s', strtotime("-90 seconds"))."' AND '".date("Y-m-d H:i:s")."';";
	//echo $sqls;
	$sqlls=mysql_query($sqls);
	$val=mysql_num_rows($sqlls);
	echo $val;
}
function chatHeartbeatgroup()
{
	$sql = "select * from grop_chat where (grop_chat.to = '".mysql_real_escape_string($_SESSION['username'])."' and  uid_to ='".$_SESSION['id']."' AND recd = 0) order by id ASC";
	
	//echo $sql;
	$query = mysql_query($sql);
	$items = '';

	$chatBoxes = array();

	while ($chat = mysql_fetch_array($query))
    {

		if (!isset($_SESSION['openChatBoxes'][$chat['from']]) && isset($_SESSION['chatHistory'][$chat['from']]))
        {
			$items = $_SESSION['chatHistory'][$chat['from']];
		}

		$chat['msg'] = sanitize($chat['msg']);

		$items .= <<<EOD
		{
			"s": "0",
			"f": "{$chat['from']}",
			 "id": "{$chat['userid_to']}",
			"m": "{$chat['msg']}"
        },
EOD;

        if (!isset($_SESSION['chatHistory'][$chat['from']]))
        {
            $_SESSION['chatHistory'][$chat['from']] = '';
        }
    
        $_SESSION['chatHistory'][$chat['from']] .= <<<EOD
        {
                "s": "0",
                "f": "{$chat['from']}",
                 "id": "{$chat['userid_to']}",
                "m": "{$chat['msg']}"
        },
EOD;
            
            unset($_SESSION['tsChatBoxes'][$chat['from']]);
            $_SESSION['openChatBoxes'][$chat['from']] = $chat['sent'];
	}

	if (!empty($_SESSION['openChatBoxes']))
    {
        foreach ($_SESSION['openChatBoxes'] as $chatbox => $time)
        {
            if (!isset($_SESSION['tsChatBoxes'][$chatbox]))
            {
                $now = time()-strtotime($time);
                $time = date('g:iA M dS', strtotime($time));

                $message = "Sent at $time";
                if ($now > 180)
                {
                    $items .= <<<EOD
                    {
                        "s": "2",
                        "f": "$chatbox",
                        "m": "{$message}"
                    },
EOD;
    
                    if (!isset($_SESSION['chatHistory'][$chatbox]))
                    {
                        $_SESSION['chatHistory'][$chatbox] = '';
                    }
    
                    $_SESSION['chatHistory'][$chatbox] .= <<<EOD
                    {
                        "s": "2",
                        "f": "$chatbox",
                        "m": "{$message}"
                    },
EOD;
                    $_SESSION['tsChatBoxes'][$chatbox] = 1;
                }
            }
        }
    }
	
	$sql = "update grop_chat set recd = 1 where grop_chat.to = '".mysql_real_escape_string($_SESSION['username'])."' and recd = 0";
	//$sql = "update chat set recd = 1 where (chat.to like('%".mysql_real_escape_string($_SESSION['username'])."%')) and (recd = 0)";
	//echo $sql;
	//exit();
	$query = mysql_query($sql);

	if ($items != '')
    {
		$items = substr($items, 0, -1);
	}
    header('Content-type: application/json');
?>
    {
		"items": [
			<?php echo $items;?>
        ]
    }

<?php
			exit(0);
			//}
	
}
function chatHeartbeat()
{
	/*if($_SESSION['username']!=''){
		
	//echo $_SESSION['username'];
	if($_SESSION['username']=='AstroleeHelp')
	{
		$int='0';
		$sql = "select * from chat where (chat.to = '".mysql_real_escape_string($_SESSION['username'])."' AND recd = ".$int.") order by id ASC";
	
	}
	else {
		$int='0';
		$sql = "select * from chat where (chat.to = '".mysql_real_escape_string($_SESSION['username'])."' AND recd = ".$int.") order by id ASC";
	
	}*/
	$sql = "select * from chat where (chat.to = '".mysql_real_escape_string($_SESSION['username'])."' and  userid_to ='".$_SESSION['id']."' AND recd = 0) order by id ASC";
	
	//echo $sql;
	$query = mysql_query($sql);
	//$chat = mysql_fetch_array($query);
	//print_r($chat);
	//exit();
	$items = '';

	$chatBoxes = array();

	while ($chat = mysql_fetch_array($query))
    {

		if (!isset($_SESSION['openChatBoxes'][$chat['from']]) && isset($_SESSION['chatHistory'][$chat['from']]))
        {
			$items = $_SESSION['chatHistory'][$chat['from']];
		}

		$chat['message'] = sanitize($chat['message']);

		$items .= <<<EOD
		{
			"s": "0",
			"f": "{$chat['from']}",
			 "id": "{$chat['userid_to']}",
			"m": "{$chat['message']}"
        },
EOD;

        if (!isset($_SESSION['chatHistory'][$chat['from']]))
        {
            $_SESSION['chatHistory'][$chat['from']] = '';
        }
    
        $_SESSION['chatHistory'][$chat['from']] .= <<<EOD
        {
                "s": "0",
                "f": "{$chat['from']}",
                 "id": "{$chat['userid_to']}",
                "m": "{$chat['message']}"
        },
EOD;
            
            unset($_SESSION['tsChatBoxes'][$chat['from']]);
            $_SESSION['openChatBoxes'][$chat['from']] = $chat['sent'];
	}

	if (!empty($_SESSION['openChatBoxes']))
    {
        foreach ($_SESSION['openChatBoxes'] as $chatbox => $time)
        {
            if (!isset($_SESSION['tsChatBoxes'][$chatbox]))
            {
                $now = time()-strtotime($time);
                $time = date('g:iA M dS', strtotime($time));

                $message = "Sent at $time";
                if ($now > 180)
                {
                    $items .= <<<EOD
                    {
                        "s": "2",
                        "f": "$chatbox",
                        "m": "{$message}"
                    },
EOD;
    
                    if (!isset($_SESSION['chatHistory'][$chatbox]))
                    {
                        $_SESSION['chatHistory'][$chatbox] = '';
                    }
    
                    $_SESSION['chatHistory'][$chatbox] .= <<<EOD
                    {
                        "s": "2",
                        "f": "$chatbox",
                        "m": "{$message}"
                    },
EOD;
                    $_SESSION['tsChatBoxes'][$chatbox] = 1;
                }
            }
        }
    }

	$sql = "update chat set recd = 1 where chat.to = '".mysql_real_escape_string($_SESSION['username'])."' and recd = 0";
	$query = mysql_query($sql);

	if ($items != '')
    {
		$items = substr($items, 0, -1);
	}
    header('Content-type: application/json');
?>
    {
		"items": [
			<?php echo $items;?>
        ]
    }

<?php
			exit(0);
			//}
}

function chatBoxSession($chatbox)
{
	
	$items = '';
	
	if (isset($_SESSION['chatHistory'][$chatbox])) {
		$items = $_SESSION['chatHistory'][$chatbox];
	}

	return $items;
}

function startchatsessiongroup()
{
	$items = '';
	/*if (!empty($_SESSION['openChatBoxes']))
    {
		foreach ($_SESSION['openChatBoxes'] as $chatbox => $void)
        {
			$items .= chatBoxSession($chatbox);
		}
	}*/


	if ($items != '')
    {
		$items = substr($items, 0, -1);
	}

header('Content-type: application/json');
?>
{
		"username": "<?php echo $_SESSION['username'];?>",
		"user_id": "<?php echo $_SESSION['id'];?>",
		"items": [
			<?php echo $items;?>
        ]
}

<?php


	exit(0);
	
	
} 
function startChatSession()
{
	$items = '';
	if (!empty($_SESSION['openChatBoxes']))
    {
		foreach ($_SESSION['openChatBoxes'] as $chatbox => $void)
        {
			$items .= chatBoxSession($chatbox);
		}
	}


	if ($items != '')
    {
		$items = substr($items, 0, -1);
	}

header('Content-type: application/json');
?>
{
		"username": "<?php echo $_SESSION['username'];?>",
		"user_id": "<?php echo $_SESSION['id'];?>",
		"items": [
			<?php echo $items;?>
        ]
}

<?php


	exit(0);
}

function invite_user()
{
		
	//print_r($_GET);
	$to=$_GET['to'];
	$from=$_GET['from'];
	$chatname=$_GET['chatname'];
	$verify_user=mysql_query("select * from users_list where email='".$to."'");
	$total_user=mysql_num_rows($verify_user);
	if($total_user==1)
	{
	$data=mysql_fetch_assoc($verify_user);
	$sql = "insert into invite_users (`to_id`, `from_id`, `status`,`entry_time`,`with_user`) values ('".mysql_real_escape_string($data['id'])."', '".$_SESSION['id']."','sent',NOW(),'".mysql_real_escape_string($from)."')";
	$query = mysql_query($sql);
	$return['group_id']=$data['id'];
	$return['username']=$data['username'];
	$return['msg']= $data['username']." has joined<br/>".$chatname." has already joined";
	echo json_encode($return);
	}
	else {
		echo "User is not available right now";
	}
	
}

function sendChatgroup()
{
	
	$from = $_SESSION['username'];
	$to = $_POST['to'];
	$to_user=explode(',',$to);
	//print_r($to_user);
	
	//exit();
	$message = $_POST['message'];
	//$url=$_SESSION['url'];
	$userid_to=$_POST['userid_to'];
	$with_user=$_POST['with_user'];
	$_SESSION['openChatBoxes'][$_POST['to']] = date('Y-m-d H:i:s', time());
	$grpid=$userid_to.$with_user;
	//echo $grpid;
	//echo $to;
	$messagesan = sanitize($message);

	if (!isset($_SESSION['chatHistory'][$_POST['to']]))
    {
		$_SESSION['chatHistory'][$_POST['to']] = '';
	}

	$_SESSION['chatHistory'][$_POST['to']] .= <<<EOD
	{
        "s": "1",
        "f": "{$to}",
        "id": "{$grpid}",
        "m": "{$messagesan}"
	},
EOD;



	unset($_SESSION['tsChatBoxes'][$_POST['to']]);
		foreach ($to_user as $to_users) {
			$user_sep=explode('.',$to_users);
		$sql = "insert into grop_chat (grop_chat.from,grop_chat.to,msg,sent,recd,uid_frm,uid_to,grp_id) values ('".mysql_real_escape_string($from)."', '".mysql_real_escape_string($user_sep[0])."','".mysql_real_escape_string($message)."','".date('Y-m-d H:i:s')."','0','".$_SESSION['id']."','$user_sep[1]','$grpid')";
	//echo $sql;
	//exit();
	$query = mysql_query($sql);
			
		}
		echo "1";
	exit(0);
	
}
function sendChat()
{

	$from = $_SESSION['username'];
	$to = $_POST['to'];
	$message = $_POST['message'];
	//$url=$_SESSION['url'];
	$userid_to=$_POST['userid_to'];
	
	$_SESSION['openChatBoxes'][$_POST['to']] = date('Y-m-d H:i:s', time());
	
	$messagesan = sanitize($message);

	if (!isset($_SESSION['chatHistory'][$_POST['to']]))
    {
		$_SESSION['chatHistory'][$_POST['to']] = '';
	}

	$_SESSION['chatHistory'][$_POST['to']] .= <<<EOD
	{
        "s": "1",
        "f": "{$to}",
        "id": "{$userid_to}",
        "m": "{$messagesan}"
	},
EOD;



	unset($_SESSION['tsChatBoxes'][$_POST['to']]);

	$sql = "insert into chat (chat.from,chat.to,message,sent,userid_from,userid_to) values ('".mysql_real_escape_string($from)."', '".mysql_real_escape_string($to)."','".mysql_real_escape_string($message)."',NOW(),'".$_SESSION['id']."','$userid_to')";
	$query = mysql_query($sql);
	echo "1";
	exit(0);
}

function closeChat()
{

	unset($_SESSION['openChatBoxes'][$_POST['chatbox']]);
	
	echo "1";
	exit(0);
}

function sanitize($text)
{
	$text = htmlspecialchars($text, ENT_QUOTES);
	$text = str_replace("\n\r","\n",$text);
	$text = str_replace("\r\n","\n",$text);
	$text = str_replace("\n","<br>",$text);
	return $text;
}