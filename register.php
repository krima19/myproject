<?php
include "regiconnection.php";
?>

<!DOCTYPE html>
<html>
<head>
	<title>Register</title>
</head>
<body>
<form method="post" action="" enctype="multipart/form-data">
	<input type="text" name="fname" placeholder="Enter fistname"><br><br>
	<input type="text" name="lname" placeholder="Enter lastname"><br><br>
	<input type="text" name="email" placeholder="Enter email"><br><br>
	<input type="text" name="DOB" placeholder="Enter DOB"><br><br>
	Male<input type="radio" name="gender" value="male"><br><br>
	female<input type="radio" name="gender" value="female"><br><br>
	
	<input type="checkbox" name="check[]" value="reading">reading<br><br>
	<input type="checkbox" name="check[]" value="writting">writting<br><br>
	<input type="checkbox" name="check[]" value="adventure">adventure<br><br>
	<input type="checkbox" name="check[]" value="playing">playing games<br><br>
	Address:
	<textarea name="add"></textarea><br><br>
	<select name="city" >
		<option value="">Select city</option>
		<option value="India">India</option>
		<option value="pakistan">pakistan</option>
		<option value="china">china</option>
	</select><br><br>
	<select name="state" >
		<option value="">Select state</option>
		<option value="India">India</option>
		<option value="pakistan">pakistan</option>
		<option value="china">china</option>
	</select><br><br>
	
	<input type="number" name="zip" placeholder="Enter zip code"><br><br>
	<input type="file" name="image"><br><br>
	<input type="submit" name="submit" value="Insert">

</form>
</body>
</html>

<?php


if(isset($_POST['submit']))
{
	$firstname=$_POST['fname'];
	$lastname=$_POST['lname'];
	$email=$_POST['email'];
	$dob=$_POST['DOB'];
	$gender=$_POST['gender'];
	$check=$_POST['check'];
	$chk="";
	foreach ($check as $chk1) {
		$chk .= $chk1.",";
	}
	$address=$_POST['add'];
	$city=$_POST['city'];
	$state=$_POST['state'];
	$zipcode=$_POST['zip'];
	// $image=$_FILES['image']['name'];
	$target_path="images/";
		$target_path=$target_path.basename($_FILES['image']['name']);
		if(move_uploaded_file($_FILES['image']['tmp_name'], $target_path))
		{
			// echo "file uploded";
			$image=$_FILES['image']['name'];
			
		}
	
	$sql="insert into register (firstname,lastname,email,dob,gender,hobbies,address,city,state,zipcode,image) values('$firstname','$lastname','$email','$dob','$gender','$chk','$address','$city','$state','$zipcode','$image') ";
	$res=mysqli_query($con,$sql);
	if($res)
	{
		echo "success";
		header('location:regidis.php');

	}
	else
	{
		echo "no";		
	}
}
?>