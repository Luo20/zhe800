<?php
/**
 * @Author: Marte
 * @Date:   2019-06-15 16:01:29
 * @Last Modified by:   Marte
 * @Last Modified time: 2019-06-15 16:52:28
 */

    include 'conn.php';

    $name = isset($_POST['name']) ? $_POST['name'] : '';
    $psw = isset($_POST['psw']) ? $_POST['psw'] : '';

    $sql = "SELECT * FROM user WHERE name='$name' AND psw='$psw'";

    $res = $conn->query($sql);

    if($res->num_rows) {
        //找到，允许登陆
        echo 'yes';
    }else{
        //找不到，不允许登陆
        echo 'no';
    }
?>