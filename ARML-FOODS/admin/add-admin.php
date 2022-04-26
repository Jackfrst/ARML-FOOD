<?php include('partial/menu.php'); ?>

<div class="main_content">
    <div class="wrapper">
        <h1>Add Admin</h1>
        <br><br>

        <?php
        if(isset($_SESSION['add'])){
            echo $_SESSION['add'];
            unset($_SESSION['add']);
        }
        ?>

        <br><br>
        <form action="" method="POST">

            <table class="tbl-30">
                <tr>
                    <td>Full Name</td>
                    <td><input type="text" name="full_name" placeholder="Enter your name "></td>
                </tr>

                <tr>
                    <td>User Name</td>
                    <td><input type="text" name="username" placeholder="Enter your username "></td>
                </tr>

                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" placeholder="Enter your password"></td>
                </tr>

                <tr>
                    <td colspan="2">
                        <input type="submit" name="submit" value="Add Admin" class="btn-secondary">
                    </td>
                </tr>
            </table>

        </form>
    </div>
</div>

<?php include('partial/footer.php'); ?>


<?php
$full_name = null;
$user_name = null;
$password = null;

//Value processing 
if (isset($_POST['submit'])) {
    $full_name = $_POST['full_name'];
    $user_name = $_POST['username'];
    $password = md5($_POST['password']);

    // Save in Database
    $sql = "INSERT INTO tbl_admin SET
        full_name = '$full_name',
        username  = '$user_name', 
        password  = '$password'
        ";

    $res = mysqli_query($conn,$sql) or die();

    if($res == TRUE){
        $_SESSION['add'] = 'Admin Added Successfully';
        header("location:".SITEURL.'admin/mng_admin.php');
    }
    else{
        $_SESSION['add'] = 'Admin Add Failed';
        header("location:".SITEURL.'admin/add_admin.php');
    }
}
?>