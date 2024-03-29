<?php
get_header();
?>
<body>

	<main class="main">

		<div class="container">

			<div class="page-top">

				<nav class="page-breadcrumb" itemprop="breadcrumb">
	<a href="/">Главная</a>
	<span class="breadcrumb-separator"> > </span>
	
	Новостройки
</nav>

				<div class="page-top__switchers">

					<div class="container">
						<div class="row">

							<div class="page-top__switchers-inner">

								<a href="#" class="page-top__filter">
									<span class="icon-filter"></span>
									Фильтры
								</a>

								<a href="#" data-tab-name="loop" class="page-top__switcher tab-nav active">
									<span class="icon-grid"></span>
								</a>

								<a href="#" data-tab-name="map" class="page-top__switcher tab-nav">
									<span class="icon-marker"></span>
								</a>

							</div>

						</div>
					</div>

				</div>

			</div>

			<div class="page-section">

				<div class="page-content">

					<h1 class="visuallyhidden">Новостройки</h1>

					<div class="page-loop__wrapper loop tab-content tab-content__active">

	<ul class="page-loop with-filter">

	<?php
 
				$args = filter();

                $query = new WP_Query( $args ); 
			
                if( $query->have_posts() ){
                  while( $query->have_posts() ){
                      $query->the_post();		
                      $thumb_id = get_post_thumbnail_id();                     
                      $thumb_url = wp_get_attachment_image_src($thumb_id,'medium', false);
                     
  	?>

<li class="page-loop__item wow animate__animated animate__fadeInUp" data-wow-duration="0.8s">

	<a href="#" class="favorites-link favorites-link__add" title="Добавить в Избранное" role="button">
		<span class="icon-heart"><span class="path1"></span><span class="path2"></span></span>
	</a>

	<a href="<?= the_permalink(); ?>" class="page-loop__item-link">

		<div class="page-loop__item-image">

			<img src="<?= $thumb_url[0]; ?>" alt="">

			<div class="page-loop__item-badges">
			<?php 
            if (get_field('zero')==true) echo  '<span class="badge">Услуги 0%</span>';      
            if ((get_field('class')=='Комфорт') or (get_field('class')=='Элит'))  echo  '<span class="badge">Комфорт+</span>';
             ?>
			</div>

		</div>

		<div class="page-loop__item-info">

			<h3 class="page-title-h3"><?= the_title(); ?></h3>

			<p class="page-text">Срок сдачи до <?= get_field('deadline')['quarter']; ?> кв. <?= get_field('deadline')['year']; ?> </p>

			<div class="page-text to-metro">
			<?php
				$rows_metro = get_field('metro'); 
				$first_row = $rows_metro[0]; 

			?>
		    <span class="icon-metro icon-metro--<?= $first_row['branch' ]; ?>"></span>
			
			<span class="page-text"><?= $first_row['staition' ]; ?><span> <?= $first_row['minutes' ]; ?>  мин.</span></span>
			<?php
			if ($first_row['minutes']<15) echo '<span class="icon-walk-icon"></span>';
			else 
			echo '<span class="icon-bus"></span>';
			?>   
			
			</div>




			<span class="page-text text-desc"><?= get_field('adress')['adress1']; ?></span>

		</div>

	</a>

</li>

<?php	}	
					wp_reset_postdata();
				}
?>



	</ul>
	<?php if ($query->max_num_pages > 1) : ?>
	<script>
    var ajaxurl = '<?php echo site_url(); ?>/wp-admin/admin-ajax.php';
    var posts_vars = '<?php echo serialize($query->query_vars); ?>';
    var current_page = <?php echo (get_query_var('paged')) ? get_query_var('paged') : 1; ?>;
    var max_pages = '<?php echo $query->max_num_pages; ?>';
    </script>
	
	<div id=loadmore class="show-more">

		<button  class="show-more__button">

			<span class="show-more__button-icon"></span>

			Показать еще

		</button>

	</div>
<?php endif; ?>
</div>

<div class="page-map tab-content map">

	<h1>Тут будет карта</h1>

