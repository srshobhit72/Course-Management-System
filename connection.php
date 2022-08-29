<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $db = "course_management";

    // Create connection
    $conn = mysqli_connect($servername, $username, $password, $db);

    // Check connection
    if (!$conn) {
        die("Could not connect to db! " . mysqli_connect_error());
    }

?>