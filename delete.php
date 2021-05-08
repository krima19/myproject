<?php

include "conn.php";
$id=$_GET['id'];
echo $id;
$query="delete from user where id='$id'";
$result=mysqli_query($con,$query);
if($result)
{
	echo "Record Deleted";
		header('location:display.php');
	
}
else
{
	echo "Recordc not Deleted";
}
?>
