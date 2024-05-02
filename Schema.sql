-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.32 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for gg
DROP DATABASE IF EXISTS `gg`;
CREATE DATABASE IF NOT EXISTS `gg` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gg`;

-- Dumping structure for table gg.administrator
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE IF NOT EXISTS `administrator` (
  `id_admin` int NOT NULL AUTO_INCREMENT,
  `id_user` int DEFAULT NULL,
  PRIMARY KEY (`id_admin`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `administrator_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table gg.administrator: ~0 rows (approximately)

-- Dumping structure for table gg.recipe
DROP TABLE IF EXISTS `recipe`;
CREATE TABLE IF NOT EXISTS `recipe` (
  `recipe_id` int NOT NULL AUTO_INCREMENT,
  `recipe_name` varchar(100) NOT NULL,
  `calories` int DEFAULT NULL,
  `is_Vegan` bit(1) DEFAULT NULL,
  `is_Vegetarian` bit(1) DEFAULT NULL,
  `descriptions` text,
  `ingredients` text,
  `instructions` text,
  `img` text,
  `preparation_Time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`recipe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table gg.recipe: ~20 rows (approximately)
INSERT INTO `recipe` (`recipe_id`, `recipe_name`, `calories`, `is_Vegan`, `is_Vegetarian`, `descriptions`, `ingredients`, `instructions`, `img`, `preparation_Time`) VALUES
	(1, 'Milkshake Grimace', 298, b'0', b'1', 'Le Milkshake Grimace mélange de la crème glacée à la vanille crémeuse avec des myrtilles, des framboises, du lait et une touche de spiruline bleue pour une friandise rafraîchissante visuellement frappante et délicieuse.', '3 boules de crème glacée à la vanille, 1 tasse de myrtilles congelées, ½ tasse de framboises fraîches, ½ tasse de lait, ½ cuillère à café de spiruline bleue', '1. Laisser la crème glacée reposer quelques minutes pour ramollir, ce qui facilitera le service. <br/>2. Ajouter les myrtilles, les framboises, la crème glacée, le lait et la spiruline bleue dans un mélangeur. <br/>3. Mixer jusqu\'à ce que les fruits soient réduits en purée. <br/>4. Verser le milkshake dans un grand verre ou deux petits. <br/>5. Garnir de crème fouettée et de sprinkles. Ajouter des pailles et déguster.', 'https://theeburgerdude.com/wp-content/uploads/2023/06/Grimace-Shake-Feature-01.jpg', '3 ans'),
	(2, 'Sauté de poulet au basilic thaï épicé', 450, b'0', b'0', 'Un plat sauté épicé et savoureux à base de poulet tendre, de basilic frais et d\'épices thaïlandaises aromatiques.', '1 lb de poulet, 2 tasses de feuilles de basilic, 2 cuillères à soupe d\'épices thaïlandaises', '1. Chauffer de l\'huile dans un wok à feu vif. <br/>2. Ajouter le poulet et faire sauter jusqu\'à ce qu\'il soit cuit. <br/>3. Ajouter le basilic et les épices thaïlandaises, continuer à faire sauter pendant une minute supplémentaire. <br/>4. Servir chaud avec du riz.', 'https://www.feastingathome.com/wp-content/uploads/2022/05/Thai-Basil-Chicken-15.jpg', '20 minutes'),
	(3, 'Pâtes crémeuses à l\'ail et au parmesan', 630, b'0', b'0', 'Un plat de pâtes réconfortant avec une sauce crémeuse à l\'ail et au parmesan mélangée à des pâtes al dente.', '8 oz de pâtes, 4 gousses d\'ail, 1 tasse de fromage parmesan râpé', '1. Cuire les pâtes selon les instructions sur l\'emballage. <br/>2. Dans une casserole, faire fondre du beurre et faire sauter l\'ail haché jusqu\'à ce qu\'il soit parfumé. <br/>3. Incorporer la crème épaisse et le fromage parmesan râpé jusqu\'à ce que la sauce soit crémeuse. <br/>4. Incorporer les pâtes cuites dans la sauce jusqu\'à ce qu\'elles soient bien enrobées. <br/>5. Servir chaud, garni de persil haché si désiré.', 'https://thecozycook.com/wp-content/uploads/2020/12/Garlic-Parmesan-Pasta-Recipe-1.jpg', '25 minutes'),
	(4, 'Saumon grillé aux herbes et au citron', 450, b'0', b'0', 'Un plat de saumon savoureux mariné dans une sauce tangy au citron et aux herbes, puis grillé à la perfection.', '4 filets de saumon, 2 citrons, herbes assorties', '1. Préchauffer le grill à feu moyen-élevé. <br/>2. Dans un petit bol, mélanger le jus de citron, l\'huile d\'olive, l\'ail haché et les herbes hachées. <br/>3. Badigeonner les filets de saumon de marinade et les laisser mariner pendant 30 minutes. <br/>4. Griller le saumon pendant environ 4 à 5 minutes de chaque côté, ou jusqu\'à ce qu\'il soit cuit à point. <br/>5. Servir chaud avec des quartiers de citron.', 'https://www.cookingclassy.com/wp-content/uploads/2018/05/grilled-garlic-lemon-herb-salmon-9.jpg', '15 minutes'),
	(5, 'Curry de pois chiches végétarien', 420, b'0', b'1', 'Un curry consistant et aromatique à base de pois chiches tendres, d\'épices aromatiques et de lait de coco crémeux.', '2 boîtes de pois chiches, 1 boîte de lait de coco, épices assorties', '1. Chauffer de l\'huile dans une grande casserole à feu moyen. <br/>2. Ajouter l\'oignon haché et l\'ail haché, faire sauter jusqu\'à ce qu\'ils soient ramollis. <br/>3. Incorporer le curry en poudre, le cumin moulu et la coriandre, cuire pendant 1 minute. <br/>4. Ajouter les pois chiches, les tomates coupées en dés et le lait de coco, porter à ébullition. <br/>5. Laisser mijoter pendant 15 à 20 minutes, jusqu\'à ce que les saveurs soient bien mélangées. <br/>6. Servir chaud avec du riz ou du pain naan.', 'https://www.allrecipes.com/thmb/iO7l9FNOWP25EsmbIJB4-utQV0Q=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Coconut_Chickpea_Curry-4x3_039-cfa7a55e16434fba8641012f7b03cef8.jpg', '30 minutes'),
	(6, 'Lasagne classique au boeuf', 670, b'0', b'0', 'Un plat italien intemporel avec des couches de pâtes, de savoureux boeuf, une sauce tomate riche et du fromage crémeux.', 'Feuilles de lasagne, 1 lb de boeuf haché, 2 tasses de sauce tomate, 2 tasses de fromage ricotta', '1. Préchauffer le four à 375°F (190°C). <br/>2. Dans une poêle, faire dorer le boeuf haché avec l\'oignon haché et l\'ail haché. <br/>3. Incorporer la sauce tomate, l\'assaisonnement italien, le sel et le poivre. <br/>4. Dans un plat à gratin, superposer les feuilles de lasagne, la sauce à la viande et le fromage ricotta. <br/>5. Répéter les couches et garnir de fromage mozzarella râpé. <br/>6. Couvrir de papier aluminium et cuire au four pendant 30 minutes, puis retirer le papier aluminium et cuire encore 15 minutes jusqu\'à ce que le fromage soit doré et bouillonnant. <br/>7. Laisser refroidir quelques minutes avant de couper et de servir.', 'https://myfoodbook.com.au/sites/default/files/styles/schema_img/public/recipe_photo/Classic_beef_lasagne.jpg', '60 minutes'),
	(7, 'Bol de riz au poulet teriyaki', 580, b'0', b'0', 'Un repas satisfaisant avec du poulet teriyaki tendre servi sur du riz moelleux avec des légumes vapeur.', '1 lb de poulet, 1 tasse de sauce teriyaki, 2 tasses de riz, légumes assortis', '1. Cuire le riz selon les instructions sur l\'emballage. <br/>2. Dans une poêle, faire cuire le poulet jusqu\'à ce qu\'il soit doré et cuit à point. <br/>3. Verser la sauce teriyaki sur le poulet et remuer pour enrober. <br/>4. Faire cuire les légumes à la vapeur jusqu\'à ce qu\'ils soient tendres. <br/>5. Servir le poulet sur le riz avec les légumes vapeur.', 'https://modernmealmakeover.com/wp-content/uploads/2020/10/IMG_6548-4.jpg', '25 minutes'),
	(8, 'Salade de quinoa méditerranéenne', 300, b'1', b'1', 'Une salade rafraîchissante combinant du quinoa moelleux, des légumes croquants, des olives tangy et du fromage feta émietté, le tout assaisonné d\'une vinaigrette méditerranéenne zestée.', '2 tasses de quinoa, légumes assortis, 1 tasse d\'olives, 1 tasse de fromage feta, vinaigrette méditerranéenne', '1. Cuire le quinoa selon les instructions sur l\'emballage et laisser refroidir. <br/>2. Dans un grand bol, mélanger le quinoa cuit, les légumes coupés en dés, les olives tranchées et le fromage feta émietté. <br/>3. Assaisonner avec la vinaigrette méditerranéenne jusqu\'à ce que tout soit bien mélangé. <br/>4. Servir frais en accompagnement ou en plat léger.', 'https://cdn.apartmenttherapy.info/image/upload/f_jpg,q_auto:eco,c_fill,g_auto,w_1500,ar_1:1/k%2FPhoto%2FRecipes%2F2019-11-recipe-mediterranean-quinoa-salad%2F2019-10-21_Kitchn89095_Mediteranean-Quinoa-Salad.jpg', '20 minutes'),
	(9, 'Risotto aux champignons', 450, b'0', b'1', 'Un plat de risotto crémeux et indulgent fait avec du riz arborio, des champignons terreux et un bouillon savoureux.', '2 tasses de riz arborio, 1 lb de champignons, 4 tasses de bouillon', '1. Dans une casserole, chauffer de l\'huile d\'olive à feu moyen. <br/>2. Faire sauter l\'oignon haché et l\'ail haché jusqu\'à ce qu\'ils soient ramollis. <br/>3. Ajouter les champignons tranchés et cuire jusqu\'à ce qu\'ils soient dorés. <br/>4. Incorporer le riz arborio et cuire quelques minutes. <br/>5. Ajouter progressivement du bouillon chaud, en remuant constamment jusqu\'à absorption. <br/>6. Continuer à ajouter du bouillon jusqu\'à ce que le riz soit crémeux et tendre. <br/>7. Incorporer le fromage parmesan râpé et le persil haché. <br/>8. Servir chaud, garni de parmesan supplémentaire si désiré.', 'https://www.allrecipes.com/thmb/Pow6PE9UyushNDB4wutXNnmriX8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/85389-gourmet-mushroom-risotto-86-7a2d218f53e94ccfaecc69b6fd93cab8.jpg', '40 minutes'),
	(10, 'Sandwiches au porc effiloché BBQ', 500, b'0', b'0', 'Un délicieux sandwich avec du porc effiloché tendre nappé de sauce barbecue tangy, servi sur un pain moelleux avec de la salade de chou.', '1 épaule de porc, 2 tasses de sauce BBQ, petits pains à sandwich, salade de chou', '1. Assaisonner l\'épaule de porc avec du sel, du poivre et votre mélange d\'épices barbecue préféré. <br/>2. Placer l\'épaule de porc dans une mijoteuse et verser la sauce barbecue dessus. <br/>3. Cuire à feu doux pendant 8 heures ou jusqu\'à ce que le porc soit tendre et se défasse facilement. <br/>4. Effilocher le porc à l\'aide de deux fourchettes et mélanger avec la sauce barbecue. <br/>5. Servir le porc effiloché sur des petits pains avec de la salade de chou.', 'https://carlsbadcravings.com/wp-content/uploads/2018/01/BBQ-Pulled-Pork-1.jpg', '20 minutes'),
	(11, 'Avocats farcis à la caprese', 280, b'0', b'0', 'Une élégante entrée avec des avocats mûrs farcis de mozzarella fraîche, de tomates juteuses et de feuilles de basilic, arrosée de glaçage balsamique.', '4 avocats, 8 oz de fromage mozzarella, 2 tomates, feuilles de basilic frais, glaçage balsamique', '1. Couper les avocats en deux et retirer les noyaux. <br/>2. Retirer une partie de la chair des avocats pour créer un espace creux. <br/>3. Remplir les moitiés d\'avocat avec de la mozzarella coupée en dés, des tomates cerises et des feuilles de basilic déchirées. <br/>4. Arroser de glaçage balsamique. <br/>5. Servir immédiatement en entrée légère et rafraîchissante.', 'https://kirbiecravings.com/wp-content/uploads/2018/09/caprese-stuffed-avocado-9.jpg', '15 minutes'),
	(12, 'Linguine aux crevettes scampi', 500, b'0', b'0', 'Un plat de pâtes italien classique avec des crevettes tendres sautées dans une sauce à l\'ail et au beurre, mélangées à des linguines al dente et du persil frais.', '8 oz de crevettes, 8 oz de linguine, 4 gousses d\'ail, 1/4 tasse de beurre, persil frais', '1. Cuire les linguines selon les instructions sur l\'emballage. <br/>2. Dans une poêle, faire fondre le beurre et faire sauter l\'ail haché jusqu\'à ce qu\'il soit parfumé. <br/>3. Ajouter les crevettes et cuire jusqu\'à ce qu\'elles soient roses et cuites à point. <br/>4. Mélanger les linguines cuites avec les crevettes et la sauce à l\'ail et au beurre. <br/>5. Garnir de persil haché et servir chaud.', 'https://www.foodnetwork.com/content/dam/images/food/fullset/2009/1/13/1/vday_shrimpscampi_4493_s4x3.jpg', '20 minutes'),
	(13, 'Honey Mustard Glazed Salmon', 550, b'0', b'0', 'Un plat de saumon savoureux avec des filets tendres glacés avec une sauce miel moutarde sucrée et acidulée.', '4 filets de saumon, 1/4 tasse de miel, 2 cuillères à soupe de moutarde de Dijon', '1. Préchauffer le four à 400°F (200°C). <br/>2. Dans un petit bol, mélanger le miel, la moutarde et le jus de citron. <br/>3. Placer les filets de saumon sur une plaque de cuisson recouverte de papier parchemin. <br/>4. Badigeonner les filets de saumon avec le glaçage miel moutarde. <br/>5. Cuire au four pendant 12 à 15 minutes, ou jusqu\'à ce que le saumon soit cuit et se défasse facilement à la fourchette. <br/>6. Servir chaud, garni de persil haché si désiré.', 'https://ascania-pack.com/assets/media/losos_largeThumb.jpg', '20 minutes'),
	(14, 'Chili végétarien', 350, b'1', b'1', 'Un chili copieux et satisfaisant préparé avec des haricots, des légumes et des épices aromatiques, mijoté à la perfection.', '2 boîtes de haricots, Légumes assortis, Épices à chili', '1. Dans une grande casserole, chauffer l\'huile d\'olive à feu moyen. <br/>2. Ajouter l\'oignon coupé en dés, les poivrons et l\'ail haché, faire sauter jusqu\'à ce qu\'ils soient ramollis. <br/>3. Incorporer le chili en poudre, le cumin, le paprika et le piment de Cayenne. <br/>4. Ajouter les tomates coupées en dés, la sauce tomate, le bouillon de légumes et les haricots. <br/>5. Porter à ébullition et laisser mijoter pendant 20 à 30 minutes, en remuant de temps en temps. <br/>6. Servir chaud, garni de coriandre hachée et d\'une cuillerée de crème sure si désiré.', 'https://s23209.pcdn.co/wp-content/uploads/2022/10/211129_DAMN-DELICIOUS_Vegetarian-Chili_279.jpg', '30 minutes'),
	(15, 'Pizza au poulet Alfredo', 700, b'0', b'0', 'Une délicieuse pizza avec une sauce Alfredo crémeuse, du poulet tendre et du fromage fondu sur une croûte croustillante.', 'Pâte à pizza, Sauce Alfredo, 1 lb de poulet, Fromage mozzarella râpé', '1. Préchauffer le four à 450°F (230°C). <br/>2. Abaisser la pâte à pizza sur une plaque à pâtisserie. <br/>3. Étaler la sauce Alfredo sur la pâte. <br/>4. Ajouter le poulet cuit, le fromage mozzarella râpé et d\'autres garnitures désirées. <br/>5. Cuire au four pendant 12 à 15 minutes, ou jusqu\'à ce que la croûte soit dorée et que le fromage soit fondu et bouillonnant. <br/>6. Couper en tranches et servir chaud.', 'https://tastesbetterfromscratch.com/wp-content/uploads/2020/04/Chicken-Alfredo-Pizza-5.jpg', '20 minutes'),
	(16, 'Salade grecque avec vinaigrette au citron', 200, b'1', b'1', 'Une salade rafraîchissante composée de laitue croquante, de tomates juteuses, de concombre, d\'olives et de fromage feta, assaisonnée d\'une vinaigrette au citron acidulée.', 'Laitue, Tomates cerises, Concombre, Olives, Fromage feta, Vinaigrette au citron', '1. Dans un grand bol, mélanger des feuilles de laitue déchirées, des tomates cerises coupées en deux, des tranches de concombre, des olives dénoyautées et du fromage feta émietté. <br/>2. Assaisonner avec la vinaigrette au citron jusqu\'à ce que tout soit bien enrobé. <br/>3. Servir frais en accompagnement rafraîchissant.', 'https://natashaskitchen.com/wp-content/uploads/2019/02/Greek-Salad-600x900.jpg', '15 minutes'),
	(17, 'Sauté de bœuf et brocoli', 450, b'0', b'0', 'Un plat de sauté savoureux avec du bœuf tendre, du brocoli croquant et une sauce savoureuse, servi sur du riz vapeur.', '1 lb de bœuf, 2 tasses de brocoli, sauce pour sauté, riz cuit', '1. Dans un wok ou une poêle, chauffer de l\'huile à feu vif. <br/>2. Ajouter le bœuf coupé en fines lamelles et faire sauter jusqu\'à ce qu\'il soit doré. <br/>3. Ajouter les fleurettes de brocoli et faire sauter jusqu\'à ce qu\'elles soient croquantes-tendres. <br/>4. Verser la sauce pour sauté et mélanger pour enrober. <br/>5. Servir chaud sur du riz cuit à la vapeur.', 'https://www.kitchensanctuary.com/wp-content/uploads/2021/01/Beef-and-Broccoli-square-FS.jpg', '20 minutes'),
	(18, 'Poitrines de poulet farcies aux épinards et feta', 320, b'0', b'0', 'Un délicieux plat de poulet avec des poitrines de poulet juteuses farcies d\'épinards et de fromage feta crémeux.', '4 poitrines de poulet, 2 tasses d\'épinards, 1 tasse de fromage feta', '1. Préchauffer le four à 375°F (190°C). <br/>2. Inciser les poitrines de poulet en portefeuille et les aplatir pour obtenir une épaisseur uniforme. <br/>3. Assaisonner les poitrines de poulet avec du sel et du poivre. <br/>4. Étaler une couche d\'épinards sautés et de fromage feta émietté sur chaque poitrine de poulet. <br/>5. Rouler les poitrines de poulet et les fixer avec des cure-dents. <br/>6. Placer les poitrines de poulet farcies dans un plat allant au four et cuire au four pendant 25 à 30 minutes, ou jusqu\'à ce que le poulet soit cuit. <br/>7. Servir chaud, garni de persil haché si désiré.', 'https://www.eatingwell.com/thmb/lAEwtQROBY8pEVjuip5Q-eSfQ3U=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/1501p130-spinach-feta-stuffed-chicken-breasts-8030825-66b09a00be4340c6a6af32fda656319c.jpg', '35 minutes'),
	(19, 'Pad thaï aux légumes', 380, b'0', b'0', 'Un plat de nouilles thaïlandaises savoureux avec des nouilles de riz sautées, des légumes croquants et du tofu ou de la viande, le tout relevé d\'une sauce acidulée.', '8 oz de nouilles de riz, Légumes assortis, Tofu ou viande, Sauce Pad Thaï', '1. Cuire les nouilles de riz selon les instructions sur l\'emballage. <br/>2. Dans un wok ou une poêle, chauffer de l\'huile à feu vif. <br/>3. Ajouter du tofu coupé en dés ou de la viande tranchée et cuire jusqu\'à ce qu\'ils soient dorés. <br/>4. Ajouter des légumes coupés en lamelles et faire sauter jusqu\'à ce qu\'ils soient croquants-tendres. <br/>5. Ajouter les nouilles cuites sautées au tofu/viande et aux légumes. <br/>6. Verser la sauce sur les nouilles et mélanger jusqu\'à ce qu\'elles soient bien enrobées. <br/>7. Servir chaud, garni de cacahuètes hachées et de coriandre si désiré.', 'https://ministryofcurry.com/wp-content/uploads/2021/01/Pad-Thai_-1.jpg', '25 minutes'),
	(20, 'Frittata aux légumes rôtis', 350, b'0', b'1', 'Un plat copieux à base d\'œufs avec des légumes rôtis, du fromage et des herbes, cuit jusqu\'à ce qu\'il soit doré et moelleux.', '8 œufs, Légumes assortis, Fromage, Herbes', '1. Préchauffer le four à 375°F (190°C). <br/>2. Couper en dés des légumes variés tels que des poivrons, des courgettes et des tomates cerises. <br/>3. Mélanger les légumes avec de l\'huile d\'olive, du sel et du poivre, et les étaler sur une plaque de cuisson. <br/>4. Rôtir les légumes au four préchauffé pendant 20 à 25 minutes, ou jusqu\'à ce qu\'ils soient tendres et légèrement caramélisés. <br/>5. Dans un bol, battre les œufs avec du lait, du fromage râpé et des herbes hachées. <br/>6. Verser le mélange d\'œufs sur les légumes rôtis dans le plat de cuisson. <br/>7. Cuire au four pendant 25 à 30 minutes, ou jusqu\'à ce que la frittata soit prise et dorée. <br/>8. Laisser refroidir légèrement avant de couper et de servir.', 'https://img.taste.com.au/vfxNyWbO/taste/2016/11/roasted-vegetable-frittata-93319-1.jpeg', '45 minutes');

-- Dumping structure for table gg.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table gg.users: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
