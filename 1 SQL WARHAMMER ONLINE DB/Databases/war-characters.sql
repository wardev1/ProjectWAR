/*
Navicat MySQL Data Transfer

Source Server         : warserver
Source Server Version : 80022
Source Host           : localhost:3306
Source Database       : projectwar-characters

Target Server Type    : MYSQL
Target Server Version : 80022
File Encoding         : 65001

Date: 2020-12-03 18:14:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auctions`
-- ----------------------------
DROP TABLE IF EXISTS `auctions`;
CREATE TABLE `auctions` (
  `AuctionId` bigint unsigned NOT NULL,
  `Realm` tinyint unsigned NOT NULL,
  `SellerId` int unsigned NOT NULL,
  `ItemId` int unsigned NOT NULL,
  `SellPrice` int unsigned NOT NULL,
  `Count` smallint unsigned NOT NULL,
  `StartTime` int unsigned NOT NULL,
  `Talismans` varchar(40) DEFAULT NULL,
  `PrimaryDye` smallint unsigned NOT NULL,
  `SecondaryDye` smallint unsigned NOT NULL,
  PRIMARY KEY (`AuctionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auctions
-- ----------------------------

-- ----------------------------
-- Table structure for `banned_names`
-- ----------------------------
DROP TABLE IF EXISTS `banned_names`;
CREATE TABLE `banned_names` (
  `NameString` varchar(255) NOT NULL,
  `FilterTypeString` text,
  PRIMARY KEY (`NameString`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of banned_names
-- ----------------------------

-- ----------------------------
-- Table structure for `bug_report`
-- ----------------------------
DROP TABLE IF EXISTS `bug_report`;
CREATE TABLE `bug_report` (
  `AccountId` int unsigned NOT NULL,
  `CharacterId` int unsigned NOT NULL,
  `ZoneId` smallint unsigned NOT NULL,
  `X` smallint unsigned NOT NULL,
  `Y` smallint unsigned NOT NULL,
  `Time` int unsigned NOT NULL,
  `Type` tinyint unsigned NOT NULL,
  `Category` tinyint unsigned NOT NULL,
  `Message` text NOT NULL,
  `ReportType` text NOT NULL,
  `FieldSting` text NOT NULL,
  `Assigned` text,
  `bug_report_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`bug_report_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of bug_report
-- ----------------------------

-- ----------------------------
-- Table structure for `characters`
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `CharacterId` int unsigned NOT NULL,
  `Name` varchar(24) NOT NULL,
  `Surname` varchar(24) NOT NULL,
  `RealmId` int NOT NULL,
  `AccountId` int NOT NULL,
  `SlotId` tinyint unsigned NOT NULL,
  `ModelId` tinyint unsigned NOT NULL,
  `Career` tinyint unsigned NOT NULL,
  `CareerLine` tinyint unsigned NOT NULL,
  `Realm` tinyint unsigned NOT NULL,
  `HeldLeft` int NOT NULL,
  `Race` tinyint unsigned NOT NULL,
  `Traits` text NOT NULL,
  `Sex` tinyint unsigned NOT NULL,
  `Anonymous` tinyint unsigned NOT NULL,
  `Hidden` tinyint unsigned NOT NULL,
  `OldName` varchar(24) NOT NULL,
  `PetName` varchar(24) NOT NULL,
  `PetModel` smallint unsigned NOT NULL,
  `HonorPoints` smallint unsigned NOT NULL,
  `HonorRank` smallint unsigned NOT NULL,
  PRIMARY KEY (`CharacterId`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of characters
-- ----------------------------
INSERT INTO `characters` VALUES ('2', 'Wardev', '', '1', '1', '0', '34', '60', '9', '1', '0', '6', '\0\0\0\0\0\0', '0', '0', '0', '', '', '0', '0', '0');
INSERT INTO `characters` VALUES ('3', 'Wardevv', '', '1', '1', '1', '15', '27', '8', '2', '0', '3', '\0\0\0\0\0\0', '0', '0', '0', '', '', '0', '0', '0');

-- ----------------------------
-- Table structure for `characters_items`
-- ----------------------------
DROP TABLE IF EXISTS `characters_items`;
CREATE TABLE `characters_items` (
  `Guid` bigint NOT NULL,
  `CharacterId` int unsigned NOT NULL,
  `Entry` int unsigned NOT NULL,
  `SlotId` smallint unsigned NOT NULL,
  `ModelId` int unsigned NOT NULL,
  `Counts` smallint unsigned NOT NULL,
  `Talismans` varchar(40) DEFAULT NULL,
  `PrimaryDye` smallint unsigned NOT NULL,
  `SecondaryDye` smallint unsigned NOT NULL,
  `BoundtoPlayer` tinyint unsigned NOT NULL,
  `Alternate_AppereanceEntry` int unsigned NOT NULL,
  `characters_items_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`characters_items_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of characters_items
-- ----------------------------
INSERT INTO `characters_items` VALUES ('0', '3', '1337', '42', '7034', '1', '', '0', '0', '0', '0', '0ddb35e5-1496-4890-a682-37a46940626b');
INSERT INTO `characters_items` VALUES ('0', '2', '17938', '11', '1345', '1', '', '0', '0', '1', '0', '10ff3133-0195-4fcd-b50c-687684816dad');
INSERT INTO `characters_items` VALUES ('0', '2', '87578', '47', '632', '1', '', '0', '0', '0', '0', '2a45feed-57fb-4c01-9013-19c8f48dd233');
INSERT INTO `characters_items` VALUES ('0', '2', '190472', '44', '750', '1', '', '0', '0', '0', '0', '369899a6-ac82-44ad-b592-a99c6f2f2749');
INSERT INTO `characters_items` VALUES ('0', '2', '186849', '41', '9348', '1', '', '0', '0', '0', '0', '464a47a9-95f9-4125-b097-495de70b7080');
INSERT INTO `characters_items` VALUES ('0', '2', '11919', '40', '531', '1', '', '0', '0', '0', '0', '5448cd6f-fdd4-426f-9f9e-729615871a42');
INSERT INTO `characters_items` VALUES ('0', '2', '2015228', '48', '2676', '1', '', '0', '0', '0', '0', '7939407a-ebfa-4cc3-96a8-0aa067022b71');
INSERT INTO `characters_items` VALUES ('0', '3', '305', '10', '1062', '1', '', '0', '0', '1', '0', '7e8789bf-cf10-4404-8346-f5e6b4c2afba');
INSERT INTO `characters_items` VALUES ('0', '2', '17901', '10', '3397', '1', '', '0', '0', '1', '0', '8fa11237-1d0f-45f0-80a0-f4422cbd2cd9');
INSERT INTO `characters_items` VALUES ('0', '2', '17912', '22', '687', '1', '', '0', '0', '0', '0', '9f7a73b1-1c9d-4d83-9083-dc8756e08351');
INSERT INTO `characters_items` VALUES ('0', '3', '306', '12', '1075', '1', '', '0', '0', '1', '0', 'bac3dba3-2fab-4a74-ad02-9dfc4e28bd12');
INSERT INTO `characters_items` VALUES ('0', '2', '87552', '46', '1133', '1', '', '0', '0', '0', '0', 'cc1d9f40-89ec-4e10-822e-30fe5da581cb');
INSERT INTO `characters_items` VALUES ('0', '2', '2587', '43', '7034', '1', '', '0', '0', '0', '0', 'cddaf55b-dca2-4393-81a1-0e635a9c0996');
INSERT INTO `characters_items` VALUES ('0', '2', '183770', '45', '2246', '1', '', '0', '0', '0', '0', 'ce4879c1-2980-4486-9857-34d7c73348d7');
INSERT INTO `characters_items` VALUES ('0', '3', '11919', '40', '531', '1', '', '0', '0', '0', '0', 'cfbe4036-3f4a-4c18-af55-0302f3ad0fc5');
INSERT INTO `characters_items` VALUES ('0', '3', '2587', '43', '7034', '1', '', '0', '0', '0', '0', 'cff40d89-b31b-45b1-85cf-3d9680c6345d');
INSERT INTO `characters_items` VALUES ('0', '2', '187609', '20', '4814', '1', '', '0', '0', '0', '0', 'e77f5e65-2f5a-477e-8d11-c9fc5cac8140');
INSERT INTO `characters_items` VALUES ('0', '3', '186850', '41', '9349', '1', '', '0', '0', '0', '0', 'fc4c997b-1404-4897-b6ea-ab4e2642f1c4');
INSERT INTO `characters_items` VALUES ('0', '3', '187603', '20', '4808', '1', '', '0', '0', '0', '0', 'feb6182f-a88a-4ba2-a5d0-fb7581e519fc');

-- ----------------------------
-- Table structure for `characters_mails`
-- ----------------------------
DROP TABLE IF EXISTS `characters_mails`;
CREATE TABLE `characters_mails` (
  `Guid` int NOT NULL AUTO_INCREMENT,
  `AuctionType` tinyint unsigned NOT NULL,
  `CharacterId` int unsigned NOT NULL,
  `CharacterIdSender` int unsigned NOT NULL,
  `SenderName` varchar(255) NOT NULL,
  `ReceiverName` varchar(255) NOT NULL,
  `SendDate` int unsigned NOT NULL,
  `ReadDate` int unsigned NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Content` text NOT NULL,
  `Money` int unsigned NOT NULL,
  `Cr` tinyint unsigned NOT NULL,
  `Opened` tinyint unsigned NOT NULL,
  `ItemsString` text NOT NULL,
  PRIMARY KEY (`Guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of characters_mails
-- ----------------------------

-- ----------------------------
-- Table structure for `characters_quests`
-- ----------------------------
DROP TABLE IF EXISTS `characters_quests`;
CREATE TABLE `characters_quests` (
  `CharacterId` int unsigned NOT NULL,
  `QuestID` smallint unsigned NOT NULL,
  `Objectives` varchar(64) NOT NULL,
  `Done` tinyint unsigned NOT NULL,
  PRIMARY KEY (`CharacterId`,`QuestID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of characters_quests
-- ----------------------------
INSERT INTO `characters_quests` VALUES ('2', '30000', '1312:3|', '1');
INSERT INTO `characters_quests` VALUES ('2', '30001', '1313:3|1314:3|', '1');
INSERT INTO `characters_quests` VALUES ('2', '30361', '5254:1|', '1');
INSERT INTO `characters_quests` VALUES ('2', '30362', '6262:0|', '1');
INSERT INTO `characters_quests` VALUES ('2', '30363', '1572:1|', '1');
INSERT INTO `characters_quests` VALUES ('2', '60501', '74836087:1|', '1');

-- ----------------------------
-- Table structure for `characters_socials`
-- ----------------------------
DROP TABLE IF EXISTS `characters_socials`;
CREATE TABLE `characters_socials` (
  `CharacterId` int unsigned NOT NULL,
  `DistCharacterId` int unsigned NOT NULL,
  `DistName` varchar(255) NOT NULL,
  `Friend` tinyint unsigned NOT NULL,
  `Ignore` tinyint unsigned NOT NULL,
  PRIMARY KEY (`CharacterId`,`DistCharacterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of characters_socials
-- ----------------------------

-- ----------------------------
-- Table structure for `characters_toks`
-- ----------------------------
DROP TABLE IF EXISTS `characters_toks`;
CREATE TABLE `characters_toks` (
  `CharacterId` int unsigned NOT NULL,
  `TokEntry` smallint unsigned NOT NULL,
  `Count` int unsigned DEFAULT NULL,
  PRIMARY KEY (`CharacterId`,`TokEntry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of characters_toks
-- ----------------------------
INSERT INTO `characters_toks` VALUES ('2', '131', '1');
INSERT INTO `characters_toks` VALUES ('2', '133', '1');
INSERT INTO `characters_toks` VALUES ('2', '135', '1');
INSERT INTO `characters_toks` VALUES ('2', '136', '1');
INSERT INTO `characters_toks` VALUES ('2', '155', '1');
INSERT INTO `characters_toks` VALUES ('2', '186', '1');
INSERT INTO `characters_toks` VALUES ('2', '223', '1');
INSERT INTO `characters_toks` VALUES ('2', '226', '1');
INSERT INTO `characters_toks` VALUES ('2', '234', '1');
INSERT INTO `characters_toks` VALUES ('2', '1746', '1');
INSERT INTO `characters_toks` VALUES ('2', '1795', '1');
INSERT INTO `characters_toks` VALUES ('2', '1812', '1');
INSERT INTO `characters_toks` VALUES ('2', '1813', '1');
INSERT INTO `characters_toks` VALUES ('2', '1814', '1');
INSERT INTO `characters_toks` VALUES ('2', '1830', '1');
INSERT INTO `characters_toks` VALUES ('2', '1940', '1');
INSERT INTO `characters_toks` VALUES ('2', '3120', '1');
INSERT INTO `characters_toks` VALUES ('2', '5652', '1');
INSERT INTO `characters_toks` VALUES ('2', '5654', '1');
INSERT INTO `characters_toks` VALUES ('2', '5656', '1');
INSERT INTO `characters_toks` VALUES ('2', '5695', '1');
INSERT INTO `characters_toks` VALUES ('2', '5698', '1');
INSERT INTO `characters_toks` VALUES ('2', '5731', '1');
INSERT INTO `characters_toks` VALUES ('2', '5734', '1');
INSERT INTO `characters_toks` VALUES ('2', '5736', '1');
INSERT INTO `characters_toks` VALUES ('2', '5806', '1');
INSERT INTO `characters_toks` VALUES ('2', '5809', '1');
INSERT INTO `characters_toks` VALUES ('2', '5811', '1');
INSERT INTO `characters_toks` VALUES ('2', '5817', '1');
INSERT INTO `characters_toks` VALUES ('2', '5818', '1');
INSERT INTO `characters_toks` VALUES ('2', '6746', '1');
INSERT INTO `characters_toks` VALUES ('2', '6795', '1');
INSERT INTO `characters_toks` VALUES ('2', '9040', '1');
INSERT INTO `characters_toks` VALUES ('3', '5', '1');
INSERT INTO `characters_toks` VALUES ('3', '7', '1');
INSERT INTO `characters_toks` VALUES ('3', '35', '1');
INSERT INTO `characters_toks` VALUES ('3', '37', '1');
INSERT INTO `characters_toks` VALUES ('3', '219', '1');
INSERT INTO `characters_toks` VALUES ('3', '1369', '1');
INSERT INTO `characters_toks` VALUES ('3', '1370', '1');
INSERT INTO `characters_toks` VALUES ('3', '5555', '1');
INSERT INTO `characters_toks` VALUES ('3', '5557', '1');
INSERT INTO `characters_toks` VALUES ('3', '5564', '1');
INSERT INTO `characters_toks` VALUES ('3', '5565', '1');
INSERT INTO `characters_toks` VALUES ('3', '5645', '1');

-- ----------------------------
-- Table structure for `characters_toks_kills`
-- ----------------------------
DROP TABLE IF EXISTS `characters_toks_kills`;
CREATE TABLE `characters_toks_kills` (
  `CharacterId` int unsigned NOT NULL,
  `NPCEntry` smallint unsigned NOT NULL,
  `Count` int unsigned DEFAULT NULL,
  PRIMARY KEY (`CharacterId`,`NPCEntry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of characters_toks_kills
-- ----------------------------
INSERT INTO `characters_toks_kills` VALUES ('2', '13', '7');
INSERT INTO `characters_toks_kills` VALUES ('2', '495', '7');
INSERT INTO `characters_toks_kills` VALUES ('3', '495', '0');

-- ----------------------------
-- Table structure for `characters_value`
-- ----------------------------
DROP TABLE IF EXISTS `characters_value`;
CREATE TABLE `characters_value` (
  `CharacterId` int unsigned NOT NULL,
  `Level` tinyint unsigned NOT NULL,
  `Xp` int unsigned NOT NULL,
  `XpMode` int NOT NULL,
  `RestXp` int unsigned NOT NULL,
  `Renown` int unsigned NOT NULL,
  `RenownRank` tinyint unsigned NOT NULL,
  `Money` int unsigned NOT NULL,
  `Speed` int NOT NULL,
  `PlayedTime` int unsigned NOT NULL,
  `LastSeen` int DEFAULT NULL,
  `RegionId` int NOT NULL,
  `ZoneId` smallint unsigned NOT NULL,
  `WorldX` int NOT NULL,
  `WorldY` int NOT NULL,
  `WorldZ` int NOT NULL,
  `WorldO` int NOT NULL,
  `RallyPoint` smallint unsigned NOT NULL,
  `BagBuy` tinyint unsigned NOT NULL,
  `BankBuy` tinyint unsigned NOT NULL,
  `Skills` int unsigned NOT NULL,
  `Online` tinyint unsigned NOT NULL,
  `GearShow` tinyint unsigned NOT NULL,
  `TitleId` smallint unsigned NOT NULL,
  `RenownSkills` text NOT NULL,
  `MasterySkills` text NOT NULL,
  `Morale1` smallint unsigned DEFAULT NULL,
  `Morale2` smallint unsigned DEFAULT NULL,
  `Morale3` smallint unsigned DEFAULT NULL,
  `Morale4` smallint unsigned DEFAULT NULL,
  `Tactic1` smallint unsigned DEFAULT NULL,
  `Tactic2` smallint unsigned DEFAULT NULL,
  `Tactic3` smallint unsigned DEFAULT NULL,
  `Tactic4` smallint unsigned DEFAULT NULL,
  `GatheringSkill` tinyint unsigned NOT NULL,
  `GatheringSkillLevel` tinyint unsigned NOT NULL,
  `CraftingSkill` tinyint unsigned NOT NULL,
  `CraftingSkillLevel` tinyint unsigned NOT NULL,
  `ExperimentalMode` tinyint unsigned NOT NULL,
  `RVRKills` int unsigned NOT NULL,
  `RVRDeaths` int unsigned NOT NULL,
  `CraftingBags` tinyint unsigned NOT NULL,
  `PendingXp` int unsigned DEFAULT NULL,
  `PendingRenown` int unsigned DEFAULT NULL,
  `Lockouts` text NOT NULL,
  `DisconcetTime` int NOT NULL,
  PRIMARY KEY (`CharacterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of characters_value
-- ----------------------------
INSERT INTO `characters_value` VALUES ('2', '40', '4324', '0', '0', '51', '3', '2196', '100', '17091', '1607013640', '8', '106', '847102', '928134', '6993', '2938', '135', '0', '0', '2392066', '1', '0', '0', '', '0;0;0;0,0,0,0,0,0,0;0,0,0,0,0,0,0;0,0,0,0,0,0,0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '1606076501');
INSERT INTO `characters_value` VALUES ('3', '15', '1212', '0', '0', '0', '1', '2000', '100', '751', '1605856574', '1', '6', '787857', '848232', '10224', '2792', '133', '0', '0', '278656', '1', '0', '0', '', '0;0;0;0,0,0,0,0,0,0;0,0,0,0,0,0,0;0,0,0,0,0,0,0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '1605856355');

-- ----------------------------
-- Table structure for `character_abilities`
-- ----------------------------
DROP TABLE IF EXISTS `character_abilities`;
CREATE TABLE `character_abilities` (
  `CharacterID` int DEFAULT NULL,
  `AbilityID` smallint unsigned DEFAULT NULL,
  `LastCast` int DEFAULT NULL,
  `character_abilities_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`character_abilities_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of character_abilities
-- ----------------------------

-- ----------------------------
-- Table structure for `character_bag_bonus`
-- ----------------------------
DROP TABLE IF EXISTS `character_bag_bonus`;
CREATE TABLE `character_bag_bonus` (
  `BonusId` bigint NOT NULL AUTO_INCREMENT,
  `GoldBag` int NOT NULL,
  `PurpleBag` int NOT NULL,
  `BlueBag` int NOT NULL,
  `GreenBag` int NOT NULL,
  `WhiteBag` int NOT NULL,
  `Timestamp` datetime NOT NULL,
  `CharacterId` int NOT NULL,
  `CharacterName` text NOT NULL,
  PRIMARY KEY (`BonusId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of character_bag_bonus
-- ----------------------------

-- ----------------------------
-- Table structure for `character_bag_pools`
-- ----------------------------
DROP TABLE IF EXISTS `character_bag_pools`;
CREATE TABLE `character_bag_pools` (
  `CharacterId` int NOT NULL,
  `Bag_Type` int NOT NULL,
  `BagPool_Value` int NOT NULL,
  PRIMARY KEY (`CharacterId`,`Bag_Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of character_bag_pools
-- ----------------------------

-- ----------------------------
-- Table structure for `character_client_data`
-- ----------------------------
DROP TABLE IF EXISTS `character_client_data`;
CREATE TABLE `character_client_data` (
  `CharacterId` int unsigned NOT NULL,
  `ClientDataString` text NOT NULL,
  PRIMARY KEY (`CharacterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of character_client_data
-- ----------------------------
INSERT INTO `character_client_data` VALUES ('2', 'AwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAkR8BAJAfAQCSHwEAkx8BAAAAAAAAAAAAAAAAAAAAAAAAAAAA9QABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAUCPSBhQHAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==');
INSERT INTO `character_client_data` VALUES ('3', 'AwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHAcBAB0HAQAAAAAAAAAAADEHAQAAAAAAAAAAAAAAAAAAAAAA9QABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABQAHANsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==');

-- ----------------------------
-- Table structure for `character_deletions`
-- ----------------------------
DROP TABLE IF EXISTS `character_deletions`;
CREATE TABLE `character_deletions` (
  `DeletionIP` text,
  `AccountID` int DEFAULT NULL,
  `AccountName` text,
  `CharacterID` int unsigned DEFAULT NULL,
  `CharacterName` text,
  `DeletionTimeSeconds` int DEFAULT NULL,
  `character_deletions_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`character_deletions_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of character_deletions
-- ----------------------------

-- ----------------------------
-- Table structure for `character_honor_reward_cooldown`
-- ----------------------------
DROP TABLE IF EXISTS `character_honor_reward_cooldown`;
CREATE TABLE `character_honor_reward_cooldown` (
  `CharacterId` int unsigned NOT NULL,
  `ItemId` int NOT NULL,
  `Cooldown` bigint NOT NULL,
  PRIMARY KEY (`CharacterId`,`ItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of character_honor_reward_cooldown
-- ----------------------------

-- ----------------------------
-- Table structure for `character_influences`
-- ----------------------------
DROP TABLE IF EXISTS `character_influences`;
CREATE TABLE `character_influences` (
  `CharacterId` int NOT NULL,
  `InfluenceId` smallint unsigned NOT NULL,
  `InfluenceCount` int unsigned NOT NULL,
  `Tier_1_Itemtaken` tinyint unsigned NOT NULL,
  `Tier_2_Itemtaken` tinyint unsigned NOT NULL,
  `Tier_3_Itemtaken` tinyint unsigned NOT NULL,
  PRIMARY KEY (`CharacterId`,`InfluenceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of character_influences
-- ----------------------------
INSERT INTO `character_influences` VALUES ('2', '122', '1350', '0', '0', '0');

-- ----------------------------
-- Table structure for `character_saved_buffs`
-- ----------------------------
DROP TABLE IF EXISTS `character_saved_buffs`;
CREATE TABLE `character_saved_buffs` (
  `CharacterId` int unsigned NOT NULL,
  `BuffId` smallint unsigned NOT NULL,
  `Level` tinyint unsigned DEFAULT NULL,
  `StackLevel` tinyint unsigned DEFAULT NULL,
  `EndTimeSeconds` int unsigned DEFAULT NULL,
  PRIMARY KEY (`CharacterId`,`BuffId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of character_saved_buffs
-- ----------------------------
INSERT INTO `character_saved_buffs` VALUES ('3', '14025', '15', '1', '1605857201');

-- ----------------------------
-- Table structure for `gmcommandlogs`
-- ----------------------------
DROP TABLE IF EXISTS `gmcommandlogs`;
CREATE TABLE `gmcommandlogs` (
  `AccountId` int unsigned DEFAULT NULL,
  `PlayerName` varchar(255) DEFAULT NULL,
  `Command` text,
  `Date` datetime DEFAULT NULL,
  `gmcommandlogs_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`gmcommandlogs_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of gmcommandlogs
-- ----------------------------
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 106 852985 895593', '2020-11-18 17:27:21', '02da9f2a-1cc7-4209-a50d-4bd007b45e74');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 108 1238714 887694', '2020-11-22 12:18:04', '04350538-e6ab-4c99-b6f0-05757a50e025');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'INVINCIBILITY TOGGLED on Wardev', '2020-11-18 17:27:14', '1d96adb2-5193-4ed3-86cd-58e137bc40dc');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 205 970834 1635426', '2020-11-22 12:55:38', '21760f65-f623-47d4-854e-ff6a5026e21f');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'INVINCIBILITY TOGGLED on Wardev', '2020-11-22 20:24:48', '223fbac1-589e-4b0b-a820-d5768150a918');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 106 853497 896003', '2020-11-22 18:30:51', '23245fc5-b374-4c7f-b82b-80fed9156e47');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardevv', 'TELEPORT TO 6 787643 848692', '2020-11-20 06:51:49', '2af0fe7a-6f59-4c34-a4bb-bdb311f03e5f');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'INVINCIBILITY TOGGLED on Wardev', '2020-11-22 19:16:23', '2baf6ca1-1bd1-41ed-8200-da696319cc29');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 106 859538 897744', '2020-11-19 17:30:22', '2cd798fc-d0f3-4b51-9708-189ffeeb4a10');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'INVINCIBILITY TOGGLED on Wardev', '2020-11-22 12:43:28', '34ab0d5c-6f26-4975-8bad-16da4012b524');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 106 849913 912592', '2020-11-22 20:07:13', '359a5ab2-0bb1-4aaf-bf8a-cffd61957fe2');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 108 1239636 893231', '2020-11-19 17:27:34', '38b7c575-349b-4c90-8f3e-a7cf25af6cd3');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 105 1438497 853711', '2020-11-22 10:24:40', '3ba5f85b-9792-4937-9d44-1e29ac2d29a8');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 106 855954 897641', '2020-11-18 17:18:07', '3d1f900c-a613-49a7-a9e1-b42c8052cb6f');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardevv', 'TELEPORT TO 11 805258 870605', '2020-11-20 07:11:32', '42b11ee2-c803-48a5-98ef-729fc61f9ecf');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 108 1239226 887804', '2020-11-22 11:55:36', '512b9576-dfc1-4304-ac1b-ff8a97087f2a');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 105 1437985 853916', '2020-11-19 17:23:32', '514c0c2e-5bfe-4e0e-b490-628588d52961');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'INVINCIBILITY TOGGLED on Wardev', '2020-11-22 10:48:34', '5462c14d-867b-43fa-9248-5ee13a55f379');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 205 970834 1635222', '2020-11-22 12:19:42', '609bf6c0-5487-46a0-aa4c-56867a27809e');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 106 854009 895901', '2020-11-22 20:21:03', '78c3038a-4418-465e-aa0c-ad0f3df2151f');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 205 971551 1636450', '2020-11-22 12:43:33', '7e3c2f14-4263-4cb5-84e7-968f13e42d01');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 106 853189 895798', '2020-11-19 17:29:09', '7f41a545-1630-4142-9b27-8f1caf493043');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardevv', 'TELEPORT TO 6 787746 848283', '2020-11-20 07:14:38', '819ebb1b-1f78-4b77-ac41-740f7ba0146a');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardevv', 'TELEPORT TO 6 790101 849102', '2020-11-20 07:11:06', '83dd8fb1-3afc-4641-ab16-86e639e11b6f');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 106 853497 895286', '2020-11-18 17:18:48', '87604e9a-fc87-4d76-b9cf-3ed847baa1f4');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 105 1437678 853711', '2020-11-18 17:24:16', '88527d5b-eff6-4ae3-bfee-363c1287e7a3');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 106 853394 895286', '2020-11-22 10:27:38', '89b5b099-cfa6-42a7-92b2-681219479961');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 105 1421703 860879', '2020-11-22 10:26:53', '8b780177-06f8-4526-8ac0-74021129d8e4');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'INVINCIBILITY TOGGLED on Wardev', '2020-11-22 10:24:36', '90a8500f-0224-4255-9bf2-c7db220776b2');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 105 1437882 854735', '2020-11-22 10:46:35', '9569dd2e-f644-439e-a1ce-8662277c4a51');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'INVINCIBILITY TOGGLED on Wardev', '2020-12-03 16:21:28', '960f1d88-eb15-4a27-be92-52cf85dcda0f');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'INVINCIBILITY TOGGLED on Wardev', '2020-11-18 17:18:44', '9750dee9-d8ab-4041-a275-912855af804d');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'INVINCIBILITY TOGGLED on Wardev', '2020-11-22 01:53:15', '975177d9-2de1-4d0c-9c90-c11c20db353e');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'INVINCIBILITY TOGGLED on Wardev', '2020-11-22 12:34:48', '9ee9abc4-6617-4cc0-bc73-1adfb540e87a');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 106 844178 933379', '2020-12-03 16:21:38', 'b526706b-5e8e-4409-8e94-9b47211a4d6a');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 106 859026 898153', '2020-11-22 20:07:20', 'bcac9ac0-f922-42cd-9b91-89b4d45ab7e6');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardevv', 'SET LEVEL TO Wardevv 15', '2020-11-20 06:51:10', 'bd41b704-d54e-4bf6-811d-5c8c8c64531f');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 106 853599 895696', '2020-11-22 20:24:53', 'c07aa645-529a-4a33-8b3f-092974900a67');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardevv', 'TELEPORT TO 6 789384 848897', '2020-11-20 06:48:58', 'c2995407-2f88-4523-bfc1-747115cbaa3d');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'INVINCIBILITY TOGGLED on Wardev', '2020-11-22 20:00:37', 'c7966fb9-cc52-4964-8ed5-3fbd9097add0');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 105 1437575 854530', '2020-11-22 01:53:27', 'c978a80c-4e8c-482d-a5d4-ef440a27c1a7');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardevv', 'SET LEVEL TO Wardevv 10', '2020-11-20 06:47:50', 'ca27f01e-a209-4220-a5f3-ae2870dab80b');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 106 853599 895286', '2020-11-22 17:57:29', 'd2c2149b-fdf6-48db-bb7c-d0bba4fef78d');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardevv', 'INVINCIBILITY TOGGLED on Wardevv', '2020-11-20 07:11:58', 'd3a9ebd2-2451-4ce0-b858-bc34d15f724d');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 105 1428974 855247', '2020-11-22 10:48:01', 'd6f77278-6097-4beb-a9ce-01e7a3d41825');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 105 1429178 854940', '2020-11-22 10:48:39', 'd7963543-7d31-4978-b431-52d47e7fe75a');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardevv', 'TELEPORT TO 6 787848 848487', '2020-11-20 07:12:06', 'ddaef417-5af1-4e47-8d04-bf6155c4ab45');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 106 853189 894877', '2020-11-22 19:18:19', 'e72d2475-a98a-4a64-9d93-cf686154e966');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardevv', 'INVINCIBILITY TOGGLED on Wardevv', '2020-11-20 06:51:45', 'e8f8bc1f-53b8-4b86-bc8f-5fa6ee76626e');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'INVINCIBILITY TOGGLED on Wardev', '2020-11-22 18:30:45', 'edf621ac-b36c-4ffe-9deb-c8fe26b42b36');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 208 1436549 1478754', '2020-11-22 12:44:17', 'eec87a20-f44d-4ac6-a692-0305136bc665');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardevv', 'INVINCIBILITY TOGGLED on Wardevv', '2020-11-20 07:14:32', 'ef6b1189-2663-4e18-b146-6e84793df91b');
INSERT INTO `gmcommandlogs` VALUES ('1', 'Wardev', 'TELEPORT TO 205 971039 1635529', '2020-11-22 12:34:53', 'f815b84e-496f-4b98-859b-2cd0d68a20e2');

-- ----------------------------
-- Table structure for `guild_alliance_info`
-- ----------------------------
DROP TABLE IF EXISTS `guild_alliance_info`;
CREATE TABLE `guild_alliance_info` (
  `AllianceId` int unsigned NOT NULL,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`AllianceId`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of guild_alliance_info
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_event`
-- ----------------------------
DROP TABLE IF EXISTS `guild_event`;
CREATE TABLE `guild_event` (
  `SlotId` tinyint unsigned NOT NULL,
  `GuildId` int unsigned NOT NULL,
  `CharacterId` int unsigned NOT NULL,
  `Begin` int unsigned NOT NULL,
  `End` int unsigned NOT NULL,
  `Name` text NOT NULL,
  `Description` text NOT NULL,
  `Alliance` tinyint unsigned NOT NULL,
  `Locked` tinyint unsigned NOT NULL,
  `Signups` text NOT NULL,
  `guild_event_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`guild_event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of guild_event
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_info`
-- ----------------------------
DROP TABLE IF EXISTS `guild_info`;
CREATE TABLE `guild_info` (
  `GuildId` int unsigned NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Level` tinyint unsigned NOT NULL,
  `Realm` tinyint unsigned NOT NULL,
  `LeaderId` int unsigned NOT NULL,
  `CreateDate` int NOT NULL,
  `Motd` text NOT NULL,
  `AboutUs` text NOT NULL,
  `Xp` int unsigned NOT NULL,
  `Renown` bigint unsigned NOT NULL,
  `BriefDescription` text NOT NULL,
  `Summary` text NOT NULL,
  `PlayStyle` tinyint unsigned NOT NULL,
  `Atmosphere` tinyint unsigned NOT NULL,
  `CareersNeeded` int unsigned NOT NULL,
  `Interests` tinyint unsigned NOT NULL,
  `ActivelyRecruiting` tinyint unsigned NOT NULL,
  `RanksNeeded` tinyint unsigned NOT NULL,
  `Tax` tinyint unsigned NOT NULL,
  `Money` bigint unsigned NOT NULL,
  `guildvaultpurchased` text NOT NULL,
  `Banners` text NOT NULL,
  `Heraldry` text NOT NULL,
  `GuildTacticsPurchased` text NOT NULL,
  `AllianceId` int unsigned DEFAULT NULL,
  PRIMARY KEY (`GuildId`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of guild_info
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_logs`
-- ----------------------------
DROP TABLE IF EXISTS `guild_logs`;
CREATE TABLE `guild_logs` (
  `GuildId` int unsigned NOT NULL,
  `Time` int unsigned NOT NULL,
  `Type` tinyint unsigned NOT NULL,
  `Text` text NOT NULL,
  `guild_logs_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`guild_logs_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of guild_logs
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_members`
-- ----------------------------
DROP TABLE IF EXISTS `guild_members`;
CREATE TABLE `guild_members` (
  `GuildId` int unsigned NOT NULL,
  `CharacterId` int unsigned NOT NULL,
  `RankId` tinyint unsigned NOT NULL,
  `PublicNote` text NOT NULL,
  `OfficerNote` text NOT NULL,
  `JoinDate` int unsigned NOT NULL,
  `LastSeen` int unsigned NOT NULL,
  `RealmCaptain` tinyint unsigned NOT NULL,
  `StandardBearer` tinyint unsigned NOT NULL,
  `GuildRecruiter` tinyint unsigned NOT NULL,
  `RenownContributed` bigint unsigned NOT NULL,
  `Tithe` tinyint unsigned NOT NULL,
  `TitheContributed` bigint unsigned NOT NULL,
  PRIMARY KEY (`CharacterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of guild_members
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_ranks`
-- ----------------------------
DROP TABLE IF EXISTS `guild_ranks`;
CREATE TABLE `guild_ranks` (
  `GuildId` int unsigned NOT NULL,
  `RankId` tinyint unsigned NOT NULL,
  `Name` text NOT NULL,
  `Permissions` text NOT NULL,
  `Enabled` tinyint unsigned NOT NULL,
  PRIMARY KEY (`GuildId`,`RankId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of guild_ranks
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_vault_item`
-- ----------------------------
DROP TABLE IF EXISTS `guild_vault_item`;
CREATE TABLE `guild_vault_item` (
  `GuildId` int unsigned NOT NULL,
  `Entry` int unsigned NOT NULL,
  `VaultId` tinyint unsigned NOT NULL,
  `SlotId` smallint unsigned NOT NULL,
  `Counts` smallint unsigned NOT NULL,
  `Talismans` varchar(40) DEFAULT NULL,
  `PrimaryDye` smallint unsigned NOT NULL,
  `SecondaryDye` smallint unsigned NOT NULL,
  PRIMARY KEY (`GuildId`,`VaultId`,`SlotId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of guild_vault_item
-- ----------------------------

-- ----------------------------
-- Table structure for `scenario_durations`
-- ----------------------------
DROP TABLE IF EXISTS `scenario_durations`;
CREATE TABLE `scenario_durations` (
  `Guid` int NOT NULL AUTO_INCREMENT,
  `ScenarioId` smallint unsigned DEFAULT NULL,
  `Tier` tinyint unsigned DEFAULT NULL,
  `StartTime` bigint DEFAULT NULL,
  `DurationSeconds` int unsigned DEFAULT NULL,
  PRIMARY KEY (`Guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of scenario_durations
-- ----------------------------
