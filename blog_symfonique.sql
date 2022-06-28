-- Version du serveur :  10.4.16-MariaDB
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog_symfonique`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `image`, `created_at`, `category_id`) VALUES
(28, 'Eius rerum ratione praesentium aut mollitia a et.', '<p>Incidunt tempora aut quae quasi expedita ut voluptatem eum. Magni aut ipsa doloremque consequatur pariatur quo qui. Odio autem quia rem et nulla iusto ullam. Quis totam soluta ab.</p><p></p>Vero ut aspernatur libero sed laudantium autem perferendis. Omnis ipsum sit voluptatem illum voluptatem eos. Non sapiente quam nesciunt.</p><p></p>Consequatur eum commodi deleniti. Ad aut facilis et eos. Consequatur autem deserunt totam autem.</p><p></p>Ut explicabo magni neque ullam quas. Modi accusamus tempore eos qui dolore animi. Numquam voluptas labore officia labore ut. Iste quos ut fuga impedit.</p><p></p>Alias iure doloremque sequi officiis fugit perspiciatis aut. Et aut est ducimus tenetur quod laboriosam sed. Doloribus mollitia molestias voluptatem et rerum.', 'art-28.jpg', '2020-10-28 19:29:53', 5),
(29, 'Molestiae rerum consequuntur ad sint incidunt.', '<p>Voluptate in ea et expedita incidunt sed. Occaecati id exercitationem reprehenderit non laudantium velit quia. Atque esse autem excepturi sit quam perspiciatis dolorum. Magnam et blanditiis libero qui nihil tenetur.</p><p></p>Atque quos recusandae voluptate enim in enim. Minima non eaque architecto quasi.</p><p></p>Enim qui maiores magni veritatis aut expedita occaecati. Ex libero fugiat ea aperiam ea quo corrupti quis. Nulla accusamus a voluptas corrupti quaerat eum. Dolor ratione ad necessitatibus ipsum cumque.</p><p></p>Commodi qui nisi dolorum omnis nihil. Molestiae ullam qui nihil officia consequatur autem odit. Officiis nobis tempore in repellendus.</p><p></p>Repudiandae iste commodi quia. Dolor nihil ea minima. Ea nemo et alias illum.', 'art-29.jpg', '2020-10-29 20:35:15', 8),
(30, 'Suscipit incidunt commodi ipsam sunt.', '<p>Non fuga sint voluptas eos eos quaerat nobis. Labore libero et sint consequuntur harum reiciendis et omnis. Sint voluptate sequi reprehenderit inventore laudantium iste. Possimus neque dolorum quidem et velit.</p><p></p>Distinctio et laboriosam sapiente sunt odio sunt architecto animi. Ut dolorem velit ut est. Sunt quibusdam vero consequatur maiores. Iure qui numquam est praesentium debitis consequatur.</p><p></p>Tempore et ea occaecati quisquam dolores aliquam cupiditate. Velit eos aperiam eligendi et beatae rem. Eligendi eos nobis est amet impedit recusandae. Dolore tempore velit qui fugit ad eos quis. Quo facere quasi culpa maxime ullam.</p><p></p>Et natus numquam rem et voluptatum est odio nesciunt. Similique porro necessitatibus odio error officia fugiat. Ea sequi nihil placeat.</p><p></p>Possimus ut aspernatur consectetur numquam mollitia. Harum non fuga quia numquam est sit praesentium quam. Et exercitationem facere vitae dignissimos laudantium occaecati. Quam omnis eveniet consectetur consequuntur deleniti harum minus.', 'art-30.jpg', '2020-11-02 15:58:20', 4),
(31, 'Voluptatem ipsum est soluta nihil ducimus ut.', '<p>Incidunt aperiam eum dolorem est ipsum. Natus error rem excepturi quis esse ut. Fugit hic fugit sed.</p><p></p>Molestiae velit eius asperiores et assumenda porro. Mollitia sit eos quo natus. Sed et dignissimos odit.</p><p></p>Magni nostrum dolorum velit hic. Ut modi explicabo quia fugiat. Mollitia neque eius autem omnis vel nihil.</p><p></p>Et fugit recusandae aspernatur enim non occaecati. In voluptatum sit sint impedit amet. Ullam ullam quia voluptates cupiditate aliquid rerum consequatur. Unde beatae sint earum.</p><p></p>Occaecati in rerum provident est enim qui atque minus. Doloremque est dignissimos fugit inventore ea aut at quia. Earum vitae incidunt quos facilis laborum occaecati.', 'art-31.jpg', '2020-11-07 14:02:24', 8),
(32, 'Est voluptatem nihil a omnis.', '<p>Id sunt assumenda quis et ratione fuga id. Perspiciatis consequatur voluptas consequuntur illo hic. Impedit suscipit sed facilis doloremque necessitatibus placeat molestiae.</p><p></p>Impedit nobis ut dolorem illum et soluta. Ullam voluptatibus ex corrupti magni qui. Ipsa tempore minus iste iste aut.</p><p></p>Repellendus ullam repellat blanditiis. Nulla blanditiis nulla ut fuga voluptatem. Exercitationem soluta inventore reiciendis repudiandae dolores.</p><p></p>Aut doloremque architecto nisi. Et cumque quo iusto. Est ut voluptas quo voluptatem omnis aliquid aspernatur. Tenetur iusto iusto neque soluta nihil quis nisi.</p><p></p>Consectetur iure dolor officia saepe modi dolor qui. Rerum sed et qui suscipit. Sunt voluptatibus consequuntur earum mollitia aut labore.', 'art-32.jpg', '2021-01-15 06:33:13', 6),
(33, 'Rem quis est libero autem et placeat.', '<p>Est veritatis quos id. Eos illo et sed aspernatur cum. Omnis similique dolores rerum aliquid voluptatum quia et.</p><p></p>Occaecati non aliquid adipisci expedita cum nisi. Nisi veritatis omnis repellendus tempora eum assumenda. Tenetur voluptatem nihil consequatur eum et.</p><p></p>Sint atque nulla aut est ullam. Consequatur eos cum est non consequatur iste eligendi. Molestiae rerum qui unde deleniti beatae qui deserunt.</p><p></p>Nihil repellat vel ut quo. Error assumenda debitis impedit dicta eos.</p><p></p>Totam blanditiis aspernatur sequi maxime qui. Officia cumque non quo eos fugiat dolores.', 'art-33.jpg', '2021-02-01 08:48:37', 6),
(35, 'Aliquid dolorem perspiciatis autem.', '<p>Voluptate dolorem voluptates ea. Provident nisi voluptatem culpa cumque excepturi. Ut quam eius odit.</p><p></p>Quasi distinctio harum eius dolor et. Architecto eveniet aut molestiae et est sint aperiam. Aut adipisci tempore quia esse odio corrupti praesentium. Perspiciatis non repellendus eveniet nulla dolore.</p><p></p>Dignissimos reprehenderit ut autem nam. Ipsa tenetur recusandae laudantium sit labore sunt id. Fuga quo ratione aspernatur reiciendis vero. Incidunt omnis tempore inventore dignissimos repellat recusandae.</p><p></p>Molestias quaerat dolore in corrupti nihil. Voluptas amet quia consequatur expedita. Quia quod dolorem in natus voluptas. Accusantium et porro nihil ullam modi debitis quia.</p><p></p>Voluptas labore optio vero harum. Sapiente sed iure accusantium. Aut necessitatibus soluta impedit nisi consequatur porro ullam.', 'art-35.jpg', '2021-02-16 02:43:45', 4),
(36, 'Libero repudiandae voluptas qui nihil.', '<p>Consequatur quasi non aspernatur qui et repellat doloremque. Velit voluptatem modi explicabo id occaecati beatae deserunt. Corrupti qui saepe repellendus fugiat consequatur aut reiciendis.</p><p></p>Quo est iste in quaerat ut molestias. Dignissimos odio debitis illum consequatur voluptatem quasi. Alias esse nobis occaecati eligendi.</p><p></p>Dolorum ut est cum esse esse odit asperiores. Nihil assumenda quibusdam qui. Ea voluptas ducimus aspernatur asperiores praesentium error dolores.</p><p></p>Iste voluptatum dolores amet quas velit blanditiis. Eaque nobis deleniti similique amet. Porro dicta iure tempora omnis omnis cumque numquam eum.</p><p></p>Explicabo praesentium voluptate at. Fugiat voluptate asperiores voluptatem omnis sint. Sint quia et consequatur labore omnis eos.', 'art-36.jpg', '2021-03-05 18:11:14', 8),
(37, 'Vitae quod eos non aspernatur voluptas laborum.', '<p>Eum libero velit vel sit sint qui ad. Consequatur in et dolorem laboriosam esse. Molestiae quisquam officiis rem temporibus quod. Magni nam aliquam qui et totam aut. Illum minus est et veniam ea molestiae voluptas enim.</p><p></p>Vel at eveniet officia optio voluptas. Reprehenderit autem dicta nulla est quo. Aut ut distinctio officia dolores.</p><p></p>Fugiat facilis eligendi sit placeat explicabo. Omnis laboriosam sit eos. Sapiente molestias culpa mollitia dignissimos velit. Sed et qui est non qui sit ratione.</p><p></p>Natus quo id rerum doloremque. Maxime doloribus id eum blanditiis qui neque. Aut qui consequatur voluptatem voluptates veniam sit blanditiis. Quo aliquam qui aliquam voluptatem et.</p><p></p>Architecto temporibus aut sed sit dolorem. Sapiente sapiente corporis similique voluptate suscipit ullam corporis. Modi ut unde est magni aperiam aperiam.', 'art-37.jpg', '2021-03-21 13:34:17', 5),
(38, 'Sit veniam cum incidunt neque eius.', '<p>Aperiam similique consequatur suscipit tempora repudiandae. Veritatis vitae quos sit eum minus. Aspernatur maiores quisquam laborum.</p><p></p>Itaque quia nihil mollitia tenetur est. Dolore est fugit et cumque illum ut ea. Ratione est eius quo qui enim et rem nihil. Asperiores distinctio corporis sint cum mollitia.</p><p></p>Sunt dicta nihil voluptatem quas rerum. Odit neque magnam minima repellat. Aut veniam voluptas est et illum quidem sunt.</p><p></p>Sint quisquam autem commodi quibusdam. Hic occaecati voluptas earum ut officia est. Nulla alias quaerat corporis impedit aperiam. Optio eaque quis sit accusamus fuga similique accusantium.</p><p></p>Animi expedita fuga sunt sed eaque atque architecto odit. Facilis suscipit voluptatem earum est modi sunt. Incidunt est explicabo eveniet velit. Aut voluptatem maiores optio nulla.', 'art-38.jpg', '2021-04-02 03:23:27', 5),
(39, 'Culpa qui quia illo voluptatum nobis.', '<p>Minus ad at rem rerum molestiae eius. Nisi animi dolore sunt quia qui. Qui et provident necessitatibus provident.</p><p></p>Ut modi praesentium temporibus fugit et voluptatem. Nemo enim eum sed quam et. Omnis repellat quidem eos.</p><p></p>Consequuntur porro eius et modi consectetur. Earum voluptatem eius voluptatem laudantium. Corporis voluptas id non ut eaque ipsam.</p><p></p>Nihil reiciendis error est accusamus possimus totam est. Quos quia similique ducimus eius. Rerum nobis assumenda provident architecto necessitatibus.</p><p></p>Rerum omnis quam esse suscipit. Enim vero quia quo. Consequatur culpa laboriosam possimus iusto. Molestias qui maxime ratione.', 'art-39.jpg', '2021-04-13 06:11:29', 4),
(40, 'Non id inventore architecto maxime.', '<p>Molestiae quis quas quia qui dolor sed id alias. Nobis itaque hic neque itaque maxime est. Est numquam dolores quas est. Placeat id autem illo et.</p><p></p>Fugit provident nobis maxime error quia quasi dolor. Alias non ut sint asperiores quo eos et.</p><p></p>Dignissimos ipsam iste eum nihil repellendus occaecati. Vel aut aspernatur nihil reiciendis consequuntur aut. Vel placeat vel inventore quo aliquam ea praesentium. Quia repellat inventore quisquam enim est vitae. Nihil debitis quia blanditiis.</p><p></p>Inventore minus vel enim saepe. Dolores unde voluptatum quia tenetur eaque. Veniam aliquid est itaque quidem.</p><p></p>Quod enim tempora id culpa. Possimus illum possimus delectus quo. Quisquam sit est commodi quae rerum accusantium eveniet quia. Necessitatibus cupiditate a voluptas ut.', 'art-40.jpg', '2021-05-03 00:19:21', 8),
(43, 'Proin laoreet erat sed elementum efficitur.', '<p>Suspendisse et libero rhoncus nunc aliquet iaculis. Quisque sit amet sollicitudin odio. Fusce ut eros dolor. Fusce dolor risus, aliquet non magna vel, commodo feugiat felis. Praesent euismod malesuada imperdiet.</p><p></p>In vitae lectus eu turpis tristique viverra ac tincidunt augue. Quisque non elementum mauris. Fusce et vestibulum eros. Sed in venenatis purus. Aenean consequat risus laoreet, posuere lorem ut, accumsan massa.</p><p></p>Sed sollicitudin sapien a ligula sagittis rhoncus sit amet eu ante. Aenean suscipit, tellus eget commodo porta, neque nibh viverra lacus, ut lobortis ipsum felis vel felis.</p><p></p>Sed in velit nulla. Quisque mollis ex ut nisi efficitur vehicula. Ut ac nibh ac libero tempor aliquet. Donec nulla orci, consequat eget velit accumsan, mattis sagittis dui. Sed in euismod turpis. Sed faucibus tempus convallis. Donec a nibh aliquet, dignissim sem a, convallis ex.</p><p></p>Duis aliquet felis lectus, quis accumsan lectus convallis in. Nam a odio finibus, pulvinar augue quis, feugiat tellus. Pellentesque eu molestie ante. Morbi ullamcorper turpis sed nulla molestie condimentum.</p>', 'art-43.jpg', '2021-05-11 12:48:37', 6),
(44, 'Cras quis finibus nibh. Vivamus at.', '<p>Quisque dignissim dictum ipsum, cursus euismod nulla. Vestibulum libero massa, volutpat sit amet malesuada tempor, tincidunt sed diam. Nam sit amet scelerisque neque. Nulla nec tortor.</p><p></p>Quisque dapibus augue neque. Nam mauris mi, scelerisque ac condimentum ac, faucibus vel velit. Nam consequat et metus vel placerat. Nulla sollicitudin neque est, vel auctor felis luctus et. Sed lobortis scelerisque nunc ac pretium.</p><p></p>Nullam et purus lobortis, pretium velit a, tristique quam. Quisque a diam at odio lobortis finibus. In vitae lacus a felis posuere sollicitudin. Nullam placerat elementum auctor.</p><p></p>Sed porta dapibus felis, vitae venenatis eros tincidunt in. Phasellus eget aliquam nisi. Ut commodo nulla nec tortor varius dapibus. Fusce ut mi nec tortor porttitor commodo id facilisis erat.</p><p></p>Mauris ornare est eget erat dignissim, id interdum lorem hendrerit. Etiam rhoncus commodo mauris. Nunc vitae ex blandit, eleifend magna eu, tempor lorem. Praesent sit amet elementum purus.</p>', 'art-44.jpg', '2021-05-26 22:17:14', 6);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `title`, `description`) VALUES
(4, 'Rock', 'Consequatur omnis non sunt quia quis velit. Explicabo voluptate et aut iste non. Est est fuga dolor aspernatur doloremque.'),
(5, 'Variété', 'Ut omnis veritatis quia et est autem. Doloremque aut aspernatur vero autem repellendus numquam enim doloribus. Exercitationem sed quisquam eum ea voluptates consequatur.'),
(6, 'Info', 'Vitae laudantium molestiae ut voluptas. Est maiores quia molestiae sunt quaerat nesciunt sit.'),
(8, 'Insolite', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus est ligula, porttitor sit amet tristique nec, commodo vitae leo. Aenean ultrices egestas lacus sed gravida. Etiam elementum neque nibh, at cursus risus sodales eu. Nullam vel vestibulum quam.');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `article_id`, `author`, `content`, `created_at`) VALUES
(78, 28, 'Philippe Bodin', '<p>Similique voluptatem et nisi itaque possimus tempore dolorum. Natus vero ducimus deserunt. Laudantium autem et ipsum nobis et eligendi rerum.</p><p></p>Expedita unde perspiciatis et quis dignissimos. Est corporis et eos error. Asperiores commodi exercitationem voluptatem facilis velit. Eos autem magnam asperiores debitis est nulla quibusdam.', '2020-10-29 21:22:40'),
(79, 28, 'Julien Riviere', '<p>Repudiandae consequatur in eos libero nulla unde reiciendis. Rerum quia molestias labore magni quas alias voluptatem. Velit in et sed dolore impedit cupiditate. Reprehenderit dolores dolor veniam ea sunt eum recusandae.</p><p></p>Vero a impedit eos est et ipsum. Itaque odio id ad sed. Sunt odit numquam consequatur et et. Nihil quos quo reprehenderit tenetur.', '2020-11-15 03:37:08'),
(80, 28, 'Jeanne-Élodie Ribeiro', '<p>Quos blanditiis et error. Nisi soluta sapiente nam incidunt at et. Quisquam reiciendis doloremque repudiandae doloribus quis non optio. Aliquid possimus temporibus blanditiis iure cupiditate molestiae non sit.</p><p></p>In minima qui qui culpa aut ea. Est sint sed corrupti veniam fugit. Dignissimos rerum error hic fugit aut. Ducimus facilis recusandae sint aspernatur ea autem nihil.', '2020-12-23 03:26:09'),
(82, 28, 'Pauline Barbe', '<p>Voluptas voluptas maxime optio excepturi. Deserunt a non blanditiis fugiat dolor ut doloremque. Animi molestiae eius et doloribus fuga. Soluta nulla assumenda cum consequuntur laborum.</p><p></p>Doloribus accusantium qui est quisquam voluptates. Est temporibus et ipsa. Quod dolor est enim dolor et molestiae.', '2021-01-11 00:15:27'),
(83, 29, 'Camille Caron', '<p>Sed tempora neque voluptatem vel asperiores eos. Dignissimos aliquam assumenda doloribus qui aut. Nihil vel labore sit neque.</p><p></p>Tempore fugiat doloremque nisi. Quis vel tempore et et enim. Itaque ut animi ut et repellendus rem ex. Eligendi asperiores qui hic aut dolor illum nam esse.', '2020-11-01 08:05:45'),
(84, 29, 'Agathe Philippe', '<p>Repudiandae voluptatem alias aliquid. Earum animi dolorem placeat quasi mollitia qui. Neque a ratione sint libero consequuntur deserunt. Vel est aliquid rerum doloribus aliquam porro facere at.</p><p></p>Et quia ut voluptas error iusto eos non. Soluta placeat sequi magni maxime deserunt quo laborum eligendi. Dolores quis exercitationem reiciendis ab.', '2020-11-12 14:56:56'),
(85, 29, 'Léon-Lucas Dupuy', '<p>Nesciunt est dolorum et pariatur. Minus facere ipsum occaecati a officia. Ullam placeat dolores unde laborum quia. Ut voluptates saepe provident debitis libero dolores.</p><p></p>Quis voluptas numquam assumenda velit cum dolores. Dignissimos aliquid pariatur reprehenderit et placeat. Minima reprehenderit voluptas amet doloribus iure vel.', '2020-11-30 10:41:16'),
(86, 29, 'Isabelle Henry', '<p>Et esse voluptatum soluta voluptatem. Iusto ab aut maiores nobis. Aut aut hic incidunt necessitatibus deleniti voluptatem.</p><p></p>A hic vero dicta rerum non libero quia. Eaque et voluptates vero dolor temporibus dolor. Minima qui labore est est ea dolore omnis.', '2020-12-09 12:35:22'),
(87, 29, 'Nicolas de Guibert', '<p>Veniam consequuntur non nihil et dolorum veniam. Animi praesentium est explicabo consequuntur eligendi aut repudiandae. Veritatis sapiente maiores eaque consequatur.</p><p></p>Voluptatem maxime omnis deleniti saepe et autem iusto officiis. Quis nemo cum voluptates est. Ea fuga modi sequi magni doloribus.', '2021-01-26 18:18:15'),
(88, 30, 'Laure-Cécile Garcia', '<p>Laudantium repudiandae quod illum aut at et architecto. Fugit vero facere qui magnam voluptatem enim. Accusantium numquam neque illo ducimus. Dolores quam magni officiis necessitatibus.</p><p></p>Dicta placeat ullam earum magni consectetur veniam dolorem. Facere consectetur accusamus necessitatibus ea architecto. Odit perspiciatis a est et repudiandae voluptatibus. Veniam soluta nostrum maiores vero sequi iure.', '2020-11-16 09:15:09'),
(89, 30, 'Rémy Marchal', '<p>Aliquam ea facilis aperiam tempora itaque est. Vel officia dignissimos sit corporis sit. Incidunt necessitatibus et quod laborum id aut mollitia ut.</p><p></p>Consequuntur iusto occaecati est eaque. Sed saepe aut reprehenderit et dicta sit rerum. Aspernatur enim nihil optio voluptates voluptatum in sunt.', '2020-11-27 21:53:33'),
(90, 30, 'Gilbert de la Rousseau', '<p>Ipsa veritatis eligendi illum nostrum asperiores repudiandae. Similique tempora maxime eveniet architecto. Provident asperiores voluptate molestiae numquam suscipit. Nulla iure commodi id.</p><p></p>Dignissimos nihil aut et sunt. Dolor doloribus dolores deleniti aut voluptatem nobis assumenda dolorum. Ex quas necessitatibus magni vero aperiam aut architecto distinctio. Quo quod ipsam veniam sit quibusdam laudantium laborum. Excepturi et sit porro facere quia quia ut est.', '2020-12-18 03:04:42'),
(91, 30, 'Benjamin Rousseau', '<p>Corrupti velit aut suscipit nesciunt similique amet et. Qui eaque eveniet soluta aspernatur ab qui.</p><p></p>Alias sequi voluptas dolorem vel. In ut in corrupti reprehenderit non provident ut. Dignissimos molestias sunt deserunt maxime aut. Optio laudantium illo sit excepturi doloribus. Voluptatum nihil ut labore ea.', '2021-01-06 01:20:32'),
(92, 30, 'Lucie Perez', '<p>Nemo in et et iure deserunt sunt. Rerum nulla minus qui delectus veritatis doloremque mollitia fuga. Eum corrupti omnis minus aspernatur recusandae consequuntur. Dolorum eius et sunt et explicabo.</p><p></p>Qui aut ab molestias qui nesciunt ea. Autem velit non eum officia aut consequuntur sapiente. Consequatur sed laborum dolorum quia nostrum explicabo dolorum est. Porro ad voluptas omnis et.', '2021-02-24 04:39:56'),
(93, 30, 'Édith Jacob', '<p>Excepturi aliquam cum sed et dolores. Voluptas dignissimos praesentium id est odit veritatis saepe. Accusantium dignissimos at excepturi optio est et.</p><p></p>Dolorem labore alias est sequi eum. Id in quia magnam consequatur velit deleniti in at. Dolor quos aspernatur ipsum omnis.', '2021-03-06 03:33:17'),
(94, 30, 'Alfred Moreau', '<p>Facilis reiciendis quia consequatur nihil laudantium. Rerum dolorem aut ut molestiae. Repudiandae vero consequatur adipisci at nostrum ex. Quo occaecati qui vel asperiores id et.</p><p></p>Dolorum praesentium tenetur nesciunt aliquam possimus. Eum pariatur nihil harum et expedita quibusdam non culpa. Aut vero consequatur dicta.', '2021-03-26 19:45:58'),
(95, 31, 'Richard-William Blin', '<p>Esse et suscipit quae illum eveniet ut officiis. Enim non ducimus facere consequatur dolores neque excepturi. Quaerat ut qui ad. Et aspernatur et quia accusantium ut accusamus. Sed aperiam ex blanditiis.</p><p></p>Qui explicabo numquam repellendus recusandae voluptatem sit ex. Inventore blanditiis alias qui et consequatur praesentium enim. Eius ad id expedita praesentium sint. Sed minima neque quo est labore. Et culpa excepturi nihil fugiat magnam.', '2020-11-13 19:21:31'),
(96, 31, 'Josette Cordier', '<p>Animi voluptas laborum ea dignissimos cupiditate similique corporis. Quisquam necessitatibus accusamus commodi autem tenetur quo consequatur perferendis. Enim incidunt illo fugiat consequatur.</p><p></p>Alias ut maxime ad tempore ut deleniti. Asperiores suscipit sequi amet at quam rerum. Error accusantium eveniet fuga officia. Et aut dolores possimus quidem neque voluptatem.', '2020-11-25 06:19:48'),
(97, 31, 'Gilles Dupre', '<p>Est doloribus repellat dolore ut rem. Praesentium esse aliquid minus qui sed. Et tenetur et ullam enim.</p><p></p>Perspiciatis itaque sapiente et molestiae quos. Impedit nobis modi cupiditate aliquid quia placeat. Totam autem aut quas et libero delectus quas architecto. Commodi doloremque cum nesciunt voluptatem iusto consectetur et.', '2020-12-20 06:07:37'),
(98, 31, 'Benjamin Prevost', '<p>Consequuntur nulla quo ipsa nemo perferendis quas officia. Omnis quo enim porro enim. Adipisci quos sunt est doloremque quas dolorum deleniti. Praesentium est est eos consequuntur vel similique illum.</p><p></p>Aut eum libero totam ex quidem tempore. Est laudantium architecto maxime minus aut nemo ut. Aspernatur voluptatem neque ut maxime error.', '2020-12-29 05:10:26'),
(99, 31, 'Élise-Aurélie Nicolas', '<p>Numquam cupiditate quia voluptatem dignissimos quis illo quibusdam neque. Et ut qui voluptatum occaecati consequuntur. Iure omnis aut quisquam aliquam. Explicabo eos et ea quae consequatur.</p><p></p>Id ab numquam neque laudantium recusandae dicta delectus. Nemo porro ut ratione libero recusandae a. Nemo hic ullam quia magni laudantium vero. Adipisci dolorum fugiat placeat voluptatem qui.', '2021-01-16 12:02:45'),
(100, 31, 'Alfred Lecoq', '<p>Eum autem soluta odit facere impedit aliquid. Dolorem neque aut debitis. Officia dolorum optio dolores eos.</p><p></p>Dolorum facilis quidem quaerat repellendus enim qui. Sit nihil recusandae eveniet nihil similique voluptatem. Aliquid consequatur sed adipisci iure.', '2021-02-09 10:10:32'),
(101, 31, 'Gabrielle Lebon', '<p>Quaerat eligendi aspernatur id quae debitis. Porro autem eligendi quisquam commodi earum. Aperiam cum eius eveniet vero ratione. Sit nemo assumenda inventore sunt impedit sit magni.</p><p></p>Veritatis et consequuntur voluptatem non ab vel. Dolorum earum velit eos omnis veniam dolorem.', '2021-02-17 12:08:46'),
(102, 32, 'Éric-Roger Andre', '<p>Praesentium perferendis consequatur molestiae incidunt ut atque culpa. Laborum reiciendis inventore assumenda totam explicabo.</p><p></p>Placeat rerum neque architecto aut tenetur. Et porro dicta cupiditate voluptas necessitatibus in. Maiores ut nesciunt mollitia rerum. Id qui optio dolorum in asperiores assumenda. Cupiditate at rerum odit.', '2021-01-19 16:57:34'),
(103, 32, 'Honoré Hamel-Lefevre', '<p>Est iure aut sit vel rerum saepe aut. Magnam beatae voluptates consequatur. Aut voluptates ab et consequatur. Voluptatem quo facere et asperiores et laboriosam debitis.</p><p></p>Dignissimos ipsa veniam quam est beatae. Error maiores accusamus ut sed. Architecto est nesciunt cumque porro.', '2021-01-27 07:10:53'),
(104, 32, 'Alain Gaudin-Chauvin', '<p>Ducimus enim eveniet maiores est et culpa. Explicabo cupiditate sed porro quas provident. Fugiat aspernatur sint nulla sunt dolorum.</p><p></p>Aut est eos voluptates atque eos veniam quaerat. Nihil et aliquam maxime aut laboriosam qui. Exercitationem minus quo officiis non quod similique nihil ut.', '2021-02-09 02:06:33'),
(105, 32, 'Marguerite de la Bousquet', '<p>Autem qui aut alias qui. Voluptatem dolores necessitatibus natus quis similique. In nemo adipisci molestiae deserunt. Nemo et accusantium ipsam sunt natus quia.</p><p></p>Eum eligendi aut illum amet cupiditate omnis. Qui dolores deleniti ratione qui voluptatem numquam delectus. Voluptatem veniam cupiditate repellendus delectus est. Et sed est nihil quas quo. Tempora molestiae harum dolor incidunt itaque doloribus repellendus.', '2021-02-13 01:08:38'),
(107, 32, 'Étienne Gautier-Blin', '<p>Qui possimus rerum in voluptatem consequatur. Veniam dolor laudantium maiores aut sequi non. Rerum est hic voluptates doloribus id.</p><p></p>Molestiae deleniti aut ut quia nemo facilis. Aspernatur quae et nihil. A laudantium beatae facilis dolor quibusdam ducimus dolorem ut.', '2021-03-08 00:18:34'),
(108, 43, 'Joséphine Ruiz', '<p>Qui impedit reiciendis et quam. Qui quibusdam deserunt ipsam sunt hic ullam voluptatem. Qui et nostrum dolorem incidunt.</p><p></p>Consectetur dolores deleniti adipisci non quos dolorum. Consequatur quo sit suscipit magni quas nobis velit. Beatae et deleniti reprehenderit quae aliquam sapiente ipsa.', '2021-05-12 15:44:03'),
(109, 43, 'Aurore Hernandez', '<p>Voluptatum est rerum aut laboriosam facere rerum assumenda. Maxime vero eligendi quaerat ex. Alias eum voluptatibus adipisci. Recusandae qui quaerat in voluptatem inventore eum reprehenderit. Modi aut illum maxime facere.</p><p></p>Eveniet nam dolores voluptatem consequuntur voluptas molestiae nobis. Numquam debitis aliquid eum suscipit ab perferendis ut. Occaecati magnam autem nesciunt fugit architecto omnis dolore ut.', '2021-05-14 15:35:12'),
(110, 44, 'Alexandre Leduc-Evrard', '<p>Veniam non velit sit animi et. Neque voluptates minima et nisi qui at similique est. Veniam tempora eaque natus et blanditiis.</p><p></p>Consectetur voluptatem ut voluptas porro cupiditate et. Dolor laudantium facere odit molestias. Repellendus aut quia corrupti perspiciatis porro.', '2021-05-27 09:22:35'),
(111, 33, 'Étienne Jourdan', '<p>Eligendi esse sit ipsa fugiat. Sapiente expedita repellat libero mollitia ducimus et velit. Ea alias aspernatur vero nulla consectetur labore architecto. Animi voluptas ea est aut.</p><p></p>Quasi dolores et voluptatem in eum ut. Qui atque animi vero dolor velit aut omnis. Eos ab sunt et aliquam laudantium est beatae. Et dolores est ea veritatis vitae voluptatem dolorem ipsam.', '2021-02-03 11:20:33'),
(112, 33, 'Bertrand Morvan', '<p>Dolore qui explicabo sint facilis officia nam. Est enim quae aliquam laboriosam. Architecto quia non natus mollitia ullam velit.</p><p></p>Aut quaerat enim aspernatur provident facilis modi nesciunt repudiandae. Sed nihil quidem exercitationem quas. Voluptatem impedit vel voluptas et aliquid.', '2021-02-21 23:06:04'),
(113, 33, 'Lorraine Olivier', '<p>Officia aliquid nisi omnis deserunt. Aut architecto perferendis ea molestiae nemo est perferendis. Placeat qui eum maxime id reprehenderit. Enim unde qui vitae cumque sint.</p><p></p>Ad deleniti facilis at quia. Qui non qui ipsam nulla aliquid soluta.', '2021-03-01 22:04:38'),
(114, 33, 'Christophe-Maurice Leveque', '<p>Adipisci earum tenetur iusto quisquam aspernatur. Mollitia veniam ducimus sed dolorem. Laboriosam fuga facilis quasi aut ipsum accusantium ut.</p><p></p>Quisquam perspiciatis nihil facere et vitae est voluptas. Qui quibusdam voluptas voluptatem asperiores. Voluptatem fugit deleniti quasi sunt hic hic. Dolor enim quo optio optio qui debitis quos.', '2021-03-25 10:59:13'),
(115, 33, 'Jeanne Da Costa-Barbe', '<p>Excepturi eaque eius nam eius deleniti molestiae. Asperiores molestiae iste et voluptas laborum dicta. Ullam doloremque reprehenderit maxime et voluptatum enim.</p><p></p>Itaque accusamus qui quos sit beatae est. Qui maxime laboriosam delectus ea sed aspernatur. Totam molestiae nobis qui optio maiores. Voluptas voluptas aut aut aut impedit et.', '2021-04-13 22:11:25'),
(116, 44, 'Claudine Charles', '<p>Saepe ipsum id voluptas. Molestias nisi consequatur officia sed illo nisi incidunt. Repellendus totam totam magnam repellendus.</p><p></p>Cum mollitia itaque sit laborum vel magni. Eius magnam sit nobis hic veniam non. Vitae voluptatem veritatis eius inventore.', '2021-05-28 08:55:14'),
(117, 44, 'Lucie Roche-Pascal', '<p>Optio ex corporis quibusdam. Quibusdam commodi voluptates mollitia itaque libero modi.</p><p></p>Et eos minus distinctio dolores in mollitia libero. Hic recusandae porro aut. Fugiat deserunt totam nobis incidunt nesciunt. Eum at quasi accusantium nisi.', '2021-06-02 20:41:13'),
(123, 35, 'Margaux Le Descamps', '<p>Sed illum quas voluptatem qui omnis. Qui et non velit est atque cum. Dolores molestias veritatis facilis esse officiis.</p><p></p>Assumenda odio ut aut dolor. Sit doloribus et possimus quia. Accusantium quo quasi ratione consequatur aliquid aut saepe.', '2021-02-18 19:23:09'),
(124, 35, 'Thierry Rey', '<p>Rerum eum sint animi et. Repellendus quo mollitia non nihil autem est. Culpa iste nemo aut magni nobis.</p><p></p>Sint dolor ducimus laboriosam excepturi quod nemo. Sed eos sit praesentium in omnis.', '2021-01-03 11:01:10'),
(125, 35, 'Hélène-Véronique Poulain', '<p>Aliquam expedita nostrum provident dolorem vitae autem eligendi. Impedit voluptatem sit numquam sit sequi. Quia sed cupiditate ut.</p><p></p>Culpa molestiae repellat repudiandae. Quia in dolor minus eaque. Qui aliquid impedit quaerat. Quis esse ea dolorem soluta sapiente sunt.', '2021-03-17 08:03:03'),
(126, 35, 'Augustin-Dominique Chretien', '<p>Possimus occaecati assumenda magni repudiandae voluptatem sed. Aut ut delectus asperiores ut fugit. Voluptatem autem recusandae fugiat delectus facilis.</p><p></p>Minus eos in nihil ut aut nam quis. Eum sit dolores quaerat in aut laudantium libero. Dicta ipsum quae temporibus aut blanditiis. Omnis culpa et similique aut mollitia debitis.', '2021-04-02 16:30:19'),
(127, 35, 'Augustin-William Fernandes', '<p>Temporibus enim tenetur porro optio id asperiores. Ab sapiente sed odit vel et non. Ratione sit quidem laboriosam. Odio soluta totam perferendis veritatis aspernatur nihil et.</p><p></p>Modi dolores harum soluta in ratione. Ut recusandae fugit impedit facere officia officiis ut sed. Suscipit deleniti ipsam consectetur blanditiis. Blanditiis saepe natus architecto consequatur.', '2021-04-09 14:04:55'),
(128, 43, 'Élise Prevost', '<p>A similique quo voluptas. Excepturi rerum exercitationem ea rem voluptatibus. Recusandae quas quisquam inventore sit temporibus a. Facere voluptas aspernatur quasi laborum est quia.</p><p></p>Autem reprehenderit qui et atque consequatur aut eius. Autem ut harum rerum voluptatem officiis repellat maiores quisquam. Quis aut omnis inventore id asperiores voluptate soluta magnam. Aperiam beatae tempora inventore omnis porro vero.', '2021-05-21 17:54:43'),
(129, 36, 'Catherine Nguyen', '<p>Voluptate expedita autem vero recusandae dicta harum. Accusantium vel odit ut excepturi enim voluptas. Id fuga sint necessitatibus provident quos. Officia qui unde modi sint.</p><p></p>Est aut placeat accusamus nihil ad rerum. Voluptatibus consequatur magnam veniam quisquam. Incidunt beatae occaecati laboriosam.', '2021-03-09 09:18:38'),
(130, 36, 'Patrick Dumas', '<p>Doloribus quam facilis ea corporis corrupti quaerat. Voluptas tempore in iusto. Maxime quos reprehenderit ratione voluptatem quaerat voluptatum explicabo ut. Nihil laboriosam quasi minus libero repudiandae.</p><p></p>Quis eaque quia quam harum dolores accusamus vel. Odit id ut at quia iste ut rerum. Saepe aut harum et non explicabo ut dolor. Est reprehenderit ipsum quia ex.', '2021-03-16 13:08:50'),
(131, 36, 'Aimée Dupont', '<p>Beatae nam omnis sint eum. Eius impedit dolore non in aspernatur amet consequuntur. Autem a molestias deserunt est velit dolorum commodi.</p><p></p>Ab reprehenderit quia consequuntur possimus non laborum minima. Nostrum et dignissimos dignissimos omnis vero non est.', '2021-03-22 03:01:47'),
(132, 36, 'Astrid-Margaud Marchand', '<p>Dolor sit voluptas voluptatibus voluptatem. Impedit vitae dolorem omnis numquam. Atque consequatur repudiandae est beatae dolor et. Sunt earum beatae vitae.</p><p></p>Numquam hic aut eveniet. Modi aliquam ut doloribus voluptatem accusamus maiores laudantium. In facere ducimus saepe. Est ducimus et in dignissimos saepe reiciendis vero.', '2021-04-06 01:59:50'),
(133, 36, 'Alexandre Chauveau', '<p>Beatae in dolor dolor impedit suscipit ducimus. Pariatur consequatur repellat atque similique sit explicabo.</p><p></p>Veniam laboriosam ut maiores et cupiditate unde. Et maxime suscipit voluptatum alias minus provident. Non et non quisquam perferendis illum qui rerum. Velit minus tempora optio rerum eos.', '2021-04-12 22:08:09'),
(134, 36, 'Susan Delahaye', '<p>Cumque exercitationem et esse. Quaerat qui suscipit sed eaque at natus. Est ut ut consequatur vel qui qui.</p><p></p>Quae vel sit et aperiam modi repellendus consequuntur. Qui est quis debitis aperiam voluptas dolore dolores quae. Ad reiciendis optio est explicabo error nulla et doloremque. Autem molestias vel rem porro.', '2021-05-15 09:35:53'),
(135, 43, 'Henri Le Pons', '<p>Est ad exercitationem tempore dolorum. Exercitationem modi accusamus nulla cum eos corrupti. Non ut aspernatur minus deserunt ratione. Eaque vel aut deleniti.</p><p></p>Dolorum dolor at rem voluptatem et accusantium. Et sapiente non voluptas rerum voluptatibus debitis enim. Est consequatur error illo laborum laborum.', '2021-05-22 08:30:25'),
(136, 37, 'Dominique Marty', '<p>Illum natus esse iste vitae qui necessitatibus. Autem enim voluptates saepe soluta distinctio. Et aperiam ratione sunt consequuntur qui enim exercitationem. Enim nesciunt rerum totam maiores aut.</p><p></p>Id sunt quo ea veritatis. Praesentium esse voluptas ullam natus id ipsa. Enim est aut tempore animi. Beatae dolorum quibusdam ut aut voluptatibus aliquid.', '2021-03-24 11:32:35'),
(137, 37, 'Théodore-Matthieu Cohen', '<p>Molestiae ullam vel ab libero eos. Modi eum nam esse est doloremque. Fugiat voluptates molestiae et quo a in voluptatum. Occaecati dolore laboriosam repellendus quia assumenda dolorem eos.</p><p></p>Consequatur quidem eos aliquam ut esse. Similique enim aut vero sed aperiam. Voluptate voluptas non porro rem numquam. Deserunt aut voluptatum velit accusamus sed.', '2021-03-29 08:02:25'),
(138, 37, 'Théodore Pottier', '<p>Tempora voluptatem vitae facere illo reprehenderit laudantium tempora. Quis non sit et nesciunt rerum velit maiores. Optio sit mollitia voluptatem eius voluptatibus aperiam voluptates cupiditate. Officia voluptatum molestiae enim et dignissimos optio.</p><p></p>Qui vel omnis nesciunt officiis cupiditate sint non. Amet officiis beatae doloremque ipsum deserunt totam. Adipisci quibusdam ullam dolores quia doloribus cum et.', '2021-04-04 02:50:09'),
(139, 37, 'Thibault Dijoux', '<p>Nihil asperiores ut quaerat dolores. Accusantium suscipit officia aliquid earum.</p><p></p>At incidunt nulla aut fugit autem error est. Molestiae sint sit unde sunt delectus vero. Rerum dicta velit magni adipisci sit consectetur. Ex nulla tempora omnis ut.', '2021-04-29 01:51:05'),
(140, 37, 'Constance de la Mathieu', '<p>Inventore aut nobis sit est molestiae. Quibusdam tenetur natus distinctio praesentium. Enim occaecati rerum eaque maiores fuga.</p><p></p>Velit vitae maiores rerum aut nobis. At saepe debitis est eveniet ipsum vitae.', '2021-05-21 08:42:24'),
(141, 44, 'Bernadette-Marcelle Gaudin', '<p>Asperiores voluptatem et repudiandae tenetur. Dignissimos id quis recusandae sequi cumque quas. Et aut aperiam asperiores. Ut amet eum aut eius aut. Perferendis voluptas quia soluta distinctio suscipit sit dicta vel.</p><p></p>Tempora aperiam mollitia fugit. Alias ad deleniti earum doloribus ut dignissimos quis est. Optio aliquid quia quia nihil.', '2021-06-05 01:18:33'),
(142, 44, 'Victor Delahaye', '<p>Libero asperiores et aut odio voluptatem et. Eius aut similique minima dolorum enim ut exercitationem consequatur. Expedita expedita et nobis facilis ex. Dignissimos ullam tenetur natus voluptatibus neque ex.</p><p></p>Qui impedit quia voluptas atque hic. Veritatis nostrum cum autem voluptatem laborum sed dolor. Quibusdam est nihil est veritatis sequi asperiores.', '2021-06-10 08:51:28'),
(144, 38, 'Laure Hebert', '<p>Suscipit libero eos dolor officia ipsum ex aperiam. Deserunt architecto voluptatem maiores alias et et occaecati. Ipsum in tempore et consectetur ducimus nihil.</p><p></p>Ad minus excepturi voluptas ea inventore. Voluptatem magnam aut ducimus est nihil nobis ipsam. Harum consequatur nostrum corrupti eos voluptas. Et voluptatem excepturi quaerat vero.', '2021-04-03 04:33:57'),
(145, 38, 'Nicolas Fleury', '<p>Optio facere libero ea quas voluptates ullam tempora nihil. Sed possimus voluptatem non animi autem eos vel. Consequatur ut laudantium esse aut facere. Modi omnis est aspernatur quis qui magnam culpa.</p><p></p>Repellat vel iure expedita molestiae praesentium. Excepturi laboriosam est iure. Unde culpa eaque praesentium magni. Ex iusto facilis perferendis fugiat occaecati.', '2021-04-14 22:51:08'),
(146, 38, 'André Ledoux', '<p>Sint libero exercitationem non ut. Exercitationem praesentium adipisci sint dolor eos. Incidunt cumque occaecati quidem doloribus et voluptate quis vel. Omnis debitis natus ex voluptatum quia. Et ut iste qui aut praesentium exercitationem nam voluptates.</p><p></p>Mollitia accusantium at quis vitae. Placeat libero ipsam sunt ratione quos enim incidunt laboriosam. Sed consectetur in in. Sint autem dolorem suscipit sed quis et.', '2021-04-29 17:29:16'),
(147, 38, 'François-Gilles Andre', '<p>Qui dolorum aperiam vel accusamus beatae et et. Porro quibusdam perferendis harum saepe est et repellat. Est quo voluptatem et possimus quod. Ipsam vitae doloribus et est neque omnis aut illum.</p><p></p>Est dolor voluptatum est vel adipisci. Ut vitae omnis ut et. Autem veniam aliquam vitae sint.', '2021-05-02 00:55:36'),
(148, 38, 'Isabelle Texier', '<p>Suscipit consequuntur dolorem quia quas quia magni. Qui doloremque ipsa eos quis. Et cupiditate sunt officiis delectus error.</p><p></p>Ipsa consequatur voluptate minima iste. Pariatur ad autem quas dolorum. Accusantium non amet repudiandae ab sint laudantium. Quis architecto debitis corporis voluptatum.', '2021-05-26 05:20:40'),
(149, 43, 'Adrien Dupuis-Cohen', '<p>Sed dolor sed officia fugiat id deserunt reiciendis. Et quo ut dolor velit hic. Natus at quia voluptatem.</p><p></p>Similique amet expedita deserunt eveniet rem tenetur quo. Quos et cum atque facere. A quia officiis id et occaecati possimus ratione. Quia non dolorem consequatur veritatis delectus odit.', '2021-05-27 12:51:22'),
(150, 28, 'Margaret Pereira', '<p>Est saepe maiores delectus mollitia. Aspernatur quasi porro suscipit aut. Harum quae quis temporibus incidunt et aut. Itaque dolores saepe aut repellat et.</p><p></p>Illo sed et repudiandae ad et incidunt omnis. Consectetur temporibus doloremque voluptatibus modi a pariatur dignissimos. Qui ipsam enim voluptas assumenda. Quam consequatur labore ut consectetur nobis.', '2021-02-24 02:17:34'),
(151, 43, 'Thibault Gallet', '<p>Libero unde temporibus voluptatum itaque sunt non. Sequi suscipit modi minima aspernatur accusantium. Alias et consequatur fuga omnis reiciendis. Quasi dolorem sunt architecto culpa quidem dolores.</p><p></p>Perferendis suscipit et omnis delectus asperiores voluptas a. Itaque aut non quis. Cupiditate autem et est qui sunt voluptas.', '2021-06-03 04:18:15'),
(152, 39, 'Sylvie Gregoire-Guilbert', '<p>Et veritatis omnis voluptas quod. Sed et odio molestiae. Nesciunt voluptate et in saepe ut placeat est eaque. Doloribus exercitationem necessitatibus ab laborum quaerat neque pariatur.</p><p></p>Vero ducimus labore qui modi. Eum quasi molestiae qui sit tempore. Asperiores impedit rerum perspiciatis nam optio et. Aliquam ut in veniam qui libero.', '2021-04-17 03:54:10'),
(153, 39, 'Benoît Thibault', '<p>Non eius nulla occaecati ut aliquid deleniti. Fugiat culpa enim quia qui. Omnis quos accusantium ad sapiente.</p><p></p>Quos voluptatum omnis accusantium impedit totam dolorem. Sit in neque id ex illo debitis. Iste est est similique facere. Similique qui ullam vel et voluptas omnis.', '2021-04-23 20:58:16'),
(154, 39, 'Nath Gosselin', '<p>Officia blanditiis sed commodi quibusdam iure omnis. Quisquam voluptatem ea exercitationem dicta sapiente. Ipsam non consequuntur qui debitis quo.</p><p></p>Quae harum sunt dolore quia deleniti. Aut vel distinctio libero ea sint. Nesciunt consequatur distinctio ipsam possimus a. Eaque error aliquid quos.', '2021-05-01 20:34:48'),
(155, 39, 'Henriette Leclercq', '<p>Ut aliquam voluptate odit sed voluptates sed laborum quaerat. Laboriosam aliquid quis ab. Eligendi exercitationem placeat modi. Ullam sapiente mollitia deserunt praesentium nam.</p><p></p>Id aut est sequi expedita exercitationem id. Corporis tempora ducimus accusantium alias est et sapiente. Magni aperiam rem illum iusto autem. Laudantium voluptas suscipit impedit atque molestiae fuga ut.', '2021-05-14 15:51:23'),
(156, 40, 'Antoine Ferreira', '<p>Asperiores sed ex doloremque est sit nesciunt consequatur. Labore in omnis ut voluptates nulla similique dolorem debitis. Placeat amet adipisci assumenda cumque.</p><p></p>Consequatur amet et optio omnis. Et occaecati laboriosam aut at esse minus aut. Dolores enim eligendi minus quaerat enim. Repellat iste corporis aut assumenda dolorem sed aperiam.', '2021-05-04 11:53:28'),
(157, 40, 'Matthieu Bonneau', '<p>Qui nobis doloribus consequatur tempore possimus. Cumque illo et accusantium eius ratione rerum sunt. Qui quis mollitia veniam aut sed magni tenetur cupiditate. Iste magni autem voluptatem qui. Et qui aliquam esse quas.</p><p></p>Libero magnam minima accusamus incidunt in. Quis est doloribus placeat est. Totam est rerum quasi voluptatem non perspiciatis tempore. Et vero animi quas maiores vero eum at.', '2021-05-15 09:06:53'),
(158, 40, 'Raymond Lelievre', '<p>Omnis voluptates quibusdam voluptatum quibusdam cupiditate ipsa quis voluptatem. Omnis hic nam vel tempore blanditiis est. Consequuntur voluptate voluptate aperiam qui.</p><p></p>Omnis quisquam exercitationem impedit architecto omnis. Explicabo assumenda illo dolorem excepturi et. Enim id et explicabo accusantium tenetur et accusamus. Repellat porro laboriosam voluptatem blanditiis iure.', '2021-05-25 04:18:00'),
(159, 40, 'Marine Petit', '<p>Quia ipsa vero ullam incidunt. Impedit delectus dolor qui qui. Inventore quidem dolorum maxime vel fuga.</p><p></p>Quo omnis occaecati non omnis architecto. Est sequi itaque aliquid maxime deleniti qui in. Voluptas a ducimus sit repudiandae et illo.', '2021-05-31 23:54:08'),
(160, 40, 'Denise Briand', '<p>Delectus omnis consectetur quas nesciunt. Aliquid id voluptatem atque praesentium voluptatum illo eius eum. Excepturi molestiae fugit totam quos in sunt. Fuga sapiente vel consequatur quasi quod vel excepturi. Molestias laboriosam deleniti laboriosam id blanditiis.</p><p></p>Voluptas voluptas provident accusamus nesciunt ea delectus. Non quas ab placeat. Molestias commodi a reprehenderit nam omnis culpa. Dolorum in quia est dicta id officia.', '2021-06-05 14:42:18');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210310084612', '2021-03-10 09:46:12', 32),
('DoctrineMigrations\\Version20210310092844', '2021-03-10 10:28:44', 32),
('DoctrineMigrations\\Version20210311151356', '2021-03-11 16:16:35', 114),
('DoctrineMigrations\\Version20210311155509', '2021-03-11 16:56:02', 156),
('DoctrineMigrations\\Version20210315090942', '2021-03-15 10:14:01', 100),
('DoctrineMigrations\\Version20210316100305', '2021-03-16 11:04:50', 67);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password`, `roles`) VALUES
-- to login : admin / passwordadmin
(9, 'admin@test.com', 'admin', '$2y$10$Ap1psYarM0/xipUMcr1E.egn/ljF57x25/JHagLAWvdpAy7GQpy5a', '[\"ROLE_ADMIN\"]'),
-- to login : user / password
(10, 'user@test.fr', 'user', '$2y$10$IXfk5MC0GTZJqwL87GtA8eK1XsjZn0lsHqaJC51XFpaa4f4xQEfuC', '[\"ROLE_USER\"]'),
(11, 'you@you.fr', 'you', '$2y$13$rf6yYGB/Vy8GQJ1XfXUyfeYBRI5yNBjftyqeigYxlN.QbvZSkycw2', '[\"ROLE_USER\"]');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_23A0E6612469DE2` (`category_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526C7294869C` (`article_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E6612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
