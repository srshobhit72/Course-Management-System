<?php
    session_start();
    error_reporting (E_ALL ^ E_NOTICE);
?>
<!DOCTYPE html>
<html>
    <head>  
    <title>Project</title>
    <link rel="stylesheet"  href="./css/authentication.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </head>

    <body>
    
     <div class = "background">
      
        <div class = "container">
            <h1>Course Management System</h1>

            <div class = "container1 d-flex justify-content-center flex-row">

                <div id = "loginbox" class = "loginbox">
                    <div class = "header">
                        <h3>Login</h3>
                        <p>Enter Roll no and Password to login.</p>
                    </div>
                    <div class = "forms">
                        <form action = "login.php" method = "post">
                            <input type = "text" id = "roll" name = "login_roll" placeholder = "Enter Roll No." required><br>
                            <input type = "password" id = "pass" name = "login_pass" placeholder = "Enter Password" required><br><br>

                            <?php 
                                if(!empty($_SESSION["error"])){
                                    echo '<p class = "variablecolor">'.$_SESSION["error"].'</p>'; 
                                }
                            ?><br>
                            <?php $_SESSION["error"] = ""; ?>

                            <button type = "submit" value = "Submit" class = "btn btn-block btn-primary"> Login </button>
                        </form>
                    </div>
                </div >

                <div class="vl"></div>

                <div id = "registerbox" class = "registerbox"> 
                
                    <div class = "header">
                        <h3>Register</h3>
                        <p>Fill the below form to register as a user.</p>
                    </div>
                    <div class = "forms">
                        <form action = "insert.php" method = "post">

                            <input type = "text" id = "roll_no" name = "Roll_No" placeholder = "Enter Roll No." required><br>

                            <input type = "text" id = "name" name = "Name" placeholder = "Enter Name" required><br>

                            <label for = "branch">Branch</label><br>
                            <select id="branch" name="Branch" class  = "dropdown" required>
                                <option value = "B.Tech Computer Science and Engineering">B.Tech Computer Science and Engineering</option>
                                <option value = "B.Tech Electrical Engineering">B.Tech Electrical Engineering</option>
                                <option value = "B.Tech Mechanical Engineering">B.Tech Mechanical Engineering</option>
                                <option value = "B.Tech Civil Engineering">B.Tech Civil Engineering</option>
                                <option value = "M.Tech Communications and Signal Processing">M.Tech Communications and Signal Processing</option>
                                <option value = "M.Tech Structural Engineering">M.Tech Structural Engineering</option>
                            </select><br><br>

                            <label for = "semester">Current Semester</label><br>
                            <select id="semester" name="Semester" class  = "dropdown" required>
                                <option value = "1">1</option>
                                <option value = "2">2</option>
                                <option value = "3">3</option>
                                <option value = "4">4</option>
                                <option value = "5">5</option>
                                <option value = "6">6</option>
                                <option value = "7">7</option>
                                <option value = "8">8</option>
                            </select><br>

                            <input type = "password" id = "pass_word" name = "Password" placeholder = "Enter Password" required><br>

                            <input type = "password" id = "pass1" name  = "Password_check" placeholder = "Confirm Password" required><br><br>

                            <?php 
                                if(!empty($_SESSION["str"])){
                                    echo '<p class = "variablecolor">'.$_SESSION["str"].'</p>'; 
                                }
                            ?><br>
                            <?php $_SESSION["str"] = ""; ?>
                            <button type = "submit" value = "Submit" class = "btn btn-block btn-success" id='reg_btn'>Register</button>
                
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>
    </body>
</html>
