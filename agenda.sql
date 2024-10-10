-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10/10/2024 às 03:46
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `agenda`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `eventos`
--

CREATE TABLE `eventos` (
  `id` int(255) NOT NULL,
  `nome_do_evento` varchar(255) NOT NULL,
  `data_do_evento` date NOT NULL,
  `hora_de_inicio` time(6) NOT NULL,
  `hora_de_termino` time(6) NOT NULL,
  `desc_event` varchar(255) NOT NULL,
  `local_event` varchar(255) NOT NULL,
  `resp_event` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `eventos`
--

INSERT INTO `eventos` (`id`, `nome_do_evento`, `data_do_evento`, `hora_de_inicio`, `hora_de_termino`, `desc_event`, `local_event`, `resp_event`) VALUES
(25, 'Baile da DZ7', '0000-00-00', '21:00:00.000000', '06:00:00.000000', 'Bailão com whisky e redbull com participação especial do DJ Arana, DJ Wizzard e Kanye West.', 'Avenida Hebe Camargo', 'Playboy Carti'),
(36, 'Show Clandestino do Kanye West', '2030-08-14', '23:00:00.000000', '05:50:00.000000', 'Show do melhor rapper da história acontecendo aqui em Quixadá no Ceará, não perda (vale lembrar para não divulgarem esse show em platarformas famosas)', 'Quixadá', 'Naldo'),
(56, '89.8', '2024-10-21', '22:47:00.000000', '03:46:00.000000', 'hujk', 'vyugiu', 'vguouy'),
(69, 'Aniversário do Berserker\"s F.C', '2069-02-12', '05:00:00.000000', '03:39:00.000000', 'Aniversário do Segundo gigante do mundo (primeiro é o Corinthians)', 'Arena Eclipse', 'peter griffin do Pará');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
