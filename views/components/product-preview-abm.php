    <div class="thumbnail">
        <div class="picture" >
           <? echo '<img src="data:image/jpeg;base64,'.base64_encode( $picture ).'"width="auto" height="100%" style="object-fit: cover;"/>' ?>
        </div>
        <div class="caption">
            <h4 class="pull-right">$<?= $cost ?></h4>
            <h4 data-toggle="modal" data-target="#product-<?= $id_product ?>"><?= $product ?>
            </h4>
            <a href="?c=<?= $id_category ?>"><?= $category ?></a> 
            <p><?= substr($description,0,80) ?><? if( strlen($description) > 80 ) echo '...' ?>
                
            </p>
        </div>

    <div  style="text-align: center">
        <a href="modificar.php?id=<?php echo $id_product ?>" class="btn btn-warning" role="button">Editar</a>
        <a href="baja.php?id=<?php echo $id_product ?>" class="btn btn-danger" role="button">Eliminar</a>
     
     </div> 
       <br>
        <div class="clearfix"></div>
       
  </div>      
