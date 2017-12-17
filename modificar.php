<?php
define('PATH', '');
require_once 'start.php';

 view('header');
$product = '';

if(isset($_GET['id'])){

    $sql = "SELECT * FROM product where id_product=".$_GET["id"];
    $results = $db->query($sql);
    $product = $results->fetch();
    
}


if(isset($_POST["modificar"])){

    $image = addslashes(file_get_contents($_FILES['picture']['tmp_name'])); 

    $sql = "UPDATE product  set 
        name='".$_POST['product']."',
        description='".$_POST["description"]."',
        cost=".$_POST["cost"].",
        picture='{$image}',
        id_category=".$_POST["category_id"]."  where id_product=".$_GET["id"];
       

       
        if ($db->query( $sql )) {
            echo "se modifico";
            header('Location: index.php ');
        }else{
            echo "fallo";
           
        };
}


?>

<div class="container">
        <div class="row">

        
            <div class="col-md-9">

                <div class="row">
      
<form class="form-horizontal" method="post"  enctype="multipart/form-data">
    <div class="form-group">
        <label class="control-label col-sm-2" for="product_id">Product_id:</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="product_id" name="product_id" placeholder="product_id" disabled
           value="<? echo $_GET['id'] ?>"  >
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="product">product:</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="product" name="product" placeholder="product"
             value="<? echo $product['name'] ?>">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="category_id">Category_id:</label>
        <div class="col-sm-6"> 
        <input type="text" class="form-control" id="category_id" name="category_id" placeholder="category_id"
        value="<? echo $product['id_category'] ?>">
        </div>
    </div>
  
    <div class="form-group">
        <label class="control-label col-sm-2" for="cost">cost:</label>
        <div class="col-sm-6"> 
        <input type="text" class="form-control" id="cost" name="cost" placeholder="cost"
        value="<? echo $product['cost'] ?>">
        </div>
    </div>


    <div class="form-group">
        <label class="control-label col-sm-2" for="description">description:</label>
        <div class="col-sm-6">
            <textarea name="description" class="form-control" id="description" name="description"  placeholder="description">
                <? echo $product['description'] ?>
            </textarea>
 
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="picture">picture:</label>
        <div class="col-sm-6"> 
        <input type="file" class="form-control" id="picture" name="picture"  placeholder="picture">
        </div>
    </div>


   
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" name="modificar" class="btn btn-default">Modificar</button>
    </div>
  </div>

</form>


                  
                </div>

            </div>

        </div>

    </div>
    <!-- /.container -->

<? view('footer'); ?>