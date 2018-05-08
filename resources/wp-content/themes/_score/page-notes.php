 
<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package _Score
 */

get_header();
?>

	<div id="primary" class="content-area">
		<main id="main" class="site-main">

        <?php
        $query = new WP_Query(array(
            'post_type' => 'note',
            'post_status' => 'publish',
            'posts_per_page' => -1,
        ));

        while ($query->have_posts()) {
            $query->the_post();
            $post_id = get_the_ID();
           // echo $post_id;
           echo("<hr>");
            the_title();
            echo("</br>");
            echo("<a href='".get_permalink()."' >details</a>");
            echo("</br>");
            the_content();
            ?>
            
            <?php
        }

        wp_reset_query();
        /*
		while ( have_posts() ) :
			the_post();

			get_template_part( 'template-parts/content', 'page' );

			// If comments are open or we have at least one comment, load up the comment template.
			if ( comments_open() || get_comments_number() ) :
				comments_template();
			endif;

        endwhile; // End of the loop.
        */
		?>

		</main><!-- #main -->
	</div><!-- #primary -->

<?php
$pagename = get_query_var('pagename');
echo("<div style='position:fixed;bottom:0;left:0;'>page-notes.php...".$pagename."</div>");
//sidebar: comment out the sidebar on regular pages.
//get_sidebar();
get_footer();
