<?php acf_form_head(); ?>
<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package _Score
 */

get_header();
?>

	<div id="primary" class="content-area">
	<p class='dev_data_page' ><small>single-product.php</small></p>
		<main id="main" class="site-main">

		<?php
		while ( have_posts() ) :
			the_post();

			get_template_part( 'template-parts/content', get_post_type() );

				?>
            
 			<?php 
			acf_form(); 
			?>

<?php 
// BEGIN SUBTOTAL PROCESS:
$subtotal = 0;


function getRelatedObjectPrice($field,$id){
	
	$subtotal  = floatval(get_field($field, $id)); 
	wp_reset_postdata(); // IMPORTANT - reset the $post object so the rest of the page works correctly
	return $subtotal;
}
function displayAmount($amt){
	$html = "<div class='display_amt' >$".$amt."</div>";
	return $html;
}
$product_price = floatval(get_field('price')); 
$subtotal += $product_price;


?>

<p>Loop Through Related Software</p>
<?php 
$related_softwares = get_field('related_software');
?>

<?php if( $related_softwares ): ?>
    <ul>
    <?php foreach( $related_softwares as $related_software ): ?>
        <li>
            <a href="<?php echo get_permalink( $related_software->ID ); ?>">
                <?php echo get_the_title( $related_software->ID ); ?>
			</a>
			<?php
				$related_software_price = getRelatedObjectPrice('price',$related_software->ID);
				$subtotal += $related_software_price;
				echo(displayAmount($related_software_price));
			?>
        </li>
    <?php endforeach; ?>
    </ul>
<?php endif; ?>




<p>Loop Through Related Component</p>
<?php 
$related_components = get_field('related_components');
?>
<?php if( $related_components ): ?>
    <ul>
    <?php foreach( $related_components as $related_component ): ?>
        <li>
            <a href="<?php echo get_permalink( $related_component->ID ); ?>">
				<?php echo get_the_title( $related_component->ID ); ?>
			</a>
				<?php
					$component_price = getRelatedObjectPrice('price',$related_component->ID);
					$subtotal += $component_price;
					echo(displayAmount($component_price));
				?>
        </li>
    <?php endforeach; ?>
    </ul>
<?php endif; ?>
 <?php  
 echo("subtotal: ".displayAmount($subtotal));
 ?> 


			<?php 
			
			//the_post_navigation();

			// If comments are open or we have at least one comment, load up the comment template.
			if ( comments_open() || get_comments_number() ) :
				comments_template();
			endif;

		endwhile; // End of the loop.
		?>

		</main><!-- #main -->
	</div><!-- #primary -->

<?php
$pagename = get_query_var('pagename');
echo("<div style='position:fixed;bottom:0;left:0;'>single-product.php...".$pagename."</div>");
//comment out the sidebar for single pages.
//get_sidebar();
get_footer();
