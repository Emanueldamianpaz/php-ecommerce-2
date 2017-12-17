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
        <button type="button" class="btn btn-primary btn-sm pull-right" style="margin-bottom:10px;margin-right:10px" data-toggle="modal" data-target="#product-<?= $id_product ?>">Ver detalles</button>
        <div class="clearfix"></div>
       
  </div>      

    <!-- Modal -->
    <div class="modal fade" id="product-<?= $id_product ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">

          <div class="modal-body">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          
               <div class="row">     
                  <? echo '<img src="data:image/jpeg;base64,'.base64_encode( $picture ).'"/>' ?>
                </div>

            <h2 class="modal-title" id="myModalLabel"><?= $product ?></h2>
            <p><?= nl2br($description) ?></p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            <button type="button" class="btn btn-primary">Agregar al carrito</button>
          </div>
        </div>
      </div>
    </div>