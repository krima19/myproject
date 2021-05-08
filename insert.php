<!DOCTYPE html>
<html>
<head>
	<title>Insert Data</title>
</head>
<body>
	<h1>Insert Data</h1>
<form method="POST" action="">
	<input type="text" name="username" placeholder="Enter Username"><br><br>
	<input type="text" name="email" placeholder="Enter email Id"><br><br>
	
	<input type="number" name="mobile" placeholder="Enter Mobile"><br><br>
	<input type="submit" name="submit" value="Insert">

</form>
</body>
</html>

<?php

include "conn.php";
if(isset($_POST['submit']))
{
	$username=$_POST['username']; 
	$email=$_POST['email'];
	$mobile= $_POST['mobile'];
	echo $username;
	$query="insert into user (username,email,mobile) value('$username','$email','$mobile')";
	$result=mysqli_query($con,$query);
	if($result)
	{
		echo "record inserted";
		header('location:display.php');
		
	}
	else
	{
		echo "record not inserted";
	}
}
?>