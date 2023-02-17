<?php

$method = $_SERVER['REQUEST_METHOD'];
$uri = $_SERVER['REQUEST_URI'];
$protocol = $_SERVER['SERVER_PROTOCOL'];
$headers = getallheaders();

echo "$method $uri $protocol <br/>";
foreach ($headers as $key => $header) {
    echo "$key: $header <br/>";
}

$host = getenv("MYSQL_HOST");
$port = getenv("MYSQL_PORT");
$host = "$host:$port";
$user = getenv("MYSQL_USER");
$pass = getenv("MYSQL_PASSWORD");
$conn = new mysqli($host, $user, $pass);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {
    echo "Connected to MySql server successfully";
}

?>
