-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 23 mars 2023 à 14:17
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `shop_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `card`
--

CREATE TABLE `card` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `card`
--

INSERT INTO `card` (`id`, `name`, `price`, `image`, `quantity`) VALUES
(129, 'Mas Card', 0, 'cart1.jfif', 0),
(130, 'Love Card', 0, 'cart2.jfif', 0),
(131, 'Care Card', 0, 'cart3.jfif', 0),
(132, 'Freind', 0, 'cart4.jfif', 0),
(133, 'Dinner Card', 0, 'cart5.jfif', 0),
(134, 'Mom Card', 0, 'cart6.jfif', 0);

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(164, 16, 101, 'Marriage Feast', 340, 1, 'pack1.jpg'),
(171, 17, 45, 'Elegance', 70, 2, '9.jfif'),
(174, 17, 105, 'Arecapalm', 300, 2, '111.jfif'),
(175, 17, 104, 'Glamour', 150, 0, '2.jfif'),
(178, 17, 106, 'Sincerity', 100, 0, '1.jfif'),
(179, 17, 108, 'Safety', 160, 0, '8.jfif'),
(180, 17, 90, 'Red Tulipe', 50, 2, '1-1.jfif'),
(181, 17, 131, 'Care Card', 0, 0, 'cart3.jfif'),
(182, 17, 107, 'Pink Bouquet', 50, 2, '6666.jfif');

-- --------------------------------------------------------

--
-- Structure de la table `flowers`
--

CREATE TABLE `flowers` (
  `id` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `flowers`
--

INSERT INTO `flowers` (`id`, `image`, `name`, `price`, `quantity`) VALUES
(90, '1-1.jfif', 'Red Tulipe', 50, 0),
(91, '1-2.jfif', 'White rose Red', 30, 0),
(92, '1-4.jfif', 'Peony', 95, 0),
(93, '1-3.jfif', 'White Tulip', 50, 0);

-- --------------------------------------------------------

--
-- Structure de la table `interior`
--

CREATE TABLE `interior` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `interior`
--

INSERT INTO `interior` (`id`, `name`, `price`, `image`, `quantity`) VALUES
(13, 'Arecapalm', 300, '111.jfif', 0),
(14, 'Bergonia Maculat', 150, '22.jfif', 0),
(15, 'Buro Tail', 299, '33.jfif', 0),
(16, 'Cactus', 300, '44.jfif', 0),
(17, 'Monesteras', 250, '55.jfif', 0),
(18, 'Prayer Plant', 190, '66.jfif', 0),
(19, 'The Fiddle Leaf Fig', 151, '77.jfif', 0),
(20, 'Variegated Indoor', 360, '88.jfif', 0),
(21, 'White Of Bird', 270, '99.jfif', 0);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(17, 17, 'salma', 'salma.benmoudssa@gmail.com', '0689800980', 'SALMA');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(19, 17, 'salma', '0887665577', 'salma@gmail.com', 'paypal', 'flat no. 127 hhddkmlmlncncdj jdhsj, , Safi, Morocco - 46000', ', Marriage Feast (1) ', 340, '10-Mar-2023', 'completed');

-- --------------------------------------------------------

--
-- Structure de la table `outside`
--

CREATE TABLE `outside` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `outside`
--

INSERT INTO `outside` (`id`, `name`, `price`, `image`, `quantity`) VALUES
(55, 'Alocasia', 350, 'alocasia1.jfif', 0),
(56, 'Cloud tree', 300, 'coudetree2.jfif', 0),
(57, 'Dracaena trifasciata', 250, 'dracenia3.jfif', 0),
(62, 'Cypress tree', 250, 'cypresse3.jfif', 0),
(63, 'Ficus rubiginosa', 250, 'ficus5.jfif', 0),
(127, 'Lemon tree', 250, 'lemon6.jfif', 0),
(128, 'Fig tree', 250, 'figtree7.jfif', 0),
(129, 'zamiolucas zamiifolia', 250, 'zam8.jfif', 0),
(130, 'Orange tree', 250, 'orange9.jfif', 0);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`, `quantity`) VALUES
(13, 'Sincerity', '', 100, '1.jfif', 0),
(15, 'Glamour', '', 150, '2.jfif', 0),
(16, 'Peony Bouquet', '', 100, '3.jfif', 0),
(17, 'Purity', '', 91, '4.jfif', 0),
(18, 'Love', '', 200, '5.jfif', 0),
(19, 'Pink Bouquet', '', 50, '6666.jfif', 0),
(20, 'Tenderness', '', 151, '7.jfif', 0),
(44, 'Safety', '', 160, '8.jfif', 0),
(45, 'Elegance', '', 70, '9.jfif', 0);

-- --------------------------------------------------------

--
-- Structure de la table `promo`
--

CREATE TABLE `promo` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `discount` int(10) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `old` int(100) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `promo`
--

INSERT INTO `promo` (`id`, `name`, `discount`, `price`, `image`, `old`, `quantity`) VALUES
(21, 'Marriage Feast', 15, 340, 'pack1.jpg', 400, 0),
(22, 'Valentines Box', 20, 231, 'pack2.jpg', 300, 0),
(24, 'Birthday Box', 10, 225, 'pack3.jpg', 250, 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(10, 'admin A', 'admin01@gmail.com', '698d51a19d8a121ce581499d7b701668', 'admin'),
(14, 'user A', 'user01@gmail.com', '698d51a19d8a121ce581499d7b701668', 'user'),
(15, 'user B', 'user02@gmail.com', '698d51a19d8a121ce581499d7b701668', 'user'),
(16, 'salmaaa', 'chaimaa@gmail.com', 'f6852b2a3ac0cd7e69c801f69eddb57a', 'user'),
(17, 'Salma Benmoussa', 'salmabenm@gmail.com', 'f6852b2a3ac0cd7e69c801f69eddb57a', 'user'),
(18, 'khadija', 'khadija@gmail.com', 'f6852b2a3ac0cd7e69c801f69eddb57a', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(110, 17, 16, 'Peony Bouquet', 100, '3.jfif');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `flowers`
--
ALTER TABLE `flowers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `interior`
--
ALTER TABLE `interior`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `outside`
--
ALTER TABLE `outside`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `card`
--
ALTER TABLE `card`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT pour la table `flowers`
--
ALTER TABLE `flowers`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT pour la table `interior`
--
ALTER TABLE `interior`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `outside`
--
ALTER TABLE `outside`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT pour la table `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
