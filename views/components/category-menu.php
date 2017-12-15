<p class="lead">Categorias</p>
<div class="list-group">
	<?php foreach ($categories as $category): ?>
	    <a href="?c=<?= $category['id_category'] ?>" class="list-group-item"><?= $category['name'] ?></a>
	<?php endforeach ?>    
</div>
