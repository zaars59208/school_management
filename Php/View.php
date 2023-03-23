
<!Doctype>
<html>
<head>

		<link rel="stylesheet" type="text/css" href="CSS/bootstrap.css">

</head>



<body>
				<table>

					<tr>
						<td> ID </td>
					</tr>
				</table>
<?php

include("Php/config.php");

				if(isset($_POST['btnView']));

				{
						$ID= $_POST['User_Id'];
						//$Role= $_POST['User_Role'];
						//$Name= $_POST['User_Name'];
						//$Email=$_POST['User_Email'];
						//$Skill=$_POST['User_Skills'];


						$query =" select* from user  where (id='$ID')";

						


						$Result = mysqli_query($connect, $query);

						if($Result)

						if (mysqli_num_rows($Result) > 0) {
						    // output data of each row
						    while($row = mysqli_fetch_assoc($Result)) {


						    	

						        echo "<tr><td>" . $row["id"]. "</td><td>" . $row["Role"]. "</td><td>" . $row["Name"]. " </td><td>" . $row["Email"]. "</td><td>" . $row["Skills"]. "</td></tr><br>";
						    }
						} else {
						    echo "0 results";
						}

						mysqli_close($connect); }

?>

			<center> <h3> Mange your Profile </h3></center>	


			<div   class="container"> 

				<div class="row"> 
						<div class="col-3">
							    <form class="d-flex" action="View.php" method="POST" >


      				  <input class="form-control me-1" type="text" placeholder="Type Identity" aria-label="Search" name="User_Id">
      				   <button class="btn btn-primary" name="btnView" type="submit"> View </button></form>
      
     				 </form>


						</div>
				</div>




			




</div>
</body>
</html>
