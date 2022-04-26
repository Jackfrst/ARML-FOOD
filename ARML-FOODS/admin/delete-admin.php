<?php

    include('../config/constant.php');

    $id = $_GET['id'];
   
    $sql = "DELETE FROM tbl_admin WHERE id=$id";

    $res = mysqli_query($conn,$sql);

    if($res == true)
    {
        $_SESSION['delete'] = "<div class='success'>Admin Deleted Succsesfully.</div>";
        header('location:'.SITEURL.'admin/mng_admin.php');
    }
    else{
        $_SESSION['delete'] = "<div class='error'>Failed Admin Delete.</div>";
        header('location:'.SITEURL.'admin/mng_admin.php'); 
    }

?>