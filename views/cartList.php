<?php
    session_start();
    require_once('../db/db.php');
    include '../php/session.php'; 
?>
<!DOCTYPE html>
<html>

<head>
    <title>Work</title>
    <link rel="stylesheet" type="text/css" href="../css/body.css">
</head>

<body>
    <?php
        if(isset($_SESSION['id']) || isset($_COOKIE['remember'])){
            if($_SESSION['uType'] == '0'){
                include '../views/sellerNav.html';
            } else if($_SESSION['uType'] == '1'){
                include '../views/buyerNav.html';
            } else if($_SESSION['uType'] == '2'){
                include '../views/dealerNav.html';
            } else if($_SESSION['uType'] == '3'){
                include '../views/adminNav.html';
            }
            
        } else {
            include '../views/nav.html';
        }
    ?>

    <table id="content" changeValue="5">
        <tr>
            <?php
                if($_SESSION['uType'] == '0'){
                    include 'sellerWork.html';
                } else if($_SESSION['uType'] == '1'){
                    include 'buyerWork.html';
                } else if($_SESSION['uType'] == '2'){
                    include 'dealerWork.html';
                } else if($_SESSION['uType'] == '3'){
                    include 'Work.html';
                }
            ?>
            <td id="view">
                <h1 class="title">Order list</h1>
                <table>
                    <tr>
                        <td>ID</td>
                        <td>Buyer</td>
                        <td>Service</td>
                        <td>Bill</td>
                    </tr>
                    <?php 
                        $conn = dbConnection();
                        if ($conn->connect_error) {
                          die("Connection failed: " . $conn->connect_error);
                        }
                        $sql = "select * from cart";
                        if (($result = $conn->query($sql)) !== FALSE){
                            while($row = $result->fetch_assoc()){
                                $cart_id = $row['cart_id'];
                                $u_id =  $row['u_id'];
                                $us_id = $row['us_id'];
                                $bill = $row['bill'];
                                $sql = "select name from users where u_id = '$u_id'";
                                if (($result = $conn->query($sql)) !== FALSE){
                                    while($row = $result->fetch_assoc()){
                                        $name = $row['name'];
                                    }
                                }
                                echo "<tr>
                                        <td>{$cart_id}</td>
                                        <td>{$name}</td>
                                        <td>{$us_id}</td>
                                        <td>{$bill}</td>
                                    </tr>";
                            }
                        }
                        $conn->close();
                    ?>
                </table>
            </td>
        </tr>
    </table>
    </script>
    <script type="text/javascript" src="../js/script.js"></script>
</body>

</html>