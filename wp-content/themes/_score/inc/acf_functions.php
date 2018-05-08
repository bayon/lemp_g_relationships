<?php
/*
* Purpose: A central location to keep track of all Advanced Custom Fields related helper functions.
* https://www.advancedcustomfields.com/resources/
*/
//Bidirectional Relationships
//https://www.advancedcustomfields.com/resources/bidirectional-relationships/
/*
The following snippet adds a function to hook into the acf/update_value filter (run before a value is saved). 
It will update the custom field value of each selected post to include the current post’s ID as well as removing the 
current post’s ID from previously selected posts (which are no longer selected).

This function does not contain any hard-coded field names so it will work with any relationship field. 
The only change required is within the add_filter() parameter. It contains the name of the relationship 
field which in the example below is called ‘related_posts’.

*/
function bidirectional_acf_update_value( $value, $post_id, $field  ) {
	
	// vars
	$field_name = $field['name'];
	$field_key = $field['key'];
	$global_name = 'is_updating_' . $field_name;
	
	
	// bail early if this filter was triggered from the update_field() function called within the loop below
	// - this prevents an inifinte loop
	if( !empty($GLOBALS[ $global_name ]) ) return $value;
	
	
	// set global variable to avoid inifite loop
	// - could also remove_filter() then add_filter() again, but this is simpler
	$GLOBALS[ $global_name ] = 1;
	
	
	// loop over selected posts and add this $post_id
	if( is_array($value) ) {
	
		foreach( $value as $post_id2 ) {
			
			// load existing related posts
			$value2 = get_field($field_name, $post_id2, false);
			
			
			// allow for selected posts to not contain a value
			if( empty($value2) ) {
				
				$value2 = array();
				
			}
			
			
			// bail early if the current $post_id is already found in selected post's $value2
			if( in_array($post_id, $value2) ) continue;
			
			
			// append the current $post_id to the selected post's 'related_posts' value
			$value2[] = $post_id;
			
			
			// update the selected post's value (use field's key for performance)
			update_field($field_key, $value2, $post_id2);
			
		}
	
	}
	
	
	// find posts which have been removed
	$old_value = get_field($field_name, $post_id, false);
	
	if( is_array($old_value) ) {
		
		foreach( $old_value as $post_id2 ) {
			
			// bail early if this value has not been removed
			if( is_array($value) && in_array($post_id2, $value) ) continue;
			
			
			// load existing related posts
			$value2 = get_field($field_name, $post_id2, false);
			
			
			// bail early if no value
			if( empty($value2) ) continue;
			
			
			// find the position of $post_id within $value2 so we can remove it
			$pos = array_search($post_id, $value2);
			
			
			// remove
			unset( $value2[ $pos] );
			
			
			// update the un-selected post's value (use field's key for performance)
			update_field($field_key, $value2, $post_id2);
			
		}
		
	}
	
	
	// reset global varibale to allow this filter to function as per normal
	$GLOBALS[ $global_name ] = 0;
	
	
	// return
    return $value;
    
}
//One Parameter: -e.g. name=related_posts
//add_filter('acf/update_value/name=related_posts', 'bidirectional_acf_update_value', 10, 3);
add_filter('acf/update_value/name=related_software', 'bidirectional_acf_update_value', 10, 3);


//Nested Repeaters
//https://www.advancedcustomfields.com/resources/working-with-nested-repeaters/
/*
Field Group: 'To Do Lists'
Field Type: repeater
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