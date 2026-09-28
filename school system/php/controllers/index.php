<?php
require_once __DIR__ . '/../core/connection.php';

$opt = $_POST['opt'] ?? $_GET['opt'] ?? '';

switch ($opt) {
    case '1':
    case 'get_students':
        require_once __DIR__ . '/../data/get_students.php';
        break;

    case '2':
    case 'insert_student':
        require_once __DIR__ . '/../ac/insert_student.php';
        break;

    case '3':
    case 'delete_student':
        require_once __DIR__ . '/../ac/delete_student.php';
        break;

    default:
        $response["message"] = "Invalid operation";
        echo json_encode($response);
        break;
}
