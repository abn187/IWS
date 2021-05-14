-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2021 at 12:21 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.3.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `writer` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_des` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `created_at`, `updated_at`, `title`, `slug`, `writer`, `short_des`, `detail_des`, `publish_date`, `status`) VALUES
(1, '2021-05-12 15:41:41', '2021-05-29 15:41:41', 'Joe Biden bans US banks from buying or underwriting Russian debt sales', '', 'By Matt Egan', 'The Biden administration is punishing Russia for its interference in the 2020 US election and cyberattacks by hitting Moscow where it hurts the most: the ruble.', 'The Biden administration is punishing Russia for its interference in the 2020 US election and cyberattacks by hitting Moscow where it hurts the most: the ruble.\r\n\r\nThe Treasury Department announced Thursday that starting June 14, US banks will generally be banned from participating in all bond sales by Russia\'s central bank, ministry of finance and sovereign wealth fund. That means these Wall Street firms won\'t be able to buy or underwrite these crucial transactions by Russia\'s central government.\r\nThis marks a significant escalation of US sanctions on Russia and will make it more difficult for Moscow to raise capital. The Russian ruble declined nearly 1% against the US dollar Thursday and the country\'s stock market retreated modestly.\r\n\"This is Biden sending a warning shot. It\'s a strong statement,\" Win Thin, global head of currency strategy at Brown Brothers Harriman, told CNN Business.\r\nIn August 2019, the Trump administration prohibited US banks from participating in non-ruble denominated bonds issued by the Russian government and from lending non-ruble funds to Russia. That mostly applied to transactions in US dollars and euros.\r\nThe Biden administration is expanding those restrictions by prohibiting US financial institutions from buying ruble-denominated bonds, too. The Treasury Department also said that US banks will be banned from lending ruble-denominated funds to these entities.', '2021-05-25 22:41:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `title`, `slug`, `image`, `status`) VALUES
(1, NULL, NULL, 'Health', 'hey', NULL, 0),
(2, NULL, NULL, 'Business', 'hoo', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_02_104553_create_category_table', 1),
(4, '2018_08_02_110645_create_news_table', 1),
(5, '2018_08_02_112123_create_about_table', 1),
(6, '2018_08_04_043825_create_news_images_table', 1),
(7, '2018_08_04_051550_create_tech_table', 1),
(8, '2018_08_04_051740_create_business_table', 1),
(9, '2018_08_04_120353_create_site_table', 1),
(10, '2018_08_05_051420_add_gender_to_user_table', 2),
(11, '2018_08_27_111207_add_image_to_new_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `writer` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_des` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `created_at`, `updated_at`, `title`, `slug`, `image`, `writer`, `short_des`, `detail_des`, `publish_date`, `status`) VALUES
(1, '2021-05-14 02:54:20', '2021-05-14 02:54:20', 'Sky are blue nowwww', 'sky-are-blue-nowwww', '4238_Screenshot (10).png', 'Atm', 'This is description', '<p>This is detail Description</p>', '2021-05-14 00:00:00', 1),
(2, '2021-05-14 02:55:37', '2021-05-14 02:55:37', 'Global Covid-19 death toll passes 3 million as cases surge', 'global-covid-19-death-toll-passes-3-million-as-cases-surge', '4565_Screenshot (10).png', 'By Martin Goillandeau, CNN', 'London (CNN)More than three million people globally have died of Covid-19 since the start of the pandemic, Johns Hopkins University said on Saturday.', '<p>London (CNN)More than three million people globally have died of Covid-19 since the start of the pandemic, Johns Hopkins University said on Saturday.</p>\r\n\r\n<p>With 566,224 deaths, the US has the highest number of fatalities, followed by Brazil with 368,749 and Mexico with 211,693.<br />\r\nThe World Health Organization (WHO) said on Monday the pandemic was at a &quot;critical point&quot; and warned that the world needed a reality check. After a brief decrease in March, the number of deaths worldwide is on the rise again, with an average of approximately 12,000 deaths, approaching the 14,500 daily death toll (7-day rolling average) recorded at the end of January.<br />\r\nCountries such as the US and the UK have seen their number of new daily deaths falling since late January due to vaccination campaigns, whereas India and Brazil are facing unprecedented surges in infections.<br />\r\nWHO calls for &amp;#39;reality check&amp;#39; as global Covid-19 cases surge for seventh week<br />\r\nWHO calls for &#39;reality check&#39; as global Covid-19 cases surge for seventh week<br />\r\nIn Brazil, some 3,000 deaths are reported every day, accounting for almost a quarter of the deaths reported daily in the world. The country has been the worst hit in the world in terms of new daily deaths globally since early March.<br />\r\nThe pandemic is not showing any signs of slowing down, as the 7-day rolling average nears the all-time highs of January -- over 730,000 daily new cases are being reported this week.<br />\r\nWith 234,692 new infections reported on Saturday, India has close to three times the daily cases of the US.<br />\r\nIndia also reported 1,341 new deaths on Saturday, the highest single-day death toll barring June 17. On that day, June 17, a total 2,003 deaths were recorded in a single day due to clerical errors resulting in a backlog.<br />\r\nAccording to JHU there are 140 million global cases of Covid-19.</p>', '2021-05-18 00:00:00', 1),
(3, '2021-05-14 02:57:36', '2021-05-14 02:57:36', 'Biden says Iran enriching uranium', 'biden-says-iran-enriching-uranium', '4681_Screenshot (15).png', 'By Jason Hoffman', 'President Joe Biden on Friday said Iran\'s decision to enrich uranium at 60% is not', '<p>(CNN)President Joe Biden on Friday said Iran&#39;s decision to enrich uranium at 60% is not helpful and counter to the agreement the countries made under the Iran nuclear deal, but said he is pleased the country continues to engage in indirect talks with the United States.</p>\r\n\r\n<p>&quot;We do not support, and do not think it&#39;s at all helpful, that Iran is saying it&#39;s going to move to enrich to 60%. It is contrary to the agreement,&quot; Biden said during a news conference in the Rose Garden.<br />\r\n&quot;We are, though, nonetheless, pleased that Iran has continued to agree to engage in discussions, indirect discussions with us and with our partners on how we move forward, and what is needed to allow us to move back into the (Iran deal) so we&#39;re part of it a</p>', '2021-05-11 00:00:00', 1),
(4, '2021-05-14 02:59:07', '2021-05-14 02:59:07', 'Joe Biden bans US banks from b', 'joe-biden-bans-us-banks-from-b', '1065_Screenshot (15).png', NULL, 'The Biden administration is punishing Russia for its interference in the 2020 US election and cyberattacks by hitting Moscow where it hurts the most: the ruble.', '<p>The Biden administration is punishing Russia for its interference in the 2020 US election and cyberattacks by hitting Moscow where it hurts the most: the ruble.</p>\r\n\r\n<p>The Treasury Department announced Thursday that starting June 14, US banks will generally be banned from participating in all bond sales by Russia&#39;s central bank, ministry of finance and sovereign wealth fund. That means these Wall Street firms won&#39;t be able to buy or underwrite these crucial transactions by Russia&#39;s central government.<br />\r\nThis marks a significant escalation of US sanctions on Russia and will make it more difficult for Moscow to raise capital. The Russian ruble declined nearly 1% against the US dollar Thursday and the country&#39;s stock market retreated modestly.<br />\r\n&quot;This is Biden sending a warning shot. It&#39;s a strong statement,&quot; Win Thin, global head of currency strategy at Brown Brothers Harriman, told CNN Business.<br />\r\nIn August 2019, the Trump administration prohibited US banks from participating in non-ruble denominated bonds issued by the Russian government and from lending non-ruble funds to Russia. That mostly applied to transactions in US dollars and euros.<br />\r\nThe Biden administration is expanding those restrictions by prohibiting US financial institutions from buying ruble-denominated bonds, too. The Treasury Department also said that US banks will be banned from lending ruble-denominated funds to these entities.</p>', '2021-05-26 00:00:00', 1),
(5, '2021-05-14 03:00:13', '2021-05-14 03:00:13', 'The Biden administration is punishingncy strateg', 'the-biden-administration-is-punishingncy-strateg', '2871_Screenshot (10).png', NULL, 'As anyone who\'s visited Thailand knows, food is a key part of the experience.', '<p>As anyone who&#39;s visited Thailand knows, food is a key part of the experience.<br />\r\nWhether you&#39;re street side in Chiang Mai slurping back a bowl of khao soi noodles or enjoying a Michelin-starred Thai meal in a high-end Bangkok restaurant, the memories of those powerful, balanced flavors stay with you long after you&#39;ve left the country.<br />\r\nVilailuck &quot;Pepper&quot; Teigen knows this all too well. Mother of model, TV personality and entrepreneur Chrissy Teigen, Pepper emigrated to Utah from Thailand&#39;s northeast Isaan region in the early 1980s.<br />\r\nFor years, she says she tried to replicate the flavors of home, struggling to find ingredients in the small American town she lived in.<br />\r\n&quot;When I had Chrissy as a baby I remember going to a little market,&quot; she tells CNN during a recent video interview.<br />\r\n&quot;I was the only Asian in that little town -- Delta, Utah -- where Chrissy was born and I requested &#39;Can you bring in bean sprouts and lemon grass please?&#39; And they did. But other than that, I had to travel 100-200 miles just to get gaprao (Thai basil).&quot;<br />\r\nRelated content<br />\r\nIsaan road trip: Searching for normalcy in Thailand&#39;s northeast<br />\r\nToday, Pepper lives in Los Angeles with Chrissy, son-in-law John Legend and their two kids, Luna and Miles. She makes regular cameos on their Instagram feeds, often appearing in the kitchen cooking alongside Chrissy or her grandkids, or joining them on their travels.<br />\r\nPepper&#39;s influence can be found in Chrissy&#39;s two cookbooks and on her Cravings website. But for the first time, the mom/grandmother is sharing her stories and recipes in her very own book.<br />\r\n&quot;The Pepper Thai Cookbook,&quot; out this week, is an 80-recipe collection filled with gorgeous photos of food and her family, accompanied by laugh-out-loud anecdotes and touching memories of her experiences growing up in Thailand and her life in the US.<br />\r\n&quot;It&#39;s just kind of like having a baby again!&quot; Pepper says of her new book. &quot;The same feeling. I&#39;m so excited and a little bit nervous.&quot;<br />\r\nThe book features dishes from several regions of Thailand. But Pepper puts her own spin on some of them -- pad Thai brussels sprouts, anyone? -- while also including other family staples like scalloped potatoes, the first &quot;American dish&quot; she learned to make.<br />\r\n&quot;Our family loves to eat,&quot; says Pepper. &quot;So I have my favorites from Isaan (in the book) because that&#39;s where I&#39;m from originally. That&#39;s my most favorite flavor. And then my family likes exploring some northern and southern Thai foods.&quot;<br />\r\n&quot;Don&#39;t be afraid&quot;<br />\r\nThai cookbooks can often be intimidating for at-home chefs, depending on the availability of ingredients or personal dietary restrictions.<br />\r\nBut Pepper knows from experience that adaptations are often unavoidable and just wants people to have fun in the kitchen, saying she regularly gets asked for advice on how to make Thai recipes healthier or vegetarian-friendly.<br />\r\n&ldquo;Thai people tend to eat all day. A little bit here, a little bit there. Food is everywhere. The aroma of street food hits you as soon as you walk out the door in the morning.&rdquo;<br />\r\nVilailuck &quot;Pepper&quot; Teigen<br />\r\n&quot;Don&#39;t be afraid,&quot; she says enthusiastically. &quot;I worked very hard with the writer&#39;s (Garrett Snyder&#39;s) help so we got it. It&#39;s easy, and simple.&quot;<br />\r\nWhat wasn&#39;t easy, though, was having to document the measurements for each recipe. Pepper says a lot of what she does in the kitchen is based on instinct, so she had to figure out how much of each ingredient she was actually using.<br />\r\n&quot;Everything comes from my head, so the measuring, the weight...that was the biggest challenge. When I did it myself I don&#39;t need a recipe -- when I needed two tablespoons I did it without measuring. But I tested myself. It was almost exactly perfect every time.&quot;<br />\r\nExploring the tastes of Isaan<br />\r\nPepper grew up in the small city of Nakhon Ratchasima -- unofficially known as Korat -- in Isaan, where her grandparents were rice farmers.<br />\r\nThis region is famed for offering some of Thailand&#39;s greatest culinary hits, including larb (a spicy minced meat salad) and som tum (papaya salad). (See recipe for Pepper&#39;s fried chicken larb at the end of this feature.)<br />\r\nThese bold, intense flavors were always a part of Pepper&#39;s life. The oldest of five kids, she says she was in the third grade when she began helping out her mother, who worked in a school cafeteria.<br />\r\n&quot;I started going to the market with my mom and came back at about 5 or 6 in the morning and just started preparations,&quot; she recalls. &quot;I was the sous chef for my mother before I could leave for school. At lunch time I had to come down and help her selling, like a food vendor.&quot;<br />\r\nPepper feels Thailand&#39;s reputation for being food-obsessed is deserved, with the question &quot;gin kao yung&quot; -- have you eaten yet -- a constant fixture in everyday conversations.<br />\r\n&quot;Thai people tend to eat all day,&quot; she says with a laugh. &quot;A little bit here, a little bit there. Food is everywhere. The aroma of street food hits you as soon as you walk out the door in the morning.&quot;<br />\r\nEven though it&#39;s been decades since she left Isaan, Pepper says she needs to eat Thai food once a day -- which can get tricky given how often she&#39;s on the road with Chrissy, John and the kids.<br />\r\nRelated content<br />\r\nEmpty beaches, chained doors: Surreal scenes in Phuket as island pins reopening hopes on vaccines<br />\r\n&quot;Every time we travel I start packing chili peppers, a krok (mortar and pestle for crushing ingredients like chilies and garlic), instant noodles, chili powder, fish sauce,&quot; she says. &quot;Travel for me is very difficult because I have to have Thai food.&quot;<br />\r\nFortunately, she says her Grammy-winning son-in-law is an adventurous eater who isn&#39;t afraid to try new flavors.<br />\r\n&quot;John is so good!&quot; she says when asked whether he can handle spicy food. &quot;He can eat all the things with me. He&#39;s a very good sport. He tries everything. When we were back in my hometown he tried all the bugs in the bug cart.&quot;<br />\r\nThat trip took place two years ago. Pepper brought Chrissy, John, Luna and Miles back to Korat with her, where they explored the city&#39;s street food scene. A visit to a local market caused a bit of chaos, with fans swarming the family as they made their way through the crowd, their tour even broadcast live on Facebook.<br />\r\nPepper acknowledges it&#39;s difficult to travel with her celebrity daughter and son-in-law given the attention they attract, but feels honored to have received such a warm welcome in her hometown -- she was even granted a key to the city of Korat from local officials.<br />\r\n&quot;I&#39;m so happy people recognized me,&quot; says Pepper. &quot;From just being a little girl who goes to the market every day, to being a mother... and look at me now.&quot;<br />\r\nIntroducing her grandkids to Thai flavors<br />\r\nWhen visiting Thailand, Pepper says she always has to have a bowl of boat noodles.&nbsp;<br />\r\nWhen visiting Thailand, Pepper says she always has to have a bowl of boat noodles.<br />\r\nShutterstock<br />\r\nWhen asked to single out the first thing she eats when she steps off the plane in Bangkok, there&#39;s no hesitation.<br />\r\n&quot;Ahhh, me and Chrissy gotta go get boat noodles!&quot; she says, referring to kuai tiao ruea -- small bowls of beef or pork noodles with a hearty broth accompanied by herbs and veggies.<br />\r\nThe name is derived from the original vendors who once paddled through the canals and rivers in and around Bangkok, cooking steaming hot bowls of noodles right in their boats. Today, they are served in restaurants as well but you can still enjoy the classic, floating version.<br />\r\n&quot;Sometimes we get in the car and go straight from the airport, straight to Ayutthaya where (some of the best) boat noodles are,&quot; says Pepper.<br />\r\nThough Chrissy might be a huge fan of Thai food now, Pepper says that wasn&#39;t always the case.<br />\r\nIn the intro of her book, she notes how her famous daughter always wanted American foods like grilled cheese and pizza when she was a kid. But as Chrissy grew older, she began to ask for all those Thai dishes she grew up cooking and eating with Pepper.</p>\r\n\r\n<p>Pepper&#39;s grandchildren, on the other hand, already have Thai favorites of their own, which are included in the book.<br />\r\n&quot;They love my food! They always ask for it and I enjoy doing it, I am so happy. Luna advised me this morning, &#39;Tell them I love your jok,&#39;&quot; says Pepper, sharing the advice her five-year-old granddaughter gave her about what to discuss during the interview with CNN.<br />\r\nPepper says her fried chicken is also a hit, and Miles, who is nearly three, particularly loves her ribs -- with lots of garlic.<br />\r\nRelated content<br />\r\nIs Thailand&#39;s Full Moon Party over for good?<br />\r\nThese days, Pepper doesn&#39;t have to travel hundreds of miles for ingredients. She says she has a garden filled with fresh produce, while other items are easy to find in Los Angeles, allowing her to cook all her Thai favorites at home.<br />\r\nAnd as the Thai-American embarks on her latest journey as a cookbook author, she says Chrissy has been a huge source of support and comfort along the way, encouraging her to share her recipes with the world.<br />\r\n&quot;She&#39;s just so proud of me,&quot; says Pepper, breaking into her trademark smile.<br />\r\nRecipe: Pepper&#39;s Fried Chicken Larb<br />\r\nPepper&#39;s Fried Chicken Larb.&nbsp;<br />\r\nPepper&#39;s Fried Chicken Larb.<br />\r\nJenny Huang/Clarkson Potter<br />\r\nServes 2-4<br />\r\nFOR THE DRESSING<br />\r\n-- 2 tablespoons fresh lime juice<br />\r\n-- 1 tablespoon fish sauce<br />\r\n-- 1 teaspoon light brown sugar<br />\r\n-- 1 tablespoon Toasted Rice Powder, store-bought or homemade<br />\r\n-- 1 teaspoon Roasted Chile Powder<br />\r\nFOR THE LARB<br />\r\n-- 6 fried chicken tenders (about 12 ounces), sliced, or 3 heaping cups of chopped fried chicken<br />\r\n-- 1 medium shallot or &frac12; red onion, halved and thinly sliced (about &frac12; cup)<br />\r\n-- 4 scallions, thinly sliced (about &frac14; cup)<br />\r\n-- &frac14; cup packed cilantro leaves<br />\r\n-- &frac14; cup torn mint leaves<br />\r\nFOR SERVING<br />\r\n-- Cooked sticky rice or jasmine rice<br />\r\nMake the dressing: In a small bowl, whisk together the lime juice, fish sauce, brown sugar, rice powder, and chile powder until combined. Set aside.<br />\r\nMake the larb: Preheat the oven to 400&deg;F. Spread the chicken on a sheet pan and bake until heated through, 10 to 15 minutes.<br />\r\nIn a large bowl, combine the warm chicken, shallot, scallions, cilantro, and mint, then slowly pour the dressing over the top while tossing. Mix gently but thoroughly. Taste and adjust any seasonings as needed. The larb should be tangy, salty, and a little spicy (like me).<br />\r\nServe immediately with rice.<br />\r\nRecipe reprinted from The Pepper Thai Cookbook, available online now and in bookstores around the world. Copyright &copy; 2021 by Vilailuck Teigen with Garrett Snyder.</p>', '2021-07-07 00:00:00', 1),
(6, '2021-05-14 03:00:53', '2021-05-14 03:00:53', 'The Duke of Edinburgh\'s classic sartorial legacy', 'the-duke-of-edinburghs-classic-sartorial-legacy', '1217_Screenshot (11).png', NULL, 'gfg', '<p>safa</p>', '2021-05-11 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_images`
--

CREATE TABLE `news_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `news_id` int(10) UNSIGNED NOT NULL,
  `image_name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siteprofile`
--

CREATE TABLE `siteprofile` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_ceo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `technology`
--

CREATE TABLE `technology` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `writer` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_des` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'J@gmail', '1', NULL, NULL),
(2, 'root@newsportal.com', 'root', NULL, NULL),
(4, 'root1@newsportal.com', '$2y$10$66PK.SqC.PzAAAAftkqr9OXyIdIT/BnzgxnnGkQClqRx2XqBk/rHC', '2021-05-14 02:48:27', '2021-05-14 02:48:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `business_slug_unique` (`slug`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_slug_unique` (`slug`);

--
-- Indexes for table `news_images`
--
ALTER TABLE `news_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `siteprofile`
--
ALTER TABLE `siteprofile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technology`
--
ALTER TABLE `technology`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `technology_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `news_images`
--
ALTER TABLE `news_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siteprofile`
--
ALTER TABLE `siteprofile`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `technology`
--
ALTER TABLE `technology`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
