<?php 
define('PATH', '');
require_once 'start.php';

$category = isset($_GET['c']) ? $_GET['c'] : false;

$data = [];
$sql = 'SELECT p.name as product,
				p.id_category as id_category,
				p.id_product as id_product,
				p.cost as cost,
				p.description as description,
				p.picture as picture,
				c.name as category 
		FROM product p
		
		LEFT JOIN category c ON p.id_category = c.id_category';

if($category) {
	$sql .= " WHERE p.id_category = $category";
}

$data['products'] = $db->query( $sql );
$data['categories'] =$db->query('SELECT c.name, c.id_category 
                                 FROM category c order by 1');


view('section/home',$data);


?>