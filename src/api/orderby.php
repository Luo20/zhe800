<?php
/**
 * @Author: Marte
 * @Date:   2019-06-14 20:31:11
 * @Last Modified by:   Marte
 * @Last Modified time: 2019-06-14 20:33:24
 */

    include 'conn.php';

    $page = isset($_GET['page']) ? $_GET['page'] : '';
    $num = isset($_GET['num']) ? $_GET['num'] : '';
    $type = isset($_GET['type']) ? $_GET['type'] : '';
    $order = isset($_GET['order']) ? $_GET['order'] : '';

    $index = ($page - 1) * $num;
    //没有排序之前要获取第一页
    if($type) {
        $sql = "SELECT * FROM list ORDER BY $type $order LIMIT $index,$num";
    }else{
        $sql = "SELECT * FROM list LIMIT $index,$num";
    }

    $res = $conn->query($sql);

    $content = $res->fetch_all(MYSQLI_ASSOC);

    $sql2 = "SELECT * FROM list";

    $res2 = $conn->query($sql2);

    $data = array(
        'total' => $res2->num_rows,
        'list' => $content,
        'page' => $page,
        'num' => $num
    );

    echo json_encode($data,JSON_UNESCAPED_UNICODE);
?>