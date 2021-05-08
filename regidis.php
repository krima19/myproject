<?php
include "regiconnection.php";
$qy="select * from register ";
$res=mysqli_query($con,$qy);

?>
	<table border="1">
		<tr>
			<th>id</th>

			<th>fname</th>
			<th>lname</th>
			<th>email</th>
			<th>dob</th>
			<th>gender</th>
			<th>hobbies</th>
			<th>address</th>
			<th>city</th>
			<th>state</th>
			<th>zipcode</th>
			<th>image</th>
			<th>Action</th>
		</tr>
	
		<?php
while($row=mysqli_fetch_row($res))
{
$imageurl='images/'.$row[11];
	?>
		<tr><td><?php echo $row[0];?></td>
			<td><?php echo $row[1];?></td>
			<td><?php echo $row[2];?></td>
			<td><?php echo $row[3];?></td>
			<td><?php echo $row[4];?></td>
			<td><?php echo $row[5];?></td>
			<td><?php echo $row[6];?></td>
			<td><?php echo $row[7];?></td>
			<td><?php echo $row[8];?></td>
			<td><?php echo $row[9];?></td>
			<td><?php echo $row[10];?></td>
			<td><img src="<?php echo $imageurl  ?>" style="height: 200px; width: 200px"></td>

			<td>
				<?php
			echo "<a href='redidel.php? id=".$row[0]." '>Delete</a>";
			echo "<br>";
			echo "<a href='regiedit.php? id=".$row[0]." '>Edit</a>";
			?>
			</td>

			



		</tr>
	
	<?php
}
?>
</table>

<a href='register.php '>Add</a>