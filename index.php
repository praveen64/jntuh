<?php
include('config.php');
$q = intval($_GET['q']);
//$q='5056';
$sql="SELECT * FROM students WHERE id = '".$q."' AND m4 != '-' " ;
$result = mysql_query($sql);
while($row = mysql_fetch_array($result)) {
   
    echo $row['hallticket'] ;
   
}

mysql_close($bd);
?>