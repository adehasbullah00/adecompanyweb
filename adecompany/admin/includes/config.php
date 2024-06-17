<?php
define('DB_SERVER','sql305.infinityfree.com');
define('DB_USER','if0_36745095');
define('DB_PASS' ,'UarRfzVu7a3ZULt');
define('DB_NAME','if0_36745095_adecompany');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>