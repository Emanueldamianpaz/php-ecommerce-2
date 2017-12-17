<?php
define('PATH', '');
require_once 'start.php';

 view('header');



if(isset($_POST["baja"])){
    $sql = "delete from product  where id_product=".$_POST["product_id"];


    if ($db->query( $sql )) {
        header('Location: index.php ');
        }else{
        echo "fallo";
    };
};
?>

<div class="container">
        <div class="row">

        
            <div class="col-md-9">

                <div class="row">
      
<form class="form-horizontal" method="post">
    <div class="form-group">
        <label class="control-label col-sm-2" for="product_id">Product_id:</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="product_id" value="<? echo $_GET['id'] ?>" name="product_id" placeholder="product_id">
        </div>
    </div>

  
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" name="baja" class="btn btn-default">Borrar</button>
    </div>
  </div>

</form>


                  
                </div>

            </div>

        </div>

    </div>
    <!-- /.container -->

<? view('footer'); ?>