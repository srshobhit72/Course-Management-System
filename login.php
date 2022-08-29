<?php
	session_start();
	error_reporting (E_ALL ^ E_NOTICE);
	include_once("connection.php");
?>
<!DOCTYPE html>
<html>

<head>
	<title>Login</title>
</head>

<body>
	<center>
		<?php

	if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true){ 
    	header("location: homepage.php");
    	exit();
	}
	else{
		
		$login_roll = $_REQUEST['login_roll'];
		$login_pass = $_REQUEST['login_pass'];
		
		if(!empty($login_roll) && !empty($login_pass)) { 
			$query = mysqli_query($conn, "SELECT * FROM students WHERE Roll_No = '".$login_roll."' AND Password = '".$login_pass."'");    
			$numrows = mysqli_num_rows($query);    

    		if($numrows === 0)    
    		{   
    			$_SESSION["error"] =  "Either Username or Password field is incorrect.";
				header("Location: index.php"); 
    			exit();
			}
			else {    
				session_start();
                $_SESSION["loggedin"] = true;
                $_SESSION["roll_no"] = $login_roll;

    			$_SESSION["error"] =  "";   
    			header("Location: homepage.php"); 
    			exit();
    		}
    	}
    
    	else {    
    			$_SESSION["error"] = "All fields are required!";    
    			header("Location: index.php"); 
    			exit();
			}    
		mysqli_close($conn);
	}

?>
</center>
</body>

</html>