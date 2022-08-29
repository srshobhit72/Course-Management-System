<?php
	session_start();
	error_reporting (E_ALL ^ E_NOTICE);
	include_once("connection.php");
?>
<!DOCTYPE html>
<html>

<head>
	<title>Register</title>
</head>

<body>
	<center>
		<?php
		
		$roll_no = $_REQUEST['Roll_No'];
		$name = $_REQUEST['Name'];
		$branch = $_REQUEST['Branch'];
		$sem = $_REQUEST['Semester'];
		$password = $_REQUEST['Password'];
		$pass_check = $_REQUEST['Password_check'];
		
		if(!empty($roll_no) && !empty($name) && !empty($branch) && !empty($password) && !empty($sem)) { 
			$query = mysqli_query($conn, "SELECT * FROM students WHERE Roll_No = '".$roll_no."'");    
			$numrows = mysqli_num_rows($query);    

    		if($numrows == 0)    
    		{   
    			if ($password === $pass_check){
                	$num = preg_match('@[0-9]@', $password);
                	$upper = preg_match('@[A-Z]@', $password);
                	$lower = preg_match('@[a-z]@', $password);
 
                	if(strlen($password) < 8 || !$num || !$upper || !$lower) {
                    	$_SESSION["str"] = "Invalid Password. Password must be at least 8 characters in length and must contain at least one number, one upper case letter and one lower case letter.";
                    	header("Location: index.php"); 
    					exit();

                	} else {
                    	$_SESSION["str"] = "";
						$sql = "INSERT INTO students VALUES ('$roll_no','$name','$branch','$sem','$password')";
		
						if(mysqli_query($conn, $sql)){
							//echo "<h3>Registration completed successfully.</h3>";
							$_SESSION["str"] = "Registration completed successfully";
							header("Location: index.php"); 

						}
					}
				}
				else {
					$_SESSION["str"] =  "Password in both fields should be same.";
					header("Location: index.php"); 
    				exit();
				}
			}
			else {    
    			$_SESSION["str"] =  "User already exists!";   
    			header("Location: index.php"); 
    			exit();
    		}
    	}
    
    	else {    
    			$_SESSION["str"] = "All fields are required!";    
    			header("Location: index.php"); 
    			exit();
			}    
		mysqli_close($conn);
		?>
	</center>
</body>

</html>

