<div class="thumbnail">
    <div class="picture" style="url('<?= thumb($id_category, $picture) ?>');"></div>
    <div class="caption">
        <h4 class="pull-right">$<?= $cost ?></h4>
        <h4 data-toggle="modal" data-target="#product-<?= $id_product ?>"><?= $product ?>
        </h4>
        <a href="?c=<?= $id_category ?>"><?= $category ?></a>
        <p><?= substr($description, 0, 80) ?><? if (strlen($description) > 80) echo '...' ?>

        </p>
    </div>
    <button type="button" class="btn btn-primary btn-sm pull-right" style="margin-bottom:10px;margin-right:10px"
            data-toggle="modal" data-target="#product-<?= $id_product ?>">Ver detalles
    </button>
    <div class="clearfix"></div>

    <!-- <div class="ratings">
        <p class="pull-right">6 reviews</p>
        <p>
            <span class="glyphicon glyphicon-star"></span>
            <span class="glyphicon glyphicon-star"></span>
            <span class="glyphicon glyphicon-star"></span>
            <span class="glyphicon glyphicon-star-empty"></span>
            <span class="glyphicon glyphicon-star-empty"></span>
        </p>
    </div> -->
</div>

<!-- Modal -->
<div class="modal fade" id="product-<?= $id_product ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">

            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <div class="picture big" style="background-image: url('<?= thumb($id_category, $picture) ?>');"></div>
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