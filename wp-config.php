<?php
/** Enable W3 Total Cache */
define('WP_CACHE', true); // Added by W3 Total Cache


/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'bub36947_trasuabubo' );

/** MySQL database username */
define( 'DB_USER', 'bub36_trasuabubo' );

/** MySQL database password */
define( 'DB_PASSWORD', 'trasuabubo@123@@' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost:3306' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY', ')N]Pq9H*J[-s8)/-sH3f)4;)9-94fOKIxJb3o]7|G~vR|upL1-&2vKgME8A|Uxz*');
define('SECURE_AUTH_KEY', 'ZmgNT_V&4lP6w0o8*C+aY97P*]6su6_2o10ot99f6-uK*vvvD85)/l33Ew*ke95!');
define('LOGGED_IN_KEY', 'k0PR*Rvpd4!T&_boUcir@(]NV7%@&zcjpv8fM3t/x!i6gE-[G:08/4sj]&Y46|&5');
define('NONCE_KEY', 'iC699-lg(YMhj7BR4waBSQK*y]tK;3PY:#2~-_&/T5&_xd[~r_jBy[4M+5G6**+*');
define('AUTH_SALT', '2s5(V1D1Q~i](YYqE[7|S|-5&Jn0A9RwCmqU6qKX97@#4+dV8+7#bB5j)gKayew~');
define('SECURE_AUTH_SALT', '6A1T&x+KX#C&JDX2R0iKY(#Y91GZ&DPLLpCO*4/7W)U5&U&O1-33eRw-(-5rx0E]');
define('LOGGED_IN_SALT', 'qR32X;y3X0NzuFzhi543M6IX-8U4497n9#*N-+5EG9[f+nu-3o:2C5-V8w4Ks_/r');
define('NONCE_SALT', 'UKvk3#%iEI3;wZFd@A#1PYrxh4w@g#8)-o3Dy]#T5n68f:z8V8m8oKT@+EQN923V');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = '3kuF9kxQ_';


define('WP_ALLOW_MULTISITE', true);

define( 'DISABLE_WP_CRON', true );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
