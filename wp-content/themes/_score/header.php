<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package _Score
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="Description" content="A basic wordpress site implemented with docker, gulp, and underscore theme.">
	<link rel="profile" href="http://gmpg.org/xfn/11">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="page" class="site">
	<a class="skip-link screen-reader-text" href="#content" name="screen-reader-anchor" ><?php esc_html_e( 'Skip to content', '_score' ); ?></a>

	<header id="masthead" class="site-header">
		<div class="site-branding">
			<?php
			the_custom_logo();
			?>
		
			<?php 
			if ( is_front_page() && is_home() ) :
				?>
				<h1 class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home" name="home-anchor" ><?php bloginfo( 'name' ); ?></a></h1>
				<?php
			else :
				?>
				<p class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home" name="home-anchor"><?php bloginfo( 'name' ); ?></a></p>
				<?php
			endif;
			$_score_description = get_bloginfo( 'description', 'display' );
			if ( $_score_description || is_customize_preview() ) :
				?>
				<p class="site-description"><?php echo $_score_description; /* WPCS: xss ok. */ ?></p>
			<?php endif; ?>
		</div><!-- .site-branding -->

		<nav id="site-navigation" class="main-navigation">
		 
			<div class="logo-wrapper">
				<img src="http://dummyimage.com/100x70/292929/e3e3e3&text=asi" alt="logo-goes-here" />
			
				<button class="menu-toggle " aria-controls="primary-menu" aria-expanded="false" name="toggle-menu-button"><span class="dashicons dashicons-menu"></span></button>
			</div> 

			<?php
			wp_nav_menu( array(
				'theme_location' => 'menu-1',
				'menu_id'        => 'primary-menu',
			) );
			?>
		</nav><!-- #site-navigation -->
	</header><!-- #masthead -->

	<div id="content" class="site-content">
