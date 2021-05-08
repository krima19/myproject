<?php
include "regiconnection.php";
$id=$_GET['id'];
$del="delete from register where id=$id";
$qry=mysqli_query($con,$del);
if($qry)
{
	header("location:regidis.php");
}
?>