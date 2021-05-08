
<?php


include "conn.php";
$id=$_GET['id'];
// echo $id;
$query="select * from register where id='$id'";
$result=mysqli_query($con,$query);
$row=mysqli_fetch_row($result);
// print_r($row);
// extract($row);
// echo $row[0];
$imageurl='images/'.$row[11];
?>

<!DOCTYPE html>
<html>
<head>
	<title>Insert Data</title>
</head>
<body>
	<h1>Update Data</h1>
<form method="POST" action="" enctype="multipart/form-data">
	<input type="hidden" name="id" value="<?php echo $row[0];?>"><br><br>
	<input type="text" name="fname" value="<?php echo $row[1];?>"><br><br>
	<input type="text" name="lname" value="<?php echo $row[2];?>"><br><br>
	<input type="text" name="email" value="<?php echo $row[3];?>"><br><br>
	<input type="text" name="DOB" value="<?php echo $row[4];?>"><br><br>
	Male<input type="radio" name="gender" value="male"<?php if($row[5]=='male') echo 'checked="checked" '; ?>><br><br>
	female<input type="radio" name="gender" value="female"<?php if($row[5]=='female') echo 'checked="checked" '; ?>><br><br>
	
	<input type="checkbox" name="check[]" value="reading">reading<br><br>
	<input type="checkbox" name="check[]" value="writting">writting<br><br>
	<input type="checkbox" name="check[]" value="adventure">adventure<br><br>
	<input type="checkbox" name="check[]" value="playing">playing games<br><br>
	Address:
	<textarea name="add" ><?php echo $row[7];?></textarea><br><br>
	<select name="city" >
		<option value="<?php echo $row[8];?>"><?php echo $row[8];?></option>
		<option value="India">India</option>
		<option value="pakistan">pakistan</option>
		<option value="china">china</option>
	</select><br><br>
	<select name="state" >
		<option value="<?php echo $row[9];?>"><?php echo $row[9];?></option>
		<option value="India">India</option>
		<option value="pakistan">pakistan</option>
		<option value="china">china</option>
	</select><br><br>
	
	<input type="number" name="zip" value="<?php echo $row[10];?>"><br><br>
	<img src="<?php echo $imageurl  ?>" style="height: 200px; width: 200px">
	<input type="file" name="image"><br><br>
	<input type="submit" name="submit" value="update">

</form>
</body>

<?php
if(isset($_POST['submit']))
{
	$id=$_POST['id'];
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
	$target_path="images/";
		$target_path=$target_path.basename($_FILES['image']['name']);
		if(move_uploaded_file($_FILES['image']['tmp_name'], $target_path))
		{
			// echo "file uploded";
			$image=$_FILES['image']['name'];

			
		}
	$image=$_FILES['image']['name'];
	echo $image;

	$qy="update register set firstname='$firstname',lastname='$lastname',email='$email' ,dob='$dob',gender='$gender',hobbies='$chk',address='$address',city='$city',state='$state',zipcode='$zipcode',image='$image' where id=$id ";
	$result=mysqli_query($con,$qy);
	if($result)
	{
		echo "recorde updated";
		header('location:regidis.php');

	}
	else
	{
		echo "not Updated";
	}

}
?>