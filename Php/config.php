<?php

		$servername="localhost";
		$username="root";
		$password="";
		$DB="teammates";


		$connect = mysqli_connect($servername, $username, $password,$DB);
				// To check connection 

			if($connect)

				{		

						echo "Connection is Created Successfully";
				}
				else{

					echo "Check Database/Server Name";

				}



?>