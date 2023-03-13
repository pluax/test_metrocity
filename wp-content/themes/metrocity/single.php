<?php
/*
Template Name: main template single
Template Post Type: houses
* The template for displaying all pages
*
* This is the template that displays all pages by default.
*/

get_header();
?>
<script src="https://api-maps.yandex.ru/2.1/?apikey=f7f5866c-fcab-4da8-94d7-cdbdb39c7d22&lang=ru_RU"></script>
<link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri(); ?>/fonts/icomoon/icon-font.css">
<body>

	<main class="main">

		<div class="container">

			<div class="page-top">

				<nav class="page-breadcrumb" itemprop="breadcrumb">
	<a href="/">Главная</a>
	<span class="breadcrumb-separator"> > </span>
	 <a href="/">Новостройки</a><span class="breadcrumb-separator"> > </span> 
	<?= the_title(); ?>
</nav>

			</div>

			<div class="page-section">

				<div class="page-content">

					<article class="post">

	<div class="post-header">

		<h1 class="page-title-h1"><?= the_title();  ?></h1>

		<span><?= get_the_author_meta('first_name',$post->post_author).' '.get_the_author_meta('last_name',$post_author_id); ?></span>

		<div class="post-header__details">

			<div class="address"><?= get_field('adress')['adress1']; ?></div>
            <?php
           if( have_rows('metro') ):
              while ( have_rows('metro') ) : the_row();
            ?>
         
           <div class="metro"><span class="icon-metro icon-metro--<?= get_sub_field('branch'); ?>">


            </span><?= the_sub_field('staition'); ?> 
            <span><?= the_sub_field('minutes'); ?>  мин.
            <?php
            if (get_sub_field('minutes')<15) echo '<span class="icon-walk-icon"></span>';
            else 
            echo '<span class="icon-bus"></span>';
            ?>   
            </span></div>

            <?php
            endwhile;
                else :
            endif;
              ?>

		</div>

	</div>

	<div class="post-image">

		<img src="<?= the_field('full_img'); ?>" alt="">

		<div class="page-loop__item-badges">
            <?php 
            if (get_field('zero')==true) echo  '<span class="badge">Услуги 0%</span>';      
            if ((get_field('class')=='Комфорт') or (get_field('class')=='Элит'))  echo  '<span class="badge">Комфорт+</span>';
             ?>
		</div>
		<a href="#" class="favorites-link favorites-link__add" title="Добавить в Избранное" role="button">
			<span class="icon-heart"><span class="path1"></span><span class="path2"></span></span>
		</a>

	</div>

	<h2 class="page-title-h1">Характеристики ЖК</h2>

	<ul class="post-specs">
		<li>
			<span class="icon-building"></span>
			<div class="post-specs__info">
				<span>Класс жилья</span>
				<p><?= the_field('class'); ?></p>
			</div>
		</li>
		<li>
			<span class="icon-brick"></span>
			<div class="post-specs__info">
				<span>Конструктив</span>
				<p><?= the_field('konstruktiv'); ?></p>
			</div>
		</li>
		<li>
			<span class="icon-paint"></span>
			<div class="post-specs__info">
				<span>Отделка</span>
				<p>
                <?= the_field('otdelka'); ?>
					<span class="tip tip-info" data-toggle="popover" data-placement="top"
						data-content="And here's some amazing content. It's very engaging. Right?">
						<span class="icon-prompt"></span>
					</span>
				</p>
			</div>
		</li>
		<li>
			<span class="icon-calendar"></span>
			<div class="post-specs__info">
      
				<span>Срок сдачи</span>
				<p><?= get_field('deadline')['quarter']; ?> кв. <?= get_field('deadline')['year']; ?></p> 
			</div>
		</li>
		<li>
			<span class="icon-ruller"></span>
			<div class="post-specs__info">
				<span>Высота потолков</span>
				<p><?= the_field('potolok'); ?> м</p>
			</div>
		</li>
		<li>
			<span class="icon-parking"></span>
			<div class="post-specs__info">
				<span>Подземный паркинг</span>
				<p><?php
                if (get_field('parking')==false) 
                echo 'Отсутствует';
                 else echo 'Присутствует';            
                ?></p>
			</div>
		</li>
		<li>
			<span class="icon-stair"></span>
			<div class="post-specs__info">
				<span>Этажность</span>
				<p><?= the_field('floor_min'); ?>-<?= the_field('floor_max'); ?></p>
			</div>
		</li>
		<li>
			<span class="icon-wallet"></span>
			<div class="post-specs__info">
				<span>Ценовая группа</span>
				<p><?= the_field('price_group'); ?></p>
			</div>
		</li>
		<li>
			<span class="icon-rating"></span>
			<div class="post-specs__info">
				<span>Рейтинг</span>
				<p><?= the_field('raiting'); ?></p>
			</div>
		</li>
	</ul>

	<h2 class="page-title-h1">Краткое описание</h2>

	<div class="post-text">
		<p>
			<?= the_excerpt(); ?>
		</p>
	</div>

	<h2 class="page-title-h1">Карта</h2>

	<div class="post-map" id="post-map" style="width: 100%; height: 300px;"></div>

</article>

				</div>

				<div class="page-filter"></div>

			</div>

		</div>

	</main>
<script>


    
</script>
<?php

get_footer();

?>