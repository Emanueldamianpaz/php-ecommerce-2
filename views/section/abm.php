<? view('header'); ?>
<div class="container">
        <div class="row">

            <div class="col-md-3">
            	<? view('components/category-menu', array('categories'=>$categories)) ?>

            </div>

            <div class="col-md-9">
                <div class="row">
            
					<?php foreach ($products as $product): ?>

						<div class="col-sm-4 col-lg-4 col-md-4">
					  		<? view('components/product-preview-abm',$product) ?>
                        </div>
					<?php endforeach ?>  					
                  
                </div>

            </div>

        </div>

    </div>
    <!-- /.container -->

<? view('footer'); ?>