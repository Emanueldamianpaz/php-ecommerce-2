<?php
define('PATH', '');
require_once 'start.php';

 view('header');

if(isset($_POST["agregar"])){



    $image = addslashes(file_get_contents($_FILES['picture']['tmp_name']));

    $sql = "INSERT INTO product  values ("
    .$_POST["product_id"].",'"
    .$_POST["product"]."','"
    .$_POST["description"]."',"
    .$_POST["cost"].",'{$image}',"
    .$_POST["category_id"].")";

        if ($db->query( $sql )) {
            echo "se cargo";
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
            <input type="text" class="form-control" id="product_id" name="product_id" placeholder="product_id">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="product">product:</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="product" name="product" placeholder="product">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="category_id">Category_id:</label>
        <div class="col-sm-6"> 
        <input type="text" class="form-control" id="category_id" name="category_id" placeholder="category_id">
        </div>
    </div>
  
   
    <div class="form-group">
        <label class="control-label col-sm-2" for="cost">cost:</label>
        <div class="col-sm-6"> 
        <input type="text" class="form-control" id="cost" name="cost" placeholder="cost">
        </div>
    </div>


    <div class="form-group">
        <label class="control-label col-sm-2" for="description">description:</label>
        <div class="col-sm-6">
            <textarea name="description" class="form-control" id="description" name="description"  placeholder="description"></textarea>
 
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
      <button type="submit" name="agregar" class="btn btn-default">Agregar</button>
    </div>
  </div>

</form>


                  
                </div>

            </div>

        </div>

    </div>
    <!-- /.container -->

<? view('footer'); ?>