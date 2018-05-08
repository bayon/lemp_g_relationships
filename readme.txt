lempbox

Purpose:
create as near to unified wordpress setup as our AWS setup for AdvancedSolutions.

QUICK:
~ cd sandbox
~ cp -r lempbox lempbox-X
# complete WP Install
# good to go.


Wordpress: ( to do create an image that you would like to pull down everytime)
   List: ( make a list of what that would look like)
      1) I would like GULP pre-installed.
      2) I want the 'Underscore' theme and a 'minimal' UI/UX upgrade
      3) I want Animate.CSS installed.
      4) Don't need CMB2 to be inited by default.


   Set up todos:
    replace wp-content with /resources/wp-content

   WP Admin:
      Settings: > permalinks > postname
      Pages:      > Add New > Homepage and Posts and Typography Page
      Settings: > Reading >  select Static page display with Homepage and Posts page.
      Plugins: > activate 
      Appearance: > menus > create menu with  pages  set display as primary.
   METABOXES:
      Be sure to add this shortcode to a post for example:
      [cmb-form id="test_metabox" post_id=1]
      * note: adding shortcode to a post is NOT the equivalent of a front end form.
      

   Unexpected Issues:
      

   After Doctoring the site:
    save current wp-content dir into the 'resources' dir here and in lempbox original.

Theme:
   bootstrapfast and child
   *underscore

Plugins:
   WP Migrate DB
   WP Total Cache
   CPT UI                  ( custom post types )
   Advanced Custom Fields  ( custom fields )
   CMB2                    ( custom metaboxes [cmb-form id="test_metabox" post_id=1] )

Page Examples:
   Typography page
   REMOVE: Components page (bootstrap )
   FRONT END FORM example with ACF.

Notes: Try not to bring over any other CSS from existing projects if possible.


Incorporate GULP
https://github.com/ahmadawais/WPGulp#%E2%93%A6-what-can-wpgulp-do

Step #1. Download the Required Files
run this cmd in root folder:
curl -O https://raw.githubusercontent.com/ahmadawais/WPGulp/master/package.json && curl -O https://raw.githubusercontent.com/ahmadawais/WPGulp/master/gulpfile.js && curl -O https://raw.githubusercontent.com/ahmadawais/WPGulp/master/.gitignore

STEP #2: Editing the Project Variables in gulpfiile.js


STEP #3: Installing NodeJS, NPM and Gulp
npm install --global gulp

STEP #4: Installing Node Dependencies
npm install

STEP #4-B:
   1) make sure directories exist under assets/css assets/js and assets/img
   2) include the 'gulped' css and js in the functions.php 'enqueue' function.
   3) make sure 'style.scss' has the 'child-theme' header information at the top.
   
   To Develop: 
   docker-compose up

   cd /to-dir-where-gulpfile.js/is/

   REMEMBER: REMOVE the 'node_modules' directory before you save or back up somewhere else.

STEP #5: Just run Gulp

Optional Step #6: Images and Translation
# To optimize images
gulp images

# To generate WP POT translation file.
gulp translate