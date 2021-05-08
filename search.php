<!DOCTYPE html>
<html>
<head>
	<title>Search data</title>
</head>
<body>
<form method="POST" action="">
	<input type="text" name="id" placeholder="Enter Id to search Record">
	<input type="submit" name="search">
</form>


</body>
</html>

<?php
include "conn.php";
if(isset($_POST['search']))
{
	$id=$_POST['id'];
	$query="select * from user where id=$id ";
	$result=mysqli_query($con,$query);

	while($row=mysqli_fetch_row($result))
	{
		?>
		<table border="1">
			<tr>
				<th>username</th>
				<th>email</th>
				<th>mobile</th>
			</tr>
			<tr>
				<td><?php echo "$row[1]" ?></td>
				<td><?php echo "$row[2]" ?></td>
				<td><?php echo "$row[3]" ?></td>
			</tr>
		</table>
		<?php
	}

}
?>