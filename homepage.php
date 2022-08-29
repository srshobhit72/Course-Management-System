<?php
    session_start();
    include_once('connection.php');

    $result = mysqli_query($conn, "SELECT * FROM students WHERE Roll_No = '".$_SESSION["roll_no"]."'");
    $user = mysqli_fetch_assoc($result);
    $username = $user['Name'];
    $user_program = $user['Program'];
    $user_semester = $user['Current_semester'];

    if( isset($_POST["semester"])) {
        $semester = $_POST["semester"];

    }else{
        $semester = $user_semester;
    }

    $registered_courses = mysqli_query($conn, "SELECT registered_courses.Course, courses.Code, 
    courses.Title, courses.Semester FROM registered_courses INNER JOIN courses ON registered_courses.Course=courses.ID 
    WHERE registered_courses.Student = '".$_SESSION["roll_no"]."'");
    $registered_courses_ids = array();

    while($row = mysqli_fetch_assoc($registered_courses)){
        if ($row['Semester'] == $semester){
            array_push($registered_courses_ids, $row['Course']);
        }
    }

    mysqli_data_seek($registered_courses,0);

    $courses_offered = mysqli_query($conn, "SELECT ID, Code, Title, Semester from courses where Program = '$user_program';");

    mysqli_close($conn);

?>

<html>
    <head>
        <title>Course Management System</title>
        <link rel="stylesheet" type="text/css" href="./css/homepage.css">
    </head>

<body>

    <header>

        <div class="logout_btn">
            <button type="button"><a href="logout.php">Log Out</a></button>
        </div>
        <div class="semester">
            <form action="homepage.php" method="post">
                <label for="semester">Choose semester:</label>
                <select name="semester" id="sem" onchange='this.form.submit();'>
                    <option value=1>1</option>
                    <option value=2>2</option>
                    <option value=3>3</option>
                    <option value=4>4</option>
                    <option value=5>5</option>
                    <option value=6>6</option>
                    <option value=7>7</option>
                    <option value=8>8</option>
                </select>
                <br>
            </form>
        </div>

        <h1>Welcome <?php echo $username; ?>!</h1>
        <h4>Roll No.: <?php echo htmlspecialchars($_SESSION["roll_no"]); ?>, Semester: <?php echo $user_semester; ?></h4>
        <h4>Program: <?php echo $user_program?></h4>
        <br><br>

    </header>
    
    <div class="main">

    <?php 
    
    if($user_semester==$semester) {

        echo("
        <div class='offered'>
            <h4>List of courses offered: </h4>

            <table>
                <tr>
                    <th class='serial_no'>Sr</th>
                    <th class='code_col'>Course Code</th>
                    <th>Course Title</th>
                    <th class='checkbox_col'>Add</th>
                </tr>");

                
        $count=1;
        while($row = mysqli_fetch_assoc($courses_offered)){
            if ($row['Semester']==$semester and !in_array($row['ID'],$registered_courses_ids)){
                echo "<tr>";
                echo "<td class='serial_no'>" .$count ."</td>";
                echo "<td class='code_col'>" .$row['Code'] ."</td>";
                echo "<td>" .$row['Title'] ."</td>";
                echo "<td class='checkbox_col'><input class='add_courses' id='" .$row['ID'] ."' type='checkbox'></td>";
                echo "</tr>";
                $count=$count+1;
            }
        }
        if ($count==1){
            echo "<tr><td colspan='4'> No more courses are available.</td></tr>";
        }
                
        echo("
        </table>
        <button type='button' id='add_submit_btn' onclick='add_course()'>Submit</button>

        </div>

        <div class='registered'>

            <h4>List of registered courses: </h4>

            <table>
                <tr>
                    <th class='serial_no'>Sr</th>
                    <th class='code_col'>Course Code</th>
                    <th>Course Title</th>
                    <th class='checkbox_col'>Drop</th>
                </tr>");

                
        $count=1;
        while($row = mysqli_fetch_assoc($registered_courses)){
            if ($row['Semester']==$semester){
                echo "<tr>";
                echo "<td class='serial_no'>" .$count ."</td>";
                echo "<td class='code_col'>" .$row['Code'] ."</td>";
                echo "<td>" .$row['Title'] ."</td>";
                echo "<td class='checkbox_col'><input class='drop_courses' id='" .$row['Course'] ."' type='checkbox'></td>";
                echo "</tr>";
                $count=$count+1;
            }
        }
        if ($count==1){
            echo "<tr><td colspan='4'> No registered courses yet.</td></tr>";
        }

        echo("
        </table>

        <button type='button' id='drop_submit_btn' onclick='drop_course()'>Submit</button>

        </div>");
        }


    elseif($user_semester>$semester) {
        echo("
        <div class='registered'>

            <h4>List of registered courses: </h4>
            <table>
                <tr>
                    <th class='serial_no'>Sr</th>
                    <th class='code_col'>Course Code</th>
                    <th>Course Title</th>
                </tr>");
                
        $count=1;
        while($row = mysqli_fetch_assoc($registered_courses)){
            if ($row['Semester']==$semester){
                echo "<tr>";
                echo "<td class='serial_no'>" .$count ."</td>";
                echo "<td class='code_col'>" .$row['Code'] ."</td>";
                echo "<td>" .$row['Title'] ."</td>";
                echo "</tr>";
                $count=$count+1;
            }
        }
        if ($count==1){
            echo "<tr><td colspan='4'> No registered courses.</td></tr>";
        }

        echo("
                </table>

            </div>");
        }


    else {
        echo(
            "<div class='message' style='display:inline-block; width: 60%; padding: 50px; background-color:rgb(214, 235, 235); 
            border: 1px solid black; border-radius: 5px; font-size: 18px;'>
                You cannot add/drop courses for this semester!!
            </div>"
        );
    }
    ?>
    </div>



    <script>

        if ( window.history.replaceState ) {
            window.history.replaceState( null, null, window.location.href );
        }


        var dropdown = document.getElementById("sem");
        dropdown.value=<?php echo $semester; ?>;

        function drop_course() {
            var all_courses = [...document.getElementsByClassName("drop_courses")];
            var courses_selected = all_courses.filter(ele => ele.checked);          
            var courses_ids = [];
            for (i=0; i<courses_selected.length; i++) {
                courses_ids.push(courses_selected[i].id);
            }
            console.log("Course ids selected for dropping - ", courses_ids);

            if (courses_ids.length>0){
                var json = JSON.stringify(courses_ids);

                var form = document.createElement("form");
                var input = document.createElement("input"); 

                form.method = "POST";
                form.action = "add_drop_courses.php";   

                input.value=json;
                input.name="drop_courses";
                form.appendChild(input);  

                form.style.display="none";
                document.body.appendChild(form);
                form.submit();
            }
        }

        function add_course() {
            var all_courses = [...document.getElementsByClassName("add_courses")];
            var courses_selected = all_courses.filter(ele => ele.checked);          
            var courses_ids = [];
            for (i=0; i<courses_selected.length; i++) {
                courses_ids.push(courses_selected[i].id);
            }
            console.log("Course ids selected for adding - ", courses_ids);

            if (courses_ids.length>0){
                var json = JSON.stringify(courses_ids);

                var form = document.createElement("form");
                var input = document.createElement("input"); 

                form.method = "POST";
                form.action = "add_drop_courses.php";   

                input.value=json;
                input.name="add_courses";
                form.appendChild(input);  

                form.style.display="none";
                document.body.appendChild(form);
                form.submit();
            }
        }
    </script>
</body>

</html>