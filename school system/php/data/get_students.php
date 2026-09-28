<?php
if (!isset($conn)) {
    require_once __DIR__ . '/../core/connection.php';
}

$query = "SELECT * FROM students";
$query = "SELECT student_id, first_name, last_name, dob, email, class,
                 IF(gender = 1, 'female', 'male') AS gender
          FROM students";
$result = mysqli_query($conn, $query);

if ($result) {
    $students = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $students[] = $row;
    }
    $response["status"] = "success";
    $response["data"] = $students;
    $response["message"] = "Students retrieved successfully";
} else {
    $response["status"] = "error";
    $response["message"] = mysqli_error($conn);
}

echo json_encode($response);
