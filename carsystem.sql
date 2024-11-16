/*
 Navicat Premium Data Transfer

 Source Server         : lindandan
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : carsystem

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 16/11/2024 13:31:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cars
-- ----------------------------
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars`  (
  `plate` char(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车牌 主键',
  `model` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆型号',
  `owner` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车主',
  `tel` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车主电话',
  `color` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆颜色',
  PRIMARY KEY (`plate`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cars
-- ----------------------------
INSERT INTO `cars` VALUES ('H111', 'suv', 'lin', '123123123', 'white');
INSERT INTO `cars` VALUES ('H112', 'suv', 'dan', '123111', 'white');
INSERT INTO `cars` VALUES ('H113', '卡车', 'dan2', '12311232', 'black');
INSERT INTO `cars` VALUES ('H787', '卡车', '小明', '0000000', 'red');
INSERT INTO `cars` VALUES ('H7921', 'suv', '一一一', '13966618368', 'white');
INSERT INTO `cars` VALUES ('ppp', 'suva', '云云', '199999', 'white');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '念安', '123456');
INSERT INTO `users` VALUES (2, '安安', '123456');
INSERT INTO `users` VALUES (3, '小明', '123456');
INSERT INTO `users` VALUES (4, 'test', '123456');

SET FOREIGN_KEY_CHECKS = 1;
