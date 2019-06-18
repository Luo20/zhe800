<?php
/**
 * @Author: Marte
 * @Date:   2019-04-26 14:31:20
 * @Last Modified by:   Marte
 * @Last Modified time: 2019-06-13 17:10:23
 */
    //连接数据库
    $severname = 'localhost';
    $username = 'root';
    $dbpsw = '';
    $dbname = 'zhe800';

    //创建链接
    $conn = new mysqli($severname,$username,$dbpsw,$dbname);

    //检测连接
    if($conn->connect_error) {
        die("连接失败:" . $conn->connect_error);
    }
    // echo '连接成功';
//  $res->close();//关闭结果集
//  $conn->close();//关闭数据库

?>