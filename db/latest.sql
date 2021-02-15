-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2020 at 03:52 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latest`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(4) NOT NULL,
  `title` varchar(225) NOT NULL,
  `author` varchar(225) NOT NULL,
  `postdate` date NOT NULL,
  `image` text NOT NULL,
  `content` text NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(225) NOT NULL,
  `tag` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `author`, `postdate`, `image`, `content`, `updated_on`, `status`, `tag`) VALUES
(38, 'JAVA(Object Oriented Programming)', 'User', '2020-07-18', '989543.jpeg', 'Java&nbsp;is a&nbsp;general-purpose&nbsp;programming language&nbsp;that is&nbsp;class-based,&nbsp;object-oriented, and designed to have as few implementation&nbsp;dependencies&nbsp;as possible. It is intended to let&nbsp;application developers&nbsp;write once, run anywhere&nbsp;(WORA),&nbsp;meaning that&nbsp;compiled&nbsp;Java code can run on all platforms that support Java without the need for recompilation.]&nbsp;Java applications are typically compiled to&nbsp;bytecode&nbsp;that can run on any&nbsp;Java virtual machine&nbsp;(JVM) regardless of the underlying&nbsp;computer architecture. The&nbsp;syntax&nbsp;of&nbsp;Java&nbsp;is similar to&nbsp;C&nbsp;and&nbsp;C++, but it has fewer&nbsp;low-level&nbsp;facilities than either of them. As of 2019, Java was one of the most&nbsp;popular programming languages in use&nbsp;according to&nbsp;GitHub,&nbsp;particularly for&nbsp;client-server&nbsp;web applications, with a reported 9 million developers. Java was originally developed by&nbsp;James Gosling&nbsp;at&nbsp;Sun Microsystems&nbsp;(which has since been acquired by Oracle) and released in 1995 as a core component of Sun Microsystems&#39;&nbsp;Java platform. The original and&nbsp;reference implementation&nbsp;Java&nbsp;compilers, virtual machines, and&nbsp;class libraries&nbsp;were originally released by Sun under&nbsp;proprietary licenses. As of May 2007, in compliance with the specifications of the&nbsp;Java Community Process, Sun had&nbsp;relicensed&nbsp;most of its Java technologies under the&nbsp;GNU General Public License. Meanwhile, others have developed alternative implementations of these Sun technologies, such as the&nbsp;GNU Compiler for Java&nbsp;(bytecode compiler),&nbsp;GNU Classpath&nbsp;(standard libraries), and&nbsp;IcedTea-Web (browser plugin for applets). The latest versions are Java&nbsp;14, released in March 2020, and Java&nbsp;11, a currently supported&nbsp;long-term support&nbsp;(LTS) version, released on September 25, 2018;&nbsp;Oracle&nbsp;released for the&nbsp;legacy&nbsp;Java&nbsp;8&nbsp;LTS the last free public update in January 2019 for commercial use, while it will otherwise still support Java&nbsp;8 with public updates for personal use up to at least December 2020. Oracle (and others) highly recommend uninstalling older versions of Java because of serious risks due to unresolved security issues.Since Java 9, 10, 12 and 13 are no longer supported, Oracle advises its users to immediately transition to the latest version (currently Java 14) or an LTS releas', '2020-07-18 12:21:05', 'published', 'JAVA,Object Oriented Programming,OOP'),
(37, 'C Programming Language', 'Parizat', '2020-07-18', '996068.jpg', 'C&nbsp;is a&nbsp;general-purpose,&nbsp;procedural&nbsp;computer&nbsp;programming language&nbsp;supporting&nbsp;structured programming,&nbsp;lexical variable scope, and&nbsp;recursion, with a&nbsp;static type system. By design, C provides constructs that map efficiently to typical&nbsp;machine instructions. It has found lasting use in applications previously coded in&nbsp;assembly language. Such applications include&nbsp;operating systems&nbsp;and various&nbsp;application software&nbsp;for computers architectures that range from&nbsp;supercomputers&nbsp;to&nbsp;PLCs&nbsp;and&nbsp;embedded systems. A successor to the programming language&nbsp;B, C was originally developed at&nbsp;Bell Labs&nbsp;by&nbsp;Dennis Ritchie&nbsp;between 1972 and 1973 to construct utilities running on&nbsp;Unix. It was applied to re-implementing the kernel of the Unix operating system.[5]&nbsp;During the 1980s, C gradually gained popularity. It has become one of the&nbsp;most widely used programming languages,&nbsp;with C&nbsp;compilers&nbsp;from various vendors available for the majority of existing&nbsp;computer architectures&nbsp;and operating systems. C has been standardized by the&nbsp;ANSI&nbsp;since 1989 (ANSI C) and by the&nbsp;International Organization for Standardization&nbsp;(ISO). C is an&nbsp;imperative&nbsp;procedural&nbsp;language. It was designed to be&nbsp;compiled&nbsp;to provide&nbsp;low-level&nbsp;access to&nbsp;memory&nbsp;and language constructs that map efficiently to&nbsp;machine instructions, all with minimal&nbsp;runtime support. Despite its low-level capabilities, the language was designed to encourage&nbsp;cross-platform&nbsp;programming.', '2020-07-18 12:21:30', 'published', 'C programming,Structured Programming Language');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(4) NOT NULL,
  `username` varchar(225) NOT NULL,
  `firstname` varchar(225) NOT NULL,
  `lastname` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `role` varchar(225) NOT NULL DEFAULT 'user'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `email`, `password`, `role`) VALUES
(17, 'superadmin', 'admin', 'root', 'admin@gmail.com', '$2y$10$lapZDjwd7TQxuUYpj1.QR.oDYVUHVpSrIrE3Du9uYVdfut8LbeeFy', 'superadmin'),
(33, 'admin', 'admin', 'admin', 'admin@admin.com', '$2y$10$K2kbVo6EKfK3ohRczHeFTeQXp/QY1ntD6CYsE5HnnoXTRpHQxMmTS', 'admin'),
(28, 'user', 'User', 'John', 'user@gmail.com', '$2y$10$t.iuj8gRymllrHDcVvzcLOwPilfxwNKknJH2rnLr3zFdwRVzQnR7q', 'user'),
(35, 'Parizat', 'Parizat', 'Kabir', 'parizat@gmail.com', '$2y$10$IJni6ekQfJ1moX5SaMwKE.SXYWMxt2guH3KO/uylAgWwrkW.ZDHIK', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