</div>

				</div>

				<div class="page-filter fixed">

					<div class="page-filter__wrapper">

	<form  action='' id="page-filter" class="page-filter__form">

		<div class="page-filter__body">

			<div class="page-filter__category">

				<a href="#proximity" class="page-filter__category-link" data-toggle="collapse">
					<h3 class="page-title-h3">Близость к метро</h3>
					<svg width="13" height="8" viewBox="0 0 13 8" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path
							d="M6.036 0.611083L0.191897 6.45712C-0.0639745 6.71364 -0.0639745 7.12925 0.191897 7.38642C0.44777 7.64294 0.863375 7.64294 1.11925 7.38642L6.49964 2.00408L11.88 7.38577C12.1359 7.64229 12.5515 7.64229 12.808 7.38577C13.0639 7.12925 13.0639 6.713 12.808 6.45648L6.96399 0.610435C6.71076 0.357856 6.28863 0.357856 6.036 0.611083Z"
							fill="#111111" />
					</svg>
				</a>

				<div class="page-filter__category-list collapse show" id="proximity">
					<ul class="proximity">
						<li>
							<div class="checkbox">
								<input type="checkbox" name="<10" id="less10">
								<label for="less10">&lt;10</label>
							</div>
						</li>
						<li>
							<div class="checkbox">
								<input type="checkbox" name="10-20" id="10-20">
								<label for="10-20">10-20</label>
							</div>
						</li>
						<li>
							<div class="checkbox">
								<input type="checkbox" name="20-40" id="20-40">
								<label for="20-40">20-40</label>
							</div>
						</li>
						<li>
							<div class="checkbox">
								<input type="checkbox" name="40+" id="more40">
								<label for="more40">40+</label>
							</div>
						</li>
						<li class="w-100">
							<div class="checkbox">
								<input type="checkbox" name="any" id="any" checked>
								<label for="any">Любой</label>
							</div>
						</li>
					</ul>
				</div>

			</div>

			<div class="page-filter__category">

				<a href="#deadline" class="page-filter__category-link" data-toggle="collapse">
					<h3 class="page-title-h3">Срок сдачи</h3>
					<svg width="13" height="8" viewBox="0 0 13 8" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path
							d="M6.036 0.611083L0.191897 6.45712C-0.0639745 6.71364 -0.0639745 7.12925 0.191897 7.38642C0.44777 7.64294 0.863375 7.64294 1.11925 7.38642L6.49964 2.00408L11.88 7.38577C12.1359 7.64229 12.5515 7.64229 12.808 7.38577C13.0639 7.12925 13.0639 6.713 12.808 6.45648L6.96399 0.610435C6.71076 0.357856 6.28863 0.357856 6.036 0.611083Z"
							fill="#111111" />
					</svg>
				</a>

				<div class="page-filter__category-list collapse show" id="deadline">
					<ul class="deadline">
						<li>
							<div class="radio">
								<input type="radio" name="deadline" id="all" value="all" checked>
								<label for="all">Любой</label>
							</div>
						</li>
						<li>
							<div class="radio">
								<input type="radio" name="deadline" id="passed" value="passed" 
								<?php
								if ($_GET['deadline']=='passed') echo 'checked';							
								?>>
								<label for="passed">Сдан</label>
							</div>
						</li>
						<li>
							<div class="radio">
								<input type="radio" name="deadline" id="this-year" value="this-year"
								<?php
								if ($_GET['deadline']=='this-year') echo 'checked';							
								?>>
								<label for="this-year">В этом году</label>
							</div>
						</li>
						<li>
							<div class="radio">
								<input type="radio" name="deadline" id="next-year" value="next-year"
								<?php
								if ($_GET['deadline']=='next-year') echo 'checked';							
								?>>
								<label for="next-year">В следующем году</label>
							</div>
						</li>
					</ul>
				</div>

			</div>

			<div class="page-filter__category">

				<a href="#housing" class="page-filter__category-link" data-toggle="collapse">
					<h3 class="page-title-h3">Класс жилья</h3>
					<svg width="13" height="8" viewBox="0 0 13 8" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path
							d="M6.036 0.611083L0.191897 6.45712C-0.0639745 6.71364 -0.0639745 7.12925 0.191897 7.38642C0.44777 7.64294 0.863375 7.64294 1.11925 7.38642L6.49964 2.00408L11.88 7.38577C12.1359 7.64229 12.5515 7.64229 12.808 7.38577C13.0639 7.12925 13.0639 6.713 12.808 6.45648L6.96399 0.610435C6.71076 0.357856 6.28863 0.357856 6.036 0.611083Z"
							fill="#111111" />
					</svg>
				</a>

				<div class="page-filter__category-list collapse show" id="housing">
					<ul class="housing">
						<li>
							<div class="checkbox">
								<input type="checkbox" name="economical" id="economical" 
								<?php
								if ($_GET['economical']=='on') echo 'checked';
								?>>
								<label for="economical">Эконом</label>
							</div>
						</li>
						<li>
							<div class="checkbox">
								<input type="checkbox" name="comfort" id="comfort" 
								<?php
								if ($_GET['comfort']=='on') echo 'checked';
								?>>
								<label for="comfort">Комфорт</label>
							</div>
						</li>
						<li>
							<div class="checkbox">
								<input type="checkbox" name="business" id="business"
								<?php
								if ($_GET['business']=='on') echo 'checked';
								?>>
								<label for="business">Бизнес</label>
							</div>
						</li>
						<li>
							<div class="checkbox">
								<input type="checkbox" name="elite" id="elite"
								<?php
								if ($_GET['elite']=='on') echo 'checked';
								?>>
								<label for="elite">Элит</label>
							</div>
						</li>
					</ul>
				</div>

			</div>

			<div class="page-filter__category">

				<a href="#general" class="page-filter__category-link" data-toggle="collapse">
					<h3 class="page-title-h3">Основные опции</h3>
					<svg width="13" height="8" viewBox="0 0 13 8" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path
							d="M6.036 0.611083L0.191897 6.45712C-0.0639745 6.71364 -0.0639745 7.12925 0.191897 7.38642C0.44777 7.64294 0.863375 7.64294 1.11925 7.38642L6.49964 2.00408L11.88 7.38577C12.1359 7.64229 12.5515 7.64229 12.808 7.38577C13.0639 7.12925 13.0639 6.713 12.808 6.45648L6.96399 0.610435C6.71076 0.357856 6.28863 0.357856 6.036 0.611083Z"
							fill="#111111" />
					</svg>
				</a>

				<div class="page-filter__category-list collapse show" id="general">
					<ul class="general">
						<li>
							<div class="checkbox">
								<input type="checkbox" name="yard" id="yard">
								<label for="yard">Благоустроенный двор</label>
								<span class="icon-garden"></span>
							</div>
						</li>
						<li>
							<div class="checkbox">
								<input type="checkbox" name="finishing" id="finishing">
								<label for="finishing">Отделка под ключ</label>
								<span class="icon-paint"></span>
							</div>
						</li>
						<li>
							<div class="checkbox">
								<input type="checkbox" name="parking" id="parking" 
								<?php if ($_GET['parking']=='on') 
								echo 'checked';
								?>>
								<label for="parking">Подземный паркинг</label>
								<span class="icon-parking"></span>
							</div>
						</li>
						<li>
							<div class="checkbox">
								<input type="checkbox" name="brick" id="brick">
								<label for="brick">Кирпичный дом</label>
								<span class="icon-brick"></span>
							</div>
						</li>
						<li>
							<div class="checkbox">
								<input type="checkbox" name="river" id="river">
								<label for="river">Вид на реку</label>
								<span class="icon-water"></span>
							</div>
						</li>
						<li>
							<div class="checkbox">
								<input type="checkbox" name="forest" id="forest">
								<label for="forest">Лес рядом</label>
								<span class="icon-tree"></span>
							</div>
						</li>
						<li>
							<div class="checkbox">
								<input type="checkbox" name="sale" id="sale">
								<label for="sale">Есть акции</label>
								<span class="icon-sale"></span>
							</div>
						</li>
					</ul>
				</div>

			</div>

			<div class="page-filter__category">

				<a href="#additional" class="page-filter__category-link" data-toggle="collapse">
					<h3 class="page-title-h3">Дополнительные опции</h3>
					<svg width="13" height="8" viewBox="0 0 13 8" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path
							d="M6.036 0.611083L0.191897 6.45712C-0.0639745 6.71364 -0.0639745 7.12925 0.191897 7.38642C0.44777 7.64294 0.863375 7.64294 1.11925 7.38642L6.49964 2.00408L11.88 7.38577C12.1359 7.64229 12.5515 7.64229 12.808 7.38577C13.0639 7.12925 13.0639 6.713 12.808 6.45648L6.96399 0.610435C6.71076 0.357856 6.28863 0.357856 6.036 0.611083Z"
							fill="#111111" />
					</svg>
				</a>

				<div class="page-filter__category-list collapse show" id="additional">
					<ul class="additional">
						<li>
							<div class="checkbox">
								<input type="checkbox" name="without-cars" id="without-cars">
								<label for="without-cars">Двор без машин</label>
							</div>
						</li>
						<li>
							<div class="checkbox">
								<input type="checkbox" name="ceiling" id="ceiling"
								<?php
								if ($_GET['ceiling']=='on') {
									echo 'checked';
								} ?>
								>
								<label for="ceiling">Высокие потолки</label>
							</div>
						</li>
						<li>
							<div class="checkbox">
								<input type="checkbox" name="pantries" id="pantries">
								<label for="pantries">Есть кладовые</label>
							</div>
						</li>
						<li>
							<div class="checkbox">
								<input type="checkbox" name="windows" id="windows">
								<label for="windows">Панорамные окна</label>
							</div>
						</li>
						<li>
							<div class="checkbox">
								<input type="checkbox" name="low-rise" id="low-rise"
								<?php
								if ($_GET['low-rise']=='on') {
								echo 'checked';
								}
								?>>
								<label for="low-rise">Малоэтажный (&lt;10 этажей)</label>
							</div>
						</li>
					</ul>
					<div class="collapse" id="additional_collapse">
						<ul class="additional additional__collapse">
							<li>
								<div class="checkbox">
									<input type="checkbox" name="windows-2" id="windows-2">
									<label for="windows-2">Панорамные окна</label>
								</div>
							</li>
							<li>
								<div class="checkbox">
									<input type="checkbox" name="low-rise-2" id="low-rise-2">
									<label for="low-rise-2">Малоэтажный (&lt;10 этажей)</label>
								</div>
							</li>
							<li>
								<div class="checkbox">
									<input type="checkbox" name="without-cars-2" id="without-cars-2">
									<label for="without-cars-2">Двор без машин</label>
								</div>
							</li>
							<li>
								<div class="checkbox">
									<input type="checkbox" name="ceiling-2" id="ceiling-2">
									<label for="ceiling-2">Высокие потолки</label>
								</div>
							</li>
							<li>
								<div class="checkbox">
									<input type="checkbox" name="pantries-2" id="pantries-2">
									<label for="pantries-2">Есть кладовые</label>
								</div>
							</li>
						</ul>
					</div>
					<a href="#additional_collapse" class="page-filter__category-more" data-toggle="collapse" data-count="9"
						role="button">Показать еще (9)</a>
				</div>

			</div>

			<div class="page-filter__category service">

				<div class="checkbox">
					<input type="checkbox" name="service" id="service"
					<?php
					if (isset($_GET['service'])) {
						if (($_GET['service']) == 'on') echo 'checked';
					}
					?>
					 >
					<label for="service"><span class="checkbox__box"></span>Услуги 0%</label>
					<span class="tip tip-info" data-toggle="popover" data-placement="top"
						data-content="And here's some amazing content. It's very engaging. Right?">
						<span class="icon-prompt"></span>
					</span>
				</div>

			</div>

		</div>

		<div class="page-filter__buttons">

			<button class="button button--pink w-100" type="submit" id="apply_filter" name="filter" value="on">Применить фильтры</button>
		</form>
			<button onclick="location.href='/'" class="button w-100" type="reset" id="reset_filter">Сбросить фильтры
				<svg width="9" height="8" viewBox="0 0 9 8" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path
						d="M8.5 0.942702L7.5573 0L4.49999 3.05729L1.4427 0L0.5 0.942702L3.55729 3.99999L0.5 7.0573L1.4427 8L4.49999 4.94271L7.55728 8L8.49998 7.0573L5.44271 3.99999L8.5 0.942702Z" />
				</svg>
			</button>
		</div>

	

</div>

				</div>

			</div>

		</div>

	</main>

	<!-- <footer style="height: 500px; background-color: #fff;"></footer> -->

<?php

get_footer();

?>