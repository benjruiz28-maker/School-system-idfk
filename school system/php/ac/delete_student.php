<?php
if (!isset($conn)) {
    require_once __DIR__ . '/../core/connection.php';
}

$id = intval($_POST['id'] ?? $_POST['student_id'] ?? 0);

if ($id <= 0) {
    $response["status"] = "error";
    $response["message"] = "Invalid student ID";
    echo json_encode($response);
    exit;
}

$query = "DELETE FROM students WHERE student_id = '$id'";

if (mysqli_query($conn, $query)) {
    $response["status"] = "success";
    $response["message"] = "Student deleted successfully";
} else {
    $response["status"] = "error";
    $response["message"] = mysqli_error($conn);
}

echo json_encode($response);
