<?php
/**
 * Theme functions and definitions.
 */
	add_theme_support( 'post-thumbnails' );

register_nav_menus(array(
	'top'    => 'Верхнее меню',   
	'bottom' => 'Нижнее меню'      
));



add_action( 'init', 'register_houses' );
 
function register_houses() {
 
	$labels = array(
		'name' => 'ЖК',
		'singular_name' => 'ЖК',
		'add_new' => 'Добавить ЖК',
		'add_new_item' => 'Добавить ЖК',
		'edit_item' => 'Редактировать ЖК',
		'new_item' => 'Новый ЖК',
		'all_items' => 'Все ЖК',
		'search_items' => 'Искать',
		'not_found' =>  'Не найдено.',
		'menu_name' => 'ЖК'
	);
 
	$args = array(
		'labels' => $labels,
		'public' => true,
		'publicly_queryable' => true,
		'has_archive' => true,
		'menu_icon' => 'dashicons-admin-multisite',
		'menu_position' => 3,
		'supports' => array( 'title', 'editor','author','thumbnail','excerpt','custom-fields'),       // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
	
	);
 
	register_post_type( 'houses', $args );
}

add_action( 'wp_enqueue_scripts', 'filter_scripts' );
 
function filter_scripts() {
 
	wp_enqueue_script( 'jquery' );
 
	wp_register_script( 'filter', get_stylesheet_directory_uri() . '/js/filter.js', array( 'jquery' ), time(), true );
	wp_enqueue_script( 'filter' );
}

wp_localize_script( 'filter', 'true_obj', array( 'ajaxurl' => admin_url( 'admin-ajax.php' ) ) );

add_action( 'wp_ajax_myfilter', 'true_filter_function' ); 
add_action( 'wp_ajax_nopriv_myfilter', 'true_filter_function' );



function loadmore_get_posts(){
    $args = unserialize(stripslashes($_POST['query']));
    $args['paged'] = $_POST['page'] + 1; 

    query_posts($args);
echo '<ul class="page-loop with-filter">';
 
    if(have_posts()) :
	

        while(have_posts()): the_post();    
        the_post();
		
		$thumb_id = get_post_thumbnail_id();                     
		$thumb_url = wp_get_attachment_image_src($thumb_id,'medium', false);
		if ($thumb_url[0]<>'') {
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
        
        <?php
		};
        //get_template_part('content-template');
        
        endwhile;
	
    endif;
	echo '</ul>';
    die();
}
 
add_action('wp_ajax_loadmore', 'loadmore_get_posts');
add_action('wp_ajax_nopriv_loadmore', 'loadmore_get_posts');



function filter(){

	$meta_array = array('relation' => 'AND');
	
	if(isset($_GET['filter'])){
			if ($_GET['service']=='on') { $service=true;
			array_push($meta_array,  array(
				'key' => 'zero',
				'value' => $service,
			));
		}


			$time = array();

			if (($_GET['<10']=='on') and ($_GET['10-20']=='on') and ($_GET['20-40']=='on') and ($_GET['40+']=='on')) {
				array_push($meta_array,  array(
					'key' => 'metro_0_minutes',
					'value' =>  array(0,5000),
					'type'    => 'numeric',
					'compare' => 'BETWEEN'
				));
			}  else
			{
			if ($_GET['<10']=='on')   { $time1 = 0; $time2 = 10; 
				array_push($meta_array,  array(
					'key' => 'metro_0_minutes',
					'value' =>  array($time1,$time2),
					'type'    => 'numeric',
					'compare' => 'BETWEEN'
				));
				
			}

			if ($_GET['10-20']=='on') { $time1 = 10; $time2 = 20;  
				array_push($meta_array,  array(
					'key' => 'metro_0_minutes',
					'value' =>  array($time1,$time2),
					'type'    => 'numeric',
					'compare' => 'BETWEEN'
				));
				
			}		
			if ($_GET['20-40']=='on') { $time1 = 20;  $time2 = 40; 	
				array_push($meta_array,  array(
					'key' => 'metro_0_minutes',
					'value' =>  array($time1,$time2),
					'type'    => 'numeric',
					'compare' => 'BETWEEN'
				));
				
			}		
			if ($_GET['40']=='on')    { $time1 = 40;  $time2 = 5000;  
				array_push($meta_array,  array(
					'key' => 'metro_0_minutes',
					'value' =>  array($time1,$time2),
					'type'    => 'numeric',
					'compare' => 'BETWEEN'
				));
	
			}
			

			array_push($meta_array,  array(
				'key' => 'metro_0_minutes',
				'value' =>  $time1,
				'type'    => 'NUMERIC',
				'compare' => '>'

			));
		}




			$class = array();
			if ($_GET['economical']=='on')   { array_push($class, 'econom');    }	
			if ($_GET['comfort']=='on')   {   array_push($class, 'comfort');    }	
			if ($_GET['business']=='on')   {  array_push($class, 'business');    }	
			if ($_GET['elite']=='on')   {  array_push($class, 'elit');     }	
			
			array_push($meta_array,  array(
				'key' => 'class',
				'value' => $class,
			));

		
			  

			  $deadline_year = array();
			  $year = date("Y");
			  $next_year = $year+1;
				
			  if ($_GET['deadline']=='passed') {
				array_push($meta_array,  array(
				'key' => 'deadline_year',        
				'value' => $year,
				));
				 }
				if ($_GET['deadline']=='this-year') {
				array_push($meta_array,  array(
				'key' => 'deadline_year',
				'value' => $year,
				));
					  }
				if ($_GET['deadline']=='next-year') {
				array_push($meta_array,  array(
				'key' => 'deadline_year',
				'value' => $next_year,
				'compare' => 'char',
				  ));
				}
			

				if ($_GET['parking']=='on') {
					array_push($meta_array,  array(
					'key' => 'parking',
					'value' => true,
					  ));
					}


			if ($_GET['ceiling']=='on') {
				array_push($meta_array,  array(
					'key' => 'potolok',
					'value' => 3,
					'compare' => '<=',
					  ));

			}
			if ($_GET['low-rise']=='on') {
				array_push($meta_array,  array(
					'key' => 'floor_min',
					'value' => 5,
					'compare' => '<=',
					  ));
			}

				$args = array(
					'post_type' => 'houses',
					'meta_query' => $meta_array,
					'posts_per_page' => 9,
							  );

				

		  }
		else {
        $args = array(
		  'post_type' => 'houses',
		   'posts_per_page' => 9,
				  );
			}

				return $args;
}



?>