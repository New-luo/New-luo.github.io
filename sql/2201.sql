/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50736 (5.7.36-log)
 Source Host           : localhost:3306
 Source Schema         : 2201

 Target Server Type    : MySQL
 Target Server Version : 50736 (5.7.36-log)
 File Encoding         : 65001

 Date: 16/01/2024 09:24:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bed
-- ----------------------------
DROP TABLE IF EXISTS `bed`;
CREATE TABLE `bed`  (
  `bedId` int(11) NOT NULL AUTO_INCREMENT,
  `bedNo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '床位号',
  `state` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '状态（1-空闲, 2-使用中, 3-预订, 4-维修中）',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`bedId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 162 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '床位信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bed
-- ----------------------------
INSERT INTO `bed` VALUES (123, '101', '2', '测试数据');
INSERT INTO `bed` VALUES (124, '102', '2', '测试数据');
INSERT INTO `bed` VALUES (125, '103', '2', '测试数据');
INSERT INTO `bed` VALUES (126, '104', '2', '测试数据');
INSERT INTO `bed` VALUES (127, '105', '2', '测试数据');
INSERT INTO `bed` VALUES (128, '106', '2', '测试数据');
INSERT INTO `bed` VALUES (129, '201', '2', '测试数据');
INSERT INTO `bed` VALUES (130, '202', '2', '测试数据');
INSERT INTO `bed` VALUES (131, '203', '2', '测试数据');
INSERT INTO `bed` VALUES (132, '204', '2', '测试数据');
INSERT INTO `bed` VALUES (133, '205', '2', '测试数据');
INSERT INTO `bed` VALUES (134, '206', '2', '测试数据');
INSERT INTO `bed` VALUES (135, '207', '2', '测试数据');
INSERT INTO `bed` VALUES (136, '208', '2', '测试数据');
INSERT INTO `bed` VALUES (137, '209', '2', '测试数据');
INSERT INTO `bed` VALUES (138, '210', '2', '测试数据');
INSERT INTO `bed` VALUES (139, '220', '2', '测试数据');
INSERT INTO `bed` VALUES (140, '221', '2', '测试数据');
INSERT INTO `bed` VALUES (141, '222', '2', '测试数据');
INSERT INTO `bed` VALUES (142, '223', '2', '测试数据');
INSERT INTO `bed` VALUES (143, '401', '2', '测试数据');
INSERT INTO `bed` VALUES (144, '402', '2', '测试数据');
INSERT INTO `bed` VALUES (145, '403', '2', '测试数据');
INSERT INTO `bed` VALUES (146, '404', '2', '测试数据');
INSERT INTO `bed` VALUES (147, '405', '2', '测试数据');
INSERT INTO `bed` VALUES (148, '406', '2', '测试数据');
INSERT INTO `bed` VALUES (149, '407', '2', '测试数据');
INSERT INTO `bed` VALUES (150, '408', '2', '测试数据');
INSERT INTO `bed` VALUES (151, '301', '2', '测试数据');
INSERT INTO `bed` VALUES (152, '302', '2', '测试数据');
INSERT INTO `bed` VALUES (153, '303', '2', '测试数据');
INSERT INTO `bed` VALUES (154, '304', '2', '测试数据');
INSERT INTO `bed` VALUES (155, '999', '2', '测试数据');
INSERT INTO `bed` VALUES (156, '901', '2', '测试数据');
INSERT INTO `bed` VALUES (157, '902', '1', '测试数据');
INSERT INTO `bed` VALUES (158, '123', '1', '12');
INSERT INTO `bed` VALUES (159, '903', '1', '测试数据');
INSERT INTO `bed` VALUES (160, '904', '1', '测试数据');
INSERT INTO `bed` VALUES (161, '905', '1', '测试数据');

-- ----------------------------
-- Table structure for community
-- ----------------------------
DROP TABLE IF EXISTS `community`;
CREATE TABLE `community`  (
  `communityId` int(11) NOT NULL AUTO_INCREMENT,
  `communityName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '养老院名称',
  `termCount` int(11) NULL DEFAULT NULL COMMENT '楼栋数量',
  `seq` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注\r\n',
  PRIMARY KEY (`communityId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '养老院信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of community
-- ----------------------------
INSERT INTO `community` VALUES (2, '技师学院', 200, '20');
INSERT INTO `community` VALUES (3, '全球通大厦', 120, '30');
INSERT INTO `community` VALUES (9, '海亮天城', 33, '90');
INSERT INTO `community` VALUES (11, '恒大帝景', 20, '110');
INSERT INTO `community` VALUES (12, '瑞心家园', 20, '120');
INSERT INTO `community` VALUES (13, '中祥.玖珑湾', 30, '130');
INSERT INTO `community` VALUES (14, '中航云府', 10, '140');
INSERT INTO `community` VALUES (15, '公园一号', 35, '150');
INSERT INTO `community` VALUES (16, '黄金时代', 8, '160');
INSERT INTO `community` VALUES (22, '13123', 12312, '1231');
INSERT INTO `community` VALUES (23, '123123', 12312, '1231');

-- ----------------------------
-- Table structure for details
-- ----------------------------
DROP TABLE IF EXISTS `details`;
CREATE TABLE `details`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，自增长的唯一标识符。',
  `itemid` int(11) NULL DEFAULT NULL COMMENT '物品id',
  `prodid` int(11) NULL DEFAULT NULL COMMENT '商品ID，关联到商品表中的商品ID。',
  `houseid` int(11) NULL DEFAULT NULL COMMENT '仓库ID，关联到仓库表中的仓库ID。',
  `quantity` int(11) NULL DEFAULT NULL COMMENT '商品数量，表示该商品在仓库中的数量。',
  `purchase` timestamp NULL DEFAULT NULL COMMENT '入库日期，表示该商品进入仓库的日期。',
  `expiration` timestamp NULL DEFAULT NULL COMMENT '过期日期，表示该商品的过期日期。',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '：记录创建时间，表示该记录的创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '记录更新时间，表示该记录的最后更新时间。',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '仓库明细表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of details
-- ----------------------------
INSERT INTO `details` VALUES (55, NULL, 1, 1, 61, '2023-12-18 20:23:14', '2024-12-18 20:23:14', '2023-12-18 20:23:14', '2024-01-05 11:05:11');
INSERT INTO `details` VALUES (56, NULL, 3, 1, 10, '2023-12-18 20:26:32', '2024-12-18 20:26:32', '2023-12-18 20:26:32', '2024-01-02 19:57:39');
INSERT INTO `details` VALUES (57, NULL, 4, 1, 3, '2023-12-18 20:26:32', '2024-12-18 20:26:32', '2023-12-18 20:26:32', '2024-01-02 14:40:14');
INSERT INTO `details` VALUES (58, NULL, 5, 1, 3, '2023-12-18 20:28:43', '2024-12-18 20:28:43', '2023-12-18 20:28:43', '2023-12-28 16:10:42');
INSERT INTO `details` VALUES (59, NULL, 2, 1, 48, '2023-12-19 08:49:45', '2024-12-19 08:49:45', '2023-12-19 08:49:45', '2023-12-29 10:01:36');
INSERT INTO `details` VALUES (60, NULL, 8, 1, 3, '2023-12-19 08:50:42', '2024-12-19 08:50:42', '2023-12-19 08:50:42', NULL);
INSERT INTO `details` VALUES (61, NULL, 9, 1, 3, '2023-12-19 08:50:42', '2024-12-19 08:50:42', '2023-12-19 08:50:42', NULL);
INSERT INTO `details` VALUES (62, NULL, 22, 1, 15, '2023-12-20 09:50:35', '2024-12-20 09:50:35', '2023-12-20 09:50:35', NULL);
INSERT INTO `details` VALUES (63, NULL, 23, 1, 5, '2023-12-20 09:51:29', '2024-12-20 09:51:29', '2023-12-20 09:51:29', NULL);
INSERT INTO `details` VALUES (64, 2, NULL, 2, 36, '2023-12-20 10:15:50', '2024-12-20 10:15:50', '2023-12-20 10:15:50', '2024-01-05 11:32:00');
INSERT INTO `details` VALUES (65, 1, NULL, 2, 0, '2023-12-20 10:16:16', '2024-12-20 10:16:16', '2023-12-20 10:16:16', '2024-01-02 20:24:11');
INSERT INTO `details` VALUES (66, 3, NULL, 2, 22, '2023-12-20 10:16:16', '2024-12-20 10:16:16', '2023-12-20 10:16:16', '2024-01-03 19:26:03');
INSERT INTO `details` VALUES (67, 4, NULL, 2, 37, '2023-12-20 10:16:16', '2024-12-20 10:16:16', '2023-12-20 10:16:16', '2024-01-05 19:42:40');
INSERT INTO `details` VALUES (68, 5, NULL, 2, 15, '2023-12-20 10:18:54', '2024-12-20 10:18:54', '2023-12-20 10:18:54', '2024-01-02 20:24:11');
INSERT INTO `details` VALUES (69, NULL, 12, 1, 8, '2023-12-21 15:32:40', '2024-12-21 15:32:40', '2023-12-21 15:32:40', NULL);
INSERT INTO `details` VALUES (70, NULL, 14, 1, 7, '2023-12-21 15:32:40', '2024-12-21 15:32:40', '2023-12-21 15:32:40', NULL);
INSERT INTO `details` VALUES (71, 8, NULL, 2, 5, '2023-12-21 15:36:33', '2024-12-21 15:36:33', '2023-12-21 15:36:33', '2023-12-21 16:01:50');
INSERT INTO `details` VALUES (72, NULL, 7, 1, 0, '2023-12-29 10:01:40', '2024-12-29 10:01:40', '2023-12-29 10:01:40', '2024-01-05 19:44:01');
INSERT INTO `details` VALUES (73, 9, NULL, 1, 0, '2023-12-29 10:08:38', '2024-12-29 10:08:38', '2023-12-29 10:08:38', '2024-01-02 20:24:11');

-- ----------------------------
-- Table structure for drug
-- ----------------------------
DROP TABLE IF EXISTS `drug`;
CREATE TABLE `drug`  (
  `DrugID` int(11) NOT NULL AUTO_INCREMENT COMMENT '药品id',
  `DrugName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品名称',
  `DrugPic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品图片',
  `DrugF` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品分类',
  `style` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品单位：药品的剂型、单位、包装等信息，例如片剂规格为0.5g/片，瓶装规格为100ml/瓶等',
  `supplier` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商名称（supplier）id',
  `DrugP` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '批准文号',
  `DrugM` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品描述',
  `price` float NULL DEFAULT NULL COMMENT '价格',
  `ctime` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `Gtime` timestamp NULL DEFAULT NULL COMMENT '更新时间该药品信息记录的最近一次更新时间。',
  PRIMARY KEY (`DrugID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '药品信息表\r\n' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of drug
-- ----------------------------
INSERT INTO `drug` VALUES (1, '22222', '\\upload\\20231217\\82cde4a2-7f6a-4b42-92fe-e4f6e1023b96.jpg', '1', '盒', '2', '1111111', '111', 11, '2023-12-17 11:34:42', '2024-01-04 11:47:02');
INSERT INTO `drug` VALUES (2, '111111', '\\upload\\20231214\\96bd2813-b283-445b-ae1c-70c7d8be38b8.jpg', '2', '盒', '2', '11', '11', 1, '2023-12-14 14:01:03', '2023-12-14 14:01:18');
INSERT INTO `drug` VALUES (3, '7891', '\\upload\\20231213\\8026000b-3e4a-4d9e-8a01-c4804568210a.jpg', '2', '盒', '2', '1', '111111', 0, NULL, '2023-12-28 15:03:04');
INSERT INTO `drug` VALUES (4, '999感冒灵', '\\upload\\20231213\\a9956b7d-4e69-42f0-b3b0-743a736159b4.jpg', '4', '瓶', '2', '1', '11', 123, NULL, '2023-12-14 15:25:41');
INSERT INTO `drug` VALUES (5, '121', '\\upload\\20231213\\04bd83f1-d39d-4e58-b909-216742cc138e.jpeg', '5', '121', '2', '211', '21', 21, '2023-12-13 16:18:19', '2023-12-14 14:23:54');
INSERT INTO `drug` VALUES (6, '666感冒灵', '\\upload\\20231213\\65daa5e2-e638-4438-85a6-c6f2cdd518fd.jpeg', '6', '111', '2', '12121', '2', 11, NULL, NULL);
INSERT INTO `drug` VALUES (7, '1', '\\upload\\20231213\\4fc9c9e2-c55b-4149-9c1b-53020082fcbc.jpg', '7', '111111111', '2', '11', '1', 11, NULL, NULL);
INSERT INTO `drug` VALUES (8, '21', '\\upload\\20231213\\c6c9f0c1-254e-4440-9555-98a4be750408.jpg', '8', '12', '2', '212', '12121', 121, '2023-12-13 15:06:17', '2023-12-13 15:06:17');
INSERT INTO `drug` VALUES (9, '211', '\\upload\\20231213\\13b23462-417d-46a3-9fb4-b49306a23f01.jpg', '1', '12', '2', '212', '12121', 121, '2023-12-13 15:06:35', '2023-12-13 15:06:35');
INSERT INTO `drug` VALUES (12, '111', '\\upload\\20231213\\9e83dc23-fa3f-4b8a-88a4-6fc8268ddff5.jpg', '4', '111', '2', '11111', '11', 111, '2023-12-13 16:07:37', '2023-12-13 16:07:37');
INSERT INTO `drug` VALUES (14, '11', '\\upload\\20231214\\076f1a5d-cfa8-423e-a9e1-22675c11cd27.jpg', '5', '1', '2', '11', '11', 11111, '2023-12-14 15:01:12', '2023-12-14 15:04:40');
INSERT INTO `drug` VALUES (15, '11', '\\upload\\20231214\\e6755acb-33b8-4736-897b-7e670f40f202.jpg', '6', '11', '2', '11', '1', 11, '2023-12-14 15:05:12', '2023-12-14 15:05:12');
INSERT INTO `drug` VALUES (16, '1', '\\upload\\20231214\\f33a335d-3f8a-4b18-a2f2-75a0ef775504.jpg', '6', '12', '2', '2121', '2121', 2121, '2023-12-14 15:05:41', '2023-12-14 15:05:41');
INSERT INTO `drug` VALUES (17, '1111', '\\upload\\20231214\\3d22c86b-4465-4fa4-8b6a-c250a623704c.jpg', '5', '1', '2', '1', '1', 1, '2023-12-14 15:24:06', '2023-12-14 15:24:11');
INSERT INTO `drug` VALUES (20, '123', '\\upload\\20231217\\c7a16883-1eea-414a-a5f4-90d5aa730d9b.jpg', '2', '123', '2', '1441', '好', 123, '2023-12-17 19:50:22', '2023-12-28 15:16:02');
INSERT INTO `drug` VALUES (21, '12', '\\upload\\20231217\\9f330313-d9bf-436b-a580-51eaba508771.jpg', '3', 'awd', '2', 'dawd', 'adwd', 111, '2023-12-17 19:55:12', '2023-12-17 19:55:12');
INSERT INTO `drug` VALUES (22, '123', '\\upload\\20231217\\b08771a9-576b-45e3-9c6b-915e0a0ee868.jpg', '12', '123', '2', '123', '123', 11, '2023-12-17 19:57:29', '2023-12-17 19:57:29');
INSERT INTO `drug` VALUES (24, '1', '\\upload\\20231218\\04c5dd96-9e11-4557-b9ba-ea8f9a5b2ef6.jpg', '2', '111', '2', '111', '111', 1, '2023-12-18 10:56:48', '2023-12-18 10:57:50');
INSERT INTO `drug` VALUES (25, '1', '\\upload\\20240109\\f4b73f78-19d0-41f6-81af-b873f35fd2cd.png', '2', '11', '2', '11', '111', 11, NULL, '2024-01-09 09:40:26');
INSERT INTO `drug` VALUES (26, '12', '\\upload\\20231228\\59e6e2df-26b6-4967-866f-27489978336b.png', '2', '21', '2', '21', '21', 21, '2023-12-28 11:05:37', '2023-12-28 11:05:37');
INSERT INTO `drug` VALUES (27, '1', '\\upload\\20231228\\6f490844-65c6-4a14-ad3f-63ae3efbff3a.png', '15', '1', '2', '1', '1', 1, '2023-12-28 11:55:38', '2023-12-28 11:55:38');
INSERT INTO `drug` VALUES (29, '1', '\\upload\\20240102\\424785e8-7cce-4717-9264-03512bf7c12f.png', '2', '111', '2', '111', '1', 11111, '2024-01-02 09:32:40', '2024-01-02 09:32:40');
INSERT INTO `drug` VALUES (30, '源石颗粒', '\\upload\\20240103\\0310412e-9794-4bb8-a17e-2a76fbac1054.jpg', '13', '颗', '2', '10086', '1111', 10, '2024-01-03 16:51:39', '2024-01-03 16:51:39');
INSERT INTO `drug` VALUES (31, '1', '\\upload\\20240105\\d74cc2e6-0073-4459-91c3-f6113f5196c1.png', '2', '1', '2', '1', '1', 1, '2024-01-05 14:13:00', '2024-01-05 14:13:00');

-- ----------------------------
-- Table structure for drugs
-- ----------------------------
DROP TABLE IF EXISTS `drugs`;
CREATE TABLE `drugs`  (
  `drugID` int(11) NOT NULL AUTO_INCREMENT COMMENT '药品分类id',
  `drugNames` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品分类名字',
  PRIMARY KEY (`drugID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '药品分类表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of drugs
-- ----------------------------
INSERT INTO `drugs` VALUES (1, '消炎药');
INSERT INTO `drugs` VALUES (2, '镇痛药');
INSERT INTO `drugs` VALUES (3, '抗过敏药');
INSERT INTO `drugs` VALUES (4, '解热药');
INSERT INTO `drugs` VALUES (5, '抗抑郁药');
INSERT INTO `drugs` VALUES (6, '利尿药');
INSERT INTO `drugs` VALUES (7, '抗高血压药');
INSERT INTO `drugs` VALUES (8, '抗癫痫药');
INSERT INTO `drugs` VALUES (9, '抗糖尿病药');
INSERT INTO `drugs` VALUES (10, '非甾体类抗炎药');
INSERT INTO `drugs` VALUES (11, '抗生素');
INSERT INTO `drugs` VALUES (12, '维生素和矿物质补充剂');
INSERT INTO `drugs` VALUES (13, '口服药物');
INSERT INTO `drugs` VALUES (14, '外用药物');
INSERT INTO `drugs` VALUES (15, '注射药物');
INSERT INTO `drugs` VALUES (16, '吸入药物');
INSERT INTO `drugs` VALUES (27, 'yao');
INSERT INTO `drugs` VALUES (28, '源石颗粒');

-- ----------------------------
-- Table structure for excepts
-- ----------------------------
DROP TABLE IF EXISTS `excepts`;
CREATE TABLE `excepts`  (
  `exceptId` int(11) NOT NULL AUTO_INCREMENT,
  `personId` int(11) NULL DEFAULT NULL COMMENT '异常人员id(关联personInfo表主键)',
  `realName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '老人姓名',
  `exceptTime` datetime NULL DEFAULT NULL COMMENT '发生时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '临床表现',
  `result` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '处理结果',
  `operator` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '处理人',
  PRIMARY KEY (`exceptId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '异常情况表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of excepts
-- ----------------------------
INSERT INTO `excepts` VALUES (1, 91, '李四', '2024-01-04 19:15:43', '1', '1', '1');
INSERT INTO `excepts` VALUES (2, 92, '张三', '2024-01-05 11:11:11', '2', '2', '2');
INSERT INTO `excepts` VALUES (3, 93, '赖金宝', '2024-01-05 11:00:07', '3', '3', '3');
INSERT INTO `excepts` VALUES (4, 94, '赖柯萦', '2024-01-05 11:00:16', '4', '4', '4');
INSERT INTO `excepts` VALUES (5, 95, '丽丽', '2024-01-05 11:00:23', '5', '5', '5');
INSERT INTO `excepts` VALUES (6, 96, '王老五', '2024-01-05 11:00:32', '6', '6', '6');
INSERT INTO `excepts` VALUES (7, 97, '黄蓉', '2024-01-05 11:00:44', '7', '7', '7');
INSERT INTO `excepts` VALUES (8, 98, '杨过', '2024-01-05 11:00:54', '8', '8', '8');
INSERT INTO `excepts` VALUES (10, 100, '王大宝', '2024-01-05 11:01:12', '10', '10', '10');
INSERT INTO `excepts` VALUES (13, 118, '李若含', '2024-01-05 12:00:26', '18', '18', '18');
INSERT INTO `excepts` VALUES (16, 177, '昭阳', '2024-01-08 14:49:03', '177', '177', '177');
INSERT INTO `excepts` VALUES (17, 178, '米彩', '2024-01-09 20:01:36', '178', '178', '178');

-- ----------------------------
-- Table structure for feeproj
-- ----------------------------
DROP TABLE IF EXISTS `feeproj`;
CREATE TABLE `feeproj`  (
  `feeProjId` int(11) NOT NULL,
  `feeProjName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '费用项目名称',
  PRIMARY KEY (`feeProjId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '费用项目表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feeproj
-- ----------------------------
INSERT INTO `feeproj` VALUES (1, '住宿');
INSERT INTO `feeproj` VALUES (2, '药品');
INSERT INTO `feeproj` VALUES (3, '设施');

-- ----------------------------
-- Table structure for finance
-- ----------------------------
DROP TABLE IF EXISTS `finance`;
CREATE TABLE `finance`  (
  `financeId` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `paidMonth` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收款月份',
  `personId` int(11) NULL DEFAULT NULL COMMENT '人员ID（关联personinfo表）',
  `stayMoney` float(11, 2) NULL DEFAULT NULL COMMENT '住宿费金额',
  `paidType` int(11) NULL DEFAULT NULL COMMENT '付款方式（0未知,1微信，2支付宝，3银行转账，4现金，5其他）',
  `feeProjId` int(11) NULL DEFAULT NULL COMMENT '费用类别（关联feeProj主键）',
  `modeofpayment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '按天 按月',
  `paidDate` timestamp NULL DEFAULT NULL COMMENT '付款日期',
  `expireDate` timestamp NULL DEFAULT NULL COMMENT '截止日期',
  `operTime` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `operator` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `finaceremark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`financeId`) USING BTREE,
  UNIQUE INDEX `idx_month`(`paidMonth`, `personId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 131 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '收款明细表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of finance
-- ----------------------------
INSERT INTO `finance` VALUES (39, '2024-01-08 14:42:20', 177, 60.90, 2, 1, '按日收费', '2024-01-08 14:42:20', '2024-01-08 14:43:20', '2024-01-08 14:42:20', 'admin', '测试数据');
INSERT INTO `finance` VALUES (40, '2024-01-08 14:43:29', 178, 60.90, 1, 1, '按日收费', '2024-01-08 14:43:29', '2024-01-09 14:43:29', '2024-01-08 14:43:29', 'admin', '测试数据');
INSERT INTO `finance` VALUES (41, '2024-01-08 14:44:14', 179, 60.90, 3, 1, '按日收费', '2024-01-08 14:44:14', '2024-01-09 14:44:14', '2024-01-08 14:44:14', 'admin', '测试数据');
INSERT INTO `finance` VALUES (42, '2024-01-08 14:44:56', 180, 60.90, 4, 1, '按日收费', '2024-01-08 14:44:56', '2024-01-09 14:44:56', '2024-01-08 14:44:56', 'admin', '测试数据');
INSERT INTO `finance` VALUES (43, '2024-01-08 14:46:47', 181, 60.90, 1, 1, '按日收费', '2024-01-08 14:46:47', '2024-01-09 14:46:47', '2024-01-08 14:46:47', 'admin', '测试数据');
INSERT INTO `finance` VALUES (44, '2024-01-08 14:47:12', 182, 60.90, 1, 1, '按日收费', '2024-01-08 14:47:12', '2024-01-09 14:47:12', '2024-01-08 14:47:12', 'admin', '测试数据');
INSERT INTO `finance` VALUES (45, '2024-01-08 14:47:23', 183, 60.90, 1, 1, '按日收费', '2024-01-08 14:47:23', '2024-01-09 14:47:23', '2024-01-08 14:47:23', 'admin', '测试数据');
INSERT INTO `finance` VALUES (46, '2024-01-08 14:47:36', 184, 60.90, 1, 1, '按日收费', '2024-01-08 14:47:36', '2024-01-09 14:47:36', '2024-01-08 14:47:36', 'admin', '测试数据');
INSERT INTO `finance` VALUES (47, '2024-01-08 14:47:47', 185, 60.90, 1, 1, '按日收费', '2024-01-08 14:47:47', '2024-01-09 14:47:47', '2024-01-08 14:47:47', 'admin', '测试数据');
INSERT INTO `finance` VALUES (48, '2024-01-08 14:47:58', 186, 60.90, 1, 1, '按日收费', '2024-01-08 14:47:58', '2024-01-09 14:47:58', '2024-01-08 14:47:58', 'admin', '测试数据');
INSERT INTO `finance` VALUES (49, '2024-01-08 14:48:08', 187, 60.90, 1, 1, '按日收费', '2024-01-08 14:48:08', '2024-01-09 14:48:08', '2024-01-08 14:48:08', 'admin', '测试数据');
INSERT INTO `finance` VALUES (50, '2024-01-08 14:49:46', 188, 60.90, 4, 1, '按日收费', '2024-01-08 14:49:46', '2024-01-09 14:49:46', '2024-01-08 14:49:46', 'admin', '测试数据2');
INSERT INTO `finance` VALUES (51, '2024-01-08 14:50:08', 189, 60.90, 4, 1, '按日收费', '2024-01-08 14:50:08', '2024-01-09 14:50:08', '2024-01-08 14:50:08', 'admin', '测试数据2');
INSERT INTO `finance` VALUES (52, '2024-01-08 14:50:34', 190, 1827.30, 2, 1, '按月收费', '2024-01-08 14:50:34', '2024-02-07 14:50:34', '2024-01-08 14:50:34', 'admin', '测试数据2');
INSERT INTO `finance` VALUES (54, '2024-01-08 17:41:19', 192, 60.90, 1, 1, '按日收费', '2024-01-08 17:41:19', '2024-01-09 17:41:19', '2024-01-08 17:41:19', 'admin', '你好，世界！');
INSERT INTO `finance` VALUES (55, '2024-01-08 17:55:41', 193, 60.90, 1, 1, '按日收费', '2024-01-08 17:55:41', '2024-01-09 17:55:41', '2024-01-08 17:55:41', 'admin', 'hello，word！');
INSERT INTO `finance` VALUES (56, '2024-01-09 09:07:27', 194, 60.90, 1, 1, '按日收费', '2024-01-09 09:07:27', '2024-01-10 09:07:27', '2024-01-09 09:07:27', 'admin', '你好，世界！');
INSERT INTO `finance` VALUES (57, '2024-01-09 09:09:07', 195, 60.90, 1, 1, '按日收费', '2024-01-09 09:09:07', '2024-01-10 09:09:07', '2024-01-09 09:09:07', 'admin', '你好，世界！');
INSERT INTO `finance` VALUES (58, '2024-01-09 09:10:18', 196, 60.90, 1, 1, '按日收费', '2024-01-09 09:10:18', '2024-01-10 09:10:18', '2024-01-09 09:10:18', 'admin', '测试数据');
INSERT INTO `finance` VALUES (59, '2024-01-09 09:11:48', 197, 60.90, 1, 1, '按日收费', '2024-01-09 09:11:48', '2024-01-10 09:11:48', '2024-01-09 09:11:48', 'admin', 'hello，word！');
INSERT INTO `finance` VALUES (60, '2024-01-09 09:12:34', 198, 60.90, 1, 1, '按日收费', '2024-01-09 09:12:34', '2024-01-10 09:12:34', '2024-01-09 09:12:34', 'admin', '你好');
INSERT INTO `finance` VALUES (61, '2024-01-09 09:12:49', 199, 60.90, 1, 1, '按日收费', '2024-01-09 09:12:49', '2024-01-10 09:12:49', '2024-01-09 09:12:49', 'admin', '你好');
INSERT INTO `finance` VALUES (64, '2024-01-09 10:43:38', 200, 60.90, 1, 1, '按日收费', '2024-01-09 10:43:38', '2024-01-10 10:43:38', '2024-01-09 10:43:38', 'admin', '1234');
INSERT INTO `finance` VALUES (65, '2024-01-09 10:44:13', 201, 60.90, 1, 1, '按日收费', '2024-01-09 10:44:13', '2024-01-10 10:44:13', '2024-01-09 10:44:13', 'admin', '1234');
INSERT INTO `finance` VALUES (67, '2024-01-09 10:47:18', 202, 22228.50, 1, 1, '按年收费', '2024-01-09 10:47:18', '2025-01-08 10:47:18', '2024-01-09 10:47:18', 'admin', '1234');
INSERT INTO `finance` VALUES (68, '2024-01-09 10:48:04', 203, 60.90, 1, 1, '按日收费', '2024-01-09 10:48:04', '2024-01-10 10:48:04', '2024-01-09 10:48:04', 'admin', '2345');
INSERT INTO `finance` VALUES (69, '2024-01-09 10:48:31', 204, 60.90, 1, 1, '按日收费', '2024-01-09 10:48:31', '2024-01-10 10:48:31', '2024-01-09 10:48:31', 'admin', '1234');
INSERT INTO `finance` VALUES (70, '2024-01-09 10:50:08', 205, 60.90, 1, 1, '按日收费', '2024-01-09 10:50:08', '2024-01-10 10:50:08', '2024-01-09 10:50:08', 'admin', '213');
INSERT INTO `finance` VALUES (71, '2024-01-09 10:50:32', 206, 60.90, 1, 1, '按日收费', '2024-01-09 10:50:32', '2024-01-10 10:50:32', '2024-01-09 10:50:32', 'admin', '1234');
INSERT INTO `finance` VALUES (72, '2024-01-09 10:52:34', 207, 60.90, 1, 1, '按日收费', '2024-01-09 10:52:34', '2024-01-10 10:52:34', '2024-01-09 10:52:34', 'admin', '1234');
INSERT INTO `finance` VALUES (73, '2024-01-09 10:53:09', 208, 60.90, 1, 1, '按日收费', '2024-01-09 10:53:09', '2024-01-10 10:53:09', '2024-01-09 10:53:09', 'admin', '123');
INSERT INTO `finance` VALUES (74, '2024-01-09 10:56:12', 209, 60.90, 1, 1, '按日收费', '2024-01-09 10:56:12', '2024-01-10 10:56:12', '2024-01-09 10:56:12', 'admin', '');
INSERT INTO `finance` VALUES (75, '2024-01-09 10:56:12', 204, 60.90, 1, 1, '按日收费', '2024-01-09 10:56:12', '2024-01-10 10:56:12', '2024-01-09 10:56:12', 'admin', NULL);
INSERT INTO `finance` VALUES (78, '2024-01-09 11:20:16', 177, 60.90, 2, 1, '按日收费', '2024-01-09 11:20:16', '2024-01-10 11:20:16', '2024-01-09 11:20:16', 'admin', '测试数据');
INSERT INTO `finance` VALUES (79, '2024-01-09 11:23:06', 210, 22228.50, 1, 1, '按年收费', '2024-01-09 11:23:06', '2025-01-08 11:23:06', '2024-01-09 11:23:06', 'admin', '');
INSERT INTO `finance` VALUES (80, '2024-01-10 13:38:38', 177, 60.90, 2, 1, '按日收费', '2024-01-10 13:38:38', '2024-01-11 13:38:38', '2024-01-10 13:38:38', 'admin', '测试数据');
INSERT INTO `finance` VALUES (81, '2024-01-10 13:38:44', 178, 60.90, 1, 1, '按日收费', '2024-01-10 13:38:44', '2024-01-11 13:38:44', '2024-01-10 13:38:44', 'admin', '测试数据');
INSERT INTO `finance` VALUES (82, '2024-01-10 13:38:46', 179, 60.90, 3, 1, '按日收费', '2024-01-10 13:38:46', '2024-01-11 13:38:46', '2024-01-10 13:38:46', 'admin', '测试数据');
INSERT INTO `finance` VALUES (83, '2024-01-10 13:39:19', 193, 60.90, 1, 1, '按日收费', '2024-01-10 13:39:19', '2024-01-11 13:39:19', '2024-01-10 13:39:19', 'admin', 'hello，word！');
INSERT INTO `finance` VALUES (84, '2024-01-10 13:39:22', 195, 60.90, 1, 1, '按日收费', '2024-01-10 13:39:22', '2024-01-11 13:39:22', '2024-01-10 13:39:22', 'admin', '你好，世界！');
INSERT INTO `finance` VALUES (85, '2024-01-10 14:10:31', 180, 60.90, 4, 1, '按日收费', '2024-01-10 14:10:31', '2024-01-11 14:10:31', '2024-01-10 14:10:31', 'admin', '测试数据');
INSERT INTO `finance` VALUES (86, '2024-01-11 12:49:07', 181, 60.90, 1, 1, '按日收费', '2024-01-11 12:49:07', '2024-01-12 12:49:07', '2024-01-11 12:49:07', 'admin', '测试数据');
INSERT INTO `finance` VALUES (87, '2024-01-11 13:49:24', 197, 60.90, 1, 1, '按日收费', '2024-01-11 13:49:24', '2024-01-12 13:49:24', '2024-01-11 13:49:24', 'admin', 'hello，word！');
INSERT INTO `finance` VALUES (88, '2024-01-11 13:49:26', 199, 60.90, 1, 1, '按日收费', '2024-01-11 13:49:26', '2024-01-12 13:49:26', '2024-01-11 13:49:26', 'admin', '你好');
INSERT INTO `finance` VALUES (89, '2024-01-11 13:49:28', 207, 60.90, 1, 1, '按日收费', '2024-01-11 13:49:28', '2024-01-12 13:49:28', '2024-01-11 13:49:28', 'admin', '1234');
INSERT INTO `finance` VALUES (90, '2024-01-11 13:49:30', 198, 60.90, 1, 1, '按日收费', '2024-01-11 13:49:30', '2024-01-12 13:49:30', '2024-01-11 13:49:30', 'admin', '你好');
INSERT INTO `finance` VALUES (91, '2024-01-11 13:49:32', 196, 60.90, 1, 1, '按日收费', '2024-01-11 13:49:32', '2024-01-12 13:49:32', '2024-01-11 13:49:32', 'admin', '测试数据');
INSERT INTO `finance` VALUES (92, '2024-01-11 13:49:36', 189, 60.90, 4, 1, '按日收费', '2024-01-11 13:49:36', '2024-01-12 13:49:36', '2024-01-11 13:49:36', 'admin', '测试数据2');
INSERT INTO `finance` VALUES (93, '2024-01-11 13:49:39', 195, 60.90, 1, 1, '按日收费', '2024-01-11 13:49:39', '2024-01-12 13:49:39', '2024-01-11 13:49:39', 'admin', '你好，世界！');
INSERT INTO `finance` VALUES (94, '2024-01-12 10:11:02', 211, 60.90, 1, 1, '按日收费', '2024-01-12 10:11:02', '2024-01-13 10:11:02', '2024-01-12 10:11:02', 'admin', '测试数据2');
INSERT INTO `finance` VALUES (95, '2024-01-12 11:50:23', 212, 60.90, 1, 1, '按日收费', '2024-01-12 11:50:23', '2024-01-13 11:50:23', '2024-01-12 11:50:23', 'admin', '');
INSERT INTO `finance` VALUES (96, '2024-01-12 11:53:01', 213, 60.90, 1, 1, '按日收费', '2024-01-12 11:53:01', '2024-01-13 11:53:01', '2024-01-12 11:53:01', 'admin', '你好，世界！');
INSERT INTO `finance` VALUES (97, '2024-01-12 11:53:43', 214, 60.90, 1, 1, '按日收费', '2024-01-12 11:53:43', '2024-01-13 11:53:43', '2024-01-12 11:53:43', 'admin', '你好世界！');
INSERT INTO `finance` VALUES (98, '2024-01-12 12:21:21', 215, 60.90, 1, 1, '按日收费', '2024-01-12 12:21:21', '2024-01-13 12:21:21', '2024-01-12 12:21:21', 'admin', '测试数据');
INSERT INTO `finance` VALUES (99, '2024-01-12 12:24:08', 216, 60.90, 1, 1, '按日收费', '2024-01-12 12:24:08', '2024-01-13 12:24:08', '2024-01-12 12:24:08', 'admin', 'sakurua！');
INSERT INTO `finance` VALUES (100, '2024-01-13 08:39:30', 207, 60.90, 1, 1, '按日收费', '2024-01-13 08:39:30', '2024-01-14 08:39:30', '2024-01-13 08:39:30', 'admin', '1234');
INSERT INTO `finance` VALUES (101, '2024-01-13 08:39:33', 199, 60.90, 1, 1, '按日收费', '2024-01-13 08:39:33', '2024-01-14 08:39:33', '2024-01-13 08:39:33', 'admin', '你好');
INSERT INTO `finance` VALUES (102, '2024-01-13 08:39:35', 194, 60.90, 1, 1, '按日收费', '2024-01-13 08:39:35', '2024-01-14 08:39:35', '2024-01-13 08:39:35', 'admin', '你好，世界！');
INSERT INTO `finance` VALUES (103, '2024-01-13 08:39:37', 195, 60.90, 1, 1, '按日收费', '2024-01-13 08:39:37', '2024-01-14 08:39:37', '2024-01-13 08:39:37', 'admin', '你好，世界！');
INSERT INTO `finance` VALUES (104, '2024-01-13 08:39:39', 196, 60.90, 1, 1, '按日收费', '2024-01-13 08:39:39', '2024-01-14 08:39:39', '2024-01-13 08:39:39', 'admin', '测试数据');
INSERT INTO `finance` VALUES (105, '2024-01-13 08:39:41', 197, 60.90, 1, 1, '按日收费', '2024-01-13 08:39:41', '2024-01-14 08:39:41', '2024-01-13 08:39:41', 'admin', 'hello，word！');
INSERT INTO `finance` VALUES (106, '2024-01-13 08:39:42', 198, 60.90, 1, 1, '按日收费', '2024-01-13 08:39:42', '2024-01-14 08:39:42', '2024-01-13 08:39:42', 'admin', '你好');
INSERT INTO `finance` VALUES (107, '2024-01-13 08:39:45', 192, 60.90, 1, 1, '按日收费', '2024-01-13 08:39:45', '2024-01-14 08:39:45', '2024-01-13 08:39:45', 'admin', '你好，世界！');
INSERT INTO `finance` VALUES (108, '2024-01-13 08:39:47', 189, 60.90, 4, 1, '按日收费', '2024-01-13 08:39:47', '2024-01-14 08:39:47', '2024-01-13 08:39:47', 'admin', '测试数据2');
INSERT INTO `finance` VALUES (109, '2024-01-13 08:39:49', 193, 60.90, 1, 1, '按日收费', '2024-01-13 08:39:49', '2024-01-14 08:39:49', '2024-01-13 08:39:49', 'admin', 'hello，word！');
INSERT INTO `finance` VALUES (110, '2024-01-13 08:39:51', 188, 60.90, 4, 1, '按日收费', '2024-01-13 08:39:51', '2024-01-14 08:39:51', '2024-01-13 08:39:51', 'admin', '测试数据2');
INSERT INTO `finance` VALUES (111, '2024-01-13 08:39:54', 187, 60.90, 1, 1, '按日收费', '2024-01-13 08:39:54', '2024-01-14 08:39:54', '2024-01-13 08:39:54', 'admin', '测试数据');
INSERT INTO `finance` VALUES (112, '2024-01-13 08:39:57', 186, 60.90, 1, 1, '按日收费', '2024-01-13 08:39:57', '2024-01-14 08:39:57', '2024-01-13 08:39:57', 'admin', '测试数据');
INSERT INTO `finance` VALUES (113, '2024-01-13 08:39:58', 185, 60.90, 1, 1, '按日收费', '2024-01-13 08:39:58', '2024-01-14 08:39:58', '2024-01-13 08:39:58', 'admin', '测试数据');
INSERT INTO `finance` VALUES (114, '2024-01-13 08:40:00', 184, 60.90, 1, 1, '按日收费', '2024-01-13 08:40:00', '2024-01-14 08:40:00', '2024-01-13 08:40:00', 'admin', '测试数据');
INSERT INTO `finance` VALUES (115, '2024-01-13 08:40:01', 183, 60.90, 1, 1, '按日收费', '2024-01-13 08:40:01', '2024-01-14 08:40:01', '2024-01-13 08:40:01', 'admin', '测试数据');
INSERT INTO `finance` VALUES (116, '2024-01-13 08:40:03', 182, 60.90, 1, 1, '按日收费', '2024-01-13 08:40:03', '2024-01-14 08:40:03', '2024-01-13 08:40:03', 'admin', '测试数据');
INSERT INTO `finance` VALUES (117, '2024-01-13 08:48:46', 217, 22228.50, 1, 1, '按年收费', '2024-01-13 08:48:46', '2025-01-12 08:48:46', '2024-01-13 08:48:46', '', '');
INSERT INTO `finance` VALUES (118, '2024-01-13 08:49:35', 218, 60.90, 1, 1, '按日收费', '2024-01-13 08:49:35', '2024-01-14 08:49:35', '2024-01-13 08:49:35', 'admin', '');
INSERT INTO `finance` VALUES (119, '2024-01-13 08:49:36', 219, 60.90, 1, 1, '1', '2024-01-13 08:49:36', '2024-01-14 08:49:36', '2024-01-13 08:49:36', 'admin', '');
INSERT INTO `finance` VALUES (120, '2024-01-13 08:49:37', 220, 60.90, 1, 1, '1', '2024-01-13 08:49:37', '2024-01-14 08:49:37', '2024-01-13 08:49:37', 'admin', '');
INSERT INTO `finance` VALUES (121, '2024-01-13 08:49:57', 221, 60.90, 1, 1, '按日收费', '2024-01-13 08:49:57', '2024-01-14 08:49:57', '2024-01-13 08:49:57', 'admin', '');
INSERT INTO `finance` VALUES (122, '2024-01-13 08:49:58', 222, 60.90, 1, 1, '1', '2024-01-13 08:49:58', '2024-01-14 08:49:58', '2024-01-13 08:49:58', 'admin', '');
INSERT INTO `finance` VALUES (123, '2024-01-13 08:50:10', 223, 60.90, 1, 1, '1', '2024-01-13 08:50:10', '2024-01-14 08:50:10', '2024-01-13 08:50:10', 'admin', '');
INSERT INTO `finance` VALUES (124, '2024-01-13 08:50:10', 224, 60.90, 1, 1, '1', '2024-01-13 08:50:10', '2024-01-14 08:50:10', '2024-01-13 08:50:10', 'admin', '');
INSERT INTO `finance` VALUES (125, '2024-01-13 08:54:22', 181, 60.90, 1, 1, '按日收费', '2024-01-13 08:54:22', '2024-01-14 08:54:22', '2024-01-13 08:54:22', 'admin', '测试数据');
INSERT INTO `finance` VALUES (126, '2024-01-13 09:29:57', 177, 60.90, 2, 1, '按日收费', '2024-01-13 09:29:57', '2024-01-14 09:29:57', '2024-01-13 09:29:57', 'admin', '测试数据');
INSERT INTO `finance` VALUES (127, '2024-01-15 08:23:35', 177, 60.90, 2, 1, '按日收费', '2024-01-15 08:23:35', '2024-01-16 08:23:35', '2024-01-15 08:23:35', 'admin', '测试数据');
INSERT INTO `finance` VALUES (128, '2024-01-15 08:23:37', 178, 60.90, 1, 1, '按日收费', '2024-01-15 08:23:37', '2024-01-16 08:23:37', '2024-01-15 08:23:37', 'admin', '测试数据');
INSERT INTO `finance` VALUES (129, '2024-01-15 08:23:39', 179, 60.90, 3, 1, '按日收费', '2024-01-15 08:23:39', '2024-01-16 08:23:39', '2024-01-15 08:23:39', 'admin', '测试数据');
INSERT INTO `finance` VALUES (130, '2024-01-15 08:23:41', 181, 60.90, 1, 1, '按日收费', '2024-01-15 08:23:41', '2024-01-16 08:23:41', '2024-01-15 08:23:41', 'admin', '测试数据');

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house`  (
  `houseId` int(11) NOT NULL AUTO_INCREMENT COMMENT '房屋ID',
  `communityId` int(11) NULL DEFAULT NULL COMMENT '养老院id(关联communityId表)',
  `termId` int(11) NULL DEFAULT NULL COMMENT '所属楼栋',
  `houseName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '房号',
  `contact` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '宿管姓名',
  `tel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '宿管电话',
  `bedCount` int(11) NULL DEFAULT NULL COMMENT '床位数',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `paidType` int(11) NULL DEFAULT NULL COMMENT '收费方式（1-按天收费；2-按月收费；3-按年收费）',
  `paidMoney` float(11, 2) NULL DEFAULT NULL COMMENT '收费金额（基数）',
  PRIMARY KEY (`houseId`) USING BTREE,
  UNIQUE INDEX `unq_houseNo`(`communityId`, `termId`, `houseName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 129 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '房屋信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES (2, 3, 1, '505', '卢先生', '13812345678', 0, '', 0, 0.00);
INSERT INTO `house` VALUES (4, 11, 2, '101', '张三', '13888888888', 0, '', 0, 150.00);
INSERT INTO `house` VALUES (5, 3, 3, '102', '李四', '13999999999', NULL, '', NULL, NULL);
INSERT INTO `house` VALUES (6, 9, 4, '0901', '张三丰', '13712345678', NULL, '', NULL, NULL);
INSERT INTO `house` VALUES (7, 13, 1, '101', '张三', '13888888888', NULL, '', NULL, NULL);
INSERT INTO `house` VALUES (8, 13, 1, '201', '张晓璐', '13888888888', NULL, '', NULL, NULL);
INSERT INTO `house` VALUES (9, 13, 2, '101', '张三', '13888888888', NULL, '', NULL, NULL);
INSERT INTO `house` VALUES (11, 14, 2, '801', '李汶翰', '13888888888', NULL, '', NULL, NULL);
INSERT INTO `house` VALUES (12, 14, 3, '601', '李小龙', '13888888888', NULL, '', NULL, NULL);
INSERT INTO `house` VALUES (13, 14, 4, '503', '李汶翰', '13888888888', NULL, '', NULL, NULL);
INSERT INTO `house` VALUES (106, 16, 2, '555', 'dwawa', 'dwadwa', 555, 'dwadwad', 55, 555.00);
INSERT INTO `house` VALUES (107, 16, 1, '555', 'dwawa', 'dwadwa', 555, 'dwadwad', 55, 555.00);
INSERT INTO `house` VALUES (108, 13, 1, '555', 'dwawa', 'dwadwa', 555, 'dwadwad', 55, 555.00);
INSERT INTO `house` VALUES (109, 3, 1, '555', 'dwawa', 'dwadwa', 555, 'dwadwad', 55, 555.00);
INSERT INTO `house` VALUES (110, 9, 2, '555', 'dwawa', 'dwadwa', 555, 'dwadwad', 55, 555.00);
INSERT INTO `house` VALUES (111, 14, 3, '555', 'dwawa', 'dwadwa', 555, 'dwadwad', 55, 555.00);
INSERT INTO `house` VALUES (113, 16, 4, '555', 'dwawa', 'dwadwa', 555, 'dwadwad', 55, 555.00);
INSERT INTO `house` VALUES (114, 9, 1, '555', 'dwawa', 'dwadwa', 555, 'dwadwad', 55, 555.00);
INSERT INTO `house` VALUES (116, 11, 1, '555', 'dwawa', 'dwadwa', 555, 'dwadwad', 55, 555.00);
INSERT INTO `house` VALUES (128, 13, 1, '557', 'dwawa', 'dwadwa', 555, 'dwadwad', 55, 555.00);

-- ----------------------------
-- Table structure for housepic
-- ----------------------------
DROP TABLE IF EXISTS `housepic`;
CREATE TABLE `housepic`  (
  `picId` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `communityId` int(11) NULL DEFAULT NULL COMMENT '养老院Id',
  `termId` int(11) NULL DEFAULT NULL COMMENT '楼栋ID',
  `houseId` int(11) NULL DEFAULT NULL COMMENT '房间ID',
  `picName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片标题',
  `url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `seq` int(11) NULL DEFAULT NULL COMMENT '可住人数',
  PRIMARY KEY (`picId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of housepic
-- ----------------------------
INSERT INTO `housepic` VALUES (6, 2, 1, 203, '1', '\\upload\\20240113\\d7588a1d-621c-4a5f-81b5-ba3f69aaa42f.jpg', 5);
INSERT INTO `housepic` VALUES (8, 3, 1, 204, '2', '\\upload\\20240109\\19aecaeb-35ab-449e-8075-284c50885d83.webp', 4);
INSERT INTO `housepic` VALUES (18, 9, 1, 101, '3', '\\upload\\20240109\\91e78c2e-e3c7-476b-b476-916d1b650391.webp', 2);
INSERT INTO `housepic` VALUES (23, 11, 2, 107, '4', '\\upload\\20240109\\47b6c4a6-dcd1-4ce1-a83f-c4418bbd3dc6.webp', 5);
INSERT INTO `housepic` VALUES (25, 12, 3, 109, '5', '\\upload\\20240109\\e58d4de7-afd9-4731-a383-be3e248449d1.webp', 2);
INSERT INTO `housepic` VALUES (26, 13, 4, 110, '6', '\\upload\\20240109\\06a1ea80-fced-4152-8978-075fd34e7a81.webp', 10);
INSERT INTO `housepic` VALUES (27, 14, 2, 111, '7', '\\upload\\20240109\\e127dd5f-1051-4a6b-8b6f-686225437835.webp', 11);
INSERT INTO `housepic` VALUES (29, 15, 4, 116, '9', '\\upload\\20240109\\34e4ce97-8c21-4554-969f-0b2f268acd5f.webp', 16);
INSERT INTO `housepic` VALUES (45, 16, 2, 404, '11', '\\upload\\20240109\\b7fb3b88-6da2-4f2c-8ffc-cbfc58aaa593.webp', 44);
INSERT INTO `housepic` VALUES (49, 11, 3, 406, '12', '\\upload\\20240109\\7f62666c-fce0-44ba-9959-4807089c8c72.webp', 46);
INSERT INTO `housepic` VALUES (50, 2, 1, 407, '13', '\\upload\\20240109\\15eced7e-7d86-4e2d-9114-5a05fbbe43e1.webp', 47);
INSERT INTO `housepic` VALUES (51, 9, 2, 408, '14', '\\upload\\20240109\\3387f3dc-616b-4d26-afb2-07c27b80d24f.webp', 48);
INSERT INTO `housepic` VALUES (52, 16, 3, 409, '15', '\\upload\\20240109\\091a7132-99af-4ed4-b24d-30031ceb86c8.webp', 49);
INSERT INTO `housepic` VALUES (75, 13, 4, 410, '410', '\\upload\\20240109\\5e5065d1-950f-4e25-b295-6de5d7790f12.webp', 3);
INSERT INTO `housepic` VALUES (93, 12, 3, 301, '301', '\\upload\\20240109\\66867288-2268-4204-985f-1ff697cba97c.webp', 1);
INSERT INTO `housepic` VALUES (95, 15, 2, 302, '302', '\\upload\\20240109\\42b16018-3db4-4f82-9a5d-6cf37ed3cdf6.webp', 2);
INSERT INTO `housepic` VALUES (96, 14, 1, 303, '303', '\\upload\\20240109\\c85b4bb0-e9a5-49b3-8b85-79a47fde3632.webp', 3);
INSERT INTO `housepic` VALUES (97, 3, 3, 304, '304', '\\upload\\20240113\\e52fabf3-93ea-4965-9f46-6a369b64b7e1.webp', 3);
INSERT INTO `housepic` VALUES (98, 3, 2, 305, '305', '\\upload\\20240113\\9385bf6c-c5a6-46e5-aebc-19969aa8f659.webp', 2);

-- ----------------------------
-- Table structure for itemexcepts
-- ----------------------------
DROP TABLE IF EXISTS `itemexcepts`;
CREATE TABLE `itemexcepts`  (
  `itemExceptsId` int(11) NOT NULL AUTO_INCREMENT COMMENT '物品异常Id',
  `excepts_typeId` int(11) NULL DEFAULT NULL COMMENT '关联物品异常表id',
  `personId` int(11) NULL DEFAULT NULL COMMENT '关联老人资料id',
  `excepts_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常物品名称',
  `excepts_state` int(11) NOT NULL COMMENT '（0,待审核 1,审核中 2,已审核  3,损坏 4,维修中 5,作废）',
  `excepts_Time` timestamp NULL DEFAULT NULL COMMENT '物品异常时间',
  `check_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `excepts_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物品异常信息',
  PRIMARY KEY (`itemExceptsId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '物品异常详情表\r\n\r\n' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of itemexcepts
-- ----------------------------
INSERT INTO `itemexcepts` VALUES (1, 1, 177, '床', 2, '2024-01-09 12:51:39', NULL, '损坏');
INSERT INTO `itemexcepts` VALUES (2, 1, 178, '床', 2, '2024-01-09 12:54:08', NULL, '损坏');
INSERT INTO `itemexcepts` VALUES (4, 1, 177, '床', 2, '2024-01-10 12:59:32', '2024-01-09 15:03:28', '已审核，确认损坏');
INSERT INTO `itemexcepts` VALUES (5, 1, 178, '床', 2, '2024-01-09 14:54:35', '2024-01-09 15:03:31', '已审核，确认损坏');
INSERT INTO `itemexcepts` VALUES (7, 1, 181, '床', 2, '2024-01-09 15:42:57', '2024-01-11 14:24:49', '已审核，确认损坏');
INSERT INTO `itemexcepts` VALUES (9, 1, 181, '床', 0, '2024-01-11 14:31:26', NULL, '少了颗螺丝');
INSERT INTO `itemexcepts` VALUES (10, 1, 181, '床', 2, '2024-01-11 15:28:35', '2024-01-11 16:04:32', '已审核，确认损坏');
INSERT INTO `itemexcepts` VALUES (13, 1, 177, '床', 2, '2024-01-13 09:27:44', '2024-01-13 09:28:13', '已审核，确认损坏');
INSERT INTO `itemexcepts` VALUES (14, 1, 177, '床', 5, '2024-01-13 09:28:32', NULL, '已作废，不再进行管理');

-- ----------------------------
-- Table structure for orderapply
-- ----------------------------
DROP TABLE IF EXISTS `orderapply`;
CREATE TABLE `orderapply`  (
  `orderNo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '领用单号',
  `orderType` int(11) NULL DEFAULT NULL COMMENT '药品id',
  `orderDate` timestamp NULL DEFAULT NULL COMMENT '领用日期',
  `personId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '领用人（关联personInfo表主键）',
  `style` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '领用备注',
  `c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '数量'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '药品订单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orderapply
-- ----------------------------
INSERT INTO `orderapply` VALUES ('202312281088900429', 4, '2023-12-28 09:04:46', '1', '1', '7');
INSERT INTO `orderapply` VALUES ('202312281088900429', 5, '2023-12-28 09:04:46', '1', '1', '7');
INSERT INTO `orderapply` VALUES ('202312281150205116', 4, '2023-12-28 09:07:11', '7', '1', '7');
INSERT INTO `orderapply` VALUES ('202312281114512016', 4, '2023-12-28 09:07:58', '我', '1', '7');
INSERT INTO `orderapply` VALUES ('202312281815259512', 3, '2023-12-28 09:10:07', '额', '1', '7');
INSERT INTO `orderapply` VALUES ('202312281192460822', 3, '2023-12-28 09:11:56', '2', '1', '7');
INSERT INTO `orderapply` VALUES ('202312281734715545', 3, '2023-12-28 09:12:15', '1', '1', '7');
INSERT INTO `orderapply` VALUES ('202312281082914210', 3, '2023-12-28 09:13:55', '1', '1', '7');
INSERT INTO `orderapply` VALUES ('202312281699526158', 3, '2023-12-28 09:13:58', '1', '1', '7');
INSERT INTO `orderapply` VALUES ('202312281346255207', 3, '2023-12-28 09:14:01', '1', '1', '7');
INSERT INTO `orderapply` VALUES ('202312281402718898', 3, '2023-12-28 10:08:07', '1', '1', '7');
INSERT INTO `orderapply` VALUES ('202312281217722802', 3, '2023-12-28 10:08:14', '1', '1', '7');
INSERT INTO `orderapply` VALUES ('202312281078534419', 3, '2023-12-28 15:19:05', '我', '1', '7');
INSERT INTO `orderapply` VALUES ('202312281571234094', 5, '2023-12-28 16:10:25', '12', '1', '7');
INSERT INTO `orderapply` VALUES ('202312281792271467', 5, '2023-12-28 16:10:31', '12', '1', '7');
INSERT INTO `orderapply` VALUES ('202312281491407060', 5, '2023-12-28 16:10:34', '12', '1', '7');
INSERT INTO `orderapply` VALUES ('202312281323317440', 5, '2023-12-28 16:10:38', '12', '1', '7');
INSERT INTO `orderapply` VALUES ('202312281620178832', 5, '2023-12-28 16:10:42', '12', '1', '7');
INSERT INTO `orderapply` VALUES ('202312281190555908', 2, '2023-12-28 18:17:53', '1', '1', '7');
INSERT INTO `orderapply` VALUES ('202312281190555908', 3, '2023-12-28 18:17:53', '1', '1', '7');
INSERT INTO `orderapply` VALUES ('202312281623551083', 1, '2023-12-28 18:27:16', '1', '1', '7');
INSERT INTO `orderapply` VALUES ('202401011114297311', 4, '2024-01-01 19:03:59', '我', '1', '1');
INSERT INTO `orderapply` VALUES ('202401021400112427', 1, '2024-01-02 19:57:39', '12', '1', '4');
INSERT INTO `orderapply` VALUES ('202401021400112427', 3, '2024-01-02 19:57:39', '12', '1', '4');
INSERT INTO `orderapply` VALUES ('202401021456265516', 1, '2024-01-02 20:00:23', '21', '12', '1');
INSERT INTO `orderapply` VALUES ('202401021155840472', 1, '2024-01-02 20:00:39', '111', '1', '1');
INSERT INTO `orderapply` VALUES ('202401021115109577', 1, '2024-01-02 20:01:39', '1', '1', '1');
INSERT INTO `orderapply` VALUES ('202401051445461532', 1, '2024-01-05 11:03:28', '1', '1', '2');
INSERT INTO `orderapply` VALUES ('202401051587470490', 1, '2024-01-05 11:03:53', '1', '1', '1');
INSERT INTO `orderapply` VALUES ('202401051766083370', 1, '2024-01-05 11:03:53', '1', '1', '1');
INSERT INTO `orderapply` VALUES ('202401051331917010', 1, '2024-01-05 11:05:11', '李四', '1', '1');
INSERT INTO `orderapply` VALUES ('202401051258310080', 7, '2024-01-05 19:44:01', '张三', '', '2');

-- ----------------------------
-- Table structure for orderapplydetail
-- ----------------------------
DROP TABLE IF EXISTS `orderapplydetail`;
CREATE TABLE `orderapplydetail`  (
  `orderDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `orderNo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '订单号/领用单号（关联orders或者orderApply表主键）',
  `prodId` int(11) NULL DEFAULT NULL COMMENT '商品ID（关联product表主键）',
  `unitName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '单位',
  `price` float(11, 2) NULL DEFAULT NULL COMMENT '单价',
  `prodCount` int(11) NULL DEFAULT NULL COMMENT '数量(入库>0,出库<0)',
  `totalPrice` float(11, 2) NULL DEFAULT NULL COMMENT '小计',
  `ord` int(11) NOT NULL COMMENT '状态(0已入库1未入库)',
  `time` timestamp NULL DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`orderDetailId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 230 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '药品订单明细表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orderapplydetail
-- ----------------------------
INSERT INTO `orderapplydetail` VALUES (151, '202312201883339664', 2, '盒', 1.00, 5, 5.00, 1, '2023-12-21 15:02:10');
INSERT INTO `orderapplydetail` VALUES (152, '202312201883339664', 22, '123', 11.00, 4, 44.00, 1, '2023-12-21 15:02:13');
INSERT INTO `orderapplydetail` VALUES (153, '202312201883339664', 23, NULL, 0.00, 5, 0.00, 1, '2023-12-21 15:02:10');
INSERT INTO `orderapplydetail` VALUES (154, '202312201473089210', 3, '盒', 0.00, 12, 0.00, 1, '2023-12-21 15:02:10');
INSERT INTO `orderapplydetail` VALUES (155, '202312201603253245', 3, '盒', 0.00, 4, 0.00, 1, '2023-12-21 15:02:10');
INSERT INTO `orderapplydetail` VALUES (156, '202312201603253245', 4, '瓶', 123.00, 6, 738.00, 1, '2023-12-21 15:02:10');
INSERT INTO `orderapplydetail` VALUES (157, '202312201785948487', 2, '盒', 1.00, 10, 10.00, 1, '2023-12-21 15:02:10');
INSERT INTO `orderapplydetail` VALUES (158, '202312201590166102', 1, '盒', 111111000.00, 6, 666665984.00, 1, '2023-12-21 15:02:10');
INSERT INTO `orderapplydetail` VALUES (159, '202312201216356581', 1, '盒', 111111000.00, 8, 888888000.00, 1, '2023-12-21 15:02:10');
INSERT INTO `orderapplydetail` VALUES (160, '202312201079419259', 1, '盒', 111111000.00, 8, 888888000.00, 1, '2023-12-21 15:02:10');
INSERT INTO `orderapplydetail` VALUES (161, '202312201079419259', 2, '盒', 1.00, 7, 7.00, 1, '2023-12-21 15:02:10');
INSERT INTO `orderapplydetail` VALUES (162, '202312201779040867', 2, '盒', 1.00, 10, 10.00, 1, '2023-12-21 15:02:10');
INSERT INTO `orderapplydetail` VALUES (164, '202312211876492581', 22, '123', 11.00, 10, 110.00, 1, '2023-12-21 15:02:10');
INSERT INTO `orderapplydetail` VALUES (165, '202312211777848320', 1, '盒', 111111000.00, 6, 666665984.00, 1, '2023-12-28 15:02:10');
INSERT INTO `orderapplydetail` VALUES (166, '202312211353202121', 3, '盒', 0.00, 4, 0.00, 1, '2023-12-21 15:07:26');
INSERT INTO `orderapplydetail` VALUES (169, '202312211745759466', 2, '盒', 1.00, 4, 4.00, 1, '2023-12-21 15:32:34');
INSERT INTO `orderapplydetail` VALUES (170, '202312211745759466', 12, '111', 111.00, 8, 888.00, 1, '2023-12-21 15:32:34');
INSERT INTO `orderapplydetail` VALUES (171, '202312211745759466', 14, '1', 11111.00, 7, 77777.00, 1, '2023-12-21 15:32:34');
INSERT INTO `orderapplydetail` VALUES (172, '202312211497093574', 1, '盒', 111111000.00, 5, 555555008.00, 1, '2023-12-21 15:34:00');
INSERT INTO `orderapplydetail` VALUES (173, '202312211497093574', 2, '盒', 1.00, 6, 6.00, 1, '2023-12-21 15:34:00');
INSERT INTO `orderapplydetail` VALUES (174, '202312211092357279', 1, '盒', 111111000.00, 1, 111111000.00, 1, '2023-12-21 15:42:52');
INSERT INTO `orderapplydetail` VALUES (175, '202312211092357279', 2, '盒', 1.00, 2, 2.00, 1, '2023-12-21 15:42:52');
INSERT INTO `orderapplydetail` VALUES (176, '202312211092357279', 3, '盒', 0.00, 3, 0.00, 1, '2023-12-21 15:42:52');
INSERT INTO `orderapplydetail` VALUES (177, '202312211586786795', 4, '瓶', 123.00, 3, 369.00, 1, '2023-12-21 15:53:36');
INSERT INTO `orderapplydetail` VALUES (178, '202312211586786795', 5, '121', 21.00, 4, 84.00, 1, '2023-12-21 15:53:36');
INSERT INTO `orderapplydetail` VALUES (179, '202312251858924816', 1, '盒', 111111000.00, 3, 333332992.00, 1, '2023-12-25 14:39:58');
INSERT INTO `orderapplydetail` VALUES (180, '202312251858924816', 2, '盒', 1.00, 2, 2.00, 1, '2023-12-25 14:39:58');
INSERT INTO `orderapplydetail` VALUES (181, '202312251576819532', 3, '盒', 0.00, 4, 0.00, 1, '2023-12-25 15:49:34');
INSERT INTO `orderapplydetail` VALUES (182, '202312251576819532', 4, '瓶', 123.00, 4, 492.00, 1, '2023-12-25 15:49:34');
INSERT INTO `orderapplydetail` VALUES (183, '202312251182833122', 7, '111111111', 11.00, 1, 11.00, 1, '2023-12-25 15:59:07');
INSERT INTO `orderapplydetail` VALUES (184, '202312271113501854', 4, '瓶', 123.00, 1, 123.00, 1, '2023-12-27 19:10:28');
INSERT INTO `orderapplydetail` VALUES (185, '202312291031934369', 1, '盒', 110.00, 6, 660.00, 1, '2023-12-29 09:03:05');
INSERT INTO `orderapplydetail` VALUES (186, '202312291166077148', 2, '盒', 1.00, 3, 3.00, 1, '2023-12-29 10:01:24');
INSERT INTO `orderapplydetail` VALUES (187, '202312291259322075', 3, '盒', 0.00, 1, 0.00, 1, '2023-12-29 10:18:25');
INSERT INTO `orderapplydetail` VALUES (188, '202312291069149098', 4, '瓶', 123.00, 1, 123.00, 1, '2023-12-29 10:19:25');
INSERT INTO `orderapplydetail` VALUES (189, '202401021621084058', 2, '盒', 1.00, 3, 3.00, 0, '2024-01-02 09:22:21');
INSERT INTO `orderapplydetail` VALUES (190, '202401021010525953', 3, '盒', 0.00, 1, 0.00, 0, '2024-01-02 11:41:24');
INSERT INTO `orderapplydetail` VALUES (191, '202401021006698052', 4, '瓶', 123.00, 1, 123.00, 0, '2024-01-02 14:38:51');
INSERT INTO `orderapplydetail` VALUES (192, '202401021633676545', 1, '盒', 11.00, 1, 11.00, 0, '2024-01-02 14:44:00');
INSERT INTO `orderapplydetail` VALUES (193, '202401021633676545', 14, '1', 11111.00, 1, 11111.00, 0, '2024-01-02 14:44:00');
INSERT INTO `orderapplydetail` VALUES (194, '202401021073622241', 1, '盒', 11.00, 1, 11.00, 0, '2024-01-02 15:11:55');
INSERT INTO `orderapplydetail` VALUES (195, '202401021314034382', 1, '盒', 11.00, 20, 220.00, 0, '2024-01-02 15:19:05');
INSERT INTO `orderapplydetail` VALUES (196, '202401021748003887', 1, '盒', 11.00, 10, 110.00, 0, '2024-01-02 15:48:14');
INSERT INTO `orderapplydetail` VALUES (197, '202401021047460601', 1, '盒', 11.00, 5, 55.00, 0, '2024-01-02 15:48:51');
INSERT INTO `orderapplydetail` VALUES (198, '202401021047460601', 9, '12', 121.00, 5, 605.00, 0, '2024-01-02 15:48:51');
INSERT INTO `orderapplydetail` VALUES (199, '202401021047460601', 10, '111', 11.00, 5, 55.00, 0, '2024-01-02 15:48:51');
INSERT INTO `orderapplydetail` VALUES (200, '202401021047460601', 12, '111', 111.00, 3, 333.00, 0, '2024-01-02 15:48:51');
INSERT INTO `orderapplydetail` VALUES (201, '202401021047460601', 14, '1', 11111.00, 2, 22222.00, 0, '2024-01-02 15:48:51');
INSERT INTO `orderapplydetail` VALUES (202, '202401021081364886', 1, '盒', 11.00, 5, 55.00, 0, '2024-01-02 15:51:21');
INSERT INTO `orderapplydetail` VALUES (203, '202401021081364886', 2, '盒', 1.00, 6, 6.00, 0, '2024-01-02 15:51:21');
INSERT INTO `orderapplydetail` VALUES (204, '202401021000631245', 1, '盒', 11.00, 3, 33.00, 0, '2024-01-02 15:51:53');
INSERT INTO `orderapplydetail` VALUES (205, '202401021097740305', 1, '盒', 11.00, 11, 121.00, 0, '2024-01-02 15:53:34');
INSERT INTO `orderapplydetail` VALUES (206, '202401021666852561', 1, '盒', 11.00, 1, 11.00, 0, '2024-01-02 15:58:40');
INSERT INTO `orderapplydetail` VALUES (207, '202401021693395731', 1, '盒', 11.00, 2, 22.00, 0, '2024-01-02 15:58:48');
INSERT INTO `orderapplydetail` VALUES (208, '202401021514910809', 1, '盒', 11.00, 4, 44.00, 0, '2024-01-02 15:58:57');
INSERT INTO `orderapplydetail` VALUES (209, '202401021514910809', 2, '盒', 1.00, 4, 4.00, 0, '2024-01-02 15:58:57');
INSERT INTO `orderapplydetail` VALUES (210, '202401021514910809', 3, '盒', 0.00, 4, 0.00, 0, '2024-01-02 15:58:57');
INSERT INTO `orderapplydetail` VALUES (211, '202401021868045744', 1, '盒', 11.00, 4, 44.00, 0, '2024-01-02 16:10:15');
INSERT INTO `orderapplydetail` VALUES (212, '202401021340922642', 1, '盒', 11.00, 1, 11.00, 0, '2024-01-02 16:10:26');
INSERT INTO `orderapplydetail` VALUES (213, '202401021522675310', 1, '盒', 11.00, 3, 33.00, 0, '2024-01-02 16:22:31');
INSERT INTO `orderapplydetail` VALUES (214, '202401021165020843', 1, '盒', 11.00, 5, 55.00, 0, '2024-01-02 16:23:39');
INSERT INTO `orderapplydetail` VALUES (215, '202401021165020843', 2, '盒', 1.00, 4, 4.00, 0, '2024-01-02 16:23:39');
INSERT INTO `orderapplydetail` VALUES (216, '202401021165020843', 3, '盒', 0.00, 4, 0.00, 0, '2024-01-02 16:23:39');
INSERT INTO `orderapplydetail` VALUES (217, '202401021165020843', 4, '瓶', 123.00, 4, 492.00, 0, '2024-01-02 16:23:39');
INSERT INTO `orderapplydetail` VALUES (218, '202401021509093243', 1, '盒', 11.00, 5, 55.00, 0, '2024-01-02 16:24:28');
INSERT INTO `orderapplydetail` VALUES (219, '202401021509093243', 2, '盒', 1.00, 4, 4.00, 0, '2024-01-02 16:24:28');
INSERT INTO `orderapplydetail` VALUES (220, '202401021509093243', 3, '盒', 0.00, 4, 0.00, 0, '2024-01-02 16:24:28');
INSERT INTO `orderapplydetail` VALUES (221, '202401021509093243', 4, '瓶', 123.00, 4, 492.00, 0, '2024-01-02 16:24:28');
INSERT INTO `orderapplydetail` VALUES (222, '202401021536630022', 1, '盒', 11.00, 3, 33.00, 0, '2024-01-02 16:25:50');
INSERT INTO `orderapplydetail` VALUES (223, '202401021419894928', 1, '盒', 11.00, 10, 110.00, 0, '2024-01-02 18:02:29');
INSERT INTO `orderapplydetail` VALUES (224, '202401021374702538', 1, '盒', 11.00, 10, 110.00, 0, '2024-01-02 18:02:33');
INSERT INTO `orderapplydetail` VALUES (225, '202401021764085757', 1, '盒', 11.00, 11, 121.00, 0, '2024-01-02 18:25:41');
INSERT INTO `orderapplydetail` VALUES (226, '202401021226420037', 1, '盒', 11.00, 11, 121.00, 0, '2024-01-02 18:26:11');
INSERT INTO `orderapplydetail` VALUES (227, '202401021524425962', 1, '盒', 11.00, 11, 121.00, 0, '2024-01-02 18:26:18');
INSERT INTO `orderapplydetail` VALUES (228, '202401021648109701', 1, '盒', 11.00, 11, 121.00, 0, '2024-01-02 18:27:23');
INSERT INTO `orderapplydetail` VALUES (229, '202401021851892875', 1, '盒', 11.00, 8, 88.00, 0, '2024-01-02 20:11:37');

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail`  (
  `orderNo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '订单号/领用单号（关联orders表主键）',
  `prodId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '商品ID（关联product表主键）',
  `orderDate` timestamp NULL DEFAULT NULL COMMENT '日期',
  `personId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '人',
  `bz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  `c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '数量'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '货物订单明细表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES ('202312281864714011', '2', '2023-12-28 18:09:59', '1', '', '1');
INSERT INTO `orderdetail` VALUES ('202312281494618572', '1', '2023-12-28 18:16:38', '1', '1', '4');
INSERT INTO `orderdetail` VALUES ('202312281494618572', '2', '2023-12-28 18:16:38', '1', '1', '3');
INSERT INTO `orderdetail` VALUES ('202312281494618572', '3', '2023-12-28 18:16:38', '1', '1', '3');
INSERT INTO `orderdetail` VALUES ('202312281136114580', '2', '2023-12-28 18:26:22', '1', '1111111111111111', '2');
INSERT INTO `orderdetail` VALUES ('202312281291273420', '1', '2023-12-28 20:22:21', 'admin', '11', '1');
INSERT INTO `orderdetail` VALUES ('202312281291273420', '2', '2023-12-28 20:22:21', 'admin', '11', '1');
INSERT INTO `orderdetail` VALUES ('202401021134564252', '1', '2024-01-02 20:24:11', '1', '1', '2');
INSERT INTO `orderdetail` VALUES ('202401021134564252', '2', '2024-01-02 20:24:11', '1', '1', '10');
INSERT INTO `orderdetail` VALUES ('202401021134564252', '5', '2024-01-02 20:24:11', '1', '1', '3');
INSERT INTO `orderdetail` VALUES ('202401021134564252', '9', '2024-01-02 20:24:11', '1', '1', '1');
INSERT INTO `orderdetail` VALUES ('202401031682090477', '2', '2024-01-03 08:57:00', '1', '1', '1');
INSERT INTO `orderdetail` VALUES ('202401031682090477', '3', '2024-01-03 08:57:00', '1', '1', '1');
INSERT INTO `orderdetail` VALUES ('202401031682090477', '4', '2024-01-03 08:57:00', '1', '1', '1');
INSERT INTO `orderdetail` VALUES ('202401031205590698', '2', '2024-01-03 08:59:03', '我', '1', '1');
INSERT INTO `orderdetail` VALUES ('202401031205590698', '3', '2024-01-03 08:59:03', '我', '1', '1');
INSERT INTO `orderdetail` VALUES ('202401031004397192', '2', '2024-01-03 08:59:10', '我', '1', '1');
INSERT INTO `orderdetail` VALUES ('202401031004397192', '3', '2024-01-03 08:59:10', '我', '1', '1');
INSERT INTO `orderdetail` VALUES ('202401031274158167', '2', '2024-01-03 09:01:07', '我', '1', '1');
INSERT INTO `orderdetail` VALUES ('202401031274158167', '3', '2024-01-03 09:01:07', '我', '1', '1');
INSERT INTO `orderdetail` VALUES ('202401051346237257', '2', '2024-01-05 11:08:49', '李四', '1', '1');
INSERT INTO `orderdetail` VALUES ('202401051032260995', '2', '2024-01-05 11:09:51', '李四', '1', '1');
INSERT INTO `orderdetail` VALUES ('202401051260231896', '2', '2024-01-05 11:32:00', '李四', '', '1');
INSERT INTO `orderdetail` VALUES ('202401051541220488', '4', '2024-01-05 19:42:40', '李四', '', '4');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `orderDetailId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `orderNo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '订单号',
  `orderType` int(11) NULL DEFAULT NULL COMMENT '类别（1-物品采购,2.物品领用）',
  `orderDate` timestamp NULL DEFAULT NULL COMMENT '采购日期',
  `supplierId` int(11) NULL DEFAULT NULL COMMENT '供应商ID（管理supplier表主键）',
  `storageId` int(11) NULL DEFAULT NULL COMMENT '仓库ID（管理storage表主键）',
  `chairman` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '采购人',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联系电话',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  `prodId` int(11) NULL DEFAULT NULL COMMENT '物品id',
  `unitName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '单位',
  `price` float(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `sytle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '状态',
  `totalPrice` float(10, 2) NULL DEFAULT NULL COMMENT '小记',
  `prodCount` float(255, 0) NULL DEFAULT NULL COMMENT '数量',
  `time` timestamp NULL DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`orderDetailId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '物品订单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (3, '202312191009166567', 1, '2023-12-19 15:07:01', 2, 1, '1', '111111111111111', '备注', 2, '111', 111.00, '1', 333.00, 3, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (4, '202312191009166567', 1, '2023-12-19 15:07:01', 2, 1, '1', '111111111111111', '备注', 3, '11', 111.00, '1', 444.00, 4, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (5, '202312191009166567', 1, '2023-12-19 15:07:01', 2, 1, '1', '111111111111111', '备注', 4, '12312', 123123.00, '1', 492492.00, 4, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (8, '202312191503156101', 1, '2023-12-19 15:22:26', 2, 1, '1', '111111111111111', '备注', 1, '1', 155.50, '1', 622.00, 4, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (9, '202312191503156101', 1, '2023-12-19 15:22:26', 2, 1, '1', '111111111111111', '备注', 2, '111', 111.00, '1', 333.00, 3, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (10, '202312191503156101', 1, '2023-12-19 15:22:26', 2, 1, '1', '111111111111111', '备注', 3, '11', 111.00, '1', 222.00, 2, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (11, '202312191064528679', 1, '2023-12-19 19:40:52', 2, 1, '1', '111111111111111', '备注', 3, '1', 111.00, '1', 666.00, 6, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (12, '202312191064528679', 1, '2023-12-19 19:40:52', 2, 1, '1', '111111111111111', '备注', 4, '1', 123123.00, '1', 861861.00, 7, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (13, '202312201198370373', 1, '2023-12-20 09:29:31', 2, 1, '1', '111111111111111', '备注', 2, '1', 111.00, '1', 888.00, 8, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (14, '202312201198370373', 1, '2023-12-20 09:29:31', 2, 1, '1', '111111111111111', '备注', 3, '1', 111.00, '1', 555.00, 5, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (15, '202312201042808542', 1, '2023-12-20 09:33:05', 2, 1, '1', '111111111111111', '备注', 2, '1', 111.00, '1', 1332.00, 12, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (16, '202312201042808542', 1, '2023-12-20 09:33:05', 2, 1, '1', '111111111111111', '备注', 3, '1', 111.00, '1', 555.00, 5, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (17, '202312201163503461', 1, '2023-12-20 09:40:17', 2, 1, '1', '111111111111111', '备注', 2, '1', 111.00, '1', 777.00, 7, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (18, '202312201163503461', 1, '2023-12-20 09:40:17', 2, 1, '1', '111111111111111', '备注', 3, '1', 111.00, '1', 555.00, 5, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (19, '202312201220274780', 1, '2023-12-20 09:41:34', 2, 1, '1', '111111111111111', '备注', 3, '1', 111.00, '1', 1110.00, 10, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (20, '202312201219333652', 1, '2023-12-20 10:04:22', 2, 1, '1', '111111111111111', '备注', 2, '1', 111.00, '1', 1110.00, 10, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (21, '202312201282891794', 1, '2023-12-20 10:15:45', 2, 1, '1', '111111111111111', '备注', 2, '1', 111.00, '1', 888.00, 8, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (22, '202312201804778248', 1, '2023-12-20 10:16:11', 2, 1, '1', '111111111111111', '备注', 1, '1', 155.50, '1', 933.00, 6, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (23, '202312201804778248', 1, '2023-12-20 10:16:11', 2, 1, '1', '111111111111111', '备注', 2, '1', 111.00, '1', 555.00, 5, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (24, '202312201804778248', 1, '2023-12-20 10:16:11', 2, 1, '1', '111111111111111', '备注', 3, '1', 111.00, '1', 555.00, 5, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (25, '202312201804778248', 1, '2023-12-20 10:16:11', 2, 1, '1', '111111111111111', '备注', 4, '1', 123123.00, '1', 861861.00, 7, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (26, '202312201059369750', 1, '2023-12-20 10:16:38', 2, 1, '1', '111111111111111', '备注', 2, '1', 111.00, '1', 1110.00, 10, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (27, '202312201123839022', 1, '2023-12-20 10:18:46', 2, 1, '1', '111111111111111', '备注', 2, '1', 111.00, '1', 1110.00, 10, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (28, '202312201123839022', 1, '2023-12-20 10:18:46', 2, 1, '1', '111111111111111', '备注', 3, '1', 111.00, '1', 1110.00, 10, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (29, '202312201123839022', 1, '2023-12-20 10:18:46', 2, 1, '1', '111111111111111', '备注', 4, '1', 123123.00, '1', 1231230.00, 10, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (30, '202312201123839022', 1, '2023-12-20 10:18:46', 2, 1, '1', '111111111111111', '备注', 5, '1', 111.00, '1', 1110.00, 10, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (31, '202312201611479184', 1, '2023-12-20 10:22:10', 2, 1, '1', '111111111111111', '备注', 3, '1', 111.00, '1', 444.00, 4, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (32, '202312201757882361', 1, '2023-12-20 10:24:12', 2, 1, '1', '111111111111111', '备注', 2, '1', 111.00, '1', 444.00, 4, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (33, '202312201285694272', 1, '2023-12-20 10:24:36', 2, 1, '1', '111111111111111', '备注', 2, '1', 111.00, '1', 666.00, 6, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (34, '202312201560613957', 1, '2023-12-20 10:36:58', 2, 1, '1', '111111111111111', '备注', 2, '1', 111.00, '1', 1110.00, 10, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (35, '202312201457832393', 1, '2023-12-20 10:38:50', 2, 1, '1', '111111111111111', '备注', 2, '1', 111.00, '1', 555.00, 5, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (36, '202312201141075746', 1, '2023-12-20 10:46:19', 2, 1, '1', '111111111111111', '备注', 2, '1', 111.00, '1', 1110.00, 10, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (37, '202312201648647937', 1, '2023-12-20 11:11:21', 2, 1, '1', '111111111111111', '备注', 4, '1', 123123.00, '1', 492492.00, 4, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (38, '202312201648647937', 1, '2023-12-20 11:11:21', 2, 1, '1', '111111111111111', '备注', 5, '1', 111.00, '1', 333.00, 3, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (39, '202312201333698177', 1, '2023-12-20 11:20:33', 2, 1, '1', '111111111111111', '备注', 4, '1', 123123.00, '1', 2462460.00, 20, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (40, '202312201333698177', 1, '2023-12-20 11:20:33', 2, 1, '1', '111111111111111', '备注', 8, '1', 11.00, '1', 0.00, 0, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (41, '202312201293278231', 1, '2023-12-20 11:21:28', 2, 1, '1', '111111111111111', '备注', 3, '1', 111.00, '1', 0.00, 0, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (42, '202312201293278231', 1, '2023-12-20 11:21:28', 2, 1, '1', '111111111111111', '备注', 4, '1', 123123.00, '1', 738738.00, 6, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (43, '202312211354440633', 1, '2023-12-21 11:57:45', 2, 1, '1', '111111111111111', '备注', 4, '1', 123123.00, '1', 615615.00, 5, '2023-12-21 15:09:34');
INSERT INTO `orders` VALUES (44, '202312211256719548', 1, '2023-12-21 15:12:29', 2, 1, '1', '111111111111111', '备注', 3, '1', 111.00, '1', 444.00, 4, '2023-12-21 15:12:29');
INSERT INTO `orders` VALUES (45, '202312211552079304', 1, '2023-12-21 15:53:57', 2, 1, '1', '111111111111111', '备注', 1, '1', 155.50, '1', 777.50, 5, '2023-12-21 15:53:57');
INSERT INTO `orders` VALUES (46, '202312211552079304', 1, '2023-12-21 15:53:57', 2, 1, '1', '111111111111111', '备注', 2, '1', 111.00, '1', 555.00, 5, '2023-12-21 15:53:57');
INSERT INTO `orders` VALUES (47, '202312211044209402', 1, '2023-12-21 15:55:59', 2, 1, '1', '111111111111111', '备注', 3, '1', 111.00, '1', 444.00, 4, '2023-12-21 15:55:59');
INSERT INTO `orders` VALUES (48, '202312211044209402', 1, '2023-12-21 15:55:59', 2, 1, '1', '111111111111111', '备注', 4, '1', 123123.00, '1', 492492.00, 4, '2023-12-21 15:55:59');
INSERT INTO `orders` VALUES (49, '202312211163120173', 1, '2023-12-21 15:59:57', 2, 1, '1', '111111111111111', '备注', 2, '1', 111.00, '1', 444.00, 4, '2023-12-21 15:59:57');
INSERT INTO `orders` VALUES (50, '202312211163120173', 1, '2023-12-21 15:59:57', 2, 1, '1', '111111111111111', '备注', 3, '1', 111.00, '1', 333.00, 3, '2023-12-21 15:59:57');
INSERT INTO `orders` VALUES (51, '202312211771166720', 1, '2023-12-21 16:00:46', 2, 1, '1', '111111111111111', '备注', 5, '1', 111.00, '1', 555.00, 5, '2023-12-21 16:00:46');
INSERT INTO `orders` VALUES (52, '202312211771166720', 1, '2023-12-21 16:00:46', 2, 1, '1', '111111111111111', '备注', 8, '1', 11.00, '1', 55.00, 5, '2023-12-21 16:00:46');
INSERT INTO `orders` VALUES (53, '202312211425512020', 1, '2023-12-21 16:01:12', 2, 1, '1', '111111111111111', '备注', 1, '1', 155.50, '1', 155.50, 1, '2023-12-21 16:01:12');
INSERT INTO `orders` VALUES (54, '202312211425512020', 1, '2023-12-21 16:01:12', 2, 1, '1', '111111111111111', '备注', 2, '1', 111.00, '1', 0.00, 0, '2023-12-21 16:01:12');
INSERT INTO `orders` VALUES (55, '202312211425512020', 1, '2023-12-21 16:01:12', 2, 1, '1', '111111111111111', '备注', 3, '1', 111.00, '1', 0.00, 0, '2023-12-21 16:01:12');
INSERT INTO `orders` VALUES (56, '202312271641157284', 1, '2023-12-27 18:54:12', 2, 1, '1', '111111111111111', '备注', 2, '1', 111.00, '1', 333.00, 3, '2023-12-27 18:54:12');
INSERT INTO `orders` VALUES (57, '202312291733200213', 1, '2023-12-29 09:57:36', 2, 1, '1', '111111111111111', '备注', 2, '1', 111.00, '1', 1110.00, 10, '2023-12-29 09:57:36');
INSERT INTO `orders` VALUES (58, '202312291418912300', 1, '2023-12-29 10:02:21', 2, 1, '1', '111111111111111', '备注', 3, '1', 111.00, '1', 444.00, 4, '2023-12-29 10:02:21');
INSERT INTO `orders` VALUES (59, '202312291807101284', 1, '2023-12-29 10:06:37', 2, 1, '1', '111111111111111', '备注', 3, '1', 111.00, '1', 111.00, 1, '2023-12-29 10:06:37');
INSERT INTO `orders` VALUES (60, '202312291807101284', 1, '2023-12-29 10:06:37', 2, 1, '1', '111111111111111', '备注', 4, '1', 123123.00, '1', 123123.00, 1, '2023-12-29 10:06:37');
INSERT INTO `orders` VALUES (61, '202312291628566442', 1, '2023-12-29 10:07:54', 2, 1, '1', '111111111111111', '备注', 3, '1', 111.00, '1', 111.00, 1, '2023-12-29 10:07:54');
INSERT INTO `orders` VALUES (62, '202312291722076845', 1, '2023-12-29 10:08:25', 2, 1, '1', '111111111111111', '备注', 9, '1', 111.00, '1', 111.00, 1, '2023-12-29 10:08:25');
INSERT INTO `orders` VALUES (63, '202401021854453112', 1, '2024-01-02 19:14:51', 2, 1, '1', '111111111111111', '备注', 3, '1', 111.00, '1', 111.00, 1, '2024-01-02 19:14:51');
INSERT INTO `orders` VALUES (64, '202401021574415424', 1, '2024-01-02 19:14:51', 2, 1, '1', '111111111111111', '备注', 3, '1', 111.00, '1', 111.00, 1, '2024-01-02 19:14:51');
INSERT INTO `orders` VALUES (65, '202401021722818284', 1, '2024-01-02 19:14:54', 2, 1, '1', '111111111111111', '备注', 3, '1', 111.00, '1', 111.00, 1, '2024-01-02 19:14:54');
INSERT INTO `orders` VALUES (66, '202401021583285986', 1, '2024-01-02 19:24:52', 2, 1, '1', '111111111111111', '备注', 4, '1', 123123.00, '1', 369369.00, 3, '2024-01-02 19:24:52');
INSERT INTO `orders` VALUES (67, '202401021396413119', 1, '2024-01-02 19:25:03', 2, 1, '1', '111111111111111', '备注', 4, '1', 123123.00, '0', 123123.00, 1, '2024-01-02 19:25:03');
INSERT INTO `orders` VALUES (68, '202401021165717736', 1, '2024-01-02 19:29:58', 2, 1, '1', '111111111111111', '备注', 1, '11', 155.50, '0', 466.50, 3, '2024-01-02 19:29:58');
INSERT INTO `orders` VALUES (69, '202401021165717736', 1, '2024-01-02 19:29:58', 2, 1, '1', '111111111111111', '备注', 2, '1', 111.00, '0', 222.00, 2, '2024-01-02 19:29:58');
INSERT INTO `orders` VALUES (70, '202401021165717736', 1, '2024-01-02 19:29:58', 2, 1, '1', '111111111111111', '备注', 3, '1', 111.00, '0', 222.00, 2, '2024-01-02 19:29:58');
INSERT INTO `orders` VALUES (71, '202401021396649544', 1, '2024-01-02 20:13:24', 2, 1, '1', '111111111111111', '备注', 1, '11', 155.50, '0', 933.00, 6, '2024-01-02 20:13:24');
INSERT INTO `orders` VALUES (72, '202401031558791835', 1, '2024-01-03 19:20:12', 2, 1, '1', '111111111111111', '备注', 1, '11', 155.50, '0', 622.00, 4, '2024-01-03 19:20:12');
INSERT INTO `orders` VALUES (73, '202401081762605503', 1, '2024-01-08 10:44:24', 2, 1, '1', '111111111111111', '备注', 1, '11', 155.50, '0', 466.50, 3, '2024-01-08 10:44:24');
INSERT INTO `orders` VALUES (74, '202401081762605503', 1, '2024-01-08 10:44:24', 2, 1, '1', '111111111111111', '备注', 19, '6', 1.00, '0', 5.00, 5, '2024-01-08 10:44:24');

-- ----------------------------
-- Table structure for outrecord
-- ----------------------------
DROP TABLE IF EXISTS `outrecord`;
CREATE TABLE `outrecord`  (
  `manualRecordId` int(11) NOT NULL AUTO_INCREMENT,
  `personId` int(11) NOT NULL COMMENT '老人ID（关联personInfo表主键）',
  `personName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '老人名字',
  `state` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '（1-外出，2-回来）',
  `visitor` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '陪同人员',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '联系电话',
  `inTime` timestamp NULL DEFAULT NULL COMMENT '外出时间',
  `outTime` timestamp NULL DEFAULT NULL COMMENT '回来时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '外出原因',
  `userName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '登记人',
  `signTime` timestamp NULL DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`manualRecordId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '外出登记表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of outrecord
-- ----------------------------
INSERT INTO `outrecord` VALUES (46, 177, '昭阳', '2', '无', '1203812083', '2024-01-08 14:53:46', '2024-01-09 09:16:43', '约会', 'admin', '2024-01-08 14:53:43');
INSERT INTO `outrecord` VALUES (47, 178, '米彩', '2', '无', '1203812083', '2024-01-08 14:55:18', '2024-01-09 09:16:45', '未填写', 'admin', '2024-01-08 14:55:06');
INSERT INTO `outrecord` VALUES (48, 179, '向晨', '2', '无', '1203812023', '2024-01-08 14:55:50', '2024-01-08 14:56:21', '未填写', 'admin', '2024-01-08 14:55:43');
INSERT INTO `outrecord` VALUES (49, 180, '乐瑶', '2', '无', '1203812083', '2024-01-09 09:16:58', '2024-01-12 10:04:55', '你好，世界！', 'admin', '2024-01-09 09:16:55');
INSERT INTO `outrecord` VALUES (50, 193, '陈志函', '2', 'ce', '18720855428', '2024-01-01 00:00:00', '2024-01-09 10:01:08', '未填写', 'admin', '2024-01-09 10:00:25');
INSERT INTO `outrecord` VALUES (51, 178, '米彩', '2', '无', '1203812083', '2024-01-09 13:02:50', '2024-01-09 13:03:28', '业务', 'admin', '2024-01-09 13:02:47');
INSERT INTO `outrecord` VALUES (52, 181, '闪光魔龙殿下', '2', '无', '12038120823', '2024-01-12 10:05:54', '2024-01-12 10:06:28', '未填写', 'admin', '2024-01-12 10:05:47');
INSERT INTO `outrecord` VALUES (53, 181, '闪光魔龙殿下', '2', '无', '10381208301', '2024-01-14 00:00:00', '2024-01-13 08:59:23', '未填写', 'admin', '2024-01-13 08:58:52');
INSERT INTO `outrecord` VALUES (54, 177, '昭阳', '2', '哈哈', '11111111111', '2024-01-13 09:42:39', '2024-01-13 10:01:03', '看风景', 'admin', '2024-01-13 09:42:35');

-- ----------------------------
-- Table structure for personinfo
-- ----------------------------
DROP TABLE IF EXISTS `personinfo`;
CREATE TABLE `personinfo`  (
  `personId` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `communityId` int(11) NULL DEFAULT NULL COMMENT '养老院id',
  `houseId` int(11) NULL DEFAULT NULL COMMENT '房号（关联house表主键）',
  `bedId` int(11) NULL DEFAULT NULL COMMENT '床位号(关联bed表主键)',
  `realName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '男' COMMENT '性别(男/女)',
  `cardNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '身份证号',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `chairman` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '紧急联系人电话',
  `faceUrl` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '人脸图片',
  `personType` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '付款类别（1：按日收费，2：按月收费，3：按年收费，4：其他方式)',
  `state` int(11) NULL DEFAULT 1 COMMENT '类别(1：正常，2：欠费，3：离院)',
  `inTime` date NULL DEFAULT NULL COMMENT '入院时间',
  `expireDate` date NULL DEFAULT NULL COMMENT '离开时间',
  `creater` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建者',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`personId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 225 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '老人信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of personinfo
-- ----------------------------
INSERT INTO `personinfo` VALUES (177, 15, 2, 123, '昭阳', '男', '2340912840928509', 22, '12038120830128', '19195416491', '\\image\\upload\\20240108\\3cb300a2-6bb0-41d0-8681-5625e4615733.jpg', '1', 1, '2024-01-08', NULL, 'admin', '测试数据');
INSERT INTO `personinfo` VALUES (178, 15, 2, 124, '米彩', '男', '2340912840928509', 22, '12038120830128', '19195416491', '\\image\\upload\\20240108\\f32e9457-3404-43d2-86eb-456b09e70811.png', '1', 1, '2024-01-08', NULL, 'admin', '测试数据');
INSERT INTO `personinfo` VALUES (179, 9, 2, 125, '向晨', '男', '2340912840928509', 22, '12038120830128', '19195416491', '\\image\\upload\\20240108\\3cb300a2-6bb0-41d0-8681-5625e4615733.jpg', '1', 1, '2024-01-08', NULL, 'admin', '测试数据');
INSERT INTO `personinfo` VALUES (180, 12, 2, 126, '乐瑶', '女', '2340912840928509', 22, '12038120830128', '19195416491', '\\image\\upload\\20240108\\f32e9457-3404-43d2-86eb-456b09e70811.png', '1', 2, '2024-01-08', NULL, 'admin', '测试数据');
INSERT INTO `personinfo` VALUES (181, 2, 2, 151, '闪光魔龙殿下', '男', '2340912840928509', 21, '12038120830128', '19195416491', '\\image\\upload\\20240108\\3cb300a2-6bb0-41d0-8681-5625e4615733.jpg', '1', 1, '2024-01-08', NULL, 'admin', '测试数据');
INSERT INTO `personinfo` VALUES (182, 2, 2, 123, '张三', '男', '2340912840928509', 22, '12038120830128', '19195416491', '\\image\\upload\\20240108\\f32e9457-3404-43d2-86eb-456b09e70811.png', '1', 2, '2024-01-08', NULL, 'admin', '测试数据');
INSERT INTO `personinfo` VALUES (183, 2, 2, 127, '李四', '男', '2340912840928509', 22, '12038120830128', '19195416491', '\\image\\upload\\20240108\\f32e9457-3404-43d2-86eb-456b09e70811.png', '1', 2, '2024-01-08', NULL, 'admin', '测试数据');
INSERT INTO `personinfo` VALUES (184, 2, 2, 128, '王五', '男', '2340912840928509', 22, '12038120830128', '19195416491', '\\image\\upload\\20240108\\f32e9457-3404-43d2-86eb-456b09e70811.png', '1', 2, '2024-01-08', NULL, 'admin', '测试数据');
INSERT INTO `personinfo` VALUES (185, 2, 2, 129, '老六', '男', '2340912840928509', 22, '12038120830128', '19195416491', '\\image\\upload\\20240108\\f32e9457-3404-43d2-86eb-456b09e70811.png', '1', 2, '2024-01-08', NULL, 'admin', '测试数据');
INSERT INTO `personinfo` VALUES (186, 2, 2, 130, '小七', '男', '2340912840928509', 22, '12038120830128', '19195416491', '\\image\\upload\\20240108\\f32e9457-3404-43d2-86eb-456b09e70811.png', '1', 2, '2024-01-08', NULL, 'admin', '测试数据');
INSERT INTO `personinfo` VALUES (187, 2, 2, 132, '老八', '男', '2340912840928509', 22, '12038120830128', '19195416491', '\\image\\upload\\20240108\\f32e9457-3404-43d2-86eb-456b09e70811.png', '1', 2, '2024-01-08', NULL, 'admin', '测试数据');
INSERT INTO `personinfo` VALUES (188, 2, 2, 131, '波风水门', '男', '2340912840928509', 19, '12038120830128', '19195416491', '\\image\\upload\\20240108\\f32e9457-3404-43d2-86eb-456b09e70811.png', '1', 2, '2024-01-08', NULL, 'admin', '测试数据2');
INSERT INTO `personinfo` VALUES (189, 2, 2, 133, '螺旋闪光第十三式', '男', '2340912840928509', 19, '12038120830128', '19195416491', '\\image\\upload\\20240108\\f32e9457-3404-43d2-86eb-456b09e70811.png', '1', 2, '2024-01-08', NULL, 'admin', '测试数据2');
INSERT INTO `personinfo` VALUES (190, 2, 2, 134, '这个世界是虚幻的', '男', '2340912840928509', 19, '12038120830128', '19195416491', '\\image\\upload\\20240108\\f32e9457-3404-43d2-86eb-456b09e70811.png', '2', 1, '2024-01-08', NULL, 'admin', '测试数据2');
INSERT INTO `personinfo` VALUES (192, 2, 2, 136, 'active', '男', '360731200411063435', 23, '19195416491', '18720855428', '\\image\\upload\\20240108\\e37f162c-fd97-4c46-9a74-dcb16dfe54ce.jpg', '1', 2, '2024-01-08', NULL, 'admin', '测试数据2');
INSERT INTO `personinfo` VALUES (193, 13, 108, 150, '陈志函大帅哥', '男', '360731200411063435', 19, '19195416491', '18720855428', '\\image\\upload\\20240108\\b3f380cf-647a-495a-938c-7330247ae533.png', '1', 2, '2024-01-08', NULL, 'admin', '我要养老！');
INSERT INTO `personinfo` VALUES (194, 11, 2, 137, '谢小明Oi', '男', '360731200411065919', 20, '18720855428', '19195416491', '\\image\\upload\\20240108\\3cb300a2-6bb0-41d0-8681-5625e4615733.jpg', '1', 2, '2024-01-09', NULL, 'admin', '测试数据1');
INSERT INTO `personinfo` VALUES (195, 2, 2, 138, '李若含', '男', '360731200411065919', 20, '18720855428', '19195416491', '\\image\\upload\\20240109\\db2000e0-cf0c-4a3d-b106-dcc124f7476c.webp', '1', 2, '2024-01-09', NULL, 'admin', '测试数据1');
INSERT INTO `personinfo` VALUES (196, 2, 2, 139, '王也', '男', '360731200411065919', 20, '18720855428', '19195416491', '\\image\\upload\\20240109\\2c3cacdb-a3b9-4f25-a338-099f72da7129.jpg', '1', 2, '2024-01-09', NULL, 'admin', '测试数据');
INSERT INTO `personinfo` VALUES (197, 2, 2, 140, '王权富贵', '男', '360731200411065919', 20, '18720855428', '19195416491', '\\image\\upload\\20240108\\3cb300a2-6bb0-41d0-8681-5625e4615733.jpg', '1', 2, '2024-01-09', NULL, 'admin', '');
INSERT INTO `personinfo` VALUES (198, 2, 2, 142, '陈小小', '男', '360731200411065919', 20, '18720855428', '19195416491', '\\image\\upload\\20240108\\3cb300a2-6bb0-41d0-8681-5625e4615733.jpg', '1', 2, '2024-01-09', NULL, 'admin', '我要养老！');
INSERT INTO `personinfo` VALUES (199, 2, 2, 148, '陈志函', '男', '360731200411065919', 20, '18720855428', '19195416491', '\\image\\upload\\20240108\\3cb300a2-6bb0-41d0-8681-5625e4615733.jpg', '1', 2, '2024-01-09', NULL, 'admin', '我要养老！');
INSERT INTO `personinfo` VALUES (207, 2, 2, 148, 'cy', '男', '16123412342313213', 18, '1231237461823', '12345678999', '\\image\\upload\\20240109\\87f28d00-7ae3-4aeb-a0f9-cbf907487544.jpg', '1', 2, '2024-01-09', NULL, 'admin', '1234');
INSERT INTO `personinfo` VALUES (211, 9, 9, 149, '刘竹青', '男', '360731200411065919', 18, '18720855428', '19195416491', 'null', '1', 2, '2024-01-12', NULL, 'admin', '我要养老！');
INSERT INTO `personinfo` VALUES (212, 2, 2, 151, '刘竹青', '男', '360731200411065919', 18, '18720855428', '19195416491', 'null', '1', 2, '2024-01-12', NULL, 'admin', '我要养老！');
INSERT INTO `personinfo` VALUES (213, 2, 2, 152, '测试数据2', '男', '360731200411065919', 18, '18720855428', '19195416491', 'null', '1', 2, '2024-01-12', NULL, 'admin', '测试数据');
INSERT INTO `personinfo` VALUES (214, 2, 2, 153, '测试数据1', '男', '360731200411065919', 18, '18720855428', '19195416491', 'null', '1', 2, '2024-01-12', NULL, 'admin', '你好世界！');
INSERT INTO `personinfo` VALUES (216, 2, 2, 155, '沉浸在万花筒血轮眼的幻术之中吧', '男', '2340912840928509', 68, '19195416491', '19195416491', 'null', '1', 2, '2024-01-12', NULL, 'admin', 'opersoninloding');
INSERT INTO `personinfo` VALUES (217, 16, 11, 0, 'byd', '男', '16123412342313213', 123, '1231237461823', '12345678999', '\\image\\upload\\20240113\\6ed5c620-febf-441d-bebb-76cddd012acc.jpg', '3', 1, '2024-01-13', NULL, 'admin', '');
INSERT INTO `personinfo` VALUES (222, 2, 2, 156, '112', '男', '', 11, '', '', 'null', '1', 2, '2024-01-13', NULL, 'admin', '');
INSERT INTO `personinfo` VALUES (223, 2, 2, 156, '113', '男', '', 11, '', '', 'null', '1', 2, '2024-01-13', NULL, 'admin', '');
INSERT INTO `personinfo` VALUES (224, 2, 2, 156, '114', '男', '', 11, '', '', 'null', '1', 2, '2024-01-13', NULL, 'admin', '');

-- ----------------------------
-- Table structure for privileges
-- ----------------------------
DROP TABLE IF EXISTS `privileges`;
CREATE TABLE `privileges`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主控件id',
  `parentid` int(11) NULL DEFAULT NULL COMMENT '子控件id继承主控件id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '控件名',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of privileges
-- ----------------------------
INSERT INTO `privileges` VALUES (1, 0, '床位管理', '/xx/xx');
INSERT INTO `privileges` VALUES (2, 0, '角色管理', '/xx/xx');
INSERT INTO `privileges` VALUES (3, 0, '用户管理', '/xx/xx');
INSERT INTO `privileges` VALUES (4, 1, '新增', '/open-bed/Add-bed');
INSERT INTO `privileges` VALUES (5, 1, '修改', '/open-bed/Upd-bed');
INSERT INTO `privileges` VALUES (6, 1, '删除', '/open-bed/getID');
INSERT INTO `privileges` VALUES (7, 1, '查询', '/open-bed/selectPage-bed');
INSERT INTO `privileges` VALUES (8, 2, '新增', '/roleController/uploadPic');
INSERT INTO `privileges` VALUES (9, 2, '修改', '/roleController/update');
INSERT INTO `privileges` VALUES (10, 2, '删除', '/roleController/del');
INSERT INTO `privileges` VALUES (11, 2, '查询', '/roleController/fy');
INSERT INTO `privileges` VALUES (12, 1, '批量删除', ' /open-bed/getID');
INSERT INTO `privileges` VALUES (13, 0, '楼房资料', '//');
INSERT INTO `privileges` VALUES (14, 13, '新增', '/house/insert');
INSERT INTO `privileges` VALUES (15, 13, '修改', '/house/update');
INSERT INTO `privileges` VALUES (16, 13, '删除', '/house/del');
INSERT INTO `privileges` VALUES (17, 13, '查询', '/house/init');
INSERT INTO `privileges` VALUES (18, 0, '老人亲属', '/xx/xx');
INSERT INTO `privileges` VALUES (19, 18, '新增', '/relative/add');
INSERT INTO `privileges` VALUES (20, 18, '删除', '/relative/del');
INSERT INTO `privileges` VALUES (21, 18, '查询', '/relative/list');
INSERT INTO `privileges` VALUES (22, 0, '病情登记', '/xx/xx');
INSERT INTO `privileges` VALUES (23, 22, '新增', '/situation/add');
INSERT INTO `privileges` VALUES (24, 22, '修改', '/situation/getId');
INSERT INTO `privileges` VALUES (25, 22, '删除', '/situation/del');
INSERT INTO `privileges` VALUES (26, 22, '查询', '/situation/list');
INSERT INTO `privileges` VALUES (27, 0, '房间资料', '/xx/xx');
INSERT INTO `privileges` VALUES (28, 27, '新增', '/housepic/add');
INSERT INTO `privileges` VALUES (29, 27, '修改', '/housepic/getId');
INSERT INTO `privileges` VALUES (30, 27, '删除', '/housepic/del');
INSERT INTO `privileges` VALUES (31, 27, '查询', '/housepic/list');
INSERT INTO `privileges` VALUES (32, 0, '外出登记', '/xx/xx');
INSERT INTO `privileges` VALUES (33, 32, '外出历史', '/open-outRecord/selectPage2-outRecord');
INSERT INTO `privileges` VALUES (34, 32, '外出登记', '/open-outRecord/Add-outRecord');
INSERT INTO `privileges` VALUES (35, 32, '删除', '/open-outRecord/getId-outRecord');
INSERT INTO `privileges` VALUES (36, 32, '点击回来', '/open-outRecord/getId-outRecord');
INSERT INTO `privileges` VALUES (37, 32, '修改', '/open-outRecord/Update-outRecord');
INSERT INTO `privileges` VALUES (39, 32, '未回归', '/open-outRecord/selectPage-outRecord');
INSERT INTO `privileges` VALUES (40, 18, '修改', '/relative/relativeById');
INSERT INTO `privileges` VALUES (41, 0, '接待管理', '/xx/xx');
INSERT INTO `privileges` VALUES (42, 41, '新增', '/Reception/add');
INSERT INTO `privileges` VALUES (43, 41, '删除', '/Reception/del');
INSERT INTO `privileges` VALUES (44, 41, '查询', '/Reception/fy');
INSERT INTO `privileges` VALUES (45, 41, '修改', '/Reception/getid');
INSERT INTO `privileges` VALUES (51, 3, '新增', '/user/add');
INSERT INTO `privileges` VALUES (52, 3, '删除', '/user/del');
INSERT INTO `privileges` VALUES (53, 3, '查询', '/user/fy');
INSERT INTO `privileges` VALUES (54, 3, '修改', '/user/update');
INSERT INTO `privileges` VALUES (55, 2, '权限控制', '/privileges/update');
INSERT INTO `privileges` VALUES (56, 0, '货物分类and药品分类', '/xx/xx');
INSERT INTO `privileges` VALUES (57, 56, '货物分类新增', '/Products/add');
INSERT INTO `privileges` VALUES (58, 56, '货物分类删除', '/Products/del');
INSERT INTO `privileges` VALUES (59, 56, '货物分类查询', '/Products/fy');
INSERT INTO `privileges` VALUES (60, 56, '货物分类修改', '/Products/getid');
INSERT INTO `privileges` VALUES (61, 56, '药品分类新增', '/drugs/getid');
INSERT INTO `privileges` VALUES (62, 56, '药品分类删除', '/drugs/del');
INSERT INTO `privileges` VALUES (63, 56, '药品分类查询', '/drugs/fy');
INSERT INTO `privileges` VALUES (64, 56, '药品分类修改', '/drugs/getid');
INSERT INTO `privileges` VALUES (65, 0, '货物信息and药品信息', '/xx/xx');
INSERT INTO `privileges` VALUES (66, 65, '货物新增', '/Product/add');
INSERT INTO `privileges` VALUES (67, 65, '货物删除', '/Product/del');
INSERT INTO `privileges` VALUES (68, 65, '货物查询', '/Product/fy');
INSERT INTO `privileges` VALUES (69, 65, '货物修改', '/Product/getid');
INSERT INTO `privileges` VALUES (70, 65, '药品新增', '/except/del');
INSERT INTO `privileges` VALUES (72, 65, '药品删除', '/except/del');
INSERT INTO `privileges` VALUES (73, 65, '药品查询', '/except/del');
INSERT INTO `privileges` VALUES (74, 65, '药品修改', '/except/del');
INSERT INTO `privileges` VALUES (75, 0, '货物采购and药品采购', '/except/del');
INSERT INTO `privileges` VALUES (76, 75, '货物采购', '/except/del');
INSERT INTO `privileges` VALUES (77, 75, '药品采购', '/except/del');
INSERT INTO `privileges` VALUES (78, 0, '货物订单and药品订单', '/except/del');
INSERT INTO `privileges` VALUES (79, 78, '货物订单查询', '/Cords/list');
INSERT INTO `privileges` VALUES (80, 78, '货物订单删除', '/except/del');
INSERT INTO `privileges` VALUES (81, 78, '货物订单入库', '/except/del');
INSERT INTO `privileges` VALUES (82, 78, '药品订单查询', '/except/del');
INSERT INTO `privileges` VALUES (83, 78, '药品订单删除', '/except/del');
INSERT INTO `privileges` VALUES (84, 78, '药品订单入库', '/except/del');
INSERT INTO `privileges` VALUES (85, 0, '货物and药品领用', '/except/del');
INSERT INTO `privileges` VALUES (86, 85, '货物领用', '/except/del');
INSERT INTO `privileges` VALUES (88, 85, '药品领用', '/except/del');
INSERT INTO `privileges` VALUES (90, 0, '仓库', '/except/del');
INSERT INTO `privileges` VALUES (91, 90, '药品仓库', '/except/del');
INSERT INTO `privileges` VALUES (92, 90, '货物仓库', '/except/del');
INSERT INTO `privileges` VALUES (93, 0, '导航栏显示与隐藏', '/except/del');
INSERT INTO `privileges` VALUES (97, 93, '接待登记', '/except/del');
INSERT INTO `privileges` VALUES (98, 93, '床位管理', '/except/del');
INSERT INTO `privileges` VALUES (99, 93, '货物管理', '/except/del');
INSERT INTO `privileges` VALUES (100, 93, '药品管理', '/except/del');
INSERT INTO `privileges` VALUES (101, 93, '系统管理', '/except/del');
INSERT INTO `privileges` VALUES (102, 0, '供应商', '/except/del');
INSERT INTO `privileges` VALUES (103, 102, '新增', '/except/del');
INSERT INTO `privileges` VALUES (104, 102, '删除', '/except/del');
INSERT INTO `privileges` VALUES (105, 102, '查询', '/except/del');
INSERT INTO `privileges` VALUES (106, 102, '修改', '/except/del');
INSERT INTO `privileges` VALUES (107, 0, '异常情况', 'xxx');
INSERT INTO `privileges` VALUES (108, 107, '新增', '/excepts/add');
INSERT INTO `privileges` VALUES (109, 107, '修改', '/excepts/getId');
INSERT INTO `privileges` VALUES (110, 107, '删除', '/excepts/del');
INSERT INTO `privileges` VALUES (111, 107, '查询', '/excepts/list');
INSERT INTO `privileges` VALUES (112, 85, '货物领用详情', ' /except/del');
INSERT INTO `privileges` VALUES (113, 85, '药品领用详情', ' /except/del');
INSERT INTO `privileges` VALUES (114, 0, '老人资料', '/xx/xx');
INSERT INTO `privileges` VALUES (115, 114, '查询', '/open-personinfo/selectPage');
INSERT INTO `privileges` VALUES (116, 114, 'to新增', '/open-personinfo/toAdd');
INSERT INTO `privileges` VALUES (117, 114, '新增', '/open-personinfo/Add-personinfo');
INSERT INTO `privileges` VALUES (118, 114, '上传头像', '/open-personinfo/Upload-personinfo');
INSERT INTO `privileges` VALUES (119, 114, 'getId', '/open-personinfo/getId');
INSERT INTO `privileges` VALUES (120, 114, '修改', '/open-personinfo/Update-personinfo');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `prodId` int(11) NOT NULL AUTO_INCREMENT,
  `prodName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品名称',
  `unitName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '单位',
  `brand` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '物品图片',
  `style` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '分类id',
  `price` float(11, 2) NULL DEFAULT NULL COMMENT '单价',
  `supplierId` int(11) NULL DEFAULT NULL COMMENT '供应商id',
  `ctime` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `Gtime` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `DrugM` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`prodId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '商品信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '床', '一张', '', '11', 155.50, 1, NULL, '2024-01-04 11:42:24', '1212');
INSERT INTO `product` VALUES (2, '111', '11', '\\upload\\20231214\\aa6b8ab6-c6e5-485f-ad42-12b939d29183.jpeg', '1', 111.00, 1, NULL, NULL, '1212');
INSERT INTO `product` VALUES (3, '1111111', '111111111', '\\upload\\20231214\\bad5aaa6-a2cc-464a-8f4f-c5bc0044c50d.jpg', '1', 111.00, 1, NULL, NULL, '1212');
INSERT INTO `product` VALUES (4, '你好1', '12312', '\\upload\\20231214\\fb212e84-d0ad-4e93-82c3-6ff073f3d348.jpg', '1', 123123.00, 1, NULL, NULL, '1212');
INSERT INTO `product` VALUES (5, '11', '11', '\\upload\\20231214\\08bcc92e-10d8-46e9-9607-d5970b8c6e9b.jpg', '1', 111.00, 1, NULL, NULL, '1212');
INSERT INTO `product` VALUES (6, '111', '11', '\\upload\\20231214\\9a1deb15-ef60-43c3-8885-425d6b13565e.jpg', '1', 111.00, 1, NULL, NULL, '1212');
INSERT INTO `product` VALUES (7, '111', '11', '\\upload\\20231214\\492b9072-3f62-46cb-825d-a67de84da1ce.jpg', '1', 11.00, 1, NULL, NULL, '1212');
INSERT INTO `product` VALUES (8, '111', '11', NULL, '1', 11.00, 1, NULL, NULL, '1212');
INSERT INTO `product` VALUES (9, '1111', '11', '\\upload\\20231214\\83372ee4-3479-495e-a3c4-a6aacbe926fd.jpg', '1', 111.00, 1, NULL, NULL, '1212');
INSERT INTO `product` VALUES (10, '111', '1', '\\upload\\20231214\\04359ca0-ddef-4a27-991c-beccf8b57b8b.jpg', '1', 11.00, 1, NULL, NULL, '1212');
INSERT INTO `product` VALUES (11, '1', '1111111', NULL, '1', 11.00, 1, NULL, NULL, '1212');
INSERT INTO `product` VALUES (12, '1', '11', NULL, '1', 11.00, 1, NULL, NULL, '1212');
INSERT INTO `product` VALUES (13, '1', '1', NULL, '1', 11.00, 1, NULL, NULL, '1212');
INSERT INTO `product` VALUES (14, '11111', '111', NULL, '1', 11.00, 1, NULL, NULL, '1212');
INSERT INTO `product` VALUES (15, '1', '111111111', NULL, '1', 111.00, 1, '2023-12-19 10:52:12', '2023-12-19 10:52:12', '1212');
INSERT INTO `product` VALUES (16, '11', '1', '\\upload\\20231219\\50cb5bf0-6589-4a6f-8fbe-3f3949a1042d.jpg', '1', 111.00, 1, '2023-12-19 10:57:02', '2023-12-19 10:57:17', '1212');
INSERT INTO `product` VALUES (17, '1111', '1', '1', '1', 11111111.00, 1, '2023-12-19 19:41:14', '2023-12-19 19:41:14', '1212');
INSERT INTO `product` VALUES (18, '1', '11', '\\upload\\20231228\\be6525be-d1fe-403b-b0a4-13be9ca4169b.png', '5', 1.00, 1, '2023-12-28 16:05:44', '2023-12-28 16:05:44', '1212');
INSERT INTO `product` VALUES (19, '1', '1', NULL, '6', 1.00, 4, '2023-12-28 19:24:17', '2023-12-28 19:24:17', '1212');
INSERT INTO `product` VALUES (20, '1', '1', NULL, '2', 1.00, 4, '2024-01-04 11:36:41', '2024-01-04 11:36:41', '1');
INSERT INTO `product` VALUES (22, '是吧', '1', '\\upload\\20240106\\e88911d9-b766-4401-a44d-84df11f1c865.png', '10', 12.00, 4, '2024-01-06 09:46:47', '2024-01-06 09:46:47', '1');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `productId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别',
  PRIMARY KEY (`productId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '物品分类表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, '吃的');
INSERT INTO `products` VALUES (2, '使用的');
INSERT INTO `products` VALUES (3, '好多bug');
INSERT INTO `products` VALUES (4, '我不会');
INSERT INTO `products` VALUES (6, '很难');
INSERT INTO `products` VALUES (9, '123');
INSERT INTO `products` VALUES (10, '你好');
INSERT INTO `products` VALUES (11, '食物');

-- ----------------------------
-- Table structure for qq_friend
-- ----------------------------
DROP TABLE IF EXISTS `qq_friend`;
CREATE TABLE `qq_friend`  (
  `myqq` int(11) NULL DEFAULT NULL,
  `fqq` int(11) NULL DEFAULT NULL,
  `mygroup` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qq_friend
-- ----------------------------
INSERT INTO `qq_friend` VALUES (979274, 780351, '好友');
INSERT INTO `qq_friend` VALUES (780351, 979274, '好友');

-- ----------------------------
-- Table structure for qq_history
-- ----------------------------
DROP TABLE IF EXISTS `qq_history`;
CREATE TABLE `qq_history`  (
  `qq_num` int(11) NULL DEFAULT NULL,
  `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `face` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `auto_login` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qq_history
-- ----------------------------
INSERT INTO `qq_history` VALUES (979274, '123', 'D:\\exploitTool\\eclipse\\File save\\MyQQ\\image\\img\\face\\touxiang1_h.png', 222, 111);
INSERT INTO `qq_history` VALUES (267606, '123', 'D:\\exploitTool\\eclipse\\File save\\MyQQ\\image\\img\\face\\touxiang1_h.png', 222, 111);
INSERT INTO `qq_history` VALUES (780351, '123', 'touxiang1.png', 222, 111);

-- ----------------------------
-- Table structure for qq_user
-- ----------------------------
DROP TABLE IF EXISTS `qq_user`;
CREATE TABLE `qq_user`  (
  `qq_num` int(11) NOT NULL,
  `nick_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `face` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `port` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `star` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`qq_num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qq_user
-- ----------------------------
INSERT INTO `qq_user` VALUES (267606, '今天过的怎么样', '123', '男', 22, 'D:\\exploitTool\\eclipse\\File save\\MyQQ\\image\\img\\face\\touxiang1_h.png', '127.0.0.1', 6666, 0, '摩羯座', '111', '我是狗');
INSERT INTO `qq_user` VALUES (285728, '你好', '123', '男', 22, 'touxiang1.png', '127.0.0.1', 0, 0, '摩羯座', '111', '你好');
INSERT INTO `qq_user` VALUES (367901, '今天天气不错~', '123', '男', 22, 'D:\\exploitTool\\eclipse\\File save\\MyQQ\\image\\img\\face\\touxiang1_h.png', '127.0.0.1', 1111, 0, '天蝎座', '1111', '我是初音未来的狗');
INSERT INTO `qq_user` VALUES (780351, '崔宇今晚吃什么？', '123', '男', 22, 'touxiang1.png', '127.0.0.1', 2222, 0, '天蝎座', '1111111111111111111', '欢迎回家，你是要先吃饭还是先洗澡，还是说...');
INSERT INTO `qq_user` VALUES (979274, '谢小明', '123', '男', 19, 'D:\\exploitTool\\eclipse\\File save\\MyQQ\\image\\img\\face\\touxiang1_h.png', '127.0.0.1', 8390, 0, '摩羯座', '110', '爱谁谁');

-- ----------------------------
-- Table structure for relative
-- ----------------------------
DROP TABLE IF EXISTS `relative`;
CREATE TABLE `relative`  (
  `relativeId` int(11) NOT NULL AUTO_INCREMENT,
  `personId` int(11) NULL DEFAULT NULL COMMENT '人员ID（关联personInfo表主键）',
  `relativeName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '亲属名称',
  `typeName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '亲属关系',
  `mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联系电话',
  `addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地址',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`relativeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '亲属表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of relative
-- ----------------------------
INSERT INTO `relative` VALUES (37, 192, 'personinfo', '叔叔', '19195416491', '[\"江西省\",\"赣州市\",\"于都县\"]', '你好');
INSERT INTO `relative` VALUES (38, 193, '陈志豪', '弟弟', '19195416491', '[\"江西省\",\"赣州市\",\"赣县\"]', 'hello，world！');
INSERT INTO `relative` VALUES (39, 180, '123', '123', '12345678999', '异世界？,xxx,xxx', '123213');
INSERT INTO `relative` VALUES (40, 189, '你好', '111', '12345678999', '1231', '123213');
INSERT INTO `relative` VALUES (41, 187, '是的供货商', '度过这个', '12345678999', '广东省,深圳市,南山区', '飞信号码');
INSERT INTO `relative` VALUES (42, 177, '板爹', '父亲', '19195416491', '江西省，赣州市，于都县', '测试数据');
INSERT INTO `relative` VALUES (43, 177, '许小言', '妹妹', '19195416491', '江西省，赣州市，于都县', '测试数据');
INSERT INTO `relative` VALUES (44, 190, '这个世界是美好的', '妈妈', '12345678999', '广东省,韶关市,仁化县', '飞信号码');
INSERT INTO `relative` VALUES (45, 187, '嗨嗨嗨', '朋友', '12345678999', '江西省,新余市,分宜县', '飞信号码');
INSERT INTO `relative` VALUES (46, 192, 'acc', '妈妈', '12345678999', '江西省,九江市,武宁县', '飞信号码');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色',
  `work` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色功能',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '新角色表\r\n' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', '拥有最高权限，可以管理所有操作和数据。');
INSERT INTO `role` VALUES (2, '前台', '接待老人,亲属,登记老人外出信息');
INSERT INTO `role` VALUES (3, '医生', '负责处理用户的咨询、建议和投诉。');
INSERT INTO `role` VALUES (5, '财务', '负责管理财务相关的操作和数据，如账单、支付、退款等');
INSERT INTO `role` VALUES (6, '宿管', '负责分析和报告数据，为公司决策提供支持。');
INSERT INTO `role` VALUES (9, '物品仓库管理员', '1');
INSERT INTO `role` VALUES (10, '物品采购人', '无');
INSERT INTO `role` VALUES (11, '药品仓库管理员', '11');
INSERT INTO `role` VALUES (12, '药品采购人', '无');
INSERT INTO `role` VALUES (13, '财务', '无');

-- ----------------------------
-- Table structure for rp
-- ----------------------------
DROP TABLE IF EXISTS `rp`;
CREATE TABLE `rp`  (
  `RoleID` int(11) NOT NULL COMMENT '角色id',
  `SPID` int(11) NOT NULL COMMENT '系统权限id',
  PRIMARY KEY (`RoleID`, `SPID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限控制表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rp
-- ----------------------------
INSERT INTO `rp` VALUES (1, 1);
INSERT INTO `rp` VALUES (1, 2);
INSERT INTO `rp` VALUES (1, 3);
INSERT INTO `rp` VALUES (1, 4);
INSERT INTO `rp` VALUES (1, 5);
INSERT INTO `rp` VALUES (1, 6);
INSERT INTO `rp` VALUES (1, 7);
INSERT INTO `rp` VALUES (1, 8);
INSERT INTO `rp` VALUES (1, 9);
INSERT INTO `rp` VALUES (1, 10);
INSERT INTO `rp` VALUES (1, 11);
INSERT INTO `rp` VALUES (1, 12);
INSERT INTO `rp` VALUES (1, 13);
INSERT INTO `rp` VALUES (1, 14);
INSERT INTO `rp` VALUES (1, 15);
INSERT INTO `rp` VALUES (1, 16);
INSERT INTO `rp` VALUES (1, 17);
INSERT INTO `rp` VALUES (1, 18);
INSERT INTO `rp` VALUES (1, 19);
INSERT INTO `rp` VALUES (1, 20);
INSERT INTO `rp` VALUES (1, 21);
INSERT INTO `rp` VALUES (1, 22);
INSERT INTO `rp` VALUES (1, 23);
INSERT INTO `rp` VALUES (1, 24);
INSERT INTO `rp` VALUES (1, 25);
INSERT INTO `rp` VALUES (1, 26);
INSERT INTO `rp` VALUES (1, 27);
INSERT INTO `rp` VALUES (1, 28);
INSERT INTO `rp` VALUES (1, 29);
INSERT INTO `rp` VALUES (1, 30);
INSERT INTO `rp` VALUES (1, 31);
INSERT INTO `rp` VALUES (1, 32);
INSERT INTO `rp` VALUES (1, 33);
INSERT INTO `rp` VALUES (1, 34);
INSERT INTO `rp` VALUES (1, 35);
INSERT INTO `rp` VALUES (1, 36);
INSERT INTO `rp` VALUES (1, 37);
INSERT INTO `rp` VALUES (1, 39);
INSERT INTO `rp` VALUES (1, 40);
INSERT INTO `rp` VALUES (1, 41);
INSERT INTO `rp` VALUES (1, 42);
INSERT INTO `rp` VALUES (1, 43);
INSERT INTO `rp` VALUES (1, 44);
INSERT INTO `rp` VALUES (1, 45);
INSERT INTO `rp` VALUES (1, 51);
INSERT INTO `rp` VALUES (1, 52);
INSERT INTO `rp` VALUES (1, 53);
INSERT INTO `rp` VALUES (1, 54);
INSERT INTO `rp` VALUES (1, 55);
INSERT INTO `rp` VALUES (1, 56);
INSERT INTO `rp` VALUES (1, 57);
INSERT INTO `rp` VALUES (1, 58);
INSERT INTO `rp` VALUES (1, 59);
INSERT INTO `rp` VALUES (1, 60);
INSERT INTO `rp` VALUES (1, 61);
INSERT INTO `rp` VALUES (1, 62);
INSERT INTO `rp` VALUES (1, 63);
INSERT INTO `rp` VALUES (1, 64);
INSERT INTO `rp` VALUES (1, 65);
INSERT INTO `rp` VALUES (1, 66);
INSERT INTO `rp` VALUES (1, 67);
INSERT INTO `rp` VALUES (1, 68);
INSERT INTO `rp` VALUES (1, 69);
INSERT INTO `rp` VALUES (1, 70);
INSERT INTO `rp` VALUES (1, 72);
INSERT INTO `rp` VALUES (1, 73);
INSERT INTO `rp` VALUES (1, 74);
INSERT INTO `rp` VALUES (1, 75);
INSERT INTO `rp` VALUES (1, 76);
INSERT INTO `rp` VALUES (1, 77);
INSERT INTO `rp` VALUES (1, 78);
INSERT INTO `rp` VALUES (1, 79);
INSERT INTO `rp` VALUES (1, 80);
INSERT INTO `rp` VALUES (1, 81);
INSERT INTO `rp` VALUES (1, 82);
INSERT INTO `rp` VALUES (1, 83);
INSERT INTO `rp` VALUES (1, 84);
INSERT INTO `rp` VALUES (1, 85);
INSERT INTO `rp` VALUES (1, 86);
INSERT INTO `rp` VALUES (1, 88);
INSERT INTO `rp` VALUES (1, 90);
INSERT INTO `rp` VALUES (1, 91);
INSERT INTO `rp` VALUES (1, 92);
INSERT INTO `rp` VALUES (1, 93);
INSERT INTO `rp` VALUES (1, 97);
INSERT INTO `rp` VALUES (1, 98);
INSERT INTO `rp` VALUES (1, 99);
INSERT INTO `rp` VALUES (1, 100);
INSERT INTO `rp` VALUES (1, 101);
INSERT INTO `rp` VALUES (1, 102);
INSERT INTO `rp` VALUES (1, 103);
INSERT INTO `rp` VALUES (1, 104);
INSERT INTO `rp` VALUES (1, 105);
INSERT INTO `rp` VALUES (1, 106);
INSERT INTO `rp` VALUES (1, 107);
INSERT INTO `rp` VALUES (1, 108);
INSERT INTO `rp` VALUES (1, 109);
INSERT INTO `rp` VALUES (1, 110);
INSERT INTO `rp` VALUES (1, 111);
INSERT INTO `rp` VALUES (1, 112);
INSERT INTO `rp` VALUES (1, 113);
INSERT INTO `rp` VALUES (1, 114);
INSERT INTO `rp` VALUES (1, 115);
INSERT INTO `rp` VALUES (1, 116);
INSERT INTO `rp` VALUES (1, 117);
INSERT INTO `rp` VALUES (1, 118);
INSERT INTO `rp` VALUES (1, 119);
INSERT INTO `rp` VALUES (1, 120);
INSERT INTO `rp` VALUES (2, 7);
INSERT INTO `rp` VALUES (2, 17);
INSERT INTO `rp` VALUES (2, 18);
INSERT INTO `rp` VALUES (2, 19);
INSERT INTO `rp` VALUES (2, 20);
INSERT INTO `rp` VALUES (2, 21);
INSERT INTO `rp` VALUES (2, 26);
INSERT INTO `rp` VALUES (2, 31);
INSERT INTO `rp` VALUES (2, 32);
INSERT INTO `rp` VALUES (2, 33);
INSERT INTO `rp` VALUES (2, 34);
INSERT INTO `rp` VALUES (2, 35);
INSERT INTO `rp` VALUES (2, 36);
INSERT INTO `rp` VALUES (2, 37);
INSERT INTO `rp` VALUES (2, 39);
INSERT INTO `rp` VALUES (2, 40);
INSERT INTO `rp` VALUES (2, 41);
INSERT INTO `rp` VALUES (2, 42);
INSERT INTO `rp` VALUES (2, 43);
INSERT INTO `rp` VALUES (2, 44);
INSERT INTO `rp` VALUES (2, 45);
INSERT INTO `rp` VALUES (2, 97);
INSERT INTO `rp` VALUES (2, 111);
INSERT INTO `rp` VALUES (2, 114);
INSERT INTO `rp` VALUES (2, 115);
INSERT INTO `rp` VALUES (2, 116);
INSERT INTO `rp` VALUES (2, 117);
INSERT INTO `rp` VALUES (2, 118);
INSERT INTO `rp` VALUES (2, 119);
INSERT INTO `rp` VALUES (2, 120);
INSERT INTO `rp` VALUES (3, 22);
INSERT INTO `rp` VALUES (3, 23);
INSERT INTO `rp` VALUES (3, 24);
INSERT INTO `rp` VALUES (3, 25);
INSERT INTO `rp` VALUES (3, 26);
INSERT INTO `rp` VALUES (3, 88);
INSERT INTO `rp` VALUES (3, 100);
INSERT INTO `rp` VALUES (3, 115);
INSERT INTO `rp` VALUES (4, 3);
INSERT INTO `rp` VALUES (4, 9);
INSERT INTO `rp` VALUES (4, 10);
INSERT INTO `rp` VALUES (4, 11);
INSERT INTO `rp` VALUES (4, 12);
INSERT INTO `rp` VALUES (10, 1);
INSERT INTO `rp` VALUES (10, 4);
INSERT INTO `rp` VALUES (10, 5);
INSERT INTO `rp` VALUES (10, 6);
INSERT INTO `rp` VALUES (10, 7);

-- ----------------------------
-- Table structure for situation
-- ----------------------------
DROP TABLE IF EXISTS `situation`;
CREATE TABLE `situation`  (
  `situationId` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `personId` int(11) NULL DEFAULT NULL COMMENT '人员ID',
  `realName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '老人姓名',
  `relativeName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '亲属姓名',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `illDate` timestamp NULL DEFAULT NULL COMMENT '生病时间',
  `reason` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病情原因',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '处理结果',
  PRIMARY KEY (`situationId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '病情登记表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of situation
-- ----------------------------
INSERT INTO `situation` VALUES (20, 93, '赖金宝', '1', '13888888888', '2023-12-19 09:50:15', '3', '3');
INSERT INTO `situation` VALUES (21, 94, '赖柯萦', '11', '13888888888', '2023-12-27 10:08:00', '4', '4');
INSERT INTO `situation` VALUES (22, 95, '丽丽', '1231', '15374363882', '2023-12-29 09:23:00', '5', '5');
INSERT INTO `situation` VALUES (23, 96, '王老五', '123', '15374363883', '2023-12-29 09:23:11', '6', '6');
INSERT INTO `situation` VALUES (24, 97, '黄蓉', '1233', '15374363884', '2023-12-29 00:00:00', '7', '7');
INSERT INTO `situation` VALUES (25, 98, '杨过', '13', '15374363885', '2023-12-29 03:02:09', '8', '8');
INSERT INTO `situation` VALUES (26, 99, '测试', '12345', '13888888888', '2023-12-28 00:00:00', '9', '9');
INSERT INTO `situation` VALUES (27, 100, '王大宝', '1234', '13838383838', '2023-12-26 09:09:09', '10', '10');
INSERT INTO `situation` VALUES (46, 119, '昭阳', '12345', '11234567891', '2023-12-29 11:11:11', '11', '11');
INSERT INTO `situation` VALUES (47, 118, '李若含', '123', '1123456789', '2023-12-23 11:44:56', '12', '12');
INSERT INTO `situation` VALUES (57, 121, '乐瑶', '阿三', '18479873702', '2024-01-03 06:06:06', '14', '14');
INSERT INTO `situation` VALUES (58, 122, '简微', '阿三', '18479873702', '2024-01-02 15:32:06', '15', '15');
INSERT INTO `situation` VALUES (59, 123, '罗C', '阿三', '18479873702', '2024-01-02 15:32:18', '16', '16');
INSERT INTO `situation` VALUES (60, 125, '向晨', '大王的', '1832382384', '2024-01-11 11:11:11', '17', '17');

-- ----------------------------
-- Table structure for sqllist
-- ----------------------------
DROP TABLE IF EXISTS `sqllist`;
CREATE TABLE `sqllist`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `poth` int(100) NULL DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `生日` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personalized` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sqllist
-- ----------------------------
INSERT INTO `sqllist` VALUES ('127.0.0.1', 39, '虚拟', '2004年10月28日', '没有绝对的成功，只有不断失败的过程');

-- ----------------------------
-- Table structure for stayinfo
-- ----------------------------
DROP TABLE IF EXISTS `stayinfo`;
CREATE TABLE `stayinfo`  (
  `stayId` int(11) NOT NULL AUTO_INCREMENT,
  `bedId` int(11) NOT NULL COMMENT '床位ID（关联bed表主键）',
  `personId` int(11) NOT NULL COMMENT '人员ID（关联personInfo表主键）',
  `orderTime` timestamp NULL DEFAULT NULL COMMENT '预订时间',
  `startTime` timestamp NULL DEFAULT NULL COMMENT '入住时间',
  `leaveTime` timestamp NULL DEFAULT NULL COMMENT '离开时间',
  `price` float(10, 2) NULL DEFAULT NULL COMMENT '单价',
  `stayType` int(11) NULL DEFAULT NULL COMMENT '类别（1-入住；2-换房）',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`stayId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '住宿安排表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of stayinfo
-- ----------------------------
INSERT INTO `stayinfo` VALUES (38, 123, 177, '2024-01-08 14:41:46', '2024-01-08 14:41:46', NULL, 60.90, 1, '测试数据');
INSERT INTO `stayinfo` VALUES (39, 124, 178, '2024-01-08 14:43:08', '2024-01-08 14:43:08', NULL, 60.90, 1, '测试数据');
INSERT INTO `stayinfo` VALUES (40, 125, 179, '2024-01-08 14:43:41', '2024-01-08 14:43:41', NULL, 60.90, 1, '测试数据');
INSERT INTO `stayinfo` VALUES (41, 126, 180, '2024-01-08 14:44:25', '2024-01-08 14:44:25', NULL, 60.90, 1, '测试数据');
INSERT INTO `stayinfo` VALUES (42, 123, 181, '2024-01-08 14:45:02', '2024-01-08 14:45:02', NULL, 60.90, 1, '测试数据');
INSERT INTO `stayinfo` VALUES (43, 123, 182, '2024-01-08 14:47:00', '2024-01-08 14:47:00', NULL, 60.90, 1, '测试数据');
INSERT INTO `stayinfo` VALUES (44, 127, 183, '2024-01-08 14:47:14', '2024-01-08 14:47:14', NULL, 60.90, 1, '测试数据');
INSERT INTO `stayinfo` VALUES (45, 128, 184, '2024-01-08 14:47:25', '2024-01-08 14:47:25', NULL, 60.90, 1, '测试数据');
INSERT INTO `stayinfo` VALUES (46, 129, 185, '2024-01-08 14:47:38', '2024-01-08 14:47:38', NULL, 60.90, 1, '测试数据');
INSERT INTO `stayinfo` VALUES (47, 130, 186, '2024-01-08 14:47:49', '2024-01-08 14:47:49', NULL, 60.90, 1, '测试数据');
INSERT INTO `stayinfo` VALUES (48, 132, 187, '2024-01-08 14:48:00', '2024-01-08 14:48:00', NULL, 60.90, 1, '测试数据');
INSERT INTO `stayinfo` VALUES (49, 131, 188, '2024-01-08 14:49:10', '2024-01-08 14:49:10', NULL, 60.90, 1, '测试数据2');
INSERT INTO `stayinfo` VALUES (50, 133, 189, '2024-01-08 14:49:49', '2024-01-08 14:49:49', NULL, 60.90, 1, '测试数据2');
INSERT INTO `stayinfo` VALUES (51, 134, 190, '2024-01-08 14:50:10', '2024-01-08 14:50:10', NULL, 1827.30, 1, '测试数据2');
INSERT INTO `stayinfo` VALUES (52, 135, 191, '2024-01-08 16:54:48', '2024-01-08 16:54:48', NULL, 60.90, 1, '');
INSERT INTO `stayinfo` VALUES (53, 136, 192, '2024-01-08 17:40:39', '2024-01-08 17:40:39', NULL, 60.90, 1, '测试数据2');
INSERT INTO `stayinfo` VALUES (54, 150, 193, '2024-01-08 17:53:35', '2024-01-08 17:53:35', NULL, 60.90, 1, '我要养老！');
INSERT INTO `stayinfo` VALUES (55, 137, 194, '2024-01-09 09:06:34', '2024-01-09 09:06:34', NULL, 60.90, 1, '测试数据1');
INSERT INTO `stayinfo` VALUES (56, 138, 195, '2024-01-09 09:08:43', '2024-01-09 09:08:43', NULL, 60.90, 1, '测试数据1');
INSERT INTO `stayinfo` VALUES (57, 139, 196, '2024-01-09 09:09:59', '2024-01-09 09:09:59', NULL, 60.90, 1, '测试数据');
INSERT INTO `stayinfo` VALUES (58, 140, 197, '2024-01-09 09:11:18', '2024-01-09 09:11:18', NULL, 60.90, 1, '');
INSERT INTO `stayinfo` VALUES (59, 141, 198, '2024-01-09 09:12:13', '2024-01-09 09:12:13', NULL, 60.90, 1, '我要养老！');
INSERT INTO `stayinfo` VALUES (60, 141, 199, '2024-01-09 09:12:13', '2024-01-09 09:12:13', NULL, 60.90, 1, '我要养老！');
INSERT INTO `stayinfo` VALUES (61, 123, 200, '2024-01-09 10:43:18', '2024-01-09 10:43:18', NULL, 60.90, 1, '1234');
INSERT INTO `stayinfo` VALUES (62, 123, 201, '2024-01-09 10:43:18', '2024-01-09 10:43:18', NULL, 60.90, 1, '1234');
INSERT INTO `stayinfo` VALUES (63, 147, 202, '2024-01-09 10:46:57', '2024-01-09 10:46:57', NULL, 22228.50, 1, '1234');
INSERT INTO `stayinfo` VALUES (64, 144, 203, '2024-01-09 10:47:35', '2024-01-09 10:47:35', NULL, 60.90, 1, '1234');
INSERT INTO `stayinfo` VALUES (65, 142, 204, '2024-01-09 10:48:18', '2024-01-09 10:48:18', NULL, 60.90, 1, '1234');
INSERT INTO `stayinfo` VALUES (66, 123, 205, '2024-01-09 10:49:59', '2024-01-09 10:49:59', NULL, 60.90, 1, '12');
INSERT INTO `stayinfo` VALUES (67, 143, 206, '2024-01-09 10:50:22', '2024-01-09 10:50:22', NULL, 60.90, 1, '1234');
INSERT INTO `stayinfo` VALUES (68, 145, 207, '2024-01-09 10:52:25', '2024-01-09 10:52:25', NULL, 60.90, 1, '1234');
INSERT INTO `stayinfo` VALUES (69, 123, 208, '2024-01-09 10:53:01', '2024-01-09 10:53:01', NULL, 60.90, 1, '123');
INSERT INTO `stayinfo` VALUES (70, 146, 209, '2024-01-09 10:56:06', '2024-01-09 10:56:06', NULL, 60.90, 1, '');
INSERT INTO `stayinfo` VALUES (71, 148, 210, '2024-01-09 11:22:52', '2024-01-09 11:22:52', NULL, 22228.50, 1, '');
INSERT INTO `stayinfo` VALUES (72, 149, 211, '2024-01-12 10:10:08', '2024-01-12 10:10:08', NULL, 60.90, 1, '我要养老！');
INSERT INTO `stayinfo` VALUES (73, 151, 212, '2024-01-12 11:49:56', '2024-01-12 11:49:56', NULL, 60.90, 1, '我要养老！');
INSERT INTO `stayinfo` VALUES (74, 152, 213, '2024-01-12 11:52:39', '2024-01-12 11:52:39', NULL, 60.90, 1, '测试数据');
INSERT INTO `stayinfo` VALUES (75, 153, 214, '2024-01-12 11:53:22', '2024-01-12 11:53:22', NULL, 60.90, 1, '你好世界！');
INSERT INTO `stayinfo` VALUES (76, 154, 215, '2024-01-12 12:20:46', '2024-01-12 12:20:46', NULL, 60.90, 1, '测试数据');
INSERT INTO `stayinfo` VALUES (77, 155, 216, '2024-01-12 12:22:43', '2024-01-12 12:22:43', NULL, 60.90, 1, 'opersoninloding');
INSERT INTO `stayinfo` VALUES (78, 0, 217, '2024-01-13 08:48:01', '2024-01-13 08:48:01', NULL, 22228.50, 1, '');
INSERT INTO `stayinfo` VALUES (79, 156, 218, '2024-01-13 08:48:47', '2024-01-13 08:48:47', NULL, 60.90, 1, '');
INSERT INTO `stayinfo` VALUES (80, 156, 219, '2024-01-13 08:48:47', '2024-01-13 08:48:47', NULL, 60.90, 1, '');
INSERT INTO `stayinfo` VALUES (81, 156, 220, '2024-01-13 08:48:47', '2024-01-13 08:48:47', NULL, 60.90, 1, '');
INSERT INTO `stayinfo` VALUES (82, 156, 221, '2024-01-13 08:49:11', '2024-01-13 08:49:11', NULL, 60.90, 1, '');
INSERT INTO `stayinfo` VALUES (83, 156, 222, '2024-01-13 08:49:11', '2024-01-13 08:49:11', NULL, 60.90, 1, '');
INSERT INTO `stayinfo` VALUES (84, 156, 223, '2024-01-13 08:49:11', '2024-01-13 08:49:11', NULL, 60.90, 1, '');
INSERT INTO `stayinfo` VALUES (85, 156, 224, '2024-01-13 08:49:11', '2024-01-13 08:49:11', NULL, 60.90, 1, '');

-- ----------------------------
-- Table structure for storage
-- ----------------------------
DROP TABLE IF EXISTS `storage`;
CREATE TABLE `storage`  (
  `storageId` int(11) NOT NULL AUTO_INCREMENT,
  `storageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '仓库名称',
  PRIMARY KEY (`storageId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '仓库信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of storage
-- ----------------------------
INSERT INTO `storage` VALUES (1, '商品仓库');
INSERT INTO `storage` VALUES (2, '药品仓库');
INSERT INTO `storage` VALUES (3, '食品仓库');
INSERT INTO `storage` VALUES (4, '物品仓库');
INSERT INTO `storage` VALUES (5, '仓库');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier`  (
  `supplierId` int(11) NOT NULL AUTO_INCREMENT,
  `supplierName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '供应商名称',
  `contact` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联系人',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联系电话',
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '供应商地址',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  `suppliers` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`supplierId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '供应商信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES (1, '雷军', '21', '21', '21', '21221', '0');
INSERT INTO `supplier` VALUES (2, '纳西妲', '32', '32', '3', '2', '0');
INSERT INTO `supplier` VALUES (4, '胖东来', '张三', '18888888888', '湖南', '食品供应商', '1');
INSERT INTO `supplier` VALUES (5, '(O_o)??', '11', '11', '11', '1', '1');
INSERT INTO `supplier` VALUES (6, '0为药品供应商', '1为物品供应商', '111111', '1111', '11', '0');
INSERT INTO `supplier` VALUES (7, '22', '11', '11', '1', '1', '0');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求方法',
  `params` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求参数',
  `time` int(11) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `address` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (1, 'admin', '添加菜单', 'com.villege.modules.controller.sys.SysMenuController.add()', '{\"id\":1131,\"parentId\":0,\"name\":\"维修管理\",\"path\":\"maintenance\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":7,\"hidden\":\"false\",\"component\":\"\"}', 87, '127.0.0.1', NULL, '2023-06-30 15:36:15');
INSERT INTO `sys_log` VALUES (2, 'admin', '添加菜单', 'com.villege.modules.controller.sys.SysMenuController.add()', '{\"id\":1132,\"parentId\":1131,\"name\":\"维修管理\",\"path\":\"maintenance\",\"menuType\":2,\"perms\":\"sys:maintenance:list\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":1,\"hidden\":\"false\",\"component\":\"sys/maintenance\"}', 4, '127.0.0.1', NULL, '2023-06-30 15:37:07');
INSERT INTO `sys_log` VALUES (3, 'admin', '添加菜单', 'com.villege.modules.controller.sys.SysMenuController.add()', '{\"id\":1133,\"parentId\":1132,\"name\":\"新增\",\"path\":\"\",\"menuType\":3,\"perms\":\"sys:maintenance:add\",\"icon\":\"\",\"isFrame\":0,\"status\":0,\"sort\":1,\"hidden\":\"false\",\"component\":\"\"}', 5, '127.0.0.1', NULL, '2023-06-30 15:37:52');
INSERT INTO `sys_log` VALUES (4, 'admin', '添加菜单', 'com.villege.modules.controller.sys.SysMenuController.add()', '{\"id\":1134,\"parentId\":1132,\"name\":\"处理\",\"path\":\"\",\"menuType\":3,\"perms\":\"sys:maintenance:info\",\"icon\":\"\",\"isFrame\":0,\"status\":0,\"sort\":2,\"hidden\":\"false\",\"component\":\"\"}', 9, '127.0.0.1', NULL, '2023-06-30 15:38:12');
INSERT INTO `sys_log` VALUES (5, 'admin', '添加菜单', 'com.villege.modules.controller.sys.SysMenuController.add()', '{\"id\":1135,\"parentId\":1132,\"name\":\"删除\",\"path\":\"\",\"menuType\":3,\"perms\":\"sys:maintenance:del\",\"icon\":\"\",\"isFrame\":0,\"status\":0,\"sort\":3,\"hidden\":\"false\",\"component\":\"\"}', 5, '127.0.0.1', NULL, '2023-06-30 15:38:28');
INSERT INTO `sys_log` VALUES (6, 'admin', '编辑角色', 'com.villege.modules.controller.sys.SysRoleController.edit()', '{\"roleId\":1,\"roleName\":\"超级管理员\",\"type\":1,\"remark\":\"具有所有权限的操作\",\"menuIdList\":[1030,100,1004,1001,1002,1003,1112,1113,1120,1119,1094,1037,1041,1042,1043,1108,1109,1110,1111,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1104,1036,1038,1039,1040,1118,1091,1114,1115,1116,1107,1117,1131,1132,1133,1134,1135,102,1009,1010,1011,1012,101,1005,1006,1007,1008,106,1025,1026,1]}', 280, '127.0.0.1', NULL, '2023-06-30 15:38:41');
INSERT INTO `sys_log` VALUES (7, 'admin', '删除维修', 'com.villege.modules.controller.sys.MaintenanceController.del()', '[10]', 4, '127.0.0.1', NULL, '2023-06-30 15:42:24');
INSERT INTO `sys_log` VALUES (8, 'admin', '删除维修', 'com.villege.modules.controller.sys.MaintenanceController.del()', '[8]', 3, '127.0.0.1', NULL, '2023-06-30 15:42:33');
INSERT INTO `sys_log` VALUES (9, 'admin', '添加维修', 'com.villege.modules.controller.sys.MaintenanceController.add()', '{\"mainId\":11,\"content\":\"1栋楼道照明灯不亮\",\"creator\":\"小张\",\"createTime\":\"Jun 8, 2023 12:00:00 AM\",\"state\":1,\"dealMoney\":0.0,\"dealPerson\":\"\",\"dealResult\":\"\"}', 10, '127.0.0.1', NULL, '2023-06-30 15:47:48');
INSERT INTO `sys_log` VALUES (10, 'admin', '编辑维修', 'com.villege.modules.controller.sys.MaintenanceController.edit()', '{\"mainId\":11,\"content\":\"1栋楼道照明灯不亮\",\"creator\":\"小张\",\"createTime\":\"Jun 8, 2023 12:00:00 AM\",\"state\":3,\"dealMoney\":10.0,\"dealPerson\":\"李师傅\",\"dealResult\":\"灯泡烧毁，已更换灯泡。\",\"dealTime\":\"Jun 8, 2023 12:00:00 AM\"}', 11, '127.0.0.1', NULL, '2023-06-30 15:49:26');
INSERT INTO `sys_log` VALUES (11, 'admin', '删除维修', 'com.villege.modules.controller.sys.MaintenanceController.del()', '[7]', 4, '127.0.0.1', NULL, '2023-06-30 15:49:40');
INSERT INTO `sys_log` VALUES (12, 'admin', '编辑维修', 'com.villege.modules.controller.sys.MaintenanceController.edit()', '{\"mainId\":9,\"content\":\"2栋电梯报警\",\"creator\":\"小张\",\"createTime\":\"Dec 29, 2021 12:00:00 AM\",\"state\":2,\"dealMoney\":0.0,\"dealPerson\":\"\",\"dealResult\":\"正在类型电梯公司\\n\"}', 5, '127.0.0.1', NULL, '2023-06-30 15:51:11');
INSERT INTO `sys_log` VALUES (13, 'admin', '编辑维修', 'com.villege.modules.controller.sys.MaintenanceController.edit()', '{\"mainId\":9,\"content\":\"2栋电梯报警\",\"creator\":\"小张\",\"createTime\":\"Dec 29, 2021 12:00:00 AM\",\"state\":2,\"dealMoney\":0.0,\"dealPerson\":\"\",\"dealResult\":\"正在联系电梯公司\\n\"}', 21, '127.0.0.1', NULL, '2023-06-30 17:50:14');
INSERT INTO `sys_log` VALUES (14, 'admin', '添加菜单', 'com.villege.modules.controller.sys.SysMenuController.add()', '{\"id\":1136,\"parentId\":0,\"name\":\"投诉管理\",\"path\":\"complain\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":7,\"hidden\":\"false\",\"component\":\"\"}', 87, '127.0.0.1', NULL, '2023-07-01 16:57:13');
INSERT INTO `sys_log` VALUES (15, 'admin', '添加菜单', 'com.villege.modules.controller.sys.SysMenuController.add()', '{\"id\":1137,\"parentId\":1136,\"name\":\"投诉管理\",\"path\":\"complain\",\"menuType\":2,\"perms\":\"sys:complain:list\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":1,\"hidden\":\"false\",\"component\":\"sys/complain/index\"}', 4, '127.0.0.1', NULL, '2023-07-01 16:57:57');
INSERT INTO `sys_log` VALUES (16, 'admin', '添加菜单', 'com.villege.modules.controller.sys.SysMenuController.add()', '{\"id\":1138,\"parentId\":1137,\"name\":\"新增\",\"path\":\"\",\"menuType\":3,\"perms\":\"sys:complain:add\",\"icon\":\"\",\"isFrame\":0,\"status\":0,\"sort\":1,\"hidden\":\"false\",\"component\":\"\"}', 5, '127.0.0.1', NULL, '2023-07-01 16:58:24');
INSERT INTO `sys_log` VALUES (17, 'admin', '添加菜单', 'com.villege.modules.controller.sys.SysMenuController.add()', '{\"id\":1139,\"parentId\":1137,\"name\":\"处理\",\"path\":\"\",\"menuType\":3,\"perms\":\"sys:complain:info\",\"icon\":\"\",\"isFrame\":0,\"status\":0,\"sort\":2,\"hidden\":\"false\",\"component\":\"\"}', 6, '127.0.0.1', NULL, '2023-07-01 16:58:42');
INSERT INTO `sys_log` VALUES (18, 'admin', '添加菜单', 'com.villege.modules.controller.sys.SysMenuController.add()', '{\"id\":1140,\"parentId\":1137,\"name\":\"删除\",\"path\":\"\",\"menuType\":3,\"perms\":\"sys:complain:del\",\"icon\":\"\",\"isFrame\":0,\"status\":0,\"sort\":3,\"hidden\":\"false\",\"component\":\"\"}', 4, '127.0.0.1', NULL, '2023-07-01 16:58:58');
INSERT INTO `sys_log` VALUES (19, 'admin', '编辑角色', 'com.villege.modules.controller.sys.SysRoleController.edit()', '{\"roleId\":1,\"roleName\":\"超级管理员\",\"type\":1,\"remark\":\"具有所有权限的操作\",\"menuIdList\":[1030,100,1004,1001,1002,1003,1112,1113,1120,1119,1094,1037,1041,1042,1043,1108,1109,1110,1111,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1104,1036,1038,1039,1040,1118,1091,1114,1115,1116,1107,1117,1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,102,1009,1010,1011,1012,101,1005,1006,1007,1008,106,1025,1026,1]}', 361, '127.0.0.1', NULL, '2023-07-01 16:59:15');
INSERT INTO `sys_log` VALUES (20, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1120,\"parentId\":0,\"name\":\"小区地图\",\"path\":\"mapmgr\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":1,\"hidden\":\"false\",\"component\":\"\"}', 18, '127.0.0.1', NULL, '2023-07-01 17:00:04');
INSERT INTO `sys_log` VALUES (21, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1094,\"parentId\":0,\"name\":\"小区管理\",\"path\":\"community\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":1,\"hidden\":\"false\",\"component\":\"\"}', 4, '127.0.0.1', NULL, '2023-07-01 17:00:19');
INSERT INTO `sys_log` VALUES (22, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1121,\"parentId\":0,\"name\":\"房屋管理\",\"path\":\"house\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":2,\"hidden\":\"false\",\"component\":\"\"}', 5, '127.0.0.1', NULL, '2023-07-01 17:00:38');
INSERT INTO `sys_log` VALUES (23, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1120,\"parentId\":0,\"name\":\"小区地图\",\"path\":\"mapmgr\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":2,\"hidden\":\"false\",\"component\":\"\"}', 5, '127.0.0.1', NULL, '2023-07-01 17:00:54');
INSERT INTO `sys_log` VALUES (24, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1121,\"parentId\":0,\"name\":\"房屋管理\",\"path\":\"house\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":3,\"hidden\":\"false\",\"component\":\"\"}', 7, '127.0.0.1', NULL, '2023-07-01 17:01:06');
INSERT INTO `sys_log` VALUES (25, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1131,\"parentId\":0,\"name\":\"维修管理\",\"path\":\"maintenance\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":8,\"hidden\":\"false\",\"component\":\"\"}', 7, '127.0.0.1', NULL, '2023-07-01 17:01:50');
INSERT INTO `sys_log` VALUES (26, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1136,\"parentId\":0,\"name\":\"投诉管理\",\"path\":\"complain\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":9,\"hidden\":\"false\",\"component\":\"\"}', 4, '127.0.0.1', NULL, '2023-07-01 17:02:04');
INSERT INTO `sys_log` VALUES (27, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1030,\"parentId\":0,\"name\":\"账户管理\",\"path\":\"agentmgr\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":10,\"hidden\":\"false\",\"component\":\"\"}', 6, '127.0.0.1', NULL, '2023-07-01 17:02:22');
INSERT INTO `sys_log` VALUES (28, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1,\"parentId\":0,\"name\":\"系统管理\",\"path\":\"sys\",\"menuType\":1,\"perms\":\"\",\"icon\":\"cog\",\"isFrame\":0,\"status\":0,\"sort\":18,\"hidden\":\"false\",\"component\":\"\"}', 10, '127.0.0.1', NULL, '2023-07-01 17:03:04');
INSERT INTO `sys_log` VALUES (29, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1030,\"parentId\":0,\"name\":\"账户管理\",\"path\":\"agentmgr\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":11,\"hidden\":\"false\",\"component\":\"\"}', 4, '127.0.0.1', NULL, '2023-07-01 17:03:52');
INSERT INTO `sys_log` VALUES (30, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1136,\"parentId\":0,\"name\":\"投诉管理\",\"path\":\"complain\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":10,\"hidden\":\"false\",\"component\":\"\"}', 5, '127.0.0.1', NULL, '2023-07-01 17:03:57');
INSERT INTO `sys_log` VALUES (31, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1131,\"parentId\":0,\"name\":\"维修管理\",\"path\":\"maintenance\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":9,\"hidden\":\"false\",\"component\":\"\"}', 6, '127.0.0.1', NULL, '2023-07-01 17:04:02');
INSERT INTO `sys_log` VALUES (32, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1107,\"parentId\":0,\"name\":\"出入记录\",\"path\":\"inMgr\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":8,\"hidden\":\"false\",\"component\":\"\"}', 7, '127.0.0.1', NULL, '2023-07-01 17:04:09');
INSERT INTO `sys_log` VALUES (33, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1118,\"parentId\":0,\"name\":\"访客登记\",\"path\":\"manualMgr\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":8,\"hidden\":\"false\",\"component\":\"\"}', 21, '127.0.0.1', NULL, '2023-07-01 17:04:18');
INSERT INTO `sys_log` VALUES (34, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1107,\"parentId\":0,\"name\":\"出入记录\",\"path\":\"inMgr\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":7,\"hidden\":\"false\",\"component\":\"\"}', 4, '127.0.0.1', NULL, '2023-07-01 17:04:25');
INSERT INTO `sys_log` VALUES (35, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1104,\"parentId\":0,\"name\":\"居民管理\",\"path\":\"personmgr\",\"menuType\":1,\"perms\":\"\",\"icon\":\"address-card\",\"isFrame\":0,\"status\":0,\"sort\":6,\"hidden\":\"false\",\"component\":\"\"}', 5, '127.0.0.1', NULL, '2023-07-01 17:04:32');
INSERT INTO `sys_log` VALUES (36, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1127,\"parentId\":0,\"name\":\"物业缴费\",\"path\":\"finance\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":5,\"hidden\":\"false\",\"component\":\"\"}', 5, '127.0.0.1', NULL, '2023-07-01 17:04:39');
INSERT INTO `sys_log` VALUES (37, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1121,\"parentId\":0,\"name\":\"房屋管理\",\"path\":\"house\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":4,\"hidden\":\"false\",\"component\":\"\"}', 4, '127.0.0.1', NULL, '2023-07-01 17:04:44');
INSERT INTO `sys_log` VALUES (38, 'admin', '删除维修', 'com.villege.modules.controller.sys.ComplainController.del()', '[null]', 8, '127.0.0.1', NULL, '2023-07-01 17:05:05');
INSERT INTO `sys_log` VALUES (39, 'admin', '删除维修', 'com.villege.modules.controller.sys.ComplainController.del()', '[null]', 3, '127.0.0.1', NULL, '2023-07-01 17:05:09');
INSERT INTO `sys_log` VALUES (40, 'admin', '删除维修', 'com.villege.modules.controller.sys.ComplainController.del()', '[null,null]', 2, '127.0.0.1', NULL, '2023-07-01 17:05:57');
INSERT INTO `sys_log` VALUES (41, 'admin', '删除维修', 'com.villege.modules.controller.sys.ComplainController.del()', '[10,7]', 4, '127.0.0.1', NULL, '2023-07-01 17:06:04');
INSERT INTO `sys_log` VALUES (42, 'admin', '删除维修', 'com.villege.modules.controller.sys.ComplainController.del()', '[8]', 7, '127.0.0.1', NULL, '2023-07-01 17:12:04');
INSERT INTO `sys_log` VALUES (43, 'admin', '编辑维修', 'com.villege.modules.controller.sys.ComplainController.edit()', '{\"complainId\":9,\"title\":\"门前垃圾太多\",\"content\":\"门前垃圾太多，长时间未处理\\n\",\"creator\":\"李四\",\"createTime\":\"Jul 1, 2023 12:00:00 AM\",\"state\":1,\"dealPerson\":\"\",\"dealResult\":\"\"}', 10, '127.0.0.1', NULL, '2023-07-01 17:12:35');
INSERT INTO `sys_log` VALUES (44, 'admin', '编辑维修', 'com.villege.modules.controller.sys.ComplainController.edit()', '{\"complainId\":9,\"title\":\"门前垃圾太多\",\"content\":\"门前垃圾太多，长时间未处理\\n\",\"creator\":\"李四\",\"createTime\":\"Jul 1, 2023 12:00:00 AM\",\"state\":3,\"dealPerson\":\"张阿姨\",\"dealResult\":\"已清理垃圾，并打扫干净。\\n\",\"dealTime\":\"Jul 1, 2023 12:00:00 AM\"}', 5, '127.0.0.1', NULL, '2023-07-01 17:15:03');
INSERT INTO `sys_log` VALUES (45, 'admin', '添加维修', 'com.villege.modules.controller.sys.ComplainController.add()', '{\"complainId\":11,\"title\":\"噪声扰民\",\"content\":\"3栋805装修太吵，影响孩子信息\",\"creator\":\"小丽\",\"createTime\":\"Jul 2, 2023 12:00:00 AM\",\"state\":1,\"dealPerson\":\"\",\"dealResult\":\"\"}', 9, '127.0.0.1', NULL, '2023-07-01 17:16:23');
INSERT INTO `sys_log` VALUES (46, 'admin', '编辑维修', 'com.villege.modules.controller.sys.ComplainController.edit()', '{\"complainId\":11,\"title\":\"噪声扰民\",\"content\":\"3栋805装修太吵，影响孩子信息\",\"creator\":\"小丽\",\"createTime\":\"Jul 2, 2023 12:00:00 AM\",\"state\":3,\"dealPerson\":\"丽丽\",\"dealResult\":\"与业主沟通协调，要求其休息时间不能装修。\\n\",\"dealTime\":\"Jul 2, 2023 12:00:00 AM\"}', 5, '127.0.0.1', NULL, '2023-07-01 17:17:16');
INSERT INTO `sys_log` VALUES (47, 'admin', '编辑缴费', 'com.villege.modules.controller.sys.FinanceController.edit()', '[{\"financeId\":9,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":1,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0},{\"financeId\":10,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":1,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0},{\"financeId\":11,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":1,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0}]', 25, '127.0.0.1', NULL, '2023-07-02 09:40:18');
INSERT INTO `sys_log` VALUES (48, 'admin', '编辑缴费', 'com.villege.modules.controller.sys.FinanceController.edit()', '[{\"financeId\":13,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":1,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0},{\"financeId\":15,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":1,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0},{\"financeId\":16,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":1,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0}]', 24, '127.0.0.1', NULL, '2023-07-02 09:40:55');
INSERT INTO `sys_log` VALUES (49, 'admin', '编辑缴费', 'com.villege.modules.controller.sys.FinanceController.edit()', '[{\"financeId\":17,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":1,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0},{\"financeId\":19,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":1,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0},{\"financeId\":20,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":1,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0}]', 21, '127.0.0.1', NULL, '2023-07-02 09:41:13');
INSERT INTO `sys_log` VALUES (50, 'admin', '编辑缴费', 'com.villege.modules.controller.sys.FinanceController.edit()', '[{\"financeId\":46,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":1,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0},{\"financeId\":58,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":1,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0},{\"financeId\":47,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":1,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0},{\"financeId\":59,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":1,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0},{\"financeId\":48,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":1,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0},{\"financeId\":61,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":1,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0}]', 33, '127.0.0.1', NULL, '2023-07-02 10:58:59');
INSERT INTO `sys_log` VALUES (51, 'admin', '编辑缴费', 'com.villege.modules.controller.sys.FinanceController.edit()', '[{\"financeId\":50,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":2,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0},{\"financeId\":39,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":2,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0},{\"financeId\":51,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":2,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0},{\"financeId\":52,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":2,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0},{\"financeId\":41,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":2,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0},{\"financeId\":53,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":2,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0}]', 30, '127.0.0.1', NULL, '2023-07-02 10:59:25');
INSERT INTO `sys_log` VALUES (52, 'admin', '编辑缴费', 'com.villege.modules.controller.sys.FinanceController.edit()', '[{\"financeId\":42,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":3,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0},{\"financeId\":54,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":3,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0},{\"financeId\":44,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":3,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0},{\"financeId\":56,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":3,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0},{\"financeId\":45,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":3,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0},{\"financeId\":57,\"houseId\":0,\"houseMoney\":0.0,\"carMoney\":0.0,\"liftMoney\":0.0,\"wasteMoney\":0.0,\"totalMoney\":0.0,\"state\":0,\"paidType\":3,\"paidDate\":\"Jul 2, 2023 12:00:00 AM\",\"operator\":\"管理员\",\"remark\":\"\",\"area\":0.0}]', 28, '127.0.0.1', NULL, '2023-07-02 10:59:44');
INSERT INTO `sys_log` VALUES (53, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1127,\"parentId\":0,\"name\":\"收费管理\",\"path\":\"finance\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":5,\"hidden\":\"false\",\"component\":\"\"}', 81, '127.0.0.1', NULL, '2023-07-02 17:17:17');
INSERT INTO `sys_log` VALUES (54, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1112,\"parentId\":0,\"name\":\"门禁管理\",\"path\":\"inOutMgr\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":3,\"hidden\":\"false\",\"component\":\"\"}', 3, '127.0.0.1', NULL, '2023-07-02 17:19:56');
INSERT INTO `sys_log` VALUES (55, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1091,\"parentId\":1112,\"name\":\"访客登记\",\"path\":\"manual\",\"menuType\":2,\"perms\":\"sys:manual:list\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":8,\"hidden\":\"false\",\"component\":\"sys/manual/index\"}', 6, '127.0.0.1', NULL, '2023-07-02 17:20:21');
INSERT INTO `sys_log` VALUES (56, 'admin', '删除菜单', 'com.villege.modules.controller.sys.SysMenuController.del()', '[1118]', 10, '127.0.0.1', NULL, '2023-07-02 17:20:31');
INSERT INTO `sys_log` VALUES (57, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1137,\"parentId\":1136,\"name\":\"业主投诉\",\"path\":\"complain\",\"menuType\":2,\"perms\":\"sys:complain:list\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":1,\"hidden\":\"false\",\"component\":\"sys/complain/index\"}', 4, '127.0.0.1', NULL, '2023-07-02 17:21:54');
INSERT INTO `sys_log` VALUES (58, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1030,\"parentId\":0,\"name\":\"账户管理\",\"path\":\"agentmgr\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":12,\"hidden\":\"false\",\"component\":\"\"}', 32, '127.0.0.1', NULL, '2023-07-03 15:59:41');
INSERT INTO `sys_log` VALUES (59, 'admin', '添加菜单', 'com.villege.modules.controller.sys.SysMenuController.add()', '{\"id\":1141,\"parentId\":0,\"name\":\"系统报表\",\"path\":\"report\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":12,\"hidden\":\"false\",\"component\":\"\"}', 21, '127.0.0.1', NULL, '2023-07-03 16:00:16');
INSERT INTO `sys_log` VALUES (60, 'admin', '添加菜单', 'com.villege.modules.controller.sys.SysMenuController.add()', '{\"id\":1142,\"parentId\":1141,\"name\":\"物业明细报表\",\"path\":\"reportm\",\"menuType\":2,\"perms\":\"sys:finance:list\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":1,\"hidden\":\"false\",\"component\":\"sys/reportm/index\"}', 7, '127.0.0.1', NULL, '2023-07-03 16:01:50');
INSERT INTO `sys_log` VALUES (61, 'admin', '编辑角色', 'com.villege.modules.controller.sys.SysRoleController.edit()', '{\"roleId\":1,\"roleName\":\"超级管理员\",\"type\":1,\"remark\":\"具有所有权限的操作\",\"menuIdList\":[1094,1037,1041,1042,1043,1108,1109,1110,1111,1120,1119,1112,1113,1091,1114,1115,1116,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1104,1036,1038,1039,1040,1107,1117,1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,1030,100,1004,1001,1002,1003,1141,1142,102,1009,1010,1011,1012,101,1005,1006,1007,1008,106,1025,1026,1]}', 244, '127.0.0.1', NULL, '2023-07-03 16:02:01');
INSERT INTO `sys_log` VALUES (62, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1030,\"parentId\":0,\"name\":\"账户管理\",\"path\":\"agentmgr\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":12,\"hidden\":\"false\",\"component\":\"\"}', 3, '127.0.0.1', NULL, '2023-07-03 16:02:52');
INSERT INTO `sys_log` VALUES (63, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1141,\"parentId\":0,\"name\":\"系统报表\",\"path\":\"report\",\"menuType\":1,\"perms\":\"\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":11,\"hidden\":\"false\",\"component\":\"\"}', 4, '127.0.0.1', NULL, '2023-07-03 16:02:56');
INSERT INTO `sys_log` VALUES (64, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1142,\"parentId\":1141,\"name\":\"物业明细报表\",\"path\":\"reportm\",\"menuType\":2,\"perms\":\"sys:finance:list\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":1,\"hidden\":\"false\",\"component\":\"sys/reportm/index\"}', 4, '127.0.0.1', NULL, '2023-07-03 16:05:22');
INSERT INTO `sys_log` VALUES (65, 'admin', '添加菜单', 'com.villege.modules.controller.sys.SysMenuController.add()', '{\"id\":1143,\"parentId\":1141,\"name\":\"物业费统计表\",\"path\":\"reports\",\"menuType\":2,\"perms\":\"sys:finance:list\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":2,\"hidden\":\"false\",\"component\":\"sys/reports/index\"}', 90, '127.0.0.1', NULL, '2023-07-04 11:51:24');
INSERT INTO `sys_log` VALUES (66, 'admin', '编辑菜单', 'com.villege.modules.controller.sys.SysMenuController.edit()', '{\"id\":1142,\"parentId\":1141,\"name\":\"物业费明细表\",\"path\":\"reportm\",\"menuType\":2,\"perms\":\"sys:finance:list\",\"icon\":\"user\",\"isFrame\":0,\"status\":0,\"sort\":1,\"hidden\":\"false\",\"component\":\"sys/reportm/index\"}', 23, '127.0.0.1', NULL, '2023-07-04 11:51:47');
INSERT INTO `sys_log` VALUES (67, 'admin', '编辑角色', 'com.villege.modules.controller.sys.SysRoleController.edit()', '{\"roleId\":1,\"roleName\":\"超级管理员\",\"type\":1,\"remark\":\"具有所有权限的操作\",\"menuIdList\":[1094,1037,1041,1042,1043,1108,1109,1110,1111,1120,1119,1112,1113,1091,1114,1115,1116,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1104,1036,1038,1039,1040,1107,1117,1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,1141,1142,1143,1030,100,1004,1001,1002,1003,102,1009,1010,1011,1012,101,1005,1006,1007,1008,106,1025,1026,1]}', 278, '127.0.0.1', NULL, '2023-07-04 11:52:06');
INSERT INTO `sys_log` VALUES (68, 'admin', '添加人员', 'com.villege.modules.controller.sys.PersonInfoController.add()', '{\"personId\":117,\"communityId\":11,\"termName\":\"8栋\",\"houseNo\":\"802\",\"userName\":\"赖国荣\",\"sex\":\"男\",\"mobile\":\"15374363882\",\"faceUrl\":\"\",\"personType\":\"常住居民\",\"state\":1,\"creater\":\"admin\",\"createrTime\":\"Jul 4, 2023 4:02:22 PM\",\"remark\":\"\"}', 28, '127.0.0.1', NULL, '2023-07-04 16:02:23');
INSERT INTO `sys_log` VALUES (69, 'admin', '添加人员进出信息', 'com.villege.modules.controller.sys.InOutRecordController.add()', '{\"inOutRecordId\":13,\"communityId\":11,\"personId\":117,\"inTime\":\"Jul 4, 2023 4:03:28 PM\",\"inPic\":\"http://localhost:8888/villegePic/face/2049212b-c38d-4032-82f8-9dadbdd3f399.png\",\"extName\":\"png\",\"fileBase64\":\"\"}', 2296, '127.0.0.1', NULL, '2023-07-04 16:03:29');

-- ----------------------------
-- Table structure for sysmenu
-- ----------------------------
DROP TABLE IF EXISTS `sysmenu`;
CREATE TABLE `sysmenu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NULL DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单URL',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sysmenu
-- ----------------------------
INSERT INTO `sysmenu` VALUES (19, 0, '学生管理', ' ');
INSERT INTO `sysmenu` VALUES (20, 0, '老师管理', ' ');
INSERT INTO `sysmenu` VALUES (21, 0, '班级管理', ' ');

-- ----------------------------
-- Table structure for sysrole
-- ----------------------------
DROP TABLE IF EXISTS `sysrole`;
CREATE TABLE `sysrole`  (
  `roleId` bigint(20) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`roleId`) USING BTREE,
  UNIQUE INDEX `role_name`(`roleName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sysrole
-- ----------------------------
INSERT INTO `sysrole` VALUES (8, '前台');
INSERT INTO `sysrole` VALUES (5, '医生');
INSERT INTO `sysrole` VALUES (6, '宿管');
INSERT INTO `sysrole` VALUES (3, '物品仓库管理员');
INSERT INTO `sysrole` VALUES (9, '物品采购人');
INSERT INTO `sysrole` VALUES (2, '药品仓库管理员');
INSERT INTO `sysrole` VALUES (4, '药品采购人');
INSERT INTO `sysrole` VALUES (7, '财务');
INSERT INTO `sysrole` VALUES (1, '超级管理员');

-- ----------------------------
-- Table structure for sysrolemenu
-- ----------------------------
DROP TABLE IF EXISTS `sysrolemenu`;
CREATE TABLE `sysrolemenu`  (
  `roleId` int(11) NOT NULL COMMENT '角色ID',
  `menuId` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`roleId`, `menuId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色与菜单对应关系' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sysrolemenu
-- ----------------------------
INSERT INTO `sysrolemenu` VALUES (1, 2);
INSERT INTO `sysrolemenu` VALUES (1, 3);
INSERT INTO `sysrolemenu` VALUES (1, 4);
INSERT INTO `sysrolemenu` VALUES (1, 5);
INSERT INTO `sysrolemenu` VALUES (1, 7);
INSERT INTO `sysrolemenu` VALUES (1, 8);
INSERT INTO `sysrolemenu` VALUES (1, 9);
INSERT INTO `sysrolemenu` VALUES (1, 10);
INSERT INTO `sysrolemenu` VALUES (1, 11);
INSERT INTO `sysrolemenu` VALUES (1, 13);
INSERT INTO `sysrolemenu` VALUES (1, 14);
INSERT INTO `sysrolemenu` VALUES (1, 15);
INSERT INTO `sysrolemenu` VALUES (1, 16);
INSERT INTO `sysrolemenu` VALUES (1, 17);
INSERT INTO `sysrolemenu` VALUES (1, 18);
INSERT INTO `sysrolemenu` VALUES (3, 2);
INSERT INTO `sysrolemenu` VALUES (8, 2);
INSERT INTO `sysrolemenu` VALUES (8, 3);
INSERT INTO `sysrolemenu` VALUES (8, 4);
INSERT INTO `sysrolemenu` VALUES (8, 5);
INSERT INTO `sysrolemenu` VALUES (8, 13);
INSERT INTO `sysrolemenu` VALUES (8, 16);

-- ----------------------------
-- Table structure for t_good
-- ----------------------------
DROP TABLE IF EXISTS `t_good`;
CREATE TABLE `t_good`  (
  `id` int(20) NOT NULL,
  `user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_good
-- ----------------------------

-- ----------------------------
-- Table structure for term
-- ----------------------------
DROP TABLE IF EXISTS `term`;
CREATE TABLE `term`  (
  `termId` int(11) NOT NULL AUTO_INCREMENT COMMENT '楼栋ID',
  `termName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '楼栋名称',
  `termRemark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `communityId` int(11) NOT NULL COMMENT '养老院ID',
  PRIMARY KEY (`termId`) USING BTREE,
  INDEX `idx_community`(`communityId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of term
-- ----------------------------
INSERT INTO `term` VALUES (1, '1栋', 'dahw', 13);
INSERT INTO `term` VALUES (2, '2栋', 'dwaw', 13);
INSERT INTO `term` VALUES (3, '3栋', 'dwaddwa', 13);
INSERT INTO `term` VALUES (4, '1栋', 'dwadaw', 2);
INSERT INTO `term` VALUES (5, '2栋', 'dadwa', 2);
INSERT INTO `term` VALUES (6, '3栋', 'wadw', 2);

-- ----------------------------
-- Table structure for uservo
-- ----------------------------
DROP TABLE IF EXISTS `uservo`;
CREATE TABLE `uservo`  (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `passWord` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DrugPic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL COMMENT '最近登录时间',
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1262 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of uservo
-- ----------------------------
INSERT INTO `uservo` VALUES (1, '前台', '1234', 18, '女', '123456789010', '无', '2', '\\upload\\20240106\\959ccca9-a46b-44ab-88a5-f33bb854ea7f.png', NULL);
INSERT INTO `uservo` VALUES (4, '医生', '1234', 0, '男', '12211111111', '12', '3', NULL, '2024-01-15 09:43:20');
INSERT INTO `uservo` VALUES (1245, '用户名称', '1234', 4, '男', '12345678910', '备注', '1', NULL, NULL);
INSERT INTO `uservo` VALUES (1246, 'admin', '1234', 0, '女', '12345678910', '2111111', '1', '\\upload\\20240106\\7bed61da-1209-4df1-8e8b-d07a1ecff49f.png', '2024-01-15 10:37:18');
INSERT INTO `uservo` VALUES (1248, 'admin2', '1234', 21, '男', '12211111111', '123', '1', NULL, NULL);
INSERT INTO `uservo` VALUES (1249, 'admin3', '123', 123, '男', '12211111111', '123', '1', NULL, NULL);
INSERT INTO `uservo` VALUES (1250, '21', '12', 21, '男', '12312311111', '2112', '1', NULL, NULL);
INSERT INTO `uservo` VALUES (1251, '212122222', '221', 21, '男', '11111111111', '11', '1', NULL, NULL);
INSERT INTO `uservo` VALUES (1252, '21212', '123', 12, '男', '11111111111', '212', '2', NULL, NULL);
INSERT INTO `uservo` VALUES (1258, '1', '123', 18, '0', '11111111', '0', '0', NULL, NULL);
INSERT INTO `uservo` VALUES (1260, '1', '1234', 18, '男', '1111111111', '0', '10', '\\upload\\20240105\\043a3b4b-5aa1-496e-840b-030f5e10cd10.png', '2024-01-08 09:47:59');
INSERT INTO `uservo` VALUES (1261, '1', '1234', 18, '男', '111111111', '0', '1', NULL, NULL);

-- ----------------------------
-- Table structure for visitrecord
-- ----------------------------
DROP TABLE IF EXISTS `visitrecord`;
CREATE TABLE `visitrecord`  (
  `manualRecordId` int(11) NOT NULL AUTO_INCREMENT,
  `visitor` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '客户姓名',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '联系电话',
  `visitReason` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '访问事由',
  `visitTime` timestamp NULL DEFAULT NULL COMMENT '访问时间',
  `userName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '接待人员',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '访问结果',
  PRIMARY KEY (`manualRecordId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '接待登记表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of visitrecord
-- ----------------------------
INSERT INTO `visitrecord` VALUES (4, '王大宝', '13978654321', '11', '2022-04-12 09:50:57', 'lgr', '2022-04-12 09:51:07');
INSERT INTO `visitrecord` VALUES (5, '刘利', '', '', '2022-04-14 16:43:18', 'admin', '2022-04-14 16:43:28');
INSERT INTO `visitrecord` VALUES (6, '李芳', '', '业务', '2022-04-15 10:05:41', 'admin', '2022-04-15 10:06:01');
INSERT INTO `visitrecord` VALUES (10, '1', '111111111', '1111111', '2023-12-12 16:23:49', '111', '1111');
INSERT INTO `visitrecord` VALUES (13, '1', '1111111111111', '1111111111111111111111', '2023-12-12 18:17:48', '1111111111111', '1111111111111111111');
INSERT INTO `visitrecord` VALUES (14, '1', '11111111', '11111', '2023-12-12 18:19:01', '111', '1');
INSERT INTO `visitrecord` VALUES (15, '1', '111111111', '11111111111111111111', '2023-12-12 18:19:17', '111', '111111');
INSERT INTO `visitrecord` VALUES (16, '1', '11111111', NULL, '2023-12-12 19:54:17', '1111', '11');
INSERT INTO `visitrecord` VALUES (17, '11111', '11111111', NULL, '2023-12-12 19:55:06', '1111', '11');
INSERT INTO `visitrecord` VALUES (18, '111111111111111', '1111111111111', '', '2023-12-12 19:56:00', '111', '1111111');
INSERT INTO `visitrecord` VALUES (19, '1', '1111111111111111', '111111', '2023-12-12 19:56:33', '1', '11111111');
INSERT INTO `visitrecord` VALUES (20, '111', '8618479873', '123', '2023-12-15 13:58:24', '111', '123');
INSERT INTO `visitrecord` VALUES (22, '11', '111111111', '11', '2024-01-03 09:37:56', '11', '11');
INSERT INTO `visitrecord` VALUES (23, '1', '1111111111', '1', '2024-01-03 20:04:45', '1', '1');

SET FOREIGN_KEY_CHECKS = 1;
