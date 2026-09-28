<?php
$conn = mysqli_connect("localhost", "root", "", "school_db");

$response = [
    "status" => "error",
    "message" => "An unknown error occurred"
];

if (!$conn) {
    $response["message"] = "Connection failed: " . mysqli_connect_error();
    echo json_encode($response);
    exit;
}
