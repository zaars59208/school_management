<?php

		include ("Php/config.php");



					if (isset($_POST['btnAdd']))

					{


							$id=$_POST['id'];
							$name=$_POST['name'];



							$query= "insert into signup (id,name)values('$id','$name')";
							

							$Result=mysqli_query($connect, $query);

							if($Result){

									echo "You are signup successfully";
							}
							else{
									echo "Sorry Try Again";
							}



					}

?>
			




<Doctype html>
<html>
<link rel="stylesheet" href="CSS/bootstrap.css">
<body>
			<div class="container">

				<h3> Signup Here </h3>	

				<div >

						<form action="add.php" method="POST">
							<label> Enter your ID</label>
							<input class="form-control" type="text" name="id"> 
							<label> Enter your Name</label>
							<input class="form-control" type="text" name="name"> <br>

							  <button class="btn btn-primary" name="btnAdd" type="submit" > SignUp </button>
							  <button class="btn btn-sucess" name="btnView" type="submit" ><a href="view.html"> View </button>

						</form>

				</div>




			</div>






</body>
</html>