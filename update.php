
<?php


include "conn.php";
$id=$_GET['id'];
// echo $id;
$query="select * from user where id='$id'";
$result=mysqli_query($con,$query);
$row=mysqli_fetch_row($result);
// print_r($row);
// extract($row);
// echo $row[0];
?>

<!DOCTYPE html>
<html>
<head>
	<title>Insert Data</title>
</head>
<body>
	<h1>Insert Data</h1>
<form method="POST" action="">
	<input type="hidden" name="id" value="<?php echo $row[0];?>"><br><br>
	<input type="text" name="username" value="<?php echo $row[1];?>"><br><br>
	<input type="text" name="email" value="<?php echo $row[2];?>"><br><br>
	<input type="number" name="mobile" value="<?php echo $row[3];?>"><br><br>
	<input type="submit" name="submit" value="Update">

</form>
</body>

<?php
if(isset($_POST['submit']))
{
	$id=$_POST['id'];
	$un=$_POST['username'];
	$em=$_POST['email'];
	$mo=$_POST['mobile'];

	$qy="update user set username='$un',email='$em',mobile='$mo' where id=$id ";
	$result=mysqli_query($con,$qy);
	if($result)
	{
		echo "recorde updated";
		header('location:display.php');

	}
	else
	{
		echo "not Updated";
	}

}
?>