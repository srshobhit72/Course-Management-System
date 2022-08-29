<?php
session_start();
include_once('connection.php');

if( isset($_POST["drop_courses"]) ) {

    header("Location: homepage.php"); 

    $roll_no = $_SESSION["roll_no"];
    $course_ids = json_decode($_POST['drop_courses']);//array containing course ids as strings

    $queries="";

    for ($i=0; $i<count($course_ids); $i++) {
        $id = (int)$course_ids[$i];// course id as integer
        $queries .= "DELETE FROM registered_courses WHERE Student='$roll_no' AND Course=$id;";

    }

    //mysqli_multi_query($conn, $queries);
    if (mysqli_multi_query($conn, $queries)) {
        do {
          // Store first result set
          if ($result = mysqli_store_result($conn)) {
            while ($row = mysqli_fetch_row($result)) {
              //printf("%s\n", $row[0]);
            }
            mysqli_free_result($result);
          }
          // if there are more result-sets, the print a divider
          if (mysqli_more_results($conn)) {
            //printf("-------------\n");
          }
           //Prepare next result set
        } while (mysqli_next_result($conn));
      }
}


if( isset($_POST["add_courses"]) ) {
    header("Location: homepage.php"); 

    $roll_no = $_SESSION['roll_no'];
    $course_ids = json_decode($_POST['add_courses']);// array containing course ids as strings

    $queries="";

    for ($i=0; $i<count($course_ids); $i++) {
        $id = (int)$course_ids[$i];// course id as integer
        $queries .= "INSERT INTO registered_courses(Student, Course) VALUES('$roll_no', $id);";

    }

    if (mysqli_multi_query($conn, $queries)) {
        do {
          // Store first result set
          if ($result = mysqli_store_result($conn)) {
            while ($row = mysqli_fetch_row($result)) {
              //printf("%s\n", $row[0]);
            }
            mysqli_free_result($result);
          }
          // if there are more result-sets, the print a divider
          if (mysqli_more_results($conn)) {
            //printf("-------------\n");
          }
           //Prepare next result set
        } while (mysqli_next_result($conn));
      }
}

?>
