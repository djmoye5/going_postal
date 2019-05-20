<?php include "partials/header.tpl" ?>

<div class="row">
	<div class="col-sm">
		<h1>Images</h1>
	</div>
</div>
<div class="row">
	<?php foreach($images as $img) { ?>
		<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
			<div class="card">
				<img src="images/<?= $img->pic ?>" class="card-img-top" alt="<?= $img->description ?>">
				<div class="card-body">
					<p class="card-text"><?= $img->description ?></p>
				</div>
				<div class="card-body">
					<a href="#" class="card-link"><?= $img->quantity ?> stamps</a>
				</div>
			</div>
		</div>
	<?php } ?>
</div>

<?php include "partials/footer.tpl" ?>