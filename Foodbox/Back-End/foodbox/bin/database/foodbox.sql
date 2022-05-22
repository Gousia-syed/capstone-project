-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Sep 18, 2021 at 01:05 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodbox`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `street` varchar(55) NOT NULL,
  `city` varchar(55) NOT NULL,
  `zipCode` varchar(55) NOT NULL,
  `user_id` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
drop table address;
-- --------------------------------------------------------


-- Table structure for table `cuisine`
--

CREATE TABLE `cuisine` (
  `id` bigint(11) NOT NULL,
  `cuisine_name` varchar(411) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

drop table cuisine;
--
-- Dumping data for table `cuisine`
--

INSERT INTO `cuisine` (`id`, `cuisine_name`) VALUES
(1, 'ITALIAN'),
(2, 'Paris '),
(3, 'Brazil '),
(4, 'France '),
(5, 'South africa ');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(11) NOT NULL,
  `name` varchar(111) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `price` decimal(55,0) DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `cuisine_id` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

drop table product;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `image_url`, `date_created`, `last_updated`, `cuisine_id`) VALUES
(1, ' Scones', ' Scones with clotted cream and jam are a classic British food. The most common types of scones are plain scones and scones with raisins, although you may find other variations. To Americans, scones may seem like a breakfast food, but in England they are really just an afternoon thing. If you are like me, and want to have a breakfast scone, go to Gail’s Bakery – they have them available all day. If you want make scones, give this recipe at try.', '96', 'https://www.livewellbakeoften.com/wp-content/uploads/2019/08/Scones-Recipe-5.jpg', '2021-09-15 23:17:00.000000', '2021-09-13 23:17:03.000000', 1),
(2, ' Black Pudding', ' Black Pudding is a blood sausage that is served as part of English Breakfast.', '67', 'https://www.thespruceeats.com/thmb/ld9MacsugXx3PlQkUt_yF9ryLzo=/1414x1414/smart/filters:no_upscale()/GettyImages-155445982-5c489ceac9e77c00011fe510.jpg', '2021-07-15 23:17:00.000000', '2021-09-06 08:52:35.000000', 1), 
(3, ' Toad in the Hole', ' This has a different meaning in England, it isn’t a fried egg inside a slices of bread. In England, Toad in the Hole is made with sausages cooked in a pastry that is similar to a Yorkshire Pudding.', '98', 'https://thekittchen.com/wp-content/uploads/2018/08/british-foods-to-try-in-london-768x1152.jpg', '2021-07-15 23:17:00.000000', '2021-07-13 23:17:03.000000', 1), 
(4, 'Sunday Roast', 'Sunday Roast is the traditional Sunday afternoon meal in England, and it is offered at most pubs. It consists of a roast meat (chicken, beef, and pork are popular) served with roasted potatoes, roasted vegetables, and Yorkshire Pudding with lots of gravy.', '65', 'https://thekittchen.com/wp-content/uploads/2018/08/Yorkshire-Pudding-4-768x1152.jpg', '2021-07-15 23:17:00.000000', '2021-07-15 23:17:00.000000', 1), 
(5, 'Scotch Egg', 'Scotch Eggs didn’t originate in Scotland. Who knew? London’s Fortnum & Mason claims to have invented the scotch egg in 1738. It’s a hard boiled egg wrapped in sausage meat that is breaded and fried.', '65', 'https://thekittchen.com/wp-content/uploads/2018/08/what-to-do-in-bath-england-10-768x1152.jpg ', '2021-01-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 1), 
(6, 'Cheddar Cheese', 'English cheddar is just so wonderful..', '34', 'https://thekittchen.com/wp-content/uploads/2018/08/british-foods-to-try-in-england-4-768x1024.jpg', '2020-05-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 1), 
(7, 'Inhale Fresh Bread From The Boulangerie', 'There’s nothing better than crunching on a baguette fresh out of the oven! Wandering the streets of Paris with a baguette in hand is essential! Read about how to pick the best baguette here. My stomach generally does not do well with bread or gluten in the US, but for some reason, I can eat bread in France all day long with no problems! I’m not sure if it’s the different ingredients or maybe just all the walking that is required in Paris, but it’s great!', '43', 'https://wanderlustcrew.com/wp-content/uploads/2018/02/Paris-Food-Bread.jpg', '2021-03-14 23:24:19.000000', '2021-05-19 23:24:19.000000', 2), 
(8, 'Croissants', 'a slightly more expensive croissant made with extra amazing French butter ', '45', 'https://spanishsabores.com/wp-content/uploads/2018/12/Croissants-in-Paris.jpg', '2021-08-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 2), 
(9, 'Macarons', 'There are plenty of specialty macaron shops around Paris, each one more cute and colorful than the next! The flavors on offer are incredible– from classics like salted caramel to modern combinations like rosewater and raspberry.', '76', 'https://www.thespruceeats.com/thmb/SZyl6UdQFKtXzupMBObtrw3-VyM=/3961x2641/filters:fill(auto,1)/easy-macaron-recipe-435221-hero-01-b3680f676df64f5ab2c1e65976c0e945.jpg', '2021-11-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 2), 
(10, 'Eclairs', 'The eclair is another pastry that has not always fared well when exported, although in recent years trendy eclair shops have opened in big cities around the world. But my childhood memories of “eclairs” are very mediocre monstrosities from the local donut shop. I knew there was something better to be found. I had faith that the eclairs in Paris would be worth the trip alone — and I was right!', '25', 'https://spanishsabores.com/wp-content/uploads/2018/12/Eclairs-in-Paris.jpg', '2021-07-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 2), 
(11, 'Falafel', 'The most famous place in the city is called L’As du Fallafel, and the line often snakes around the block. We waited for about 20 minutes for our colossal sandwich and took it to a small park next door. I must say, it was delicious and worth the wait!', '29', 'https://spanishsabores.com/wp-content/uploads/2018/12/Falafel.jpg', '2021-07-15 23:17:00.000000', '2021-07-13 23:17:03.000000', 2), 
(12, 'Couscous', 'Another popular Paris comfort food is couscous. ', '52' ,'https://www.jessicagavin.com/wp-content/uploads/2019/03/mediterranean-couscous-salad-2-1200.jpg', '2022-07-29 23:17:00.000000', '2021-07-15 23:17:00.000000', 2),
(13, ' Barbecued meat', 'Brazil and Argentina both claim to be South America’s barbecue champion. And while each country takes a different approach to its meat, from the cuts to the accompaniments, some things remain the same – namely, the ogre-sized quantities of meat, best appreciated at a leisurely pace and with an elasticated waistband. ', '45', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/barbecued-meats-24426a4.jpg?quality=90&webp=true&fit=700,3502.', '2021-05-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 3), 
(14, ' Moqueca (pronounced moo-kek-a)', 'More than a mere fish stew, moqueca is served with theatrical flourish as the piping hot clay pot is uncovered at the table amid clouds of fragrant steam. Baianos (residents of Bahia, in the north-east of the country) and Capixabas (from the neighbouring state of Espírito Santo) both lay claim to the origins of the dish, and both serve up equally tasty variations. At its simplest, fish and/or other seafood are stewed in diced tomatoes, onions and coriander. The Capixabas add annatto seeds for a natural red food colouring, while the Baianos serve a heavier version, made with palm oil, peppers and coconut milk. It’s teamed with rice, farofa (toasted manioc flour – ideal for mopping up juices) and pirão (a spicy fish porridge made with manioc flour – far tastier than it sounds).', '49', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/moqueca-c73dff7.jpg?quality=90&webp=true&fit=700,350', '2021-08-15 23:17:00.000000', '2021-05-19 23:24:19.000000',3), 
(15, ' Cachaça', 'Dating back to the 1500s, cachaça is made from fermented sugarcane juice and is best known as the fiery kick in caipirinhas – Brazil’s national cocktail. While caipirinhas are often made with uncoloured, unaged cachaças, there are thousands of better-quality golden varieties available, aged in wooden barrels and sipped straight up by aficionados.', '56', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/caipirinhas-2ab52a0.jpg?quality=90&webp=true&fit=700,350', '2021-05-25 23:24:19.000000', '2021-05-19 23:24:19.000000', 3),
(16, 'Brigadeiros', 'Brazil’s answer to the chocolate truffle, brigadeiros are so simple to make that they quite literally get rolled out for kids’ parties nationwide. The sweet balls are made by simmering condensed milk with cocoa powder, then whisking in butter and shaping the mix into balls before rolling in chocolate sprinkles. Guaranteed to give an instant sugar high, they’re cloyingly sweet for some palates. Brazilians won’t hear a word against them, though.', '69', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/brigadeiro-57b2297.jpg?quality=90&webp=true&fit=700,350 ', '2021-08-12 23:17:00.000000', '2021-08-12 23:17:00.000000', 3), 
(17, '  Pão de queijo', 'Cheese and bread – two staple favourites the world over – are brought together in glorious union in Brazil’s pão de queijo, a moreish snack enjoyed at any time of day. Crispy on the outside and soft and chewy on the inside, the gluten-free bread rolls are made with tapioca flour, eggs and grated curado minas cheese (a cow’s milk cheese from the state of Minas Gerais), rolled into small balls. For a naughty twist, keep an eye out for pão de queijo served in fist-sized rolls (or even a cake-sized bake), stuffed with cream cheese or various meaty fillings.', '55', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/cheeserolls_0-55bd1a9.jpg?quality=90&webp=true&fit=700,350', '2017-07-02 23:17:00.000000', '2021-07-15 23:17:00.000000', 3), 
(18, 'Quindim', 'Another favourite from Bahia, quindim is a glossy yellow sweet treat made with nothing more than eggs, sugar and coconut (with butter a common addition). Baked in cupcake-sized moulds, the bottom is toasted and golden, dense with grated coconut, while the top is a smooth, firm custard that sticks pleasingly to the roof of the mouth. The name is said to derive from the word kintiti (meaning ‘delicacy’ in Kikongo, a language spoken in Congo-Brazzaville, the Democratic Republic of Congo and Angola), while the recipe itself was inspired by the Portuguese love affair with egg yolks in sweets and pastries.', '74', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/quindim-173a46a.jpg?quality=90&webp=true&fit=700,350', '2021-05-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 3),
(19, ' Poutine', 'Few Canadian dishes are as world-renowned as the glorious creation known as poutine. Crispy fries, squeaky cheese curds and rich gravy all combine to create the meal of dreams, and this French Canadian food is so popular that it can now be found all around the world. The classic version is great on its own, but toppings like pulled pork, bacon and smoked meat really knock it out of the park – and at an average price of £3.50, it won’t break the bank either.', '87', 'https://marylineg1.sg-host.com/blog/wp-content/uploads/2017/06/Ultimate-Guide-to-Canadian-Food-Poutine-@shannondidwhat.jpg', '2021-08-12 23:17:00.000000', '2021-08-12 23:17:00.000000', 4), 
(20, ' Bannock', 'Delicious and versatile, bannock is a simple bread that was once a key staple in the diets of Canada’s Aboriginal people. Modern takes on bannock include baked versions (which are heavy/dense) and fried versions (which are crispy and fluffy on the inside). In recent years, bannock has seen a surge in popularity, with new twists and variations popping up in bakeries and cafes nationwide – you have to try it!', '29', 'https://marylineg1.sg-host.com/blog/wp-content/uploads/2017/06/Ultimate-Guide-to-Canadian-Food-Bannock-@torebergengen.jpg', '2021-08-12 23:17:00.000000', '2021-08-12 23:17:00.000000', 4), 
(21, ' Butter tarts', 'Butter tarts are so simple, but oh so good. They’re made by taking flaky pastry shells and filling them with a butter, sugar and egg filling. This is traditional Canadian food at its best, and you’ll be craving these long after you’ve left the country..', '96', 'https://marylineg1.sg-host.com/blog/wp-content/uploads/2017/06/Ultimate-Guide-to-Canadian-Food-Butter-Tarts-@karyne.villeneuve.jpg', '2017-08-09 23:17:00.000000', '2021-08-12 23:17:00.000000', 4), 
(22, 'Nova Scotian Lobster Rolls', 'Canada is a massive country, with spectacular seafood from coast to coast. Not-to-be-missed experiences include Atlantic and Pacific salmon, smoked salmon, arctic char, and of course, East Coast lobsters. Nova Scotian lobster rolls are a Canadian favourite. ', '74', 'https://marylineg1.sg-host.com/blog/wp-content/uploads/2017/06/canadian-foods-lobster-roll_c_neil-conway-flickr.jpg', '2019-05-07 23:24:19.000000', '2021-08-12 23:17:00.000000', 4), 
(23, ' Montreal-style Bagels', 'Montreal’s bagels are the unsung heroes of great Canadian food. Sweeter, denser and thinner than their NYC counterparts, Montreal bagels are baked in wood fire ovens and are often covered in poppy or sesame seeds. The two heavyweights in the Montreal bagel game are St. Viateur and Fairmount Bagel, both of which (we can confirm) are amazing.', '67', 'https://marylineg1.sg-host.com/blog/wp-content/uploads/2017/06/Ultimate-Guide-to-Canadian-Food-St-Viateur-Bagels-@newna__o0o.jpg', '2021-05-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 4), 
(24, ' Peameal Bacon ', 'This special Canadian twist on bacon is made from lean boneless pork loin, which is trimmed, wet-cured and then rolled in cornmeal, giving it its distinctive yellow crust. It’s juicier than American-style bacon, but also leaner and, some might say, more delicious..', '47', 'https://marylineg1.sg-host.com/blog/wp-content/uploads/2017/06/Ultimate-Guide-to-Canadian-Food-Peameal-Bacon-@cool.notcool.jpg', '2021-05-02 23:24:19.000000', '2021-05-19 23:24:19.000000', 4), 
(25, 'Gnocchi', 'And after pasta, we had to follow with gnocchi, another typical Italian dish. Gnocchi are small rounds of potato dough. Each region has its own variation, but the most typical ingredients are cheese, spinach, eggs, and a variety of sauces. .', '52', 'https://www.chefspencil.com/wp-content/uploads/Gnocchi-1.jpg.webp', '2021-05-01 23:24:19.000000', '2021-05-19 23:24:19.000000', 5), 
(26, '  Pesto alla Genovese', 'Pesto is a delight that comes from Genoa, Liguria. A traditional sauce, simple, but to be prepared strictly with a marble mortar, a wooden pestle, and 7 essential ingredients: Genoese basil DOP, extra virgin olive oil, preferably from the Ligurian Riviera, Parmesan cheese, Pecorino cheese, pine nuts, garlic, and salt.', '58', 'https://www.chefspencil.com/wp-content/uploads/Pesto-alla-Genovese.jpg.webp', '2021-05-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 5), 
(27, ' Lasagne', 'A sauce composed of sautéed celery, onion, and carrot to which pieces of beef, pork, and concentrated tomato are added is cooked slowly and for a long time.', '85', 'https://www.chefspencil.com/wp-content/uploads/Lasagne.jpg.webp', '2021-05-16 23:24:19.000000', '2021-05-16 23:24:19.000000', 5), 
(28, '  Gelato (Ice cream)', ' In Italy, it is a traditional dessert that is enjoyed all year round. It is eaten on walks, as a snack, or as a dessert at the end of a meal. It tends to be more consistent and richer than other “semifreddos,” and there are hundreds of flavors. It will not be difficult, in Italy, to find places that make it perfectly. ', '48', 'https://www.chefspencil.com/wp-content/uploads/Gelato.jpg.webp', '2021-05-17 23:24:19.000000', '2021-05-17 23:24:19.000000', 5), 
(29, 'Prosciutto di Parma (Parma Ham)', 'Italy is the kingdom of cured meats. Among the famous mortadella, salami, coppa, and culatello, the cured raw ham stands out, usually served as an appetizer.', '52', 'https://www.chefspencil.com/wp-content/uploads/Prosciutto-di-Parma.jpg.webp', '2017-05-10 23:24:19.000000', '2021-05-19 23:24:19.000000', 5), 
(30, ' Ribollita', 'Originally from Tuscany, ribollita is a rural soup, a symbol of poor people’s cuisine, which dates back to the Middle Ages. The story goes that in those days, the peasant families were numerous and could not afford meat, so they prepared soups in large quantities with the ingredients available in the countryside. They also added bread to increase the volume. The soup lasted for weeks and was reheated several times.', '85', 'https://www.chefspencil.com/wp-content/uploads/Ribollita.jpg.webp', '2021-05-14 23:24:19.000000', '2021-05-14 23:24:19.000000', 5), 
(31, '  Bagna Cauda', 'It is a hearty dish, and, for this reason, it is considered a main course but can also be served as an appetizer. More than food, it is a ritual, a convivial moment of sharing among the diners, who all eat from a single terracotta container.', '97', 'https://www.chefspencil.com/wp-content/uploads/Bagna-cauda.jpg.webp', '2021-05-12 23:24:19.000000', '2021-05-12 23:24:19.000000', 5);

-- --------------------------------------------------------
drop table product;
--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `username` varchar(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `phone` int(22) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zipcode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
drop table users;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type`, `username`, `email`, `password`, `phone`, `street`, `city`, `zipcode`) VALUES
(1, 1, 'admin', 'admin@admin.com', 'admin', 5555555, 'he', 'h', 'h'),
(2, 0, 'admin2', 'admin2@admin.com', 'admin2', 21, 'he', 'h', 'h'),
(4, 0, '2', 'mm@f.com', '1314', 1414, 'Al Dawhah Al Janubiyah, Dhahran 34457', 'Dahran', '34466'),
(5, 0, 'gousia', 'gousia@gmail.com', 'gousia', 123456789, 'GHF', 'xyz', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuisine`
--
ALTER TABLE `cuisine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cuisine_id` (`cuisine_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
  commit;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cuisine`
--
ALTER TABLE `cuisine`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
  commit;


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table address
--

--
-- Metadata for table cuisine
--

--
-- Metadata for table product
--

--
-- Dumping data for table `pma__table_uiprefs`
--
CREATE TABLE `pma__table_uiprefs`(
username varchar(255),
db_name varchar(255),
table_name varchar(255),
last_update int ,
prefs varchar(255)
 );
drop table pma__table_uiprefs;


CREATE TABLE `pma__table_uiprefs`(
username varchar(255),
db_name varchar(255),
table_name varchar(255),
last_update TIMESTAMP ,
prefs varchar(255)
 ); 
 
INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'foodbox', 'product', '{\"sorted_col\":\"`product`.`date_created`  ASC\"}', '2021-09-17 09:43:27');

--
-- Metadata for table users
--

--
-- Metadata for database foodbox
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;