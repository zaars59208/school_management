


<Doctype html>
<html>
<link rel="stylesheet" href="CSS/bootstrap.css">
<body>
			<div class="container">

				<h3> Check Your Records</h3>	

				<div >

						<form action="view.php" method="POST">
							<label>  ID</label>
							<input class="form-control" type="text" name="id" value="" disabled	> 
							<label>  Name</label>
							<input class="form-control" type="text" name="name" value="" disabled> <br>

							<center> <button class="btn btn-primary" name="btnView" type="submit" 	> Click to View All Records </button> </center>  

						</form>


						<div>
											<table class="table">
								  <thead>
						    <tr>
			    				  <th scope="col">ID</th>
			   					  <th scope="col">Name</th>
			   					   <th scope="col">Edit</th>
			   					  <th scope="col">Delete</th>
		      
		      
		    </tr>
		  </thead>
		  <tbody>
		    
	
		      <?php

				include('Php/config.php');

				if(isset($_POST['btnView'])){



								$query="select * from signup";

								$result = mysqli_query($connect, $query);

								while($row= mysqli_fetch_assoc($result)){



										$id=$row['id'];
										$name=$row['name'];

										?>
									<tr>   

											<td>
													<?php echo $id; ?>
											</td>
											<td>
													<?php echo $name; ?>
											</td>
											 <td><a href="edit.php?id=<?php echo $id ; ?>">Edit </a>
											</td>
											<td>
											<a href="edit.php?id=<?php echo $id;?>">Delete</a>
											</td>

									</tr>			


											<?php




								}


				}
?>
		  </tbody>
		</table>

								</div>

				</div>




			</div>






</body>
</html>