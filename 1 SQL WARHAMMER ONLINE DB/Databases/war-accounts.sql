/*
Navicat MySQL Data Transfer

Source Server         : warserver
Source Server Version : 80022
Source Host           : localhost:3306
Source Database       : projectwar-accounts

Target Server Type    : MYSQL
Target Server Version : 80022
File Encoding         : 65001

Date: 2020-12-03 18:14:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `accounts`
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `AccountId` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `CryptPassword` varchar(255) DEFAULT NULL,
  `Ip` varchar(255) DEFAULT NULL,
  `Token` varchar(255) DEFAULT NULL,
  `GmLevel` tinyint NOT NULL,
  `InvalidPasswordCount` int unsigned NOT NULL,
  `PacketLog` tinyint unsigned DEFAULT NULL,
  `Banned` int NOT NULL,
  `BanReason` text,
  `AdviceBlockEnd` int DEFAULT NULL,
  `StealthMuteEnd` int DEFAULT NULL,
  `CoreLevel` int DEFAULT NULL,
  `LastLogged` int DEFAULT NULL,
  `LastNameChanged` int DEFAULT NULL,
  `LastPatcherLog` text,
  `noSurname` tinyint NOT NULL,
  `Email` text,
  PRIMARY KEY (`AccountId`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of accounts
-- ----------------------------
INSERT INTO `accounts` VALUES ('1', 'test', 'test', '31f014b53e5861c8b28a8707a1d6a2a2737ce2c22fd671884173498510a063f0', '0.0.0.0', 'OGJkNzczNzItNDE5Zi00OGUzLWIyODktZTgzMjE4OTI3NDc1', '40', '1', '0', '0', '', '0', '0', '0', '1607012394', '0', '', '0', '');

-- ----------------------------
-- Table structure for `account_sanction_logs`
-- ----------------------------
DROP TABLE IF EXISTS `account_sanction_logs`;
CREATE TABLE `account_sanction_logs` (
  `AccountId` int DEFAULT NULL,
  `IssuedBy` varchar(24) DEFAULT NULL,
  `ActionType` varchar(24) DEFAULT NULL,
  `IssuerGmLevel` int DEFAULT NULL,
  `ActionDuration` text,
  `ActionLog` varchar(255) DEFAULT NULL,
  `ActionTime` int DEFAULT NULL,
  `account_sanction_logs_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`account_sanction_logs_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of account_sanction_logs
-- ----------------------------

-- ----------------------------
-- Table structure for `account_value`
-- ----------------------------
DROP TABLE IF EXISTS `account_value`;
CREATE TABLE `account_value` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `AccountId` int DEFAULT NULL,
  `InstallId` text,
  `IP` text,
  `MAC` text,
  `HDSerialHash` text,
  `CPUIDHash` text,
  `ModifyDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of account_value
-- ----------------------------

-- ----------------------------
-- Table structure for `ip_bans`
-- ----------------------------
DROP TABLE IF EXISTS `ip_bans`;
CREATE TABLE `ip_bans` (
  `Ip` varchar(255) NOT NULL,
  `Expire` int DEFAULT NULL,
  PRIMARY KEY (`Ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of ip_bans
-- ----------------------------

-- ----------------------------
-- Table structure for `realms`
-- ----------------------------
DROP TABLE IF EXISTS `realms`;
CREATE TABLE `realms` (
  `RealmId` tinyint unsigned NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Language` varchar(255) DEFAULT NULL,
  `Adresse` varchar(255) DEFAULT NULL,
  `Port` int NOT NULL,
  `AllowTrials` varchar(255) DEFAULT NULL,
  `CharfxerAvailable` varchar(255) DEFAULT NULL,
  `Legacy` varchar(255) DEFAULT NULL,
  `BonusDestruction` varchar(255) DEFAULT NULL,
  `BonusOrder` varchar(255) DEFAULT NULL,
  `Redirect` varchar(255) DEFAULT NULL,
  `Region` varchar(255) DEFAULT NULL,
  `Retired` varchar(255) DEFAULT NULL,
  `WaitingDestruction` varchar(255) DEFAULT NULL,
  `WaitingOrder` varchar(255) DEFAULT NULL,
  `DensityDestruction` varchar(255) DEFAULT NULL,
  `DensityOrder` varchar(255) DEFAULT NULL,
  `OpenRvr` varchar(255) DEFAULT NULL,
  `Rp` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Online` tinyint unsigned NOT NULL,
  `OnlineDate` datetime DEFAULT NULL,
  `OnlinePlayers` int unsigned DEFAULT NULL,
  `OrderCount` int unsigned DEFAULT NULL,
  `DestructionCount` int unsigned DEFAULT NULL,
  `MaxPlayers` int unsigned DEFAULT NULL,
  `OrderCharacters` int unsigned DEFAULT NULL,
  `DestruCharacters` int unsigned DEFAULT NULL,
  `NextRotationTime` bigint DEFAULT NULL,
  `MasterPassword` text,
  `BootTime` int DEFAULT NULL,
  PRIMARY KEY (`RealmId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of realms
-- ----------------------------
INSERT INTO `realms` VALUES ('1', 'wardev', 'EN', '127.0.0.1', '10300', '0', '0', '0', '0', '0', '0', 'STR_REGION_NORTHAMERICA', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2020-12-03 16:19:22', '1', '1', '0', '7000', '1', '1', '0', '', '1607012362');
