<?php

/**
 * Template Name: To-do List
 */
//Nested Repeaters
//https://www.advancedcustomfields.com/resources/working-with-nested-repeaters/
/*
Field Group: 'To Do Lists'
Field Type: repeater  NOTE: REPEATER FIELDS is a PRO functionality $$$$$
    Repeater Fields: 
        Name:
        Completed: 
Location:
    Rules:
        Page Template  is equal to To-do List
Assumptions: Page Template exists.
//https://developer.wordpress.org/themes/template-files-section/page-template-files/
Use this 'commented out' tag at top of tempate page: 
Template Name: My Custom Page 

        */

get_header(); ?>

	<div id="primary">
		<div id="content" role="main">
<h1>To Do List Template</h1>
<p>Nested Repeater Fields requires PRO version $25 personal to $100 developer...</p>
			<?php while ( have_posts() ) : the_post(); ?>

				<h1><?php the_title(); ?></h1>
				<?php the_content(); ?>

				<?php 

				// check for rows (parent repeater)
				if( have_rows('to-do_lists') ): ?>
					<div id="to-do-lists">
					<?php 

					// loop through rows (parent repeater)
					while( have_rows('to-do_lists') ): the_row(); ?>
						<div>
							<h3><?php the_sub_field('title'); ?></h3>
							<?php 

							// check for rows (sub repeater)
							if( have_rows('items') ): ?>
								<ul>
								<?php 

								// loop through rows (sub repeater)
								while( have_rows('items') ): the_row();

									// display each item as a list - with a class of completed ( if completed )
									?>
									<li <?php if( get_sub_field('completed') ){ echo 'class="completed"'; } ?>><?php the_sub_field('name'); ?></li>
								<?php endwhile; ?>
								</ul>
							<?php endif; //if( get_sub_field('items') ): ?>
						</div>	

					<?php endwhile; // while( has_sub_field('to-do_lists') ): ?>
					</div>
				<?php endif; // if( get_field('to-do_lists') ): ?>

			<?php endwhile; // end of the loop. ?>

		</div><!-- #content -->
	</div><!-- #primary -->

<?php get_sidebar(); ?>
<?php get_footer(); ?>