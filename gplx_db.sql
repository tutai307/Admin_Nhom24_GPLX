-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2024 at 06:51 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gplx_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chapter`
--
DROP DATABASE IF EXISTS gplx_db;

CREATE TABLE `tbl_chapter` (
  `id` varchar(36) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `tbl_chapter`
--

INSERT INTO `tbl_chapter` (`id`, `code`, `name`, `description`, `quantity`) VALUES
('09e4fcd0-5dbc-467d-bc2e-f3bbdb151ef4', 'v5PpkNLj', 'Chương 4: Kỹ thuật lái xe', 'Kỹ thuật lái xe', 56),
('4548014d-cf9c-4ab6-9b7c-7e7821b78562', 'yk5axN6i', 'Chương 5: Cấu tạo và sửa chữa xe', 'Cấu tạo và sửa chữa xe', 35),
('48bc05e7-5143-4fb3-8ecb-a53ad21c18cd', 'V3IY4dR6', 'Chương 3: Văn hoá, đạo đức', 'Văn hoá, đạo đức', 21),
('4bc15ce0-308e-4bb7-8e5e-5a98d8ae59ae', 'a3IhziAE', 'Chương 6: Hệ thống biển bảo', 'Hệ thống biển bảo', 182),
('50ccd9c5-ce5e-4921-9e23-de46a9558c38', '7C6H0TSq', 'Chương 2: Nghiệp vụ vận tải', 'Nghiệp vụ vận tải', 26),
('abaa731e-c0cf-4bbc-99ca-ef2cd7b76ac1', '29atSXkK', 'Chương 1: Khái niệm và quy tắc giao thông ', ' Khái niệm và quy tắc giao thông ', 166),
('c178f5c3-6950-4d1a-859b-7b366e8bfa49', 'Y6oO0WMa', 'Chương 7: Giải các thế sa hình', 'Giải các thế sa hình', 114);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exam`
--

CREATE TABLE `tbl_exam` (
  `id` varchar(36) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exam_question`
--

CREATE TABLE `tbl_exam_question` (
  `id` varchar(36) NOT NULL,
  `examId` varchar(36) DEFAULT NULL,
  `questionId` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_question`
--

CREATE TABLE `tbl_question` (
  `id` varchar(36) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `questionImage` varchar(255) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `chapterId` varchar(36) DEFAULT NULL,
  `option_1` text DEFAULT NULL,
  `option_2` text DEFAULT NULL,
  `option_3` text DEFAULT NULL,
  `option_4` text DEFAULT NULL,
  `trueanswer` int(1) DEFAULT NULL,
  `isDanger` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `tbl_question`
--

INSERT INTO `tbl_question` (`id`, `code`, `questionImage`, `title`, `chapterId`, `option_1`, `option_2`, `option_3`, `option_4`, `trueanswer`, `isDanger`) VALUES
('04a9ffd6-7411-4885-9a7b-b09a58cc8a39', '5PXQU6Ik', '', 'Phần của đường bộ đươc sử dụng cho các phương tiện giao thông qua lại là gì?', 'abaa731e-c0cf-4bbc-99ca-ef2cd7b76ac1', 'Phần mặt đường và lề đường', 'Phần đường xe chạy', 'Phần đường xe cơ giới', '', 2, 0),
('131c9f86-11d1-424e-80b7-3e790fbe9af2', '4u8ApJmL', '', '“ Phương tiện tham gia giao thông đường bộ” gồm những loại nào?', '50ccd9c5-ce5e-4921-9e23-de46a9558c38', 'Phương tiện giao thông cơ giới đường bộ', 'Phương tiện giao thông thô sơ đường bộ và xe máy chuyên dùng', 'Cả ý 1 và 2', '', 3, 0),
('20fa5c91-5410-4aef-8cc5-7eed42412062', 'rh1BvaYn', '', '“Làn đường” là gì?', 'abaa731e-c0cf-4bbc-99ca-ef2cd7b76ac1', 'Là một phần của phần đường xe chạy được chai theo chiều dọc của đường, sử dụng cho xe chạy.', 'Là một phần của phần đường xe chạy được chia theo chiều dọc của đường, có bề rộng đủ cho xe chạy an toàn', 'Là một phần của phần đường xe chạy được chia theo chiều dọc của đường, có đủ bề rộng cho xe ô tô chạy an toàn', '', 2, 0),
('303c0bdf-b7a0-4733-8f08-0e59c03e124b', 'l9SwK3Ef', '', '“Dải phân cách” trên đường bộ gồm những loại nào?', 'abaa731e-c0cf-4bbc-99ca-ef2cd7b76ac1', 'Dải phân cách gồm loại cố định và loại di động', 'Dải phân cách gồm tường chống ồn, hộ lan cứng và hộ lan mềm', 'Dải phân cách gồm giá long môn và biển báo hiệu đường bộ', '', 1, 0),
('4325fb78-4a3d-4ce2-9242-44c02d380abf', 'C3bOw9Mf', '  https://onthigplx.vn/images/onthigplx_vn__q391.webp', 'Phần của đường bộ đươc sử dụng cho các phương tiện giao thông qua lại là gì?', 'abaa731e-c0cf-4bbc-99ca-ef2cd7b76ac1', 'Phần mặt đường và lề đường', 'Phần đường xe chạy', 'Phần đường xe cơ giới', '', 2, 0),
('63823b61-20f5-45ce-b8b9-6507ae202197', '39wM4fPH', '', 'Khái niệm “khổ giới hạn đường bộ” được hiểu như thế nào là đúng?', 'abaa731e-c0cf-4bbc-99ca-ef2cd7b76ac1', ' Là khoảng trống có kích thước giới hạn về chiều cao, chiều rộng của đường, cầu, bến phà, hầm đường bộ để các xe kể cả hàng hóa xếp trên xe đi qua được an toàn.', 'Là khoảng trống có kích thước giới hạn về chiều rộng của đường, cầu, bến phà, hầm trên đường bộ để các xe kể cả hàng hóa xếp trên xe được đi qua an toàn', ' Là khoảng trống có kích thước giới hạn về chiều cao của đường, cầu, bến phà, hầm trên đường bộ để các xe được đi qua an toàn', '', 1, 0),
('69e9d567-f9d9-46f6-99b2-e1238a4f856c', 'M3JMQDKX', 'https://onthigplx.vn/images/onthigplx_vn__q391.webp', 'a', 'abaa731e-c0cf-4bbc-99ca-ef2cd7b76ac1', 'a', 'b', 'c', 'd', 1, 0),
('96280b6b-bfa2-48fb-b0f7-1ae7cff93fd5', 'Sd6ZytbY', '', 'Khai niệm “phương tiện giao thông cơ giới đường bộ” được hiểu thế nào là đúng?', '50ccd9c5-ce5e-4921-9e23-de46a9558c38', 'Gồm ô tô, máy kéo, xe mô tô hai bánh, xe mô to ba bánh, xe gắn máy, xe cơ giới dùng cho người khuyết tật và xe máy chuyên dùng', 'Gồm xe ô tô; máy kéo; rơ moóc hoặc sơ mi rơ moóc được kéo bởi xe ô tô, máy kéo; xe mô tô hai bánh; xe mô tô ba bánh, xe gắn máy(kể cả xe máy điện) và các loại xe tương tự.', '', '', 2, 0),
('97db2b4b-b9b5-4736-9148-f2359dec89af', 'vqR6DxeI', '', 'Người lái xe được hiểu như thế nào trong các khái niệm dưới đây', 'abaa731e-c0cf-4bbc-99ca-ef2cd7b76ac1', 'Là người điều khiển xe cơ giới', 'LÀ người điều khiển xe thô sơ', ' LÀ người điều khiển xe có súc vật kéo', '', 1, 0),
('98dbbdc3-fc23-431c-90e2-e010907839e5', 'LCoIRqIY', '', '“Người tham gia giao thông đường bộ” Gồm những đối tượng nào?', '50ccd9c5-ce5e-4921-9e23-de46a9558c38', 'Người điều khiển, người sử dụng phương tiện tham giao giao thông đường bộ', 'Người điều khiển, dẫn dắt súc vật, người đi bộ trên đường', 'Cả ý 1 và 2', '', 3, 0),
('99d0c949-f09a-4a55-ad56-0a81627076d3', 'fqBQnNwQ', '', 'Trong các khái niệm dưới đây, “dải phân cách” được hiểu như thế nào là đúng?', 'abaa731e-c0cf-4bbc-99ca-ef2cd7b76ac1', 'Là bộ phận của đường để ngăn cách không cho các loại xe vào những nơi không được phép', 'Là bộ phận đươcng để phân tách phần đường xe chạy và hành lang an toàn giao thông.', 'Là bộ phận của đường để phân chia mặt đường thành hai chiều xe chạy riêng biệt hoặc để phân chia phần đường của xe cơ giới và xe thô sơ.', '', 3, 0),
('e48e804d-58a0-43b2-80e1-2843f8f541cc', 'UlIdKmXD', '', 'Đường mà trên đó phương tiện tham gia giao thông được các phương tiện giao thông được các phương tiện giao thông đến từ hướng khác nhường đường khi qua nơi đường giao nhau, được cắm biển báo hiệu đường ưu tiên là loại đường gì?', 'abaa731e-c0cf-4bbc-99ca-ef2cd7b76ac1', 'Đường không ưu tiên', ' Đường tỉnh lộ', ' Đường quốc lộ', 'Đường ưu tiên', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` varchar(36) NOT NULL,
  `avatar` blob DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_exam`
--

CREATE TABLE `tbl_user_exam` (
  `id` varchar(36) NOT NULL,
  `userId` varchar(36) DEFAULT NULL,
  `examId` varchar(36) DEFAULT NULL,
  `doneDate` date DEFAULT NULL,
  `point` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_wrong_question`
--

CREATE TABLE `tbl_user_wrong_question` (
  `id` varchar(36) NOT NULL,
  `userId` varchar(36) DEFAULT NULL,
  `examId` varchar(36) DEFAULT NULL,
  `questionId` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_chapter`
--
ALTER TABLE `tbl_chapter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_exam`
--
ALTER TABLE `tbl_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_exam_question`
--
ALTER TABLE `tbl_exam_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questionId` (`questionId`),
  ADD KEY `fk_exam_question_exam` (`examId`);

--
-- Indexes for table `tbl_question`
--
ALTER TABLE `tbl_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chapterId` (`chapterId`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_exam`
--
ALTER TABLE `tbl_user_exam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `examId` (`examId`);

--
-- Indexes for table `tbl_user_wrong_question`
--
ALTER TABLE `tbl_user_wrong_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `examId` (`examId`),
  ADD KEY `questionId` (`questionId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_exam_question`
--
ALTER TABLE `tbl_exam_question`
  ADD CONSTRAINT `fk_exam_question_exam` FOREIGN KEY (`examId`) REFERENCES `tbl_exam` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_exam_question_ibfk_1` FOREIGN KEY (`examId`) REFERENCES `tbl_exam` (`id`),
  ADD CONSTRAINT `tbl_exam_question_ibfk_2` FOREIGN KEY (`questionId`) REFERENCES `tbl_question` (`id`);

--
-- Constraints for table `tbl_question`
--
ALTER TABLE `tbl_question`
  ADD CONSTRAINT `tbl_question_ibfk_1` FOREIGN KEY (`chapterId`) REFERENCES `tbl_chapter` (`id`);

--
-- Constraints for table `tbl_user_exam`
--
ALTER TABLE `tbl_user_exam`
  ADD CONSTRAINT `tbl_user_exam_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `tbl_user` (`id`),
  ADD CONSTRAINT `tbl_user_exam_ibfk_2` FOREIGN KEY (`examId`) REFERENCES `tbl_exam` (`id`);

--
-- Constraints for table `tbl_user_wrong_question`
--
ALTER TABLE `tbl_user_wrong_question`
  ADD CONSTRAINT `tbl_user_wrong_question_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `tbl_user` (`id`),
  ADD CONSTRAINT `tbl_user_wrong_question_ibfk_2` FOREIGN KEY (`examId`) REFERENCES `tbl_exam` (`id`),
  ADD CONSTRAINT `tbl_user_wrong_question_ibfk_3` FOREIGN KEY (`questionId`) REFERENCES `tbl_question` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;