<?php
	require_once('../db/db.php');
	$conn = dbConnection();
	if(!$conn){
		echo "DB connection error";
	}

	$s_id = $_POST['s_id'];
	$sql = "SELECT * FROM services WHERE s_id = '". $s_id ."';";
	if (($result = $conn->query($sql)) !== FALSE){
        while($row = $result->fetch_assoc()){
            $id = $row['s_id'];
            $name =  $row['name'];
            $details = $row['details'];
            $price = $row['price'];
            $flag = $row['flag'];
            $c_id = $row['c_id'];
            echo "
                    <td>{$id}</td>
                    <td>{$name}</td>
                    <td>{$details}</td>
                    <td>{$price}</td>
                    <td>{$flag}</td>
                    <td>{$c_id}</td>
                ";
        }
    }
    $conn->close();
?>