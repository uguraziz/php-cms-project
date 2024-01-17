-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 Oca 2024, 09:24:00
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `cms`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_url` varchar(255) NOT NULL,
  `category_template` varchar(255) NOT NULL,
  `category_seo` varchar(1500) NOT NULL,
  `category_order` int(11) NOT NULL DEFAULT 0,
  `category_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_url`, `category_template`, `category_seo`, `category_order`, `category_date`) VALUES
(1, 'PHP', 'videolu-php-dersleri', '', '{\"title\":\"PHP: Videolu Dersler\",\"description\":\"Bu b\\u00f6l\\u00fcmde PHP ile alakal\\u0131 videolu e\\u011fitimler yer alacakt\\u0131r.\"}', 1, '2018-06-08 14:41:20'),
(2, 'CSS', 'css-dersleri', '', '{\"title\":\"test\",\"description\":\"\"}', 2, '2018-06-08 14:41:33'),
(3, 'jQuery', 'jquery-dersleri', '', '{\"title\":\"jQuery Dersleri\",\"description\":\"jQuery Dersleri Ugur ALTUN\"}', 0, '2018-06-08 15:07:06');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_user_id` int(11) NOT NULL,
  `comment_post_id` int(11) NOT NULL,
  `comment_name` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` int(11) NOT NULL,
  `comment_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_user_id`, `comment_post_id`, `comment_name`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(10, 1, 7, 'uguraltun', 'aziz_altun93@hotmail.com', 'bu bir test yorumdur', 1, '2024-01-17 08:12:59'),
(11, 1, 7, 'uguraltun', 'aziz_altun93@hotmail.com', '2. test yorum', 0, '2024-01-17 08:13:24'),
(12, 1, 7, 'uguraltun', 'aziz_altun93@hotmail.com', '3. test yorum', 0, '2024-01-17 08:13:26');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_subject` varchar(255) NOT NULL,
  `contact_message` text NOT NULL,
  `contact_read` int(11) NOT NULL DEFAULT 0,
  `contact_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `contact_read_date` varchar(255) NOT NULL,
  `contact_read_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`, `contact_email`, `contact_phone`, `contact_subject`, `contact_message`, `contact_read`, `contact_date`, `contact_read_date`, `contact_read_user`) VALUES
(5, 'Uğur', 'aziz_altun93@hotmail.com', '5433676576', 'denem', 'bu bir test deneme mesajıdır', 1, '2024-01-17 08:10:46', '2024-01-17 11:11:26', 1),
(6, 'Uğurrr', 'aziz_altun93@hotmail.com', '000000000', 'deneme 2', 'buda ikinci deneme test mesajıdır', 0, '2024-01-17 08:11:20', '', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_title` varchar(255) NOT NULL,
  `menu_content` text NOT NULL,
  `menu_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_title`, `menu_content`, `menu_date`) VALUES
(3, 'Header Menü', '[{\"title\":\"Anasayfa\",\"url\":\"\"},{\"title\":\"Referanslar\",\"url\":\"referanslar\",\"submenu\":[{\"title\":\"Mobil Uygulama\",\"url\":\"mobil-uygulama\"},{\"title\":\"deneme\",\"url\":\"deneme\"},{\"title\":\"Web Tasar\\u0131m\",\"url\":\"web-tasarim\"},{\"title\":\"Web Yaz\\u0131l\\u0131m\",\"url\":\"web-yazilim\"}]},{\"title\":\"Blog\",\"url\":\"blog\"},{\"title\":\"Hakk\\u0131mda\",\"url\":\"sayfa\\/hakkimda\"},{\"title\":\"\\u0130leti\\u015fim\",\"url\":\"iletisim\"}]', '2018-04-15 21:19:36'),
(5, 'Footer Sosyal Ağlar', '[{\"title\":\"&lt;i class=&quot;fab fa-instagram&quot;&gt;&lt;\\/i&gt; uguraltun\",\"url\":\"https:\\/\\/instagram.com\\/aziz.ugur.altun\"},{\"title\":\"&lt;i class=&quot;fab fa-facebook-square&quot;&gt;&lt;\\/i&gt; uguraltun\",\"url\":\"https:\\/\\/facebook.com\\/aziz.ugur.altun\"},{\"title\":\"&lt;i class=&quot;fab fa-twitter-square&quot;&gt;&lt;\\/i&gt; uguraltun\",\"url\":\"https:\\/\\/twitter.com\\/aziz.ugur.altun\"},{\"title\":\"&lt;i class=&quot;fab fa-linkedin&quot;&gt;&lt;\\/i&gt; uguraltun\",\"url\":\"https:\\/\\/linkedin.com\\/in\\/aziz.ugur.altun\"}]', '2018-04-15 18:51:41');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `page_content` text NOT NULL,
  `page_seo` varchar(1000) NOT NULL,
  `page_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `pages`
--

INSERT INTO `pages` (`page_id`, `page_title`, `page_url`, `page_content`, `page_seo`, `page_date`) VALUES
(1, 'Hakkımda', 'hakkimda', '&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, system-ui, &#039;Segoe UI&#039;, Roboto, &#039;Helvetica Neue&#039;, Arial, sans-serif, &#039;Apple Color Emoji&#039;, &#039;Segoe UI Emoji&#039;, &#039;Segoe UI Symbol&#039;; font-size: 16px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: bolder;&quot;&gt;İzmir&lt;/span&gt;&amp;lsquo;de doğdum ve hala izmirde&#039;de &lt;span style=&quot;text-decoration: line-through;&quot;&gt;yaşamaktayım&lt;/span&gt;. deneme hakkında yazısıdır &lt;strong&gt;tinyMCE &lt;/strong&gt;edit&amp;ouml;r&amp;uuml;n&amp;uuml; test editoyorum.&lt;/p&gt;', '{\"title\":\"\",\"description\":\"\"}', '2018-06-20 23:47:58');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_url` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_categories` varchar(255) NOT NULL,
  `post_short_content` text NOT NULL,
  `post_status` int(11) NOT NULL,
  `post_seo` varchar(1000) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_url`, `post_content`, `post_categories`, `post_short_content`, `post_status`, `post_seo`, `post_date`) VALUES
(1, 'PHP ile Excel Dosyalarını Okumak', 'php-excel', '&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, system-ui, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px;&quot;&gt;&lt;a style=&quot;box-sizing: border-box; color: #007bff; text-decoration-line: none; background-color: transparent;&quot; href=&quot;https://www.erbilen.net/php-excel/&quot;&gt;Şu yazımda&lt;/a&gt;&amp;nbsp;php ile nasıl excel dosyası oluşturulacağını g&amp;ouml;stermiştim. Bu yazımda ise, daha elzem bir konuya değineceğiz. Ge&amp;ccedil;enlerde bir excel dosyasının i&amp;ccedil;inden verileri almam gerekti, araştırırken baktım ki &amp;ccedil;ok kalabalık kodlar var, benim amacım alt tarafı satır satır okuyup verileri almak o kadar. Sonra bir repo&amp;rsquo;ya denk geldim, Sergey Shuchkin abimiz bir sınıf yazmış bu işlemler i&amp;ccedil;in. Basit, kullanışlı, amaca hitap ediyor.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, system-ui, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px;&quot;&gt;&amp;Ouml;ncelikle dosyaları şuradan temin edin;&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&lt;a style=&quot;box-sizing: border-box; color: #007bff; text-decoration-line: none; background-color: transparent;&quot; href=&quot;https://github.com/shuchkin/simplexlsx&quot;&gt;https://github.com/shuchkin/simplexlsx&lt;/a&gt;&amp;nbsp;(not: adama star atmayı unutmayın :D)&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, system-ui, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px;&quot;&gt;Kullanımı ise &amp;ccedil;ok basit;&lt;/p&gt;\r\n&lt;pre style=&quot;box-sizing: border-box; font-family: SFMono-Regular, Menlo, Monaco, Consolas, \'Liberation Mono\', \'Courier New\', monospace; margin-top: 0px; margin-bottom: 1rem; overflow: auto; color: #212529; background: #f5f5f5; padding: 10px; border-radius: 3px;&quot;&gt;if ( $xlsx = SimpleXLSX::parse(\'test.xlsx\') ) {\r\n    print_r( $xlsx-&amp;gt;rows() );\r\n} else {\r\n    echo SimpleXLSX::parse_error();\r\n}&lt;/pre&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, system-ui, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px;&quot;&gt;excel&amp;rsquo;deki satırları dizi halinde size verecek, se&amp;ccedil;ip istediğinizi kullanabilirsiniz.&lt;/p&gt;', '3,1', '&lt;p&gt;&lt;a style=&quot;box-sizing: border-box; color: #007bff; text-decoration-line: none; font-family: -apple-system, system-ui, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px;&quot; href=&quot;https://www.erbilen.net/php-excel/&quot;&gt;Şu yazımda&lt;/a&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, system-ui, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px;&quot;&gt;&amp;nbsp;php ile nasıl excel dosyası oluşturulacağını g&amp;ouml;stermiştim. Bu yazımda ise, daha elzem bir konuya değineceğiz. Ge&amp;ccedil;enlerde bir excel dosyasının i&amp;ccedil;inden verileri almam gerekti, araştırırken baktım ki &amp;ccedil;ok kalabalık kodlar var, benim amacım alt tarafı satır satır okuyup verileri almak o kadar. Sonra bir repo&amp;rsquo;ya denk geldim, Sergey Shuchkin abimiz bir sınıf yazmış bu işlemler i&amp;ccedil;in. Basit, kullanışlı, amaca hitap ediyor&lt;/span&gt;&lt;/p&gt;', 1, '{\"title\":\"\",\"description\":\"\"}', '2018-06-21 11:36:16'),
(3, 'deneme konu', 'deneme-konu', '&lt;p&gt;bue wet wet wet&amp;nbsp;&lt;/p&gt;', '2,1', '&lt;p&gt;bu bir testtir!&lt;/p&gt;', 1, '{\"title\":\"\",\"description\":\"\"}', '2018-06-21 12:57:19'),
(7, 'wetwet', 'wetwet', '&lt;p&gt;wetwetwet&lt;/p&gt;', '3,1', '&lt;p&gt;wetwet&lt;/p&gt;', 1, '{\"title\":\"\",\"description\":\"\"}', '2018-06-22 12:03:32');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(11) NOT NULL,
  `tag_post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_post_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(8, 1, 7),
(16, 3, 7),
(19, 7, 18),
(20, 7, 19),
(21, 1, 19);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reference`
--

CREATE TABLE `reference` (
  `reference_id` int(11) NOT NULL,
  `reference_title` varchar(255) NOT NULL,
  `reference_url` varchar(255) NOT NULL,
  `reference_content` text NOT NULL,
  `reference_tags` varchar(5000) NOT NULL,
  `reference_demo` varchar(255) NOT NULL,
  `reference_image` varchar(255) NOT NULL,
  `reference_categories` varchar(255) NOT NULL,
  `reference_seo` varchar(1000) NOT NULL,
  `reference_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `reference`
--

INSERT INTO `reference` (`reference_id`, `reference_title`, `reference_url`, `reference_content`, `reference_tags`, `reference_demo`, `reference_image`, `reference_categories`, `reference_seo`, `reference_date`) VALUES
(1, 'Uzman Cevap', 'uc', '&lt;p&gt;uzman cevap bir soru cevap platformudur.&lt;/p&gt;', 'php,mysql,nodejs,javascript,css,html', 'https://uzmancevap.org', 'uc_1809.png', '4,1,2', '{\"title\":\"Uzman Cevap Projesi\",\"description\":\"test a\\u00e7\\u0131klamas\\u0131\"}', '2018-12-24 01:31:22'),
(2, 'deneme test', 'deneme-test', '&lt;p&gt;deneme&lt;/p&gt;', 'wetwetwet,wtw,wet,wetetwt', '', 'deneme-test_626.png', '4,2', '{\"title\":\"\",\"description\":\"\"}', '2018-12-24 01:34:00'),
(3, 'İlk Test', 'uzmancevapson', '&lt;p&gt;test2&lt;/p&gt;', 'uzman cevap,deneme', 'https://uzmancevap.org', 'uzmancevapson_2133.png', '1,2', '{\"title\":\"uzmancevap\",\"description\":\"deneme\"}', '2018-12-24 01:34:48');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reference_categories`
--

CREATE TABLE `reference_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_url` varchar(255) NOT NULL,
  `category_template` varchar(255) NOT NULL,
  `category_seo` varchar(1500) NOT NULL,
  `category_order` int(11) NOT NULL DEFAULT 0,
  `category_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `reference_categories`
--

INSERT INTO `reference_categories` (`category_id`, `category_name`, `category_url`, `category_template`, `category_seo`, `category_order`, `category_date`) VALUES
(1, 'Web Tasarım2', 'web-tasarim', '', '{\"title\":\"\",\"description\":\"\"}', 1, '2018-12-24 00:51:38'),
(2, 'Web Yazılım', 'web-yazilim', '', '{\"title\":\"\",\"description\":\"\"}', 3, '2018-12-24 00:51:42'),
(3, 'Mobil Uygulama', 'mobil-uygulama', '', '{\"title\":\"\",\"description\":\"\"}', 0, '2018-12-24 00:51:46'),
(4, 'Proje', 'proje', '', '{\"title\":\"\",\"description\":\"\"}', 2, '2018-12-24 00:51:50');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reference_images`
--

CREATE TABLE `reference_images` (
  `image_id` int(11) NOT NULL,
  `image_reference_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `image_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `reference_images`
--

INSERT INTO `reference_images` (`image_id`, `image_reference_id`, `image_url`, `image_content`) VALUES
(4, 1, 'uc_9076.png', ''),
(5, 1, 'uc_6410.png', ''),
(6, 1, 'uc_5358.png', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tags`
--

CREATE TABLE `tags` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(255) NOT NULL,
  `tag_url` varchar(255) NOT NULL,
  `tag_seo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `tags`
--

INSERT INTO `tags` (`tag_id`, `tag_name`, `tag_url`, `tag_seo`) VALUES
(1, 'php excel\r', 'php-excel', ''),
(2, 'php simplexlsc\r', 'php-simplexlsc', ''),
(3, 'php parse\r', 'php-parse', ''),
(4, 'php excel dosyası', 'php-excel-dosyasi', ''),
(5, 'yeni etiket', 'yeni-etiket', ''),
(7, 'test', 'test', ''),
(12, 'xcode', 'xcode', ''),
(13, 'mac os', 'mac-os', ''),
(14, 'xcrun', 'xcrun', '{\"title\":\"XCRUN Dersleri\",\"description\":\"deneme\"}'),
(18, 'abc', 'abc', ''),
(19, 'udemy', 'udemy', '{\"title\":\"Udemy Dersleri\",\"description\":\"udemy dersleri burada yer al\\u0131yor!\"}');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_url` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_rank` int(11) NOT NULL DEFAULT 3,
  `user_permissions` varchar(2000) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_data` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_url`, `user_email`, `user_password`, `user_rank`, `user_permissions`, `user_date`, `user_data`) VALUES
(1, 'uguraltun', 'uguraltun', 'aziz_altun93@hotmail.com', '$2y$10$coaXIJ6RINAfooVkn410jOuQL6EMKjFS80VANrCDtbTVC2xFly0oK', 1, '{\"index\":{\"show\":\"1\"},\"users\":{\"show\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"contact\":{\"show\":\"1\",\"edit\":\"1\",\"send\":\"1\",\"delete\":\"1\"},\"posts\":{\"show\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"tags\":{\"show\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"categories\":{\"show\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"comments\":{\"show\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"reference\":{\"show\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"reference-categories\":{\"show\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"pages\":{\"show\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"menu\":{\"show\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"settings\":{\"show\":\"1\",\"edit\":\"1\"}}', '2018-03-20 13:16:35', ''),
(2, 'udemy', 'udemy', 'udemy@udemy.com', '$2y$10$kINTslUvypILK1zTpnpQN.WkzjrL96hgfqdANjsTlT1C.B638oRGi', 3, '', '2018-05-27 16:23:32', '');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Tablo için indeksler `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Tablo için indeksler `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Tablo için indeksler `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Tablo için indeksler `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`reference_id`);

--
-- Tablo için indeksler `reference_categories`
--
ALTER TABLE `reference_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Tablo için indeksler `reference_images`
--
ALTER TABLE `reference_images`
  ADD PRIMARY KEY (`image_id`);

--
-- Tablo için indeksler `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Tablo için AUTO_INCREMENT değeri `reference`
--
ALTER TABLE `reference`
  MODIFY `reference_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `reference_categories`
--
ALTER TABLE `reference_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `reference_images`
--
ALTER TABLE `reference_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `tags`
--
ALTER TABLE `tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
