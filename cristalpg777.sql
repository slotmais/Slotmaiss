-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 19/02/2025 às 04:14
-- Versão do servidor: 10.11.10-MariaDB-log
-- Versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u582538983_Teste456a`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `email` text NOT NULL,
  `contato` text DEFAULT NULL,
  `senha` text NOT NULL,
  `nivel` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `token_recover` text DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `2fa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `admin_users`
--

INSERT INTO `admin_users` (`id`, `nome`, `email`, `contato`, `senha`, `nivel`, `status`, `token_recover`, `avatar`, `2fa`) VALUES
(1, 'PixelPlay', 'pixelplay@admin.com', NULL, '$2y$10$xJ6Ui.I/ilmQPKYA93E6eeTBZ8beRPplDVZLwQzFI35LPHJGpZz02', 0, 1, NULL, NULL, '470120');

-- --------------------------------------------------------

--
-- Estrutura para tabela `afiliados_config`
--

CREATE TABLE `afiliados_config` (
  `id` int(11) NOT NULL,
  `cpaLvl1` decimal(10,2) DEFAULT NULL,
  `cpaLvl2` decimal(10,2) DEFAULT NULL,
  `cpaLvl3` decimal(10,2) DEFAULT NULL,
  `chanceCpa` int(11) NOT NULL,
  `revShareFalso` decimal(5,2) DEFAULT NULL,
  `revShareLvl1` decimal(5,2) DEFAULT NULL,
  `revShareLvl2` decimal(5,2) DEFAULT NULL,
  `revShareLvl3` decimal(5,2) DEFAULT NULL,
  `minDepForCpa` decimal(10,2) DEFAULT NULL,
  `minResgate` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `afiliados_config`
--

INSERT INTO `afiliados_config` (`id`, `cpaLvl1`, `cpaLvl2`, `cpaLvl3`, `chanceCpa`, `revShareFalso`, `revShareLvl1`, `revShareLvl2`, `revShareLvl3`, `minDepForCpa`, `minResgate`) VALUES
(1, 0.00, 0.00, 0.00, 50, 0.00, 0.00, 0.00, 0.00, 10.00, 150.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `apipragmatic`
--

CREATE TABLE `apipragmatic` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `agent_code` text DEFAULT NULL,
  `agent_token` text DEFAULT NULL,
  `agent_secret` text DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `apipragmatic`
--

INSERT INTO `apipragmatic` (`id`, `url`, `agent_code`, `agent_token`, `agent_secret`, `ativo`) VALUES
(1, 'https://api.supremabet.online', 'china23', 'f2e678c417c9f5de60f06f37fad73588', '49cab6f89cb237b6ea1dd9ab41cdf619', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp(),
  `img` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `banner`
--

INSERT INTO `banner` (`id`, `titulo`, `criado_em`, `img`, `status`) VALUES
(1, 'Banner 1', '2024-06-28 18:10:47', '1738114179_banner_1737020118658.webp', 1),
(2, 'Banner 2', '2024-06-28 18:08:02', '1738114189_banner_1737020133093.webp', 1),
(3, 'Banner 3', '2024-06-28 18:08:02', '1738114195_banner_1737020154958.webp', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `bau`
--

CREATE TABLE `bau` (
  `id` int(11) NOT NULL,
  `num` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `is_get` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `bau`
--

INSERT INTO `bau` (`id`, `num`, `status`, `token`, `is_get`) VALUES
(484041, '', 'user novo', '176ed1c6d4e61ee4d58818e6fb5a519e', 0),
(484042, '', 'user novo', 'd37555dd263ec51cf313351a271648ee', 0),
(484043, '', 'user novo', '5da72dbfb796e29cadd5675351fd3283', 0),
(484044, '', 'user novo', 'c0e55586114eafd52c9866b857e5400f', 0),
(484045, '', 'user novo', '252e05d88b0b6f245d83984914c2c038', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `beeplay`
--

CREATE TABLE `beeplay` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `agent_code` text DEFAULT NULL,
  `agent_token` text DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `beeplay`
--

INSERT INTO `beeplay` (`id`, `url`, `agent_code`, `agent_token`, `ativo`) VALUES
(1, 'https://api.beeplay.top', 'k58qbaQDzorpDHwGfInL4XKtjcCFvR', 'JJUwHBZW9rD1zwPAzq3B5L600vFCcB', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `bspay`
--

CREATE TABLE `bspay` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `client_id` text DEFAULT NULL,
  `client_secret` text DEFAULT NULL,
  `atualizado` varchar(45) DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `bspay`
--

INSERT INTO `bspay` (`id`, `url`, `client_id`, `client_secret`, `atualizado`, `ativo`) VALUES
(1, 'https://nexapay.digital', 'admin_9957382542', '03a3741c6cb6ef459cb07b14d56e5a195879953fce05f994ad0d8a68ff318453', NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `nome_site` text DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `grupoplataforma` varchar(255) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `telegram` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `whatsapp` text DEFAULT NULL,
  `suporte` text DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `sublogo` text DEFAULT NULL,
  `facebookads` text DEFAULT NULL,
  `rodapelogo` text DEFAULT NULL,
  `favicon` text DEFAULT NULL,
  `logoapp` text DEFAULT NULL,
  `googleAnalytics` text DEFAULT NULL,
  `minplay` int(11) DEFAULT NULL,
  `minsaque` double DEFAULT NULL,
  `maxsaque` int(11) DEFAULT 1000,
  `saque_automatico` int(11) NOT NULL,
  `rollover` int(11) DEFAULT NULL,
  `mindep` text DEFAULT NULL,
  `jackpot` int(11) DEFAULT NULL,
  `numero_jackpot` int(11) DEFAULT NULL,
  `jackpot_custom` text DEFAULT NULL,
  `cor_padrao` varchar(45) NOT NULL,
  `background_padrao` varchar(50) DEFAULT NULL,
  `custom_css` longtext NOT NULL,
  `texto` varchar(45) NOT NULL,
  `img_seo` text DEFAULT NULL,
  `keyword` text DEFAULT NULL,
  `marquee` text DEFAULT NULL,
  `status_topheader` int(11) NOT NULL DEFAULT 0,
  `cor_topheader` varchar(48) DEFAULT '#ed1c24',
  `niveisbau` text DEFAULT NULL,
  `qntsbaus` int(11) DEFAULT NULL,
  `nvlbau` int(11) DEFAULT NULL,
  `pessoasbau` int(11) DEFAULT NULL,
  `tema` int(11) DEFAULT NULL,
  `versao_app_android` text DEFAULT NULL,
  `versao_app_ios` text DEFAULT NULL,
  `mensagem_app` text DEFAULT NULL,
  `link_app_android` text DEFAULT NULL,
  `link_app_ios` text DEFAULT NULL,
  `broadcast` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `config`
--

INSERT INTO `config` (`id`, `nome`, `nome_site`, `descricao`, `grupoplataforma`, `logo`, `avatar`, `telegram`, `instagram`, `whatsapp`, `suporte`, `email`, `sublogo`, `facebookads`, `rodapelogo`, `favicon`, `logoapp`, `googleAnalytics`, `minplay`, `minsaque`, `maxsaque`, `saque_automatico`, `rollover`, `mindep`, `jackpot`, `numero_jackpot`, `jackpot_custom`, `cor_padrao`, `background_padrao`, `custom_css`, `texto`, `img_seo`, `keyword`, `marquee`, `status_topheader`, `cor_topheader`, `niveisbau`, `qntsbaus`, `nvlbau`, `pessoasbau`, `tema`, `versao_app_android`, `versao_app_ios`, `mensagem_app`, `link_app_android`, `link_app_ios`, `broadcast`) VALUES
(1, 'FACRISTALPG777', '', 'Aumente seu nível jogando na melhor! Os melhores jogos estão aqui!', 'FACRISTALPG777', 'logo_1738114104.webp', 'favicon.png.webp', '', '', '', NULL, '', '', 'PIXEL AQUI', NULL, 'favicon_1738113925.webp', 'logoapp_1738114118.webp', 'PIXEL AQUI', 1, 10, 10000, 5, 3, '10,20,30,40,50,60,70,90,100', 2, 5, NULL, '#0096DD', '#010e24', '', '', '154504365733.png', 'Cassino, plataforma chinesa, casa pagante', 'Prezados membros VIP: Bem-vindos à maior plataforma de jogos online do Brasil, Cristalpg777. Obrigado pelo apoio e confiança. Desejo boa sorte e ganhe grandes prêmios!', 0, '#0096dd', '10,20', 50, 5, 1, 21, '1.0.0.1', '1.0.0.2', 'MENSAGEM POPUP', 'https://google.com/', 'https://google.com/', 'FiveGaming');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cupom`
--

CREATE TABLE `cupom` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `tipo` int(11) NOT NULL DEFAULT 2,
  `valor` int(11) NOT NULL,
  `qtd` int(11) NOT NULL DEFAULT 0,
  `qtd_insert` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cupom`
--

INSERT INTO `cupom` (`id`, `nome`, `tipo`, `valor`, `qtd`, `qtd_insert`, `status`) VALUES
(1, 'Bônus de Depósito', 2, 1, 5, 15, 0),
(2, 'Bônus de Depósito 2x', 2, 30, 5, 15, 0),
(3, 'Bônus de Depósito 3x', 2, 40, 5, 20, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cupom_usados`
--

CREATE TABLE `cupom_usados` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_cupom` int(11) NOT NULL,
  `valor` int(11) NOT NULL DEFAULT 0,
  `data_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `financeiro`
--

CREATE TABLE `financeiro` (
  `id` int(11) NOT NULL,
  `usuario` int(11) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `bonus` decimal(10,2) DEFAULT NULL,
  `saldo_afiliados` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fiverscan`
--

CREATE TABLE `fiverscan` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `agent_code` text DEFAULT NULL,
  `agent_token` text DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `fiverscan`
--

INSERT INTO `fiverscan` (`id`, `url`, `agent_code`, `agent_token`, `ativo`) VALUES
(1, 'https://api.playfivers.com', '28fd0b9c-7004-46fd-8922-cebc96827215', 'efd02bfb-c25f-4631-a9aa-193d7daa342e', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `floats`
--

CREATE TABLE `floats` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp(),
  `img` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `floats`
--

INSERT INTO `floats` (`id`, `titulo`, `criado_em`, `img`, `status`) VALUES
(1, 'Float 1', '2024-06-28 18:10:47', 'float1.png', 1),
(2, 'Float 2', '2024-06-28 18:08:02', 'float2.gif', 1),
(3, 'Float 3', '2024-06-28 18:08:02', 'float3.gif', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `game_code` text NOT NULL,
  `game_name` text NOT NULL,
  `banner` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `provider` text DEFAULT NULL,
  `popular` int(11) NOT NULL DEFAULT 0,
  `type` text DEFAULT NULL,
  `game_type` int(11) DEFAULT NULL,
  `distribution` varchar(255) DEFAULT 'Clone'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `games`
--

INSERT INTO `games` (`id`, `game_code`, `game_name`, `banner`, `status`, `provider`, `popular`, `type`, `game_type`, `distribution`) VALUES
(1, 'fortune-tiger', 'Fortune Tiger', 'https://rcf-img-usa.img2058west008en08.com/gpmaster/49ac191a-8de3-4a17-937b-15b691588a1f.png', 1, 'PGSOFT', 1, 'slot', 3, 'Clone'),
(2, 'fortune-ox', 'Fortune Ox', 'https://rcf-img-usa.img2058west008en08.com/gpmaster/ff4b5977-3275-4be4-8a07-60e460b9aeb2.png', 1, 'PGSOFT', 1, 'slot', 3, 'Clone'),
(3, 'fortune-mouse', 'Fortune Mouse', 'https://rcf-img-usa.img2058west008en08.com/gpmaster/26f1f904-33b0-4596-8d7c-44ad0680a011.png', 1, 'PGSOFT', 1, 'slot', 3, 'Clone'),
(4, 'fortune-dragon', 'Fortune Dragon', 'https://rcf-img-usa.img2058west008en08.com/gpmaster/83d95944-dc1e-48bf-a37b-58df8a7123d7.png', 1, 'PGSOFT', 1, 'slot', 3, 'Clone'),
(5, 'fortune-rabbit', 'Fortune Rabbit', 'https://rcf-img-usa.img2058west008en08.com/gpmaster/33746d7e-1156-4b14-a267-57ddfc1cc96e.png', 1, 'PGSOFT', 1, 'slot', 3, 'Clone'),
(6, 'dragon-hatch2', 'Dragon Hatch 2', 'https://front-o1.jingdd.xyz/202409/acc17fd2-5a98-4274-b676-11104788c91a.png', 1, 'PGSOFT', 1, 'slot', 3, 'Clone'),
(7, 'cash-mania', 'Cash Mania', 'https://front-o1.jingdd.xyz/202409/6998aab9-c7c9-4f63-bcb8-cf64fad9c984.png', 1, 'PGSOFT', 1, 'slot', 3, 'Clone'),
(8, 'wild-bandito', 'Wild Bandito', 'https://rcf-img-usa.img2058west008en08.com/gpmaster/6f0ebabc-4af7-4223-bffa-947725b0eff8.png', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(9, 'wild-ape-3258', 'Wild Ape #3258', 'https://kto.kgp-cdn.com/kto/2024/04/02160717/Wild-Ape_2x-1-766x1024.jpg', 1, 'PGSOFT', 1, 'slot', 3, 'Clone'),
(10, 'fortune-gods', 'Fortune Gods', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11310.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(11, 'piggy-gold', 'Piggy Gold', 'https://rcf-img-usa.img2058west008en08.com/gpmaster/1c4aed70-f33c-41bf-9d91-ad7f39c17ed6.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(12, 'prosper-ftree	', 'Fortune Tree', 'https://kto.kgp-cdn.com/kto/2023/11/20132841/PGSOFTProsperity-Fortune-Tree-x-654d0aa821cb1-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(13, 'double-fortune', 'Double Fortune', 'https://fivegaming.net/uploads/48_pc.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'Clone'),
(14, 'diaochan', 'Honey Trap of Diao Chan', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11309.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(15, 'gem-saviour', 'Gem Saviour', 'https://pg-soft-games.xyz/banners/gem-saviour.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(16, 'medusa2', 'Medusa 2: The Quest of Perseus', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11312.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(17, 'medusa', 'Medusa 1: The Curse of Athena', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11316.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(18, 'hood-wolf', 'Hood vs Wolf', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11324.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(19, 'reel-love', 'Reel Love', 'https://pg-soft-games.xyz/banners/reel-love.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(20, 'win-win-won', 'Win Win Won', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11311.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(21, 'plushie-frenzy', 'Plushie Frenzy', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11319.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(22, 'hotpot', 'Hotpot', 'https://pg-soft-games.xyz/banners/hotpot-jackpot.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(23, 'dragon-legend', 'Dragon Legend', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11325.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(24, 'baccarat-deluxe', 'Baccarat Deluxe', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11332.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(25, 'hip-hop-panda', 'Hip Hop Panda', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11330.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(26, 'legend-of-hou-yi', 'Legend of Hou Yi', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11327.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(27, 'mr-hallow-win', 'Mr. Hallow-Win', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11326.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(28, 'prosperity-lion', 'Prosperity Lion', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11329.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(29, 'santas-gift-rush', 'Santa s Gift Rush', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11331.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(30, 'gem-saviour-sword', 'Gem Saviour Sword', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11333.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(31, 'jungle-delight', 'Jungle Delight', 'https://fivegaming.net/uploads/40_pc.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'Clone'),
(32, 'symbols-of-egypt', 'Symbols Of Egypt', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11335.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(33, 'ganesha-gold', 'Ganesha Gold', 'https://fivegaming.net/uploads/42_pc.jpg', 1, 'PGSOFT', 1, 'slot', 3, 'Clone'),
(34, 'emperors-favour', 'Emperor s Favour', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11336.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(35, 'journey-to-the-wealth', 'Journey to the Wealth', 'https://pg-soft-games.xyz/banners/journey-to-the-wealth.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(36, 'the-great-icescape', 'The Great Icescape', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11343.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(37, 'captains-bounty', 'Captain s Bounty', 'https://kto.kgp-cdn.com/kto/2023/11/20130441/Captains-Bountyx-654d0fef2f320-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(38, 'dragon-hatch', 'Dragon Hatch', 'https://kto.kgp-cdn.com/kto/2023/11/20130409/Dragon-Hatchx-654d1006bf135-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(39, 'vampires-charm', 'Vampire s Charm', 'https://cdn-cms.razed.com/game-assets/vertexst8/pgs/pgs-vampires-charm.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(40, 'ninja-vs-samurai', 'Ninja vs Samurai', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11349.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(41, '60', 'Leprechaun Riches', 'https://kto.kgp-cdn.com/kto/2023/11/20131711/Leprechaun-Richesx-654d0d2e75536-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(42, 'flirting-scholar', 'Flirting Scholar', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11348.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(43, 'gem-saviour-conquest', 'Gem Saviour Conquest', 'https://cdn-cms.razed.com/game-assets/vertexst8/pgs/pgs-gem-saviour-conquest.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(44, 'dragon-tiger-luck', 'Dragon Tiger Luck', 'https://fivegaming.net/uploads/63_pc.jpg', 1, 'PGSOFT', 1, 'slot', 3, 'Clone'),
(45, 'muay-thai-champion', 'Muay Thai Champion', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11350.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(46, 'mahjong-ways', 'Mahjong Ways', 'https://mediumrare.imgix.net/b2ea1e9d093897e77ee5cf107213b22591b60a8d221080f698b94718bce53f28?&dpr=2&format=auto&auto=format&q=50', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(47, 'shaolin-soccer', 'Shaolin Soccer', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11357.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(48, 'bikini-paradise', 'Bikini Paradise', 'https://fivegaming.net/uploads/69_app.png', 0, 'PGSOFT', 0, 'slot', 3, 'Clone'),
(49, 'candy-burst', 'Candy Burst', 'https://kto.kgp-cdn.com/kto/2023/11/20132804/PGSOFTCandy-Burst-x-654d0ac4a11e0-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(50, 'cai-shen-wins', 'Cai Shen Wins', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11358.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(51, 'egypts-book-mystery', 'Egypt s Book of Mystery', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11362.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(52, 'mahjong-ways2', 'Mahjong Ways 2', 'https://mediumrare.imgix.net/bfffecea030a24a526007bbcfc231774dcb7560b421ceef1e9917ce7736ea6bc?&dpr=2&format=auto&auto=format&q=50', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(53, 'ganesha-fortune', 'Ganesha Fortune', 'https://kto.kgp-cdn.com/kto/2023/11/20130436/Ganesha-Fortunex-654d0ff1a4d62-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(54, 'dreams-of-macau', 'Dreams of Macau', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11366.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(55, 'circus-delight', 'Circus Delight', 'https://pg-soft-games.xyz/banners/circus-delight.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(56, 'phoenix-rises', 'Phoenix Rises', 'https://kto.kgp-cdn.com/kto/2023/11/20132845/PGSOFTPhoenix-Risesx-654d0aa6887d4-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(57, 'wild-fireworks', 'Wild Fireworks', 'https://kto.kgp-cdn.com/kto/2023/11/20133029/PGSOFTWILDFIREWORKSx-654d0a4f0a98a-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(58, 'queen-bounty', 'Queen of Bounty', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11610.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(59, 'genies-wishes', 'Genie s 3 Wishes', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11371.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(60, 'galactic-gems', 'Galactic Gems', 'https://kto.kgp-cdn.com/kto/2024/09/18150159/Galactic-Gems_2x-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(61, 'treasures-aztec', 'Treasures of Aztec', 'https://kto.kgp-cdn.com/kto/2024/06/17132846/Treasures-of-Aztec_2x-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(62, 'jewels-prosper', 'Jewels of Prosperity', 'https://kto.kgp-cdn.com/kto/2023/11/20131533/Jewels-of-Prosperityx-654d0d8038759-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(63, 'lucky-neko', 'Lucky Neko', 'https://pg-soft-games.xyz/banners/lucky-neko.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(64, 'sct-cleopatra', 'Secrets of Cleopatra', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11608.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(65, 'gdn-ice-fire', 'Guardians of Ice & Fire', 'https://kto.kgp-cdn.com/kto/2023/11/20131531/Guardian-of-Ice-and-Firex-654d0d8286b6b-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(66, 'thai-river', 'Thai River Wonders', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11607.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(67, 'opera-dynasty', 'Opera Dynasty', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11616.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(68, 'bali-vacation', 'Bali Vacation', 'https://kto.kgp-cdn.com/kto/2023/11/20132800/PGSOFTBali-Vacationx-654d0ac639682-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(69, 'majestic-ts', 'Majestic Treasures', 'https://kto.kgp-cdn.com/kto/2023/11/20130421/Majestic-Treasuresx-654d0ffe4463e-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(70, 'jack-frosts', 'Jack Frost s Winter', 'https://cdn-cms.razed.com/game-assets/vertexst8/pgs/pgs-jack-frosts-winter.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(71, 'candy-bonanza', 'Candy Bonanza', 'https://kto.kgp-cdn.com/kto/2023/11/20131455/Candy-Bonanzax-654d0d9fa1420-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(72, 'rise-of-apollo', 'Rise of Apollo', 'https://pg-soft-games.xyz/banners/rise-of-apollo.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(73, 'mermaid-riches', 'Mermaid Riches', 'https://pg-soft-games.xyz/banners/mermaid-riches.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(74, 'crypto-gold', 'Crypto Gold', 'https://pg-soft-games.xyz/banners/crypto-gold.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(75, 'heist-stakes', 'Heist Stakes', 'https://kto.kgp-cdn.com/kto/2023/11/20131526/Heist-Stakesx-654d0d85215b0-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(76, 'ways-of-qilin', 'Ways of the Qilin', 'https://cdn2.softswiss.net/luckydreams/i/s3/relax/WaysOftheQilin.webp', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(77, 'lgd-monkey-kg', 'Legendary Monkey King', 'https://kto.kgp-cdn.com/kto/2023/11/20130431/Legendary-Monkey-Kingx-654d0ff57980f-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(78, 'buffalo-win', 'Buffalo Win', 'https://kto.kgp-cdn.com/kto/2023/11/20131626/Buffalo-Winx-654d0d4edf61f-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(79, 'jurassic-kdm', 'Jurassic Kingdom', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/12063.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(80, 'oriental-pros', 'Oriental Prosperity', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/12502.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(81, 'crypt-fortune', 'Raider Jane s Crypt of Fortune', 'https://kto.kgp-cdn.com/kto/2023/11/20133021/PGSOFTRaider-Janes-Crypt-of-Fortune-x-654d0a5333b2a-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(82, 'emoji-riches', 'Emoji Riches', 'https://kto.kgp-cdn.com/kto/2023/11/20132817/PGSOFTEmoji-Richesx-654d0abb52337-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(83, 'sprmkt-spree', 'Supermarket Spree', 'https://kto.kgp-cdn.com/kto/2023/11/20132522/PGSOFTSupermarket-Spreex-654d0b5c6d91a-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(84, 'cocktail-nite', 'Cocktail Nights', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/12309.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(85, 'mask-carnival', 'Mask Carnival', 'https://pg-soft-games.xyz/banners/mask-carnival.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(86, 'spirit-wonder', 'Spirited Wonders', 'https://kto.kgp-cdn.com/kto/2023/11/20131524/Spirited-Wondersx-654d0d8a0f5a7-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(87, 'queen-banquet', 'The Queen s Banquet', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/12595.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(88, 'dest-sun-moon', 'Destiny of Sun & Moon', 'https://kto.kgp-cdn.com/kto/2023/11/20132140/Destiny-of-Sun-and-Moonx-654d0c26d75f0-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(89, 'garuda-gems', 'Garuda Gems', 'https://kto.kgp-cdn.com/kto/2023/11/20132820/PGSOFTGaruda-Gemsx-654d0ab9aa238-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(90, 'rooster-rbl', 'Rooster Rumble', 'https://kto.kgp-cdn.com/kto/2023/11/20131127/Rooster-rumblex-654d0e62c78b5-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(91, 'battleground', 'Battleground Royale', 'https://kto.kgp-cdn.com/kto/2023/11/20130444/Battleground-Royalex-654d0fed7f77b-766x1024.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(92, 'btrfly-blossom', 'Butterfly Blossom', 'https://mediumrare.imgix.net/f2cf678febd959e953600562ec6549fd8cd58a882c65d1fd97ce892679fd12d7?&dpr=2&format=auto&auto=format&q=50', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(93, 'speed-winner', 'Speed Winner', 'https://pg-soft-games.xyz/banners/speed-winner.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(94, 'legend-perseus', 'Legend of Perseus', 'https://pg-soft-games.xyz/banners/legend-of-perseus.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(95, 'win-win-fpc', 'Win Win Fish Prawn Crab', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/12724.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(96, 'lucky-piggy', 'Lucky Piggy', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/12725.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(97, 'wild-coaster', 'Wild Coaster', 'https://pg-soft-games.xyz/banners/wild-coaster.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(98, 'wild-bounty-sd', 'Wild Bounty Showdown', 'https://pg-soft-games.xyz/banners/wild-bounty-showdown.jpg', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(99, 'prosper-ftree', 'Prosperity Fortune Tree', 'https://mediumrare.imgix.net/0e266d67bbb5dd084ec7f70bc758b502a52a258692009e6544c2bb61267f7468?&dpr=2&format=auto&auto=format&q=50', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(100, 'totem-wonders', 'Totem Wonders', 'https://pg-soft-games.xyz/banners/totem-wonders.png', 0, 'PGSOFT', 0, 'slot', 3, 'PlayFiver'),
(101, 'asgardian-rs', 'Asgardian Rising', 'https://kto.kgp-cdn.com/kto/2023/11/20132136/Asgardian-Risingx-654d0c288ac84-766x1024.jpg', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(102, 'alchemy-gold', 'Alchemy Gold', 'https://kto.kgp-cdn.com/kto/2023/11/20131452/alchemy-goldx-654d0da2d0d3e-766x1024.jpg', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(103, 'diner-delights', 'Diner Delights', 'https://kto.kgp-cdn.com/kto/2023/11/20132814/PGSOFTDiner-Delights-x-654d0abe76428-766x1024.jpg', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(104, 'hawaiian-tiki', 'Hawaiian Tiki', 'https://pg-soft-games.xyz/banners/hawaiian-tiki.png', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(105, 'fruity-candy', 'Fruity Candy', 'https://pg-soft-games.xyz/banners/fruity-candy.jpg', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(106, 'midas-fortune', 'Midas Fortune', 'https://kto.kgp-cdn.com/kto/2023/11/20130428/Midas-Fortunex-654d0ff736045-766x1024.jpg', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(107, 'bakery-bonanza', 'Bakery Bonanza', 'https://kto.kgp-cdn.com/kto/2023/11/20130929/Bakery-Bonanzax-654d0ee0c7f7c-766x1024.jpg', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(108, 'rave-party-fvr', 'Rave Party Fever', 'https://pg-soft-games.xyz/banners/rave-party-fever.png', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(109, 'myst-spirits', 'Mystical Spirits', 'https://pg-soft-games.xyz/banners/mystical-spirits.jpg', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(110, 'songkran-spl', 'Songkran Splash', 'https://kto.kgp-cdn.com/kto/2023/11/20131258/Songkran-Splashx-654d0e086b346-766x1024.jpg', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(111, 'cruise-royale', 'Cruise Royale', 'https://mediumrare.imgix.net/e50dd03ed8da7be3438b3158d00ec241dd6565535d30485c100ba07043fbb2b3?q=85', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(112, 'ult-striker', 'Ultimate Striker', 'https://pg-soft-games.xyz/banners/ultimate-striker.jpg', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(113, 'pinata-wins', 'Pinata Wins', 'https://pg-soft-games.xyz/banners/pinata-wins.png', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(114, 'spr-golf-drive', 'Super Golf Drive', 'https://kto.kgp-cdn.com/kto/2023/11/20131817/Super-Golf-Drivex-654d0cf2987be-766x1024.jpg', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(115, 'ninja-raccoon', 'Ninja Raccoon Frenzy', 'https://pg-soft-games.xyz/banners/ninja-raccoon-frenzy.png', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(116, 'forge-wealth', 'Forge of Wealth', 'https://pg-soft-games.xyz/banners/forge-of-wealth.png', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(117, 'wild-heist-co', 'Wild Heist Cashout', 'https://pg-soft-games.xyz/banners/wild-heist-cashout.jpg', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(118, 'gladi-glory', 'Gladiator s Glory', 'https://pg-soft-games.xyz/banners/gladiator-s-glory.jpg', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(119, 'mafia-mayhem', 'Mafia Mayhem', 'https://pg-soft-games.xyz/banners/mafia-mayhem.png', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(120, 'safari-wilds', 'Safari Wilds', 'https://pg-soft-games.xyz/banners/safari-wilds.png', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(121, 'lucky-clover', 'Lucky Clover Lady', 'https://pg-soft-games.xyz/banners/lucky-clover-lady.png', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(122, 'anubis-wrath', 'Anubis Wrath', 'https://kto.kgp-cdn.com/kto/2024/05/27143849/Anubis-Wrath_2x-766x1024.jpg', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(123, 'gemstones-gold', 'Gemstones Gold', 'https://pg-soft-games.xyz/banners/gemstone-gold.jpg', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(124, 'mystic-potions', 'Mystic Potion', 'https://pg-soft-games.xyz/banners/mystic-potions_web-banner_en2.jpg', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(125, 'chicky-run', 'Chicky Run', 'https://cdn-cms.razed.com/chicky-run.jpg', 1, 'PGSOFT', 1, 'slot', 3, 'Clone'),
(126, '1635221', 'Zombie Outbreak', 'https://kto.kgp-cdn.com/kto/2024/07/02143226/Zombie-Outbreak_2x-766x1024.jpg', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(127, 'shark-hunter', 'Shark Hunter', 'https://i.ibb.co/yFPwtkW/shark-hunter-web-banner-500-500-en-nolabel.jpg', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(128, 'futebol-fever', 'Futebol Fever', 'https://i.ibb.co/0h5sy2z/futebol-fever-web-banner-500-500-en-nolabel.jpg', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(129, 'wings-of-iguazu', 'Wings of Iguazu', 'https://www.pgsoft.com/uploads/Games/Images/3b2f77b8-40ba-46f6-ba9a-7a24f095223b.webp', 1, 'PGSOFT', 1, 'slot', 3, 'PlayFiver'),
(130, 'vs5luckytig', 'Tigre Sortudo', 'https://kto.kgp-cdn.com/kto/2024/10/03153659/Tigre-Sortudo-2x-766x1024.jpg', 0, 'PRAGMATIC', 1, 'slot', 3, 'PlayFiver'),
(131, 'vs20mparty', 'Wild Hop and Drop', 'https://mediumrare.imgix.net/4b6fb59953511158aacdb82c8bdd0ad7c95f6d2cbc227300745d7335a53f7291?&dpr=2&format=auto&auto=format&q=50', 1, 'PRAGMATIC', 1, 'slot', 3, 'PlayFiver'),
(132, 'vs10snakeeyes', 'Snakes e Ladders - Snake Eyes', 'https://mediumrare.imgix.net/c7dfeccb5537f18495e227989344b7fffac1fb89ef53575a5b60f5ad74737679?&dpr=2&format=auto&auto=format&q=50', 1, 'PRAGMATIC', 1, 'slot', 3, 'PlayFiver'),
(133, 'vs5strh', 'Striking Hot 5', 'https://mediumrare.imgix.net/cf307fbb858e3de97c1d7695cc96912545f882dd927c2245c39db18c2ce24bc0?q=85', 1, 'PRAGMATIC', 1, 'slot', 3, 'PlayFiver'),
(134, 'vs5strh', 'vs20fruitsw', 'https://mediumrare.imgix.net/f95b3adf9d28d57496dd8da909c0cb97515104194924c5abb4cc9ad792f35dfe?&dpr=2&format=auto&auto=format&q=50', 1, 'PRAGMATIC', 1, 'slot', 3, 'PlayFiver'),
(135, 'vs20olympgate', 'Gates of Olympus', 'https://mediumrare.imgix.net/abb9098000cde7009fb88c54c26621682110bfbe895818cff2a7b99e7a05a0d3?&dpr=2&format=auto&auto=format&q=50', 1, 'PRAGMATIC', 1, 'slot', 3, 'PlayFiver'),
(136, 'g2a_vs20doghousemh', 'The Dog House', 'https://mediumrare.imgix.net/eb75dbe63e5b45feb035e02cba7f846d6e71a9343f66187387a32ee8abe21e75?&dpr=2&format=auto&auto=format&q=50', 1, 'PRAGMATIC', 1, 'slot', 3, 'Pragmatic'),
(137, 'vs25scarabqueen', 'John Hunter and the Tomb of the Scarab Queen', 'https://static.api.kansino.nl/PPN_John_Hunter_Scarab_Queen_31a4436a59.jpg', 1, 'PRAGMATIC', 1, 'slot', 3, 'PlayFiver'),
(138, 'vs25wolfgold', 'Wolf Gold', 'https://kto.kgp-cdn.com/kto/2021/07/26113514/Wolf-Gold_2x-3-766x1024.jpg', 1, 'PRAGMATIC', 1, 'slot', 3, 'PlayFiver'),
(139, 'vs10bbbonanza', 'Big Bass Bonanza', 'https://mediumrare.imgix.net/713054d6e4d7a33d599e02ca3a53ff486c018b07def931e61b6b06fe94183d0f?&dpr=2&format=auto&auto=format&q=50', 1, 'PRAGMATIC', 1, 'slot', 3, 'PlayFiver'),
(140, 'vs10txbigbass', 'Big Bass Splash', 'https://kto.kgp-cdn.com/kto/2023/11/20123836/big-bass-splashx-654d1590010bd-766x1024.jpg', 1, 'PRAGMATIC', 1, 'slot', 3, 'PlayFiver'),
(141, 'vs20candvil', 'Candy Village', 'https://mediumrare.imgix.net/0f48b005724795b0102cf9b13a8269ed1399491198282c6f2ec620ceb5a6add0?&dpr=2&format=auto&auto=format&q=50', 1, 'PRAGMATIC', 1, 'slot', 3, 'PlayFiver'),
(142, '161', 'Hercules', 'https://eajogo11.xyz/game_pictures/g/EA/3/3/30068/default.avif', 0, 'CQ9', 0, 'slot', 3, 'PlayFiver'),
(143, 'aviator', 'Aviator', 'https://imagedelivery.net/OOahao1ejQQJFOoUSSCKqw/game/aviator/Lacvibnd.png/w=384,h=384,fit=cover,quality=80,format=auto,blur=0', 1, 'SPRIBE', 1, 'slot', 3, 'PlayFiver'),
(144, '11672', 'Goal', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5OGxLzPLPleiz-45gcuQ2wixUAvoPuVwE_w&s', 0, 'SPRIBE', 0, 'slot', 3, 'PlayFiver'),
(145, '11678', 'HotLine', 'https://imagedelivery.net/OOahao1ejQQJFOoUSSCKqw/game/hotline-1/Pot1fWc0.png/w=384,h=384,fit=cover,quality=80,format=auto,blur=0', 0, 'SPRIBE', 0, 'slot', 3, 'PlayFiver'),
(146, '11677', 'Mini Roulette', 'https://cdnimages2.gcdn.co/SC/Leonbets/egs_image/MiniRoulette@3x.jpg', 0, 'SPRIBE', 0, 'slot', 3, 'PlayFiver'),
(147, '11671', 'Dice', 'https://imagedelivery.net/BgH9d8bzsn4n0yijn4h7IQ/5599954a-714f-4717-87f1-b512e9dd0300/public', 0, 'SPRIBE', 0, 'slot', 3, 'PlayFiver'),
(148, '11675', 'Hilo', 'https://imagedelivery.net/BgH9d8bzsn4n0yijn4h7IQ/b244e7db-2340-4f55-c71d-0516c53aeb00/public', 0, 'SPRIBE', 0, 'slot', 3, 'PlayFiver'),
(149, 'mines', 'Mines', 'https://imagedelivery.net/BgH9d8bzsn4n0yijn4h7IQ/666a1c8e-abf1-45f6-e295-914deb7cf500/public', 1, 'SPRIBE', 1, 'slot', 3, 'PlayFiver'),
(150, '11676', 'Plinko', 'https://imagedelivery.net/BgH9d8bzsn4n0yijn4h7IQ/b0aab9a4-30b9-421d-1a9a-75ab7fb9ef00/public', 0, 'SPRIBE', 0, 'slot', 3, 'PlayFiver'),
(152, 'vswaysbook', 'Book of Golden Sands', 'https://mediumrare.imgix.net/a50c8c8d4d15698982986e93c81c41b670cb79db1c09a9796bc6b9ec2695ca81?&dpr=2&format=auto&auto=format&q=50', 1, 'PRAGMATIC', 1, 'slot', 3, 'PlayFiver'),
(153, 'vs20sugarrush', 'Sugar Rush', 'https://imagedelivery.net/BgH9d8bzsn4n0yijn4h7IQ/5527e6f0-38c1-4736-d0c5-7bae6b5a1b00/public', 1, 'PRAGMATIC', 1, 'slot', 3, 'PlayFiver'),
(155, 'vs20wildparty', '3 buzzing wild', 'https://imagedelivery.net/BgH9d8bzsn4n0yijn4h7IQ/228b9736-0e3e-4cf7-c631-0fdd39c36400/public', 1, 'PRAGMATIC', 1, 'slot', 3, 'PlayFiver'),
(156, 'vs15godsofwar', 'Zeus vs Hades - Gods of War', 'https://imagedelivery.net/BgH9d8bzsn4n0yijn4h7IQ/70ec752f-f027-4b62-7439-b98231ba6700/public', 1, 'PRAGMATIC', 1, 'slot', 3, 'PlayFiver'),
(157, 'vs20octobeer', 'Octobeer', 'https://storage.googleapis.com/www.mcluck.com/tiles/vs20octobeer/source.png', 1, 'PRAGMATIC', 1, 'slot', 3, 'PlayFiver'),
(158, '31', 'God of war', 'https://eajogo11.xyz/game_pictures/g/EA/3/3/30029/default.avif', 0, 'CQ9', 0, 'slot', 3, 'PlayFiver'),
(159, '16', 'Super 5', 'https://eajogo11.xyz/game_pictures/g/EA/3/3/30070/default.avif', 0, 'CQ9', 0, 'slot', 3, 'PlayFiver'),
(160, '72', 'Happy Rich Year', 'https://eajogo11.xyz/game_pictures/g/EA/3/3/30071/default.avif', 0, 'CQ9', 0, 'slot', 3, 'PlayFiver'),
(161, '1', 'Fruit King', 'https://eajogo11.xyz/game_pictures/g/EA/3/3/30072/default.avif', 0, 'CQ9', 0, 'slot', 3, 'PlayFiver'),
(162, '26', '777', 'https://eajogo11.xyz/game_pictures/g/EA/3/3/30105/default.avif', 0, 'CQ9', 0, 'slot', 3, 'PlayFiver'),
(163, '50', '777', 'https://eajogo11.xyz/game_pictures/g/EA/3/3/30105/default.avif', 0, 'CQ9', 0, 'slot', 3, 'PlayFiver'),
(164, '64', 'Zeus', 'https://eajogo11.xyz/game_pictures/g/EA/3/3/30030/default.avif', 0, 'CQ9', 0, 'slot', 3, 'PlayFiver'),
(165, '01rb77cq1gtenhmo', 'Auto-Roulette VIP', 'https://imagedelivery.net/BgH9d8bzsn4n0yijn4h7IQ/7d59a61b-84ba-4171-0a8d-07df3439cc00/public', 1, 'EVOLUTION', 1, 'live', 3, 'PlayFiver'),
(166, 'JapSpeedBac00001', 'Japanese Speed Baccarat A', 'https://bc.imgix.net/game/image/a62b8ed9-cb60-47d8-be6b-13fb64a3722a.png?_v=4&auto=format&dpr=2.625&w=100', 0, 'EVOLUTION', 0, 'live', 3, 'PlayFiver'),
(167, 'LightningTable01', 'Lightning Roulette', 'https://imagedelivery.net/BgH9d8bzsn4n0yijn4h7IQ/21ff7e3e-79c5-4864-ebc5-8e64521ff900/public', 0, 'EVOLUTION', 0, 'live', 3, 'PlayFiver'),
(168, 'LightningTable01', 'Lightning Roulette', 'https://imagedelivery.net/BgH9d8bzsn4n0yijn4h7IQ/21ff7e3e-79c5-4864-ebc5-8e64521ff900/public', 0, 'EVOLUTION', 0, 'live', 3, 'PlayFiver'),
(169, 'BacBo00000000001', 'Bac Bo', 'https://imagedelivery.net/BgH9d8bzsn4n0yijn4h7IQ/4db801a0-dc9c-4113-35f7-6aabd82eb100/public', 0, 'EVOLUTION', 0, 'live', 3, 'PlayFiver'),
(170, 'TopCard000000001', 'Football Studio', 'https://imagedelivery.net/BgH9d8bzsn4n0yijn4h7IQ/1f978bc7-91ca-451a-7026-844f00347a00/public', 0, 'EVOLUTION', 0, 'live', 3, 'PlayFiver'),
(7000, 'pinata-wins', 'pinata-wins', 'https://mediumrare.imgix.net/c5005543fef7245219afa13116b2ff09d9ab3b5cb93f1f299c14fe85141d4895?&dpr=1.25&format=auto&auto=format&q=50', 1, 'PGSOFT', 1, 'slot', 3, 'Clone');

-- --------------------------------------------------------

--
-- Estrutura para tabela `historico_play`
--

CREATE TABLE `historico_play` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nome_game` text NOT NULL,
  `bet_money` decimal(10,2) NOT NULL DEFAULT 0.00,
  `win_money` decimal(10,2) NOT NULL DEFAULT 0.00,
  `txn_id` text NOT NULL,
  `created_at` datetime NOT NULL,
  `status_play` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `historico_play`
--

INSERT INTO `historico_play` (`id`, `id_user`, `nome_game`, `bet_money`, `win_money`, `txn_id`, `created_at`, `status_play`) VALUES
(4937, 483922350, 'fortune-tiger', 0.40, 0.00, '963a49dd-cb06-4705-b967-2a5b608c852b', '2025-02-18 16:49:00', 1),
(4938, 483922354, 'fortune-ox', 0.50, 0.50, '7c93814e-0748-4618-9059-37e674d1957e', '2025-02-18 16:49:54', 1),
(4939, 483922354, 'fortune-ox', 0.50, 0.00, 'b159c67e-66ad-4cb3-aa7d-ba1857ddb330', '2025-02-18 16:49:57', 1),
(4940, 483922354, 'fortune-ox', 0.50, 0.00, '76983091-e5e6-42ca-a777-391ec0a2d0e3', '2025-02-18 16:50:00', 1),
(4941, 483922354, 'fortune-ox', 0.50, 2.00, '0705d66a-878e-4d48-8655-1ec7dd4fc2b1', '2025-02-18 16:50:02', 1),
(4942, 483922354, 'fortune-ox', 0.50, 0.15, 'e9624a8b-8111-45ad-aa9e-36dbf5a54caf', '2025-02-18 16:50:06', 1),
(4943, 483922354, 'fortune-ox', 0.50, 0.75, 'bb9f7c45-365e-4b16-a7d4-b885298be3cd', '2025-02-18 16:50:09', 1),
(4944, 483922354, 'fortune-ox', 0.50, 1.00, 'b98cb9e2-594c-4780-9123-2a145ab7eb12', '2025-02-18 16:50:13', 1),
(4945, 483922354, 'fortune-ox', 0.50, 0.00, 'c851a1c6-2767-40b4-9fc8-64b58f4a3343', '2025-02-18 16:50:16', 1),
(4946, 483922354, 'fortune-ox', 0.50, 0.45, '14d4bcd3-0cdc-4b4a-bebb-9a572f538748', '2025-02-18 16:50:18', 1),
(4947, 483922354, 'fortune-ox', 0.50, 2.50, '7043e472-b5ba-4c71-be41-e758ce8c4fef', '2025-02-18 16:50:21', 1),
(4948, 483922354, 'fortune-ox', 0.50, 0.00, 'ee31925d-2385-4207-97e6-8ccd2c484a57', '2025-02-18 16:50:26', 1),
(4949, 483922354, 'fortune-ox', 0.50, 0.15, '6bf0c460-0c68-42be-8de0-954d03cf86ac', '2025-02-18 16:50:28', 1),
(4950, 483922354, 'fortune-ox', 0.50, 0.00, 'fedee06f-aa73-4ba4-85c9-43f372438060', '2025-02-18 16:50:30', 1),
(4951, 483922354, 'fortune-ox', 0.50, 0.00, 'b5acd501-b1e8-4be6-8053-11e9c9929a43', '2025-02-18 16:50:31', 1),
(4952, 483922354, 'fortune-ox', 0.50, 0.00, '4ffd2507-041d-409c-b870-10b904712d95', '2025-02-18 16:50:32', 1),
(4953, 483922354, 'fortune-ox', 0.50, 0.00, '88631afc-9f46-4f26-8b97-6b1dbdc782fb', '2025-02-18 16:50:34', 1),
(4954, 483922354, 'fortune-ox', 0.50, 0.00, '306ce88b-fa74-4b72-b12e-28342487ff13', '2025-02-18 16:50:35', 1),
(4955, 483922354, 'fortune-ox', 0.50, 1.00, '130d54b7-89b6-466a-8e14-8756a7845b32', '2025-02-18 16:50:37', 1),
(4956, 483922354, 'fortune-ox', 0.50, 0.00, '910cef56-cdb0-4e99-a0dc-f6d2bd7278c6', '2025-02-18 16:50:39', 1),
(4957, 483922354, 'fortune-ox', 0.50, 0.00, '8c3fc3f8-3d8d-4254-9911-25b6f319cf17', '2025-02-18 16:50:42', 1),
(4958, 483922354, 'fortune-ox', 0.50, 2.00, '958e001f-a2d4-4364-bf9b-97f158a4c77c', '2025-02-18 16:50:44', 1),
(4959, 483922354, 'fortune-ox', 0.50, 0.00, 'ac696b25-f811-4487-953b-fabead2a7a25', '2025-02-18 16:50:51', 1),
(4960, 483922350, 'fortune-tiger', 0.40, 0.00, '4125922b-a39a-479c-9d3d-6d3680142d08', '2025-02-19 00:56:23', 1),
(4961, 483922350, 'fortune-tiger', 0.40, 0.00, '8701861d-65be-41e2-995b-3944f26c9039', '2025-02-19 00:56:26', 1),
(4962, 483922350, 'fortune-tiger', 0.40, 0.00, 'eca3d42c-25a9-4774-a3eb-d36ac4ca66ab', '2025-02-19 00:56:28', 1),
(4963, 483922350, 'fortune-tiger', 0.40, 0.40, '7898ac27-3acc-4141-83bf-cc49fca3eab5', '2025-02-19 00:56:30', 1),
(4964, 483922350, 'fortune-tiger', 0.40, 0.00, '9acd5727-3966-4e02-a080-6202bd7ecd9b', '2025-02-19 00:56:35', 1),
(4965, 483922350, 'fortune-tiger', 0.40, 0.00, '4e2cc5bd-91d9-49c1-8e43-f7cf11c25ef6', '2025-02-19 00:56:37', 1),
(4966, 483922350, 'fortune-tiger', 0.40, 0.24, '073ddeeb-054f-4b9e-b828-7b30c8405801', '2025-02-19 00:56:39', 1),
(4967, 483922350, 'fortune-tiger', 0.40, 0.24, 'a352bdf0-752d-44fc-9810-4d6410204932', '2025-02-19 00:56:42', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `historico_vip`
--

CREATE TABLE `historico_vip` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `bonus` float NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `email`, `action`, `timestamp`) VALUES
(604, NULL, 'tgl@cria.com', '<span class=\'status-badge green\' style=\'display: inline-block;\'><i class=\'fa fa-sign-out\'></i></span> Logou no painel admin', '2025-02-17 20:09:39'),
(605, NULL, 'tgl@cria.com', '<span class=\'status-badge red\'style=\'display: inline-block;\'><i class=\'fa fa-sign-out\'></i></span></i> Deslogou do painel admin', '2025-02-17 20:14:19'),
(606, NULL, 'tgl@cria.com', '<span class=\'status-badge green\' style=\'display: inline-block;\'><i class=\'fa fa-sign-out\'></i></span> Logou no painel admin', '2025-02-17 20:14:35'),
(607, NULL, 'tgl@cria.com', '<span class=\'status-badge green\' style=\'display: inline-block;\'><i class=\'fa fa-sign-out\'></i></span> Logou no painel admin', '2025-02-18 02:03:47'),
(608, NULL, 'tgl@cria.com', '<span class=\'status-badge green\' style=\'display: inline-block;\'><i class=\'fa fa-sign-out\'></i></span> Logou no painel admin', '2025-02-18 04:25:22'),
(609, NULL, 'tgl@cria.com', '<span class=\'status-badge green\' style=\'display: inline-block;\'><i class=\'fa fa-sign-out\'></i></span> Logou no painel admin', '2025-02-18 05:18:14'),
(610, NULL, 'tgl@cria.com', '<span class=\'status-badge green\' style=\'display: inline-block;\'><i class=\'fa fa-sign-out\'></i></span> Logou no painel admin', '2025-02-18 14:58:16'),
(611, NULL, 'tgl@cria.com', '<span class=\'status-badge green\' style=\'display: inline-block;\'><i class=\'fa fa-sign-out\'></i></span> Logou no painel admin', '2025-02-18 15:20:16'),
(612, NULL, 'tgl@cria.com', '<span class=\'status-badge green\' style=\'display: inline-block;\'><i class=\'fa fa-sign-out\'></i></span> Logou no painel admin', '2025-02-18 15:39:35'),
(613, NULL, 'tgl@cria.com', '<span class=\'status-badge green\' style=\'display: inline-block;\'><i class=\'fa fa-sign-out\'></i></span> Logou no painel admin', '2025-02-18 15:39:37'),
(614, NULL, 'tgl@cria.com', '<span class=\'status-badge green\' style=\'display: inline-block;\'><i class=\'fa fa-sign-out\'></i></span> Logou no painel admin', '2025-02-18 15:39:38'),
(615, NULL, 'tgl@cria.com', '<span class=\'status-badge green\' style=\'display: inline-block;\'><i class=\'fa fa-sign-out\'></i></span> Logou no painel admin', '2025-02-18 19:24:38'),
(616, NULL, 'tgl@cria.com', '<span class=\'status-badge green\' style=\'display: inline-block;\'><i class=\'fa fa-sign-out\'></i></span> Logou no painel admin', '2025-02-18 19:30:18'),
(617, NULL, 'tgl@cria.com', '<span class=\'status-badge green\' style=\'display: inline-block;\'><i class=\'fa fa-sign-out\'></i></span> Logou no painel admin', '2025-02-18 21:47:10'),
(618, NULL, 'tgl@cria.com', '<span class=\'status-badge green\' style=\'display: inline-block;\'><i class=\'fa fa-sign-out\'></i></span> Logou no painel admin', '2025-02-18 21:47:12'),
(619, NULL, 'tgl@cria.com', '<span class=\'status-badge green\' style=\'display: inline-block;\'><i class=\'fa fa-sign-out\'></i></span> Logou no painel admin', '2025-02-19 01:34:08'),
(620, NULL, 'tgl@cria.com', '<span class=\'status-badge green\' style=\'display: inline-block;\'><i class=\'fa fa-sign-out\'></i></span> Logou no painel admin', '2025-02-19 02:36:58'),
(621, NULL, 'tgl@cria.com', '<span class=\'status-badge green\' style=\'display: inline-block;\'><i class=\'fa fa-sign-out\'></i></span> Logou no painel admin', '2025-02-19 02:37:01'),
(622, NULL, 'tgl@cria.com', '<span class=\'status-badge green\' style=\'display: inline-block;\'><i class=\'fa fa-sign-out\'></i></span> Logou no painel admin', '2025-02-19 02:57:58');

-- --------------------------------------------------------

--
-- Estrutura para tabela `metodos_pagamentos`
--

CREATE TABLE `metodos_pagamentos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `pix_id` varchar(255) DEFAULT NULL,
  `flag` tinyint(1) DEFAULT NULL,
  `pix_account` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `metodos_pagamentos`
--

INSERT INTO `metodos_pagamentos` (`id`, `user_id`, `realname`, `pix_id`, `flag`, `pix_account`, `state`, `created_at`) VALUES
(200, 483922350, '', '15781068694', 1, NULL, 1, '2025-02-17 20:11:33'),
(201, 483922351, '', '15781068694', 1, NULL, 1, '2025-02-18 02:13:08'),
(202, 483922352, '', '11311402730', 1, NULL, 1, '2025-02-18 04:34:36'),
(203, 483922353, '', '36643276798', 1, NULL, 1, '2025-02-18 05:27:14'),
(204, 483922353, '', '47134046834', 1, NULL, 1, '2025-02-18 05:28:03'),
(205, 483922354, '', '10900159685', 1, NULL, 1, '2025-02-18 15:34:27');

-- --------------------------------------------------------

--
-- Estrutura para tabela `midasbank`
--

CREATE TABLE `midasbank` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `client_id` text DEFAULT NULL,
  `client_secret` text DEFAULT NULL,
  `atualizado` varchar(45) DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `midasbank`
--

INSERT INTO `midasbank` (`id`, `url`, `client_id`, `client_secret`, `atualizado`, `ativo`) VALUES
(1, 'https://gateway.midasbank.com.br', '9', '6', NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pay_valores_cassino`
--

CREATE TABLE `pay_valores_cassino` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tipo` int(11) NOT NULL DEFAULT 0 COMMENT '0: CPA / 1: REV / 2: GAMES',
  `data_time` datetime NOT NULL,
  `game` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pgclone`
--

CREATE TABLE `pgclone` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `agent_code` text DEFAULT NULL,
  `agent_token` text DEFAULT NULL,
  `agent_secret` text DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `pgclone`
--

INSERT INTO `pgclone` (`id`, `url`, `agent_code`, `agent_token`, `agent_secret`, `ativo`) VALUES
(1, 'https://api.hypebet.shop', 'teste15', '053b38c8-5839-4c7a-8abc-9a1122a6f615', '08eef92a-0c1f-4a77-a628-bc2c31daa014', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `popups`
--

CREATE TABLE `popups` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp(),
  `redirect_url` text DEFAULT NULL,
  `img` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `popups`
--

INSERT INTO `popups` (`id`, `titulo`, `criado_em`, `redirect_url`, `img`, `status`) VALUES
(1, 'PRIMEIRO DEPOSITO', '2024-09-05 05:34:42', '', 'banner_1737020079398.webp', 1),
(2, 'ANUNCIO', '2024-09-05 05:34:42', '', 'banner_1737027926334.webp', 1),
(3, 'SAQUES IMEDIATOS', '2024-09-05 05:34:42', '', 'BsDFnZKknLWLsV5MV5OceVJmOYJPsq9FdW7T9Bwv.webp', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `promocoes`
--

CREATE TABLE `promocoes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp(),
  `img` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `promocoes`
--

INSERT INTO `promocoes` (`id`, `titulo`, `criado_em`, `img`, `status`) VALUES
(1, 'Banner 1', '2024-06-28 18:10:47', '1738114407_banner_1737020133093 (1).webp', 1),
(2, 'Banner 2', '2024-06-28 18:08:02', '1738114415_banner_1737020111942.webp', 1),
(3, 'Banner 3', '2024-06-28 18:08:02', '1738114423_banner_1737020106985 (1).webp', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `provedores`
--

CREATE TABLE `provedores` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `provedores`
--

INSERT INTO `provedores` (`id`, `code`, `name`, `type`, `status`) VALUES
(1, 'PGSOFT', 'PGSoft', 'slot', 1),
(2, 'SPRIBE', 'Spribe', 'slot', 1),
(3, 'PRAGMATIC', 'PP', 'slot', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `solicitacao_saques`
--

CREATE TABLE `solicitacao_saques` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `transacao_id` text NOT NULL,
  `transaction_id_gateway` varchar(191) DEFAULT NULL,
  `valor` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tipo` text NOT NULL,
  `pix` text NOT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `data_cad` date NOT NULL,
  `data_hora` time NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `data_att` datetime DEFAULT NULL,
  `tipo_saque` int(11) NOT NULL DEFAULT 0 COMMENT '0: cassino / 1: afiliados'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `suitpay`
--

CREATE TABLE `suitpay` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `client_id` text DEFAULT NULL,
  `client_secret` text DEFAULT NULL,
  `atualizado` varchar(45) DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `suitpay`
--

INSERT INTO `suitpay` (`id`, `url`, `client_id`, `client_secret`, `atualizado`, `ativo`) VALUES
(1, 'https://nexapay.digital', 'admin_5250341743', '39781c2856818527d48e2dc750f34ac810862cb01ef54c3bf4bc78c3c799d5a8', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tema`
--

CREATE TABLE `tema` (
  `id` int(11) NOT NULL,
  `cor_padrao` varchar(45) DEFAULT NULL,
  `custom_css` longtext DEFAULT NULL,
  `texto` varchar(45) DEFAULT NULL,
  `status_topheader` int(11) NOT NULL DEFAULT 0,
  `cor_topheader` varchar(48) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `tema`
--

INSERT INTO `tema` (`id`, `cor_padrao`, `custom_css`, `texto`, `status_topheader`, `cor_topheader`) VALUES
(0, '#9BCD10', '', '#FFFFFF', 0, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tokens_recuperacoes`
--

CREATE TABLE `tokens_recuperacoes` (
  `id_usuario` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `transacoes`
--

CREATE TABLE `transacoes` (
  `id` int(11) NOT NULL,
  `transacao_id` varchar(255) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `tipo` enum('deposito','saque') DEFAULT NULL,
  `data_hora` varchar(255) DEFAULT NULL,
  `qrcode` text DEFAULT NULL,
  `code` text DEFAULT NULL,
  `status` enum('pago','processamento','expirado') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `transacoes`
--

INSERT INTO `transacoes` (`id`, `transacao_id`, `usuario`, `valor`, `tipo`, `data_hora`, `qrcode`, `code`, `status`) VALUES
(300, 'b7a5a6057b9783871795m7a38a7yn7w2', 483922351, 5.00, 'deposito', '2025-02-18 03:12:55', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACUUlEQVRIieWWu82sMBCFBzlwBg1Yog1ntAQN8GgAWnLmNiy5gSVzYDH3GHb3pp5Nf4Qs60My45kzD6K//HTMB8d14JMzUWQOItiSOlweiS+rTq9WEsIhHj7PNjcpNF4d6RfYOTMxzTr+ADcGZE79xnJIatc02tDCOe7/NSsh/Lnb+H2/Tq6E5bHx5NBa03xJNcRdVkuN50v3B9P0/EgA85KYEcehhyQuLYQpbh4yoIXVlvrrMakeIpTJEJnOxUurk2WwtcxsFo+1P1P/jlE1bHwedW5tvEitFl9JBOHPawhdUvAJVDE5GWxSxrGLz3c01XaHox52DkHsV4s9ciGMmkSw1UhAHEXzEBoXX4MMNomxmZLaB4P9E00JpKUUAUMacgrd+5r1EDrMhJh6syCXvRSWWOwUUA1eFLonxNUQMth1v1Pch9x5rDLYOOSvKlk8IKafH1XDchcOExRlb38OMgghgexk2iLIjFUGHW+u5DKswpm7JREkaMnDIeouQeZJhHrYEr/w6vjSJQ3H26R62KD4eENDj0KE8tUlGezQrRw+QUiQoroTSgBx5qzNWEzKaAT8Liy1sNQ9yxBSS3ct0kEEoSVYxQlNn182kxBiTkC7hC2HRwnC2CCD6FbFGLgC1Y+LpEWwRaPn/NTw7pPF9bD4JOXJlzjOOjxKrocIwWpxHeQylBwPJ4NlZhgiI5c1Rg6sJINl4AkTujaZmT7XlMAVo5qGnlEBUIp/gOp0/elLGs5EMohZsewhZrR+JJQMlknVqc3zUdpHoE84KuHfff4BOxrElTmW6rkAAAAASUVORK5CYII=', 'b7a5a6057b9783871795m7a38a7yn7w2', 'processamento'),
(301, '3166efe2a4f5604aa26cm7a3957spt1x', 483922352, 5.00, 'deposito', '2025-02-18 03:13:35', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACRklEQVRIieWWzY2GIBCGh3jgpg2Q0AY3WtIG1K8BbYkbbZDQgN44EGdfdLPZo7PXNWaCTwxh/t6B6D8/A/Pqu73w4c1ImTmJYE8glgupWIfYrSSEPu8FljesNX4Qw9XhJDRqPmP+A9wDPvnyZvZyCI84jToNpU7hl5vvIOK5ufzz/gT5JWy85DOm3hnFvxL6DiIFB/HmmTmfobu8DKpIQ6iK7dE2N0OUQdL4TL22K9VZJ/JJBBWn2dmT+cP2DO0HEewpX80j05MhyjsLoUMeDbmkQl0YGSEhtKhhwInzh83AQqjbtku0O2oJ9jnSa4h47ihjh3ia6a5JEexdJeo2bWaXV+pWTyKooB6axtbFIIhqksGYRoeM1AkywnnVMjgU5mKWwhd1h8aaZDCmIdi7jyw27L0MqpI3VK9GGVTEZA8y2PaMdSmwBNs/Hr2HAdqFMoAvkF/+bu33MCIXtDQFsIeG/ssgQbjQPgWnyvcQkUE00cQGIsCRJjgVZRCdu2nUcz7azmZ8hOU1VG0f5BE6gCbCWgYHjJvQHS7dHdFOJYJYz7oOIR+wKMsgg+Tz565DbtMzc5RBFdEFaabuDGnh9IyP95DuMM5k7mZsMRFB1WSnjsQnhu99eRDBXudLV9JtcuHecrkkgnc5waB/jUI3BRnE1N7Z7gEV1e5Lj0fvIe4MK6YeJkjkpiQ6yeCdTSIoGKLKHMVwI1Symdrksh8Ww0+svebWvw63FyHEfSnCmqng5mBUJBFs8WzqbXpvD8ff+vka/t/nC2XclUwDvcMnAAAAAElFTkSuQmCC', '3166efe2a4f5604aa26cm7a3957spt1x', 'processamento'),
(302, 'd8a3a213d3b000354ed4m7anwdu62cv4', 483922354, 5.00, 'deposito', '2025-02-18 12:51:32', '00020126870014br.gov.bcb.pix2565pix.primepag.com.br/qr/v3/at/c2aa7998-12d9-4d71-83b8-6477020e400f5204000053039865802BR5923X GAMING SOLUTIONS LTDA6008SALVADOR62070503***630445E8', '00020126870014br.gov.bcb.pix2565pix.primepag.com.br/qr/v3/at/c2aa7998-12d9-4d71-83b8-6477020e400f5204000053039865802BR5923X GAMING SOLUTIONS LTDA6008SALVADOR62070503***630445E8', 'processamento'),
(303, '2e366170fb77fef91e2bm7ao043f41mp', 483922350, 5.00, 'deposito', '2025-02-18 12:54:26', '00020126870014br.gov.bcb.pix2565pix.primepag.com.br/qr/v3/at/764d287e-f6c7-4031-b15c-5b3ad3868cc95204000053039865802BR5923X GAMING SOLUTIONS LTDA6008SALVADOR62070503***6304AB87', '00020126870014br.gov.bcb.pix2565pix.primepag.com.br/qr/v3/at/764d287e-f6c7-4031-b15c-5b3ad3868cc95204000053039865802BR5923X GAMING SOLUTIONS LTDA6008SALVADOR62070503***6304AB87', 'processamento'),
(304, '0a41de48c010d7cde6dbm7aon2rb21kj', 483922350, 5.00, 'deposito', '2025-02-18 13:12:17', '00020126870014br.gov.bcb.pix2565pix.primepag.com.br/qr/v3/at/563b941c-be82-4cf4-bf04-b6e75b6f11165204000053039865802BR5923X GAMING SOLUTIONS LTDA6008SALVADOR62070503***6304010C', '00020126870014br.gov.bcb.pix2565pix.primepag.com.br/qr/v3/at/563b941c-be82-4cf4-bf04-b6e75b6f11165204000053039865802BR5923X GAMING SOLUTIONS LTDA6008SALVADOR62070503***6304010C', 'processamento'),
(305, 'fc7f574b0d17e567cfddm7ap1xi41kgi', 483922350, 1.00, 'deposito', '2025-02-18 13:23:50', '00020126870014br.gov.bcb.pix2565pix.primepag.com.br/qr/v3/at/91326b63-730b-4816-8c36-2d11427073045204000053039865802BR5923X GAMING SOLUTIONS LTDA6008SALVADOR62070503***6304C8E4', '00020126870014br.gov.bcb.pix2565pix.primepag.com.br/qr/v3/at/91326b63-730b-4816-8c36-2d11427073045204000053039865802BR5923X GAMING SOLUTIONS LTDA6008SALVADOR62070503***6304C8E4', 'processamento'),
(306, '0f5ae2a9b4946fc9a930m7apm1n7r6nv', 483922354, 20.00, 'deposito', '2025-02-18 13:39:29', '00020126870014br.gov.bcb.pix2565pix.primepag.com.br/qr/v3/at/93918cf2-72e7-4905-889f-82be94192d655204000053039865802BR5923X GAMING SOLUTIONS LTDA6008SALVADOR62070503***63042CA0', '00020126870014br.gov.bcb.pix2565pix.primepag.com.br/qr/v3/at/93918cf2-72e7-4905-889f-82be94192d655204000053039865802BR5923X GAMING SOLUTIONS LTDA6008SALVADOR62070503***63042CA0', 'pago'),
(307, '5de14dfb2241e83decedm7apncee53xk', 483922350, 1.00, 'deposito', '2025-02-18 13:40:29', '00020126870014br.gov.bcb.pix2565pix.primepag.com.br/qr/v3/at/9d760511-939f-4715-92d8-a347fa6a6c945204000053039865802BR5923X GAMING SOLUTIONS LTDA6008SALVADOR62070503***6304DD2A', '00020126870014br.gov.bcb.pix2565pix.primepag.com.br/qr/v3/at/9d760511-939f-4715-92d8-a347fa6a6c945204000053039865802BR5923X GAMING SOLUTIONS LTDA6008SALVADOR62070503***6304DD2A', 'processamento'),
(308, 'b331a250029b4b7e334em7apqpl55o3a', 483922350, 2.00, 'deposito', '2025-02-18 13:43:06', '00020126870014br.gov.bcb.pix2565pix.primepag.com.br/qr/v3/at/cc669f1b-d5f9-44f3-bb2f-d5dbf937ec265204000053039865802BR5923X GAMING SOLUTIONS LTDA6008SALVADOR62070503***6304AF35', '00020126870014br.gov.bcb.pix2565pix.primepag.com.br/qr/v3/at/cc669f1b-d5f9-44f3-bb2f-d5dbf937ec265204000053039865802BR5923X GAMING SOLUTIONS LTDA6008SALVADOR62070503***6304AF35', 'pago'),
(309, '1c61676ece6b5f4f77c2m7apwik6483b', 483922354, 100.00, 'deposito', '2025-02-18 13:47:38', '00020126870014br.gov.bcb.pix2565pix.primepag.com.br/qr/v3/at/92e1a256-a24a-4677-931a-ad635e01272f5204000053039865802BR5923X GAMING SOLUTIONS LTDA6008SALVADOR62070503***630413C2', '00020126870014br.gov.bcb.pix2565pix.primepag.com.br/qr/v3/at/92e1a256-a24a-4677-931a-ad635e01272f5204000053039865802BR5923X GAMING SOLUTIONS LTDA6008SALVADOR62070503***630413C2', 'pago'),
(310, '8c11db8fc76898398b75m7apykxl20o3', 483922350, 1.00, 'deposito', '2025-02-18 13:49:13', '00020126870014br.gov.bcb.pix2565pix.primepag.com.br/qr/v3/at/f1bfce64-69cb-4ea0-81e9-e660bd989e985204000053039865802BR5923X GAMING SOLUTIONS LTDA6008SALVADOR62070503***6304A4C6', '00020126870014br.gov.bcb.pix2565pix.primepag.com.br/qr/v3/at/f1bfce64-69cb-4ea0-81e9-e660bd989e985204000053039865802BR5923X GAMING SOLUTIONS LTDA6008SALVADOR62070503***6304A4C6', 'processamento'),
(311, 'd5deb04d10cdfc8fd599m7apzmiw3lwn', 483922350, 1.00, 'deposito', '2025-02-18 13:50:03', '00020126870014br.gov.bcb.pix2565pix.primepag.com.br/qr/v3/at/7c3adec2-c66d-4453-b9e7-324cf14293ab5204000053039865802BR5923X GAMING SOLUTIONS LTDA6008SALVADOR62070503***6304B808', '00020126870014br.gov.bcb.pix2565pix.primepag.com.br/qr/v3/at/7c3adec2-c66d-4453-b9e7-324cf14293ab5204000053039865802BR5923X GAMING SOLUTIONS LTDA6008SALVADOR62070503***6304B808', 'pago'),
(312, 'f839f275c04fd62d56aam7bdgj103v00', 483922350, 1.00, 'deposito', '2025-02-19 00:47:02', '00020126870014br.gov.bcb.pix2565pix.primepag.com.br/qr/v3/at/3ede87f5-f5f0-45e4-a7ea-846f2ace78a95204000053039865802BR5923X GAMING SOLUTIONS LTDA6008SALVADOR62070503***6304395C', '00020126870014br.gov.bcb.pix2565pix.primepag.com.br/qr/v3/at/3ede87f5-f5f0-45e4-a7ea-846f2ace78a95204000053039865802BR5923X GAMING SOLUTIONS LTDA6008SALVADOR62070503***6304395C', 'processamento');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `saldo` decimal(10,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `saldo_afiliados` decimal(10,2) DEFAULT 0.00,
  `real_name` varchar(255) NOT NULL,
  `spassword` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `data_cad` datetime DEFAULT NULL,
  `invite_code` varchar(255) NOT NULL,
  `invitation_code` varchar(255) DEFAULT NULL,
  `senha_saque` int(11) NOT NULL DEFAULT 0,
  `senhaparasacar` varchar(255) DEFAULT NULL,
  `pessoas_convidadas` int(11) NOT NULL DEFAULT 0,
  `statusaff` int(11) NOT NULL DEFAULT 0,
  `tipo_pagamento` int(11) NOT NULL DEFAULT 0,
  `banido` int(11) DEFAULT 0,
  `historico` text DEFAULT NULL,
  `favoritos` text DEFAULT NULL,
  `lvl_vip` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `mobile`, `password`, `saldo`, `saldo_afiliados`, `real_name`, `spassword`, `url`, `token`, `data_cad`, `invite_code`, `invitation_code`, `senha_saque`, `senhaparasacar`, `pessoas_convidadas`, `statusaff`, `tipo_pagamento`, `banido`, `historico`, `favoritos`, `lvl_vip`) VALUES
(483922351, 'testeget', '$2y$10$04oABLk.gzOet8NDg6p3Du/bX1kaa/GhFYcn7NRjc/tPTxABnkkUq', 0.00, 0.00, '', '$2y$10$04oABLk.gzOet8NDg6p3Du/bX1kaa/GhFYcn7NRjc/tPTxABnkkUq', 'https://luapg.xyz/', 'd37555dd263ec51cf313351a271648ee', '2025-02-17 23:13:02', 'AF6a4b5', NULL, 0, NULL, 0, 0, 0, 0, NULL, NULL, 1),
(483922352, 'jotave', '$2y$10$GlKeH4l450D1AkyLhDCWzeWhOyNwTBLxxhsOqyOSvjeYrjh9ReqnS', 0.00, 0.00, '', '$2y$10$GlKeH4l450D1AkyLhDCWzeWhOyNwTBLxxhsOqyOSvjeYrjh9ReqnS', 'https://luapg.xyz/', '5da72dbfb796e29cadd5675351fd3283', '2025-02-18 01:34:22', 'AF13601', NULL, 0, NULL, 0, 0, 0, 0, NULL, NULL, 1),
(483922353, 'teste', '$2y$10$p5iPHx2TaVb/co/Sgu1TD.D0xjF5uV2Sv0.tU5fICkS4lfxLFz5P2', 0.00, 0.00, '', '$2y$10$p5iPHx2TaVb/co/Sgu1TD.D0xjF5uV2Sv0.tU5fICkS4lfxLFz5P2', 'https://luapg.xyz/', 'c0e55586114eafd52c9866b857e5400f', '2025-02-18 02:27:04', 'AF875e8', NULL, 0, NULL, 0, 0, 0, 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vip_levels`
--

CREATE TABLE `vip_levels` (
  `id` int(11) NOT NULL,
  `id_vip` int(11) NOT NULL,
  `meta` float NOT NULL,
  `bonus` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `vip_levels`
--

INSERT INTO `vip_levels` (`id`, `id_vip`, `meta`, `bonus`) VALUES
(1, 1, 51, 30),
(2, 2, 85, 45),
(3, 3, 600, 20),
(4, 4, 300000, 50),
(5, 5, 600000, 100),
(6, 6, 1000000, 200),
(7, 7, 3000000, 400),
(8, 8, 5000000, 600),
(9, 9, 7000000, 800),
(10, 10, 10000000, 950),
(11, 11, 13000000, 1100),
(12, 12, 16000000, 1250),
(13, 13, 20000000, 1500),
(14, 14, 100000000, 3000),
(15, 15, 1000000000, 6515);

-- --------------------------------------------------------

--
-- Estrutura para tabela `visita_site`
--

CREATE TABLE `visita_site` (
  `id` int(11) NOT NULL,
  `nav_os` text DEFAULT NULL,
  `mac_os` text DEFAULT NULL,
  `ip_visita` text DEFAULT NULL,
  `refer_visita` text DEFAULT NULL,
  `data_cad` date DEFAULT NULL,
  `hora_cad` time DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `pais` text DEFAULT NULL,
  `cidade` text DEFAULT NULL,
  `estado` text DEFAULT NULL,
  `ads_tipo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `visita_site`
--

INSERT INTO `visita_site` (`id`, `nav_os`, `mac_os`, `ip_visita`, `refer_visita`, `data_cad`, `hora_cad`, `id_user`, `pais`, `cidade`, `estado`, `ads_tipo`) VALUES
(16215, 'Handheld Browser', 'Android', '170.239.98.249', 'https://luapg.xyz/', '2025-02-17', '16:13:52', 1, 'Brazil', 'Ipatinga', 'Minas Gerais', NULL),
(16216, 'Handheld Browser', 'Android', '186.226.195.34', 'https://luapg.xyz/', '2025-02-18', '01:51:12', 1, 'Brazil', 'Navirai', 'Mato Grosso do Sul', NULL),
(16217, 'Chrome', 'Windows 10', '187.13.53.230', 'https://luapg.xyz/', '2025-02-18', '12:01:50', 1, 'Brazil', 'Belo Horizonte', 'Minas Gerais', NULL),
(16218, 'Handheld Browser', 'iPhone', '177.26.75.7', 'https://luapg.xyz/', '2025-02-18', '17:24:05', 1, 'Brazil', 'Rio de Janeiro', 'Rio de Janeiro', NULL),
(16219, 'Handheld Browser', 'iPhone', '179.189.178.166', 'https://luapg.xyz/', '2025-02-18', '18:46:32', 1, 'Brazil', 'Montes Claros', 'Minas Gerais', NULL),
(16220, 'Handheld Browser', 'iPhone', '177.26.95.56', 'https://luapg.xyz/', '2025-02-18', '19:44:14', 1, 'Brazil', 'Rio de Janeiro', 'Rio de Janeiro', NULL),
(16221, 'Chrome', 'Windows 10', '45.165.10.139', 'https://luapg.xyz/', '2025-02-18', '23:38:13', 1, 'Brazil', 'Simoes Filho', 'Bahia', NULL),
(16222, 'Chrome', 'Windows 10', '45.165.10.139', 'https://luapg.xyz/', '2025-02-19', '00:25:14', 1, 'Brazil', 'Simoes Filho', 'Bahia', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `webhook`
--

CREATE TABLE `webhook` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `bot_id` varchar(255) NOT NULL,
  `chat_id` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `webhook`
--

INSERT INTO `webhook` (`id`, `nome`, `bot_id`, `chat_id`, `status`) VALUES
(1, 'Cadastros e Pixs', '7452904245:AAGHAKCd11GVKwcj4ZwpY8JZbWruyRZK0Dg', '6509136182', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `afiliados_config`
--
ALTER TABLE `afiliados_config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `apipragmatic`
--
ALTER TABLE `apipragmatic`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `bau`
--
ALTER TABLE `bau`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `beeplay`
--
ALTER TABLE `beeplay`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cupom`
--
ALTER TABLE `cupom`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cupom_usados`
--
ALTER TABLE `cupom_usados`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `financeiro`
--
ALTER TABLE `financeiro`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `fiverscan`
--
ALTER TABLE `fiverscan`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `floats`
--
ALTER TABLE `floats`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `historico_play`
--
ALTER TABLE `historico_play`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `historico_vip`
--
ALTER TABLE `historico_vip`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `metodos_pagamentos`
--
ALTER TABLE `metodos_pagamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `midasbank`
--
ALTER TABLE `midasbank`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pay_valores_cassino`
--
ALTER TABLE `pay_valores_cassino`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pgclone`
--
ALTER TABLE `pgclone`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `promocoes`
--
ALTER TABLE `promocoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `provedores`
--
ALTER TABLE `provedores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `solicitacao_saques`
--
ALTER TABLE `solicitacao_saques`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `suitpay`
--
ALTER TABLE `suitpay`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `transacoes`
--
ALTER TABLE `transacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `vip_levels`
--
ALTER TABLE `vip_levels`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `visita_site`
--
ALTER TABLE `visita_site`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `webhook`
--
ALTER TABLE `webhook`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `afiliados_config`
--
ALTER TABLE `afiliados_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `bau`
--
ALTER TABLE `bau`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=484046;

--
-- AUTO_INCREMENT de tabela `cupom_usados`
--
ALTER TABLE `cupom_usados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `financeiro`
--
ALTER TABLE `financeiro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `floats`
--
ALTER TABLE `floats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `historico_play`
--
ALTER TABLE `historico_play`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4968;

--
-- AUTO_INCREMENT de tabela `historico_vip`
--
ALTER TABLE `historico_vip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=623;

--
-- AUTO_INCREMENT de tabela `metodos_pagamentos`
--
ALTER TABLE `metodos_pagamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT de tabela `pay_valores_cassino`
--
ALTER TABLE `pay_valores_cassino`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pgclone`
--
ALTER TABLE `pgclone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `promocoes`
--
ALTER TABLE `promocoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `provedores`
--
ALTER TABLE `provedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `solicitacao_saques`
--
ALTER TABLE `solicitacao_saques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT de tabela `transacoes`
--
ALTER TABLE `transacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=483922355;

--
-- AUTO_INCREMENT de tabela `vip_levels`
--
ALTER TABLE `vip_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `visita_site`
--
ALTER TABLE `visita_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16223;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
