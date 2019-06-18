<?php
/**
 * @Author: Marte
 * @Date:   2019-06-15 14:08:40
 * @Last Modified by:   Marte
 * @Last Modified time: 2019-06-15 14:15:22
 */

    include 'conn.php';

    $name = isset($_POST['name']) ? $_POST['name'] : '';

    $sql = "SELECT * FROM user WHERE name='$name'";

    $res = $conn->query($sql);

    if($res->num_rows) {
        //找出，存在，不给注册
        echo 'no';
    }else{
        //找不到，可以注册
        echo 'yes';
    }

?>