<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе установки.
 * Необязательно использовать веб-интерфейс, можно скопировать файл в "wp-config.php"
 * и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки базы данных
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://ru.wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Параметры базы данных: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'misha_test' );

/** Имя пользователя базы данных */
define( 'DB_USER', 'root' );

/** Пароль к базе данных */
define( 'DB_PASSWORD', '' );

/** Имя сервера базы данных */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу. Можно сгенерировать их с помощью
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}.
 *
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными.
 * Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'kAK,;7?H)aSKAWKJLF)C2{d_#C4%+?xThZI9=fma{P_)cH]dN[<O;e_@*7wn.gWa' );
define( 'SECURE_AUTH_KEY',  '5@eB|UZ/w|=I~@|ks_L:B:RkvD5xbz?)0)5~@f-q+4l<@#Vbe]^GRs=iPg OOK%u' );
define( 'LOGGED_IN_KEY',    '<L/Gg5$_B4;Bk(fTTn[Vjv^r}2hlBz1MGWH#GC:~mVx}wE^+ZGIVvg,i.E;y.~ph' );
define( 'NONCE_KEY',        ')_`fe$nQ%ngV&fjaj+-;!% wj`8pyW=SAr4^k_b**b&vH=%]GKkasgV@!kfc=5<.' );
define( 'AUTH_SALT',        '!}f=(]NK`7d[1WJ6uKPV*#-# ZhcP.Zr!6`-QwK1`Lf!]-1#F9htJD!g0f>gW|md' );
define( 'SECURE_AUTH_SALT', 'l,f9lkr87`c#z[E.j 8ULLYLY<z-<yxL(UG)VP67 z%zXkgLPRjuq0H:*+/E^y3`' );
define( 'LOGGED_IN_SALT',   '#NknG2p]gkRv3RuMXhUk[ktRkow]=nDs3w]&y3r#T/pd+q.B.<P|6x_#f9$E{}5s' );
define( 'NONCE_SALT',       'L=Mn)HM[L.$KIOgR8)t6{?1|h4u0,W<)cOv~iwdTJfYC5yJ;? YZ/IZey.DbG{K0' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в документации.
 *
 * @link https://ru.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Произвольные значения добавляйте между этой строкой и надписью "дальше не редактируем". */



/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once ABSPATH . 'wp-settings.php';
