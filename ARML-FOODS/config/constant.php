<?php

    session_start();

    define('SITEURL','http://localhost/ARML-FOODS/');
    define('LOCALHOST','localhost');
    define('DB_USERNAME','root');
    define('PASSWORD','');
    define('DB_NAME','arml-foods');

    $conn = mysqli_connect(LOCALHOST,DB_USERNAME,PASSWORD) or die();
    $db_select = mysqli_select_db($conn,DB_NAME) or die();
?>