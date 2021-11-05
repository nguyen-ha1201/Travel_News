<?php

include_once '../config/Database.php';
include_once '../models/News.php';

function response($status_code, $data = NULL)
{
    header(build_http_header_string($status_code));
    header("Content-Type: application/json");
    echo json_encode($data);
    die();
}
function build_http_header_string($status_code)
{
    $status = array(
        200 => 'OK',
        202 => 'Accepted',
        404 => 'Not Found',
        405 => 'Method Not Allowed',
        500 => 'Internal Server Error'
    );
    return "HTTP/1.1 " . $status_code . " " . $status[$status_code];
}
function saveFile()
{
    $target_dir = "../../client/images/news-pics/";
    $now = time();
    $target_dir = $target_dir . "pic (" . $now . ").jpg";

    if (move_uploaded_file($_FILES["pic"]["tmp_name"], $target_dir)) {
        return $now;
    }
}

header("Access-Control-Allow-Orgin: *");
header("Access-Control-Allow-Methods: *");

$database = new Database();
$db = $database->connect();

$news = new News($db);
$data = json_decode(file_get_contents('php://input'));
$response;
switch ($method) {
    case "POST":
        if (isset($params[3])) {
            $news->id = $params[3];
            if (!$news->read_single())
                response(202, "Id not found");
            if (isset($_POST['title'])) $news->title = $_POST['title'];
            if (isset($_POST['short_intro'])) $news->short_intro = $_POST['short_intro'];
            if (isset($_POST['content'])) $news->content = $_POST['content'];
            if (isset($_POST['author'])) $news->author = $_POST['author'];
            if (isset($_POST['cat_id'])) $news->cat_id = $_POST['cat_id'];
            if (isset($_FILES["pic"])) $news->pic = saveFile();
            $news->update();
            response(200, "Updated");
        } else {
            if (
                isset($_POST['title']) && isset($_POST['short_intro']) && isset($_POST['content']) &&
                isset($_POST['author']) && isset($_POST['cat_id'])
            ) {
                $news->title = $_POST['title'];
                $news->short_intro = $_POST['short_intro'];
                $news->content = $_POST['content'];
                $news->author = $_POST['author'];
                $news->cat_id = $_POST['cat_id'];
                if (isset($_FILES["pic"])) {
                    $news->pic = saveFile();
                }
                if ($news->create()) {
                    response(200, "Created");
                } else {
                    response(202, "Create fail");
                };
            }
        }
        break;
    case "PUT":
        response(202, "Unsupported method. Use HTTP POST to update");
        break;
    case "DELETE":
        if (isset($params[3])) {
            $news->delete($params[3]);
            response(200, "Deleted");
        } else {
            response(202, "Id not found");
        }
        break;
    default:
        response(500, "Unknown endpoint");
        break;
}
