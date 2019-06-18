<?php
/**
 * @Author: Marte
 * @Date:   2019-06-15 15:49:05
 * @Last Modified by:   Marte
 * @Last Modified time: 2019-06-15 15:50:30
 */
    include 'conn.php';
    $name = isset($_POST['name']) ? $_POST['name'] : '';
    $psw = isset($_POST['psw']) ? $_POST['psw'] : '';

    $sql = "INSERT INTO user(name,psw) VALUES('$name','$psw')";
    $res = $conn->query($sql);

    if($res) {
        //插入成功
        echo 'yes';
    }else{
        echo 'no';
    }

?>