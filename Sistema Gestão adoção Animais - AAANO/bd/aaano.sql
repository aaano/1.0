-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13-Ago-2018 às 15:48
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aaano`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador`
--

CREATE TABLE `administrador` (
  `idpessoa` int(11) NOT NULL,
  `idadm` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `senha` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `adocao`
--

CREATE TABLE `adocao` (
  `idsolicitacao` int(11) NOT NULL,
  `idadotante` int(11) NOT NULL,
  `datasolicitacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `adotante`
--

CREATE TABLE `adotante` (
  `idpessoa` int(11) NOT NULL,
  `idadotante` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `senha` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `animal`
--

CREATE TABLE `animal` (
  `idanimal` int(11) NOT NULL,
  `idadotante` int(11) NOT NULL,
  `idade` varchar(12) NOT NULL,
  `raca` varchar(15) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `cor` varchar(10) NOT NULL,
  `porte` varchar(10) NOT NULL,
  `foto1` varchar(20) NOT NULL,
  `foto2` varchar(20) NOT NULL,
  `foto3` varchar(20) NOT NULL,
  `deficiencia` tinyint(1) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `vacina` tinyint(1) NOT NULL,
  `dataregistro` date NOT NULL,
  `castracao` tinyint(1) NOT NULL,
  `patologia` varchar(20) NOT NULL,
  `situacao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `idbairro` int(6) NOT NULL,
  `idpessoa` int(6) NOT NULL,
  `bairro` varchar(20) NOT NULL,
  `numero` varchar(6) NOT NULL,
  `rua` varchar(30) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `cidade` varchar(20) NOT NULL,
  `celular` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `idpessoa` int(11) NOT NULL,
  `idfunc` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `senha` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `idpessoa` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `rg` varchar(8) NOT NULL,
  `nasc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `solicitacaofunc`
--

CREATE TABLE `solicitacaofunc` (
  `idfunc` int(11) NOT NULL,
  `datasolicitacao` date NOT NULL,
  `nomefunc` varchar(30) NOT NULL,
  `cpffunc` varchar(11) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `celular` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`idpessoa`),
  ADD KEY `idpessoa` (`idadm`);

--
-- Indexes for table `adocao`
--
ALTER TABLE `adocao`
  ADD PRIMARY KEY (`idsolicitacao`),
  ADD KEY `idpessoa` (`idadotante`);

--
-- Indexes for table `adotante`
--
ALTER TABLE `adotante`
  ADD PRIMARY KEY (`idpessoa`),
  ADD KEY `idepessoa` (`idadotante`);

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`idanimal`),
  ADD KEY `idadotante` (`idadotante`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idpessoa`),
  ADD KEY `idpessoa` (`idbairro`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idpessoa`),
  ADD KEY `idpessoa` (`idfunc`);

--
-- Indexes for table `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`idpessoa`);

--
-- Indexes for table `solicitacaofunc`
--
ALTER TABLE `solicitacaofunc`
  ADD PRIMARY KEY (`idfunc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrador`
--
ALTER TABLE `administrador`
  MODIFY `idpessoa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adocao`
--
ALTER TABLE `adocao`
  MODIFY `idsolicitacao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adotante`
--
ALTER TABLE `adotante`
  MODIFY `idpessoa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `animal`
--
ALTER TABLE `animal`
  MODIFY `idanimal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idpessoa` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `idpessoa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `idpessoa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `solicitacaofunc`
--
ALTER TABLE `solicitacaofunc`
  MODIFY `idfunc` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
