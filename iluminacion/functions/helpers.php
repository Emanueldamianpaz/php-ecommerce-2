<?php
function con()
{
    $hostname = 'localhost';
    $database = 'carritoiluminacion';
    $username = 'root';
    $password = '';

    try {
        $con = new PDO('mysql:host=' . $hostname . ';dbname=' . $database, $username, $password);
        $con->exec("SET CHARACTER SET utf8");
    } catch (PDOException $e) {
        print "¡Error!: " . $e->getMessage();
        die();
    }

    return $con;

}

function view($view, $params = array())
{

    foreach ($params as $key => $value) {
        $$key = $value;
    }

    include 'views/' . $view . '.php';
}

function asset($file)
{
    return PATH . 'assets/' . $file;
}

function thumb($id_category, $file)
{
    return $file ? PATH . 'uploads/' . $id_category . '/' . $file : 'http://placehold.it/320x150';
}

?>