-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08/10/2024 às 02:19
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
(26, 'Baile da DZ7', '2027-03-15', '21:00:00.000000', '06:00:00.000000', 'Bailão com whisky e redbull com participação especial do DJ Arana, DJ Wizzard e Kanye West.', 'Avenida Hebe Camargo', 'Playboy Carti'),
(85, 'Campeonato de Jojopose', '2025-04-16', '16:00:00.000000', '03:00:00.000000', 'Apenas as melhores poses de JOJO', 'Praça da Sé', 'Goleiro Bruno'),
(87, 'Campeonato de Jojopose', '0000-00-00', '16:00:00.000000', '03:00:00.000000', 'Apenas as melhores poses de JOJO', 'Praça da Sé', 'Goleiro Bruno');

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
