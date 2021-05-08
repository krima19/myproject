<?php
include "conn.php";
$query="select * from user";
$result=mysqli_query($con,$query);


?>


<table border="1">
	<tr>
		<th>ID</th>
		<th>Username</th>
		<th>Email</th>
		<th>mobile number</th>
		<th>Update</th>
		<th>Delete</th>
	</tr>

	<?php
	//when write mysqli_fetch_assoc() or mysqli_fetch_array() we get record with column name like $data['id'];
	//when write mysqli_fetch_row() we get record with index number like $data[0];

	while($data=mysqli_fetch_assoc($result)) 
	{
		?>
		
		<tr>
			<td><?php echo $data['id']; ?></td>
		
			<td><?php echo $data['username']; ?></td>
		
			<td><?php echo $data['email']; ?></td>
		
			<td><?php echo $data['mobile']; ?></td>

			

		
			<td>
			<?php
			echo "<a href='delete.php? id=".$data['id']." '>Delete</a>";
			?>
			</td>
			<td>
				<?php
			echo "<a href='update.php? id=".$data['id']." '>Update</a>";

		?>
	
	</td>
	
	</tr>
<?php
}
?>


</table>
<br>
<button>
	<a href="insert.php">Add</a>
</button>
<button>
	<a href="search.php">search</a>
</button>
