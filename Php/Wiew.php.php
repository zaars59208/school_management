
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
						        echo "id: " . $row["id"]. " - Role: " . $row["Role"]. " - Name: " . $row["Name"]. " " . $row["Email"]. " - Skills: " . $row["Skills"]. "<br>";
						    }
						} else {
						    echo "0 results";
						}

						mysqli_close($connect);

?>

