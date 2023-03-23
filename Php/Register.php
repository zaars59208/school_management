
<?php

include("Php/config.php");

				if(isset($_POST['btnSave']));

				{
						//$ID= $_POST['User_Id'];
						$Role= $_POST['User_Role'];
						$Name= $_POST['User_Name'];
						$Email=$_POST['User_Email'];
						$Skill=$_POST['User_Skills'];


						$query =" insert into user (id, Role, Name, Email, Skills)values ('$Role',$Name', '$Email','$Skill')";

						$Result = mysqli_query($connect, $query);

						if($Result)

						{

							echo "Record Added"."<br>";
							echo "The name ". $Name. " is Added";

							echo "Study PHP at " . $Email . "<br>";


						}
						else{
							echo "Sorry Record is not Added";
						}


				}

						header("Location:..My_Project/Register.html");
							die();

?>

