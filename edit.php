
<?php
			include ('Php/config.php');

				//super global variable

		if(isset($_GET['id']))

			$id=$_GET['id'];

		{

				$query ="select id, name from signup where id='$id'";

				$data= mysqli_query($connect, $query);

				while($row = mysqli_fetch_assoc($data)){



							$id = $row['id'];

							$name = $row['name'];
				}



		}
?>

<Doctype html>
<html>
<link rel="stylesheet" href="CSS/bootstrap.css">
<body>
			<div class="container">

				<h3> Update & Delete Records</h3>	

				<div >

						<form action=" "  method="POST">
							<label>  ID</label>
							<input class="form-control" type="text" name="id" value="<?php echo $id; ?>" 	> 
							<label>  Name</label>
							<input class="form-control" type="text" name="name" value="<?php echo $name; ?>" > <br>

							<center> <button class="btn btn-primary" name="btnUpdate" type="submit" 	> Update </button>   
							<button class="btn btn-secondary" name="btnDelete" type="submit" 	> Delete </button> </center>  


						</form>

									<?php

												if(isset($_POST['btnUpdate']))
												{

														$id = $_POST['id'];
														$name =$_POST['name'];


														$query = "update signup SET id='$id', name='$name'  where id = '$id'";

														$update = mysqli_query($connect, $query);

														if($update){

																echo "Record is updated Successfully";

																header("Location: view.php");
														}
														else {
															echo "Sorry Try Again";
														}

												}


									 ?>

				




<?php

												if(isset($_POST['btnDelete']))
												{

														$id = $_POST['id'];
														//$name =$_POST['name'];


														$query = "delete from signup  where id = '$id'";

														$Delete = mysqli_query($connect, $query);

														if($Delete){

																echo "Record is Deleted Successfully";

																header("Location: view.php");
														}
														else {
															echo "Sorry Try Again";
														}

												}


									 ?>
								</div>

				</div>




			</div>






</body>
</html>