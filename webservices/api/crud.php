<?php
$method = $_SERVER['REQUEST_METHOD'];
$url = explode("?", filter_var(trim($_SERVER['REQUEST_URI'], "/")));
$params = explode("/", $url[0]);
$query = array();
if (isset($url[1])) {
    $query = explode(";", $url[1]);
}
if ($method == "GET") {
    if ($params[2] == "news") {
        if (isset($params[3])) {
            if ($params[3] == "category") {
                $_GET['id'] = $params[4];
                if (isset($params[5])) $_GET["page"] = $params[5];
                include "./get_all_news_of_a_category.php";
            } else
            if ($params[3] == "tag") {
                $_GET['id'] = $params[4];
                if (isset($params[5])) $_GET["page"] = $params[5];
                include "./get_all_news_by_tags.php";
            } else
            if ($params[3] == "related") {
                $_GET['id'] = $params[4];
                include "./read_news_related.php";
            } else {
                $_GET['id'] = $params[3];
                include "./get_a_news.php";
            }
        } else {
            include "./get_all_news.php";
        }
    } else if ($params[2] == "category") {
        include "./get_all_category.php";
    } else if ($params[2] == "comment") {
        if (isset($params[3])) $_GET["id"] = $params[3];
        include "./get_all_comment_of_a_news.php";
    } else if ($params[2] == "tag") {
        if (isset($params[3])) {
            $_GET["id"] = $params[3];
            include "./get_all_tags_of_a_news.php";
        } else {
            include "./get_all_tags.php";
        }
    }
} else {
    include "./news_crud.php";
}
