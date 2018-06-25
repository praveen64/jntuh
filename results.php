<?php
include('config.php');
$hallticket = $_GET['hallticket'];
$sub1 =$_GET['sub1'];
$sub2 =$_GET['sub2'];
$sub3 =$_GET['sub3'];
$sub4 =$_GET['sub4'];
$sub5 =$_GET['sub5'];
$sub6 =$_GET['sub6'];
$sub7 =$_GET['sub7'];
$sub8 =$_GET['sub8'];
$sub9 =$_GET['sub9'];

$sql="INSERT INTO `results` (`sn`, `hallticket`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `sub6`, `sub7`, `sub8`, `sub9`) VALUES (NULL, '$hallticket', '$sub1', '$sub2', '$sub3', '$sub4', '$sub5', '$sub6', '$sub7', '$sub8', '$sub9');"; 
$result = mysql_query($sql);
if($result==1){
    echo "New Recorded Successfilly";
} else
{
    echo "Error: " . $result . "<br>".$bd ->error;
}

mysql_close($bd);
?>