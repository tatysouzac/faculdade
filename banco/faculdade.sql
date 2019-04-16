-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16-Abr-2019 às 17:46
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `faculdade`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id_aluno` int(5) NOT NULL,
  `nome_aluno` varchar(50) NOT NULL,
  `sobrenome_aluno` varchar(50) NOT NULL,
  `telefone_aluno` varchar(50) NOT NULL,
  `idade_aluno` int(5) NOT NULL,
  `curso_aluno` varchar(50) NOT NULL,
  `turma_aluno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cantina`
--

CREATE TABLE `cantina` (
  `id_compra_cantina` int(5) NOT NULL,
  `produto_cantina` varchar(50) NOT NULL,
  `vendedor_cantina` varchar(50) NOT NULL,
  `quantidade_cantina` int(5) NOT NULL,
  `valor_unitario_cantina` float NOT NULL,
  `valor_total_cantina` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `chamada`
--

CREATE TABLE `chamada` (
  `id_chamada` int(5) NOT NULL,
  `data_chamada` varchar(50) NOT NULL,
  `horario_chamada` varchar(50) NOT NULL,
  `disciplina_chamada` varchar(50) NOT NULL,
  `aluno_chamada` varchar(50) NOT NULL,
  `presenca_chamada` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `id_disciplina` int(5) NOT NULL,
  `nome_disciplina` varchar(50) NOT NULL,
  `carga_horario_disciplina` varchar(50) NOT NULL,
  `curso_disciplina` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estacionamento`
--

CREATE TABLE `estacionamento` (
  `id_estacionamento` int(5) NOT NULL,
  `carro_estacionamento` varchar(50) NOT NULL,
  `placa_estacionamento` varchar(50) NOT NULL,
  `vaga_estacionamento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `id_fornecedor` int(11) NOT NULL,
  `razao_social_fornecedor` varchar(30) NOT NULL,
  `fantasia_fornecedor` varchar(30) NOT NULL,
  `cnpj_fornecedor` varchar(20) NOT NULL,
  `inscricao_estadual_fornecedor` varchar(20) NOT NULL,
  `endereco_fornecedor` varchar(30) NOT NULL,
  `pais` varchar(10) NOT NULL,
  `segmento` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id_funcionario` int(5) NOT NULL,
  `nome_funcionario` varchar(50) NOT NULL,
  `cpf_funcionario` varchar(50) NOT NULL,
  `rg_funcionario` varchar(20) NOT NULL,
  `pis_funcionario` varchar(20) NOT NULL,
  `cargo_funcionario` varchar(50) NOT NULL,
  `endereco_funcionario` varchar(50) NOT NULL,
  `salario_funcionario` double NOT NULL,
  `carga_horaria_funcionario` int(10) NOT NULL,
  `telefone_funcionario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(5) NOT NULL,
  `aluno_nota` varchar(50) NOT NULL,
  `disciplina_nota` varchar(50) NOT NULL,
  `periodo_nota` float NOT NULL,
  `nota1_nota` float NOT NULL,
  `nota2_nota` float NOT NULL,
  `nota3_nota` float NOT NULL,
  `nota4_nota` float NOT NULL,
  `exame_final_nota` float NOT NULL,
  `media_final_nota` float NOT NULL,
  `situacao_nota` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ponto`
--

CREATE TABLE `ponto` (
  `id_ponto` int(5) NOT NULL,
  `nome_colaborador_ponto` varchar(50) NOT NULL,
  `data_ponto` varchar(50) NOT NULL,
  `entrada_ponto` varchar(50) NOT NULL,
  `saida_almoco_ponto` varchar(50) NOT NULL,
  `entrada_almoco_ponto` varchar(50) NOT NULL,
  `saida_ponto` varchar(50) NOT NULL,
  `observacao_ponto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `id_professor` int(5) NOT NULL,
  `nome_professor` varchar(50) NOT NULL,
  `disciplina_professor` varchar(50) NOT NULL,
  `ponto_professor` varchar(50) NOT NULL,
  `rg_professor` varchar(50) NOT NULL,
  `cpf_professor` varchar(50) NOT NULL,
  `telefone_professor` varchar(50) NOT NULL,
  `endereco_professor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `protocolo`
--

CREATE TABLE `protocolo` (
  `id_protocolo` int(5) NOT NULL,
  `observacao_protocolo` varchar(50) NOT NULL,
  `valor_protocolo` float NOT NULL,
  `situacao_protocolo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sala`
--

CREATE TABLE `sala` (
  `id_sala` int(5) NOT NULL,
  `andar_sala` int(5) NOT NULL,
  `curso_sala` varchar(50) NOT NULL,
  `periodo_sala` varchar(50) NOT NULL,
  `turno_sala` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `id_turma` int(5) NOT NULL,
  `curso_turma` varchar(50) NOT NULL,
  `periodo_turma` int(5) NOT NULL,
  `qtd_aluno_turma` int(5) NOT NULL,
  `sala_turma` int(5) NOT NULL,
  `representante_turma` varchar(50) NOT NULL,
  `materias_turma` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id_aluno`);

--
-- Indexes for table `cantina`
--
ALTER TABLE `cantina`
  ADD PRIMARY KEY (`id_compra_cantina`);

--
-- Indexes for table `chamada`
--
ALTER TABLE `chamada`
  ADD PRIMARY KEY (`id_chamada`);

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`id_disciplina`);

--
-- Indexes for table `estacionamento`
--
ALTER TABLE `estacionamento`
  ADD PRIMARY KEY (`id_estacionamento`);

--
-- Indexes for table `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`id_fornecedor`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id_funcionario`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `ponto`
--
ALTER TABLE `ponto`
  ADD PRIMARY KEY (`id_ponto`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id_professor`);

--
-- Indexes for table `protocolo`
--
ALTER TABLE `protocolo`
  ADD PRIMARY KEY (`id_protocolo`);

--
-- Indexes for table `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`id_sala`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`id_turma`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id_aluno` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cantina`
--
ALTER TABLE `cantina`
  MODIFY `id_compra_cantina` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chamada`
--
ALTER TABLE `chamada`
  MODIFY `id_chamada` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `id_disciplina` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estacionamento`
--
ALTER TABLE `estacionamento`
  MODIFY `id_estacionamento` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id_funcionario` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ponto`
--
ALTER TABLE `ponto`
  MODIFY `id_ponto` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `id_professor` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `protocolo`
--
ALTER TABLE `protocolo`
  MODIFY `id_protocolo` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sala`
--
ALTER TABLE `sala`
  MODIFY `id_sala` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `id_turma` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
