<?php
//I've added this two lines for debug, run the script and check for errors, when done, comment the lines. 
$loginUrl = 'http://songs.pk';
$agent= 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.0.3705; .NET CLR 1.1.4322)';
 
$ch = curl_init();
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_URL,$loginUrl);
curl_setopt($ch, CURLOPT_USERAGENT, $agent);
$result=curl_exec($ch);
curl_close($ch);
print_r($resut);
var_dump(json_decode($result));
?>