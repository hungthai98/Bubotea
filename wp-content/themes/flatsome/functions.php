<?php
/**
 * Flatsome functions and definitions
 *
 * @package flatsome
 */

require get_template_directory() . '/inc/init.php';

/**
 * Note: It's not recommended to add any custom code here. Please use a child theme so that your customizations aren't lost during updates.
 * Learn more here: http://codex.wordpress.org/Child_Themes
 */

/**
	change quick view
 */

function my_custom_translations( $strings ) {
$text = array(
'Quick View' => 'Xem Nhanh'
);
$strings = str_ireplace( array_keys( $text ), $text, $strings );
return $strings;
}
add_filter( 'gettext', 'my_custom_translations', 20 );


/*
 * Add quickbuy button go to checkout after click
 * Author: hoangweb.com
 */
add_action('woocommerce_after_add_to_cart_button','hoangweb_quickbuy_after_addtocart_button');
function hoangweb_quickbuy_after_addtocart_button(){
    global $product;
    ?>
    <button type="submit" name="add-to-cart" value="<?php echo esc_attr($product->get_id()); ?>" class="single_add_to_cart_button button alt" id="buy_now_button">
        <?php _e('Mua ngay', 'devvn'); ?>
    </button>
    <input type="hidden" name="is_buy_now" id="is_buy_now" value="0" />
    <script>
        jQuery(document).ready(function(){
            jQuery('body').on('click', '#buy_now_button', function(){
                if(jQuery(this).hasClass('disabled')) return;
                var thisParent = jQuery(this).closest('form.cart');
                jQuery('#is_buy_now', thisParent).val('1');
                thisParent.submit();
            });
        });
    </script>
    <?php
}
add_filter('woocommerce_add_to_cart_redirect', 'redirect_to_checkout');
function redirect_to_checkout($redirect_url) {
    if (isset($_REQUEST['is_buy_now']) && $_REQUEST['is_buy_now']) {
        $redirect_url = wc_get_checkout_url();
    }
    return $redirect_url;
}


function wc_wc20_variation_price_format( $price, $product ) {
 //Main Price
 $prices = array( $product->get_variation_price( 'min', true ), $product->get_variation_price( 'max', true ) );
 $price = $prices[0] !== $prices[1] ? sprintf( __( 'Giá từ: %1$s', 'woocommerce' ), wc_price( $prices[0] ) ) : wc_price( $prices[0] );
 
 if ( $price !== $saleprice ) {
 $price = '<del>' . $saleprice . '</del> <ins>' . $price . '</ins>';
 }
 return $price;
}
add_filter( 'woocommerce_variable_sale_price_html', 'wc_wc20_variation_price_format', 10, 2 );
add_filter( 'woocommerce_variable_price_html', 'wc_wc20_variation_price_format', 10, 2 );

?>