<?php
/**
 * @Author: Marte
 * @Date:   2019-06-13 16:33:37
 * @Last Modified by:   Marte
 * @Last Modified time: 2019-06-13 19:35:12
 */

    //连接数据库
    include 'conn.php';

    $page = isset($_GET['page']) ? $_GET['page'] : '1';//第几页
    $num = isset($_GET['num']) ? $_GET['num'] : '20';//每页多少条

    $index = ($page - 1) * $num;
    $sql = "SELECT * FROM indexlist LIMIT $index,$num";

    $res = $conn->query($sql);
    $content = $res->fetch_all(MYSQLI_ASSOC);

    $sql2 = "SELECT * FROM indexlist";
    $res2 = $conn->query($sql2);

    $data = array(
        'total' => $res2->num_rows,
        'indexlist' => $content,
        'page' => $page,
        'num' => $num
    );

    echo json_encode($data,JSON_UNESCAPED_UNICODE);

?>