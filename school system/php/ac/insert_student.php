<?php
if (!isset($conn)) {
    require_once __DIR__ . '/../core/connection.php';
}

$first_name = trim($_POST['first_name'] ?? '');
$last_name  = trim($_POST['last_name'] ?? '');
$gender     = trim($_POST['gender'] ?? '');
$dob        = trim($_POST['dob'] ?? '');
$email      = trim($_POST['email'] ?? '');
$class      = trim($_POST['class'] ?? '');


$first_name = mysqli_real_escape_string($conn, $first_name);
$last_name  = mysqli_real_escape_string($conn, $last_name);
$gender     = mysqli_real_escape_string($conn, $gender);
$dob        = mysqli_real_escape_string($conn, $dob);
$email      = mysqli_real_escape_string($conn, $email);
$class      = mysqli_real_escape_string($conn, $class);

$query = "INSERT INTO students (first_name, last_name, gender, dob, email, class) 
          VALUES ('$first_name', '$last_name', '$gender', '$dob', '$email', '$class')";

if (mysqli_query($conn, $query)) {
    $response["status"] = "success";
    $response["message"] = "Student registered successfully";
    $response["student_id"] = mysqli_insert_id($conn);
} else {
    $response["status"] = "error";
    $response["message"] = mysqli_error($conn);
}

echo json_encode($response);
