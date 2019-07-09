/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50642
 Source Host           : localhost:3306
 Source Schema         : crm

 Target Server Type    : MySQL
 Target Server Version : 50642
 File Encoding         : 65001

 Date: 02/07/2019 14:02:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for authorities
-- ----------------------------
DROP TABLE IF EXISTS `authorities`;
CREATE TABLE `authorities`  (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `authority` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  UNIQUE INDEX `authorities_idx_1`(`username`, `authority`) USING BTREE,
  CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of authorities
-- ----------------------------
INSERT INTO `authorities` VALUES ('john', 'ROLE_EMPLOYEE');
INSERT INTO `authorities` VALUES ('mary', 'ROLE_EMPLOYEE');
INSERT INTO `authorities` VALUES ('mary', 'ROLE_MANAGER');
INSERT INTO `authorities` VALUES ('susan', 'ROLE_ADMIN');
INSERT INTO `authorities` VALUES ('susan', 'ROLE_EMPLOYEE');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_name` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 501 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 'John', 'Doe', 'john.doe@aitech.asia');
INSERT INTO `customer` VALUES (2, 'Amanda', 'Gibson', 'amanda.gibson@aitech.asia');
INSERT INTO `customer` VALUES (3, 'Jasmine', 'Manning', 'jasmine.manning@aitech.asia');
INSERT INTO `customer` VALUES (4, 'John', 'Metcalfe', 'john.metcalfe@aitech.asia');
INSERT INTO `customer` VALUES (5, 'Lisa', 'Smith', 'lisa.smith@aitech.asia');
INSERT INTO `customer` VALUES (6, 'Grace', 'Short', 'grace.short@aitech.asia');
INSERT INTO `customer` VALUES (7, 'Matt', 'Newman', 'matt.newman@aitech.asia');
INSERT INTO `customer` VALUES (8, 'Diane', 'Bell', 'diane.bell@aitech.asia');
INSERT INTO `customer` VALUES (9, 'Colin', 'McGrath', 'colin.mcgrath@aitech.asia');
INSERT INTO `customer` VALUES (10, 'Rachel', 'Lyman', 'rachel.lyman@aitech.asia');
INSERT INTO `customer` VALUES (11, 'Donna', 'Metcalfe', 'donna.metcalfe@aitech.asia');
INSERT INTO `customer` VALUES (12, 'Christian', 'Scott', 'christian.scott@aitech.asia');
INSERT INTO `customer` VALUES (13, 'Grace', 'Blake', 'grace.blake@aitech.asia');
INSERT INTO `customer` VALUES (14, 'Abigail', 'Clark', 'abigail.clark@aitech.asia');
INSERT INTO `customer` VALUES (15, 'Austin', 'Lewis', 'austin.lewis@aitech.asia');
INSERT INTO `customer` VALUES (16, 'Amy', 'McGrath', 'amy.mcgrath@aitech.asia');
INSERT INTO `customer` VALUES (17, 'Ian', 'Short', 'ian.short@aitech.asia');
INSERT INTO `customer` VALUES (18, 'Anna', 'Wilson', 'anna.wilson@aitech.asia');
INSERT INTO `customer` VALUES (19, 'Caroline', 'Blake', 'caroline.blake@aitech.asia');
INSERT INTO `customer` VALUES (20, 'Jasmine', 'Butler', 'jasmine.butler@aitech.asia');
INSERT INTO `customer` VALUES (21, 'Jane', 'Wilson', 'jane.wilson@aitech.asia');
INSERT INTO `customer` VALUES (22, 'Felicity', 'Wilson', 'felicity.wilson@aitech.asia');
INSERT INTO `customer` VALUES (23, 'Cameron', 'Davies', 'cameron.davies@aitech.asia');
INSERT INTO `customer` VALUES (24, 'Austin', 'Manning', 'austin.manning@aitech.asia');
INSERT INTO `customer` VALUES (25, 'Justin', 'Brown', 'justin.brown@aitech.asia');
INSERT INTO `customer` VALUES (26, 'Stephanie', 'Walsh', 'stephanie.walsh@aitech.asia');
INSERT INTO `customer` VALUES (27, 'Simon', 'Newman', 'simon.newman@aitech.asia');
INSERT INTO `customer` VALUES (28, 'Heather', 'Murray', 'heather.murray@aitech.asia');
INSERT INTO `customer` VALUES (29, 'Stewart', 'Anderson', 'stewart.anderson@aitech.asia');
INSERT INTO `customer` VALUES (30, 'Christian', 'MacDonald', 'christian.macdonald@aitech.asia');
INSERT INTO `customer` VALUES (31, 'Carolyn', 'Clark', 'carolyn.clark@aitech.asia');
INSERT INTO `customer` VALUES (32, 'Gavin', 'Powell', 'gavin.powell@aitech.asia');
INSERT INTO `customer` VALUES (33, 'Christian', 'Black', 'christian.black@aitech.asia');
INSERT INTO `customer` VALUES (34, 'Donna', 'MacDonald', 'donna.macdonald@aitech.asia');
INSERT INTO `customer` VALUES (35, 'Carl', 'Scott', 'carl.scott@aitech.asia');
INSERT INTO `customer` VALUES (36, 'Jacob', 'Parsons', 'jacob.parsons@aitech.asia');
INSERT INTO `customer` VALUES (37, 'Jason', 'Lee', 'jason.lee@aitech.asia');
INSERT INTO `customer` VALUES (38, 'John', 'Mitchell', 'john.mitchell@aitech.asia');
INSERT INTO `customer` VALUES (39, 'Hannah', 'Langdon', 'hannah.langdon@aitech.asia');
INSERT INTO `customer` VALUES (40, 'Victoria', 'Abraham', 'victoria.abraham@aitech.asia');
INSERT INTO `customer` VALUES (41, 'Alison', 'Alsop', 'alison.alsop@aitech.asia');
INSERT INTO `customer` VALUES (42, 'Elizabeth', 'Chapman', 'elizabeth.chapman@aitech.asia');
INSERT INTO `customer` VALUES (43, 'Kimberly', 'Murray', 'kimberly.murray@aitech.asia');
INSERT INTO `customer` VALUES (44, 'Leonard', 'King', 'leonard.king@aitech.asia');
INSERT INTO `customer` VALUES (45, 'Rachel', 'White', 'rachel.white@aitech.asia');
INSERT INTO `customer` VALUES (46, 'Melanie', 'Gibson', 'melanie.gibson@aitech.asia');
INSERT INTO `customer` VALUES (47, 'Evan', 'Jones', 'evan.jones@aitech.asia');
INSERT INTO `customer` VALUES (48, 'Ella', 'Paterson', 'ella.paterson@aitech.asia');
INSERT INTO `customer` VALUES (49, 'Joshua', 'Forsyth', 'joshua.forsyth@aitech.asia');
INSERT INTO `customer` VALUES (50, 'Dan', 'Fraser', 'dan.fraser@aitech.asia');
INSERT INTO `customer` VALUES (51, 'Justin', 'Anderson', 'justin.anderson@aitech.asia');
INSERT INTO `customer` VALUES (52, 'Carol', 'Harris', 'carol.harris@aitech.asia');
INSERT INTO `customer` VALUES (53, 'Yvonne', 'Vance', 'yvonne.vance@aitech.asia');
INSERT INTO `customer` VALUES (54, 'Eric', 'Coleman', 'eric.coleman@aitech.asia');
INSERT INTO `customer` VALUES (55, 'Julia', 'Bailey', 'julia.bailey@aitech.asia');
INSERT INTO `customer` VALUES (56, 'Stephanie', 'Carr', 'stephanie.carr@aitech.asia');
INSERT INTO `customer` VALUES (57, 'Jennifer', 'Piper', 'jennifer.piper@aitech.asia');
INSERT INTO `customer` VALUES (58, 'Faith', 'Ogden', 'faith.ogden@aitech.asia');
INSERT INTO `customer` VALUES (59, 'Joan', 'Kerr', 'joan.kerr@aitech.asia');
INSERT INTO `customer` VALUES (60, 'Boris', 'Mackenzie', 'boris.mackenzie@aitech.asia');
INSERT INTO `customer` VALUES (61, 'Emma', 'Buckland', 'emma.buckland@aitech.asia');
INSERT INTO `customer` VALUES (62, 'Kylie', 'Bower', 'kylie.bower@aitech.asia');
INSERT INTO `customer` VALUES (63, 'Piers', 'MacLeod', 'piers.macleod@aitech.asia');
INSERT INTO `customer` VALUES (64, 'Julian', 'Edmunds', 'julian.edmunds@aitech.asia');
INSERT INTO `customer` VALUES (65, 'Felicity', 'Hughes', 'felicity.hughes@aitech.asia');
INSERT INTO `customer` VALUES (66, 'Adam', 'Wilkins', 'adam.wilkins@aitech.asia');
INSERT INTO `customer` VALUES (67, 'Natalie', 'Ferguson', 'natalie.ferguson@aitech.asia');
INSERT INTO `customer` VALUES (68, 'Mary', 'Kelly', 'mary.kelly@aitech.asia');
INSERT INTO `customer` VALUES (69, 'Joanne', 'Cameron', 'joanne.cameron@aitech.asia');
INSERT INTO `customer` VALUES (70, 'Leonard', 'Lambert', 'leonard.lambert@aitech.asia');
INSERT INTO `customer` VALUES (71, 'Tim', 'Robertson', 'tim.robertson@aitech.asia');
INSERT INTO `customer` VALUES (72, 'Carol', 'Slater', 'carol.slater@aitech.asia');
INSERT INTO `customer` VALUES (73, 'Virginia', 'Simpson', 'virginia.simpson@aitech.asia');
INSERT INTO `customer` VALUES (74, 'Lillian', 'Gill', 'lillian.gill@aitech.asia');
INSERT INTO `customer` VALUES (75, 'Deirdre', 'Fraser', 'deirdre.fraser@aitech.asia');
INSERT INTO `customer` VALUES (76, 'Liam', 'Glover', 'liam.glover@aitech.asia');
INSERT INTO `customer` VALUES (77, 'Diane', 'Thomson', 'diane.thomson@aitech.asia');
INSERT INTO `customer` VALUES (78, 'Connor', 'Simpson', 'connor.simpson@aitech.asia');
INSERT INTO `customer` VALUES (79, 'Ava', 'Vaughan', 'ava.vaughan@aitech.asia');
INSERT INTO `customer` VALUES (80, 'Alison', 'Hughes', 'alison.hughes@aitech.asia');
INSERT INTO `customer` VALUES (81, 'Sam', 'Poole', 'sam.poole@aitech.asia');
INSERT INTO `customer` VALUES (82, 'Oliver', 'Martin', 'oliver.martin@aitech.asia');
INSERT INTO `customer` VALUES (83, 'Colin', 'Glover', 'colin.glover@aitech.asia');
INSERT INTO `customer` VALUES (84, 'Anna', 'McDonald', 'anna.mcdonald@aitech.asia');
INSERT INTO `customer` VALUES (85, 'Richard', 'Coleman', 'richard.coleman@aitech.asia');
INSERT INTO `customer` VALUES (86, 'Faith', 'Kerr', 'faith.kerr@aitech.asia');
INSERT INTO `customer` VALUES (87, 'Ian', 'Robertson', 'ian.robertson@aitech.asia');
INSERT INTO `customer` VALUES (88, 'Grace', 'Fraser', 'grace.fraser@aitech.asia');
INSERT INTO `customer` VALUES (89, 'Sarah', 'Forsyth', 'sarah.forsyth@aitech.asia');
INSERT INTO `customer` VALUES (90, 'Sue', 'Bond', 'sue.bond@aitech.asia');
INSERT INTO `customer` VALUES (91, 'Joanne', 'Manning', 'joanne.manning@aitech.asia');
INSERT INTO `customer` VALUES (92, 'Stephen', 'Lewis', 'stephen.lewis@aitech.asia');
INSERT INTO `customer` VALUES (93, 'Jasmine', 'Avery', 'jasmine.avery@aitech.asia');
INSERT INTO `customer` VALUES (94, 'Felicity', 'Murray', 'felicity.murray@aitech.asia');
INSERT INTO `customer` VALUES (95, 'Caroline', 'Hodges', 'caroline.hodges@aitech.asia');
INSERT INTO `customer` VALUES (96, 'Steven', 'Jones', 'steven.jones@aitech.asia');
INSERT INTO `customer` VALUES (97, 'Julia', 'Roberts', 'julia.roberts@aitech.asia');
INSERT INTO `customer` VALUES (98, 'Sophie', 'Churchill', 'sophie.churchill@aitech.asia');
INSERT INTO `customer` VALUES (99, 'Zoe', 'Cornish', 'zoe.cornish@aitech.asia');
INSERT INTO `customer` VALUES (100, 'Zoe', 'McDonald', 'zoe.mcdonald@aitech.asia');
INSERT INTO `customer` VALUES (101, 'Vanessa', 'Hughes', 'vanessa.hughes@aitech.asia');
INSERT INTO `customer` VALUES (102, 'Richard', 'Hodges', 'richard.hodges@aitech.asia');
INSERT INTO `customer` VALUES (103, 'Ruth', 'Jackson', 'ruth.jackson@aitech.asia');
INSERT INTO `customer` VALUES (104, 'Elizabeth', 'Scott', 'elizabeth.scott@aitech.asia');
INSERT INTO `customer` VALUES (105, 'Neil', 'Cameron', 'neil.cameron@aitech.asia');
INSERT INTO `customer` VALUES (106, 'Dorothy', 'Howard', 'dorothy.howard@aitech.asia');
INSERT INTO `customer` VALUES (107, 'Ella', 'Taylor', 'ella.taylor@aitech.asia');
INSERT INTO `customer` VALUES (108, 'Austin', 'Berry', 'austin.berry@aitech.asia');
INSERT INTO `customer` VALUES (109, 'Andrew', 'Lawrence', 'andrew.lawrence@aitech.asia');
INSERT INTO `customer` VALUES (110, 'Piers', 'Sharp', 'piers.sharp@aitech.asia');
INSERT INTO `customer` VALUES (111, 'Wendy', 'Short', 'wendy.short@aitech.asia');
INSERT INTO `customer` VALUES (112, 'Liam', 'Terry', 'liam.terry@aitech.asia');
INSERT INTO `customer` VALUES (113, 'Alan', 'Grant', 'alan.grant@aitech.asia');
INSERT INTO `customer` VALUES (114, 'Anna', 'Fisher', 'anna.fisher@aitech.asia');
INSERT INTO `customer` VALUES (115, 'Brandon', 'Duncan', 'brandon.duncan@aitech.asia');
INSERT INTO `customer` VALUES (116, 'Amy', 'Manning', 'amy.manning@aitech.asia');
INSERT INTO `customer` VALUES (117, 'Bella', 'Hemmings', 'bella.hemmings@aitech.asia');
INSERT INTO `customer` VALUES (118, 'John', 'Quinn', 'john.quinn@aitech.asia');
INSERT INTO `customer` VALUES (119, 'Eric', 'Forsyth', 'eric.forsyth@aitech.asia');
INSERT INTO `customer` VALUES (120, 'Victoria', 'Cameron', 'victoria.cameron@aitech.asia');
INSERT INTO `customer` VALUES (121, 'Hannah', 'Short', 'hannah.short@aitech.asia');
INSERT INTO `customer` VALUES (122, 'Blake', 'Peters', 'blake.peters@aitech.asia');
INSERT INTO `customer` VALUES (123, 'Stephanie', 'Ellison', 'stephanie.ellison@aitech.asia');
INSERT INTO `customer` VALUES (124, 'Kimberly', 'Ellison', 'kimberly.ellison@aitech.asia');
INSERT INTO `customer` VALUES (125, 'Joanne', 'Jackson', 'joanne.jackson@aitech.asia');
INSERT INTO `customer` VALUES (126, 'Michael', 'Ball', 'michael.ball@aitech.asia');
INSERT INTO `customer` VALUES (127, 'Ryan', 'Martin', 'ryan.martin@aitech.asia');
INSERT INTO `customer` VALUES (128, 'Rose', 'Marshall', 'rose.marshall@aitech.asia');
INSERT INTO `customer` VALUES (129, 'Isaac', 'Hardacre', 'isaac.hardacre@aitech.asia');
INSERT INTO `customer` VALUES (130, 'Isaac', 'MacLeod', 'isaac.macleod@aitech.asia');
INSERT INTO `customer` VALUES (131, 'Adrian', 'Walsh', 'adrian.walsh@aitech.asia');
INSERT INTO `customer` VALUES (132, 'Ella', 'Ross', 'ella.ross@aitech.asia');
INSERT INTO `customer` VALUES (133, 'Wendy', 'Stewart', 'wendy.stewart@aitech.asia');
INSERT INTO `customer` VALUES (134, 'Caroline', 'Gray', 'caroline.gray@aitech.asia');
INSERT INTO `customer` VALUES (135, 'Isaac', 'Davies', 'isaac.davies@aitech.asia');
INSERT INTO `customer` VALUES (136, 'Maria', 'Butler', 'maria.butler@aitech.asia');
INSERT INTO `customer` VALUES (137, 'Zoe', 'Young', 'zoe.young@aitech.asia');
INSERT INTO `customer` VALUES (138, 'Tim', 'Thomson', 'tim.thomson@aitech.asia');
INSERT INTO `customer` VALUES (139, 'Nicholas', 'Ross', 'nicholas.ross@aitech.asia');
INSERT INTO `customer` VALUES (140, 'Sophie', 'Lewis', 'sophie.lewis@aitech.asia');
INSERT INTO `customer` VALUES (141, 'Irene', 'Gill', 'irene.gill@aitech.asia');
INSERT INTO `customer` VALUES (142, 'Irene', 'Davidson', 'irene.davidson@aitech.asia');
INSERT INTO `customer` VALUES (143, 'Eric', 'Wilson', 'eric.wilson@aitech.asia');
INSERT INTO `customer` VALUES (144, 'Grace', 'Jackson', 'grace.jackson@aitech.asia');
INSERT INTO `customer` VALUES (145, 'Ryan', 'Brown', 'ryan.brown@aitech.asia');
INSERT INTO `customer` VALUES (146, 'Yvonne', 'Terry', 'yvonne.terry@aitech.asia');
INSERT INTO `customer` VALUES (147, 'David', 'Clark', 'david.clark@aitech.asia');
INSERT INTO `customer` VALUES (148, 'Thomas', 'Wallace', 'thomas.wallace@aitech.asia');
INSERT INTO `customer` VALUES (149, 'Chloe', 'Arnold', 'chloe.arnold@aitech.asia');
INSERT INTO `customer` VALUES (150, 'Sue', 'Ball', 'sue.ball@aitech.asia');
INSERT INTO `customer` VALUES (151, 'Owen', 'Hardacre', 'owen.hardacre@aitech.asia');
INSERT INTO `customer` VALUES (152, 'Tracey', 'Walker', 'tracey.walker@aitech.asia');
INSERT INTO `customer` VALUES (153, 'Sophie', 'Mackay', 'sophie.mackay@aitech.asia');
INSERT INTO `customer` VALUES (154, 'Liam', 'Wright', 'liam.wright@aitech.asia');
INSERT INTO `customer` VALUES (155, 'Kevin', 'Vaughan', 'kevin.vaughan@aitech.asia');
INSERT INTO `customer` VALUES (156, 'Steven', 'Mackay', 'steven.mackay@aitech.asia');
INSERT INTO `customer` VALUES (157, 'Nicholas', 'Sanderson', 'nicholas.sanderson@aitech.asia');
INSERT INTO `customer` VALUES (158, 'Luke', 'Hill', 'luke.hill@aitech.asia');
INSERT INTO `customer` VALUES (159, 'Deirdre', 'Terry', 'deirdre.terry@aitech.asia');
INSERT INTO `customer` VALUES (160, 'Joshua', 'Roberts', 'joshua.roberts@aitech.asia');
INSERT INTO `customer` VALUES (161, 'Rebecca', 'Carr', 'rebecca.carr@aitech.asia');
INSERT INTO `customer` VALUES (162, 'Donna', 'Martin', 'donna.martin@aitech.asia');
INSERT INTO `customer` VALUES (163, 'Penelope', 'Tucker', 'penelope.tucker@aitech.asia');
INSERT INTO `customer` VALUES (164, 'Jan', 'Sharp', 'jan.sharp@aitech.asia');
INSERT INTO `customer` VALUES (165, 'Sonia', 'Chapman', 'sonia.chapman@aitech.asia');
INSERT INTO `customer` VALUES (166, 'Sonia', 'Dyer', 'sonia.dyer@aitech.asia');
INSERT INTO `customer` VALUES (167, 'Diana', 'Abraham', 'diana.abraham@aitech.asia');
INSERT INTO `customer` VALUES (168, 'Kylie', 'Wilson', 'kylie.wilson@aitech.asia');
INSERT INTO `customer` VALUES (169, 'Justin', 'Mackenzie', 'justin.mackenzie@aitech.asia');
INSERT INTO `customer` VALUES (170, 'Charles', 'Grant', 'charles.grant@aitech.asia');
INSERT INTO `customer` VALUES (171, 'James', 'Hart', 'james.hart@aitech.asia');
INSERT INTO `customer` VALUES (172, 'Piers', 'Gibson', 'piers.gibson@aitech.asia');
INSERT INTO `customer` VALUES (173, 'Joshua', 'Vance', 'joshua.vance@aitech.asia');
INSERT INTO `customer` VALUES (174, 'Colin', 'Vance', 'colin.vance@aitech.asia');
INSERT INTO `customer` VALUES (175, 'Madeleine', 'Dyer', 'madeleine.dyer@aitech.asia');
INSERT INTO `customer` VALUES (176, 'Michelle', 'Clark', 'michelle.clark@aitech.asia');
INSERT INTO `customer` VALUES (177, 'Tim', 'Dowd', 'tim.dowd@aitech.asia');
INSERT INTO `customer` VALUES (178, 'Wanda', 'Turner', 'wanda.turner@aitech.asia');
INSERT INTO `customer` VALUES (179, 'Keith', 'Lambert', 'keith.lambert@aitech.asia');
INSERT INTO `customer` VALUES (180, 'Karen', 'Manning', 'karen.manning@aitech.asia');
INSERT INTO `customer` VALUES (181, 'Carolyn', 'Sanderson', 'carolyn.sanderson@aitech.asia');
INSERT INTO `customer` VALUES (182, 'Lillian', 'Harris', 'lillian.harris@aitech.asia');
INSERT INTO `customer` VALUES (183, 'Anne', 'Short', 'anne.short@aitech.asia');
INSERT INTO `customer` VALUES (184, 'Liam', 'Underwood', 'liam.underwood@aitech.asia');
INSERT INTO `customer` VALUES (185, 'Victoria', 'Ince', 'victoria.ince@aitech.asia');
INSERT INTO `customer` VALUES (186, 'Yvonne', 'Hunter', 'yvonne.hunter@aitech.asia');
INSERT INTO `customer` VALUES (187, 'Leonard', 'Walker', 'leonard.walker@aitech.asia');
INSERT INTO `customer` VALUES (188, 'Sonia', 'Abraham', 'sonia.abraham@aitech.asia');
INSERT INTO `customer` VALUES (189, 'Dylan', 'Simpson', 'dylan.simpson@aitech.asia');
INSERT INTO `customer` VALUES (190, 'Emma', 'Mackay', 'emma.mackay@aitech.asia');
INSERT INTO `customer` VALUES (191, 'Ryan', 'Ferguson', 'ryan.ferguson@aitech.asia');
INSERT INTO `customer` VALUES (192, 'Joan', 'Henderson', 'joan.henderson@aitech.asia');
INSERT INTO `customer` VALUES (193, 'Emma', 'Hamilton', 'emma.hamilton@aitech.asia');
INSERT INTO `customer` VALUES (194, 'Abigail', 'Parr', 'abigail.parr@aitech.asia');
INSERT INTO `customer` VALUES (195, 'Brandon', 'Hudson', 'brandon.hudson@aitech.asia');
INSERT INTO `customer` VALUES (196, 'Christian', 'Hunter', 'christian.hunter@aitech.asia');
INSERT INTO `customer` VALUES (197, 'Phil', 'Simpson', 'phil.simpson@aitech.asia');
INSERT INTO `customer` VALUES (198, 'Simon', 'Burgess', 'simon.burgess@aitech.asia');
INSERT INTO `customer` VALUES (199, 'Rebecca', 'Ogden', 'rebecca.ogden@aitech.asia');
INSERT INTO `customer` VALUES (200, 'Hannah', 'Nash', 'hannah.nash@aitech.asia');
INSERT INTO `customer` VALUES (201, 'Anna', 'Russell', 'anna.russell@aitech.asia');
INSERT INTO `customer` VALUES (202, 'Kevin', 'Black', 'kevin.black@aitech.asia');
INSERT INTO `customer` VALUES (203, 'Joan', 'Taylor', 'joan.taylor@aitech.asia');
INSERT INTO `customer` VALUES (204, 'Neil', 'Churchill', 'neil.churchill@aitech.asia');
INSERT INTO `customer` VALUES (205, 'Maria', 'Wright', 'maria.wright@aitech.asia');
INSERT INTO `customer` VALUES (206, 'Edward', 'Wilson', 'edward.wilson@aitech.asia');
INSERT INTO `customer` VALUES (207, 'Grace', 'James', 'grace.james@aitech.asia');
INSERT INTO `customer` VALUES (208, 'Stephanie', 'Howard', 'stephanie.howard@aitech.asia');
INSERT INTO `customer` VALUES (209, 'Benjamin', 'Powell', 'benjamin.powell@aitech.asia');
INSERT INTO `customer` VALUES (210, 'Lucas', 'Robertson', 'lucas.robertson@aitech.asia');
INSERT INTO `customer` VALUES (211, 'Amanda', 'Knox', 'amanda.knox@aitech.asia');
INSERT INTO `customer` VALUES (212, 'Nathan', 'Allan', 'nathan.allan@aitech.asia');
INSERT INTO `customer` VALUES (213, 'Fiona', 'Glover', 'fiona.glover@aitech.asia');
INSERT INTO `customer` VALUES (214, 'Nicola', 'McDonald', 'nicola.mcdonald@aitech.asia');
INSERT INTO `customer` VALUES (215, 'Vanessa', 'Mills', 'vanessa.mills@aitech.asia');
INSERT INTO `customer` VALUES (216, 'Jack', 'Gibson', 'jack.gibson@aitech.asia');
INSERT INTO `customer` VALUES (217, 'Grace', 'Miller', 'grace.miller@aitech.asia');
INSERT INTO `customer` VALUES (218, 'Robert', 'Hunter', 'robert.hunter@aitech.asia');
INSERT INTO `customer` VALUES (219, 'Simon', 'Mills', 'simon.mills@aitech.asia');
INSERT INTO `customer` VALUES (220, 'Christian', 'Kerr', 'christian.kerr@aitech.asia');
INSERT INTO `customer` VALUES (221, 'James', 'Blake', 'james.blake@aitech.asia');
INSERT INTO `customer` VALUES (222, 'Robert', 'Lambert', 'robert.lambert@aitech.asia');
INSERT INTO `customer` VALUES (223, 'Anna', 'Langdon', 'anna.langdon@aitech.asia');
INSERT INTO `customer` VALUES (224, 'Yvonne', 'Mackay', 'yvonne.mackay@aitech.asia');
INSERT INTO `customer` VALUES (225, 'Rachel', 'Wallace', 'rachel.wallace@aitech.asia');
INSERT INTO `customer` VALUES (226, 'Diana', 'Ince', 'diana.ince@aitech.asia');
INSERT INTO `customer` VALUES (227, 'Carl', 'Pullman', 'carl.pullman@aitech.asia');
INSERT INTO `customer` VALUES (228, 'Jessica', 'Dickens', 'jessica.dickens@aitech.asia');
INSERT INTO `customer` VALUES (229, 'Wendy', 'Mackay', 'wendy.mackay@aitech.asia');
INSERT INTO `customer` VALUES (230, 'Grace', 'Vaughan', 'grace.vaughan@aitech.asia');
INSERT INTO `customer` VALUES (231, 'Joan', 'Abraham', 'joan.abraham@aitech.asia');
INSERT INTO `customer` VALUES (232, 'Joe', 'Fraser', 'joe.fraser@aitech.asia');
INSERT INTO `customer` VALUES (233, 'Gavin', 'Vance', 'gavin.vance@aitech.asia');
INSERT INTO `customer` VALUES (234, 'Pippa', 'Parr', 'pippa.parr@aitech.asia');
INSERT INTO `customer` VALUES (235, 'Peter', 'Rampling', 'peter.rampling@aitech.asia');
INSERT INTO `customer` VALUES (236, 'Jennifer', 'Simpson', 'jennifer.simpson@aitech.asia');
INSERT INTO `customer` VALUES (237, 'Thomas', 'Berry', 'thomas.berry@aitech.asia');
INSERT INTO `customer` VALUES (238, 'Pippa', 'Hardacre', 'pippa.hardacre@aitech.asia');
INSERT INTO `customer` VALUES (239, 'Alan', 'Hudson', 'alan.hudson@aitech.asia');
INSERT INTO `customer` VALUES (240, 'David', 'Fraser', 'david.fraser@aitech.asia');
INSERT INTO `customer` VALUES (241, 'Abigail', 'Pullman', 'abigail.pullman@aitech.asia');
INSERT INTO `customer` VALUES (242, 'Lauren', 'Wilkins', 'lauren.wilkins@aitech.asia');
INSERT INTO `customer` VALUES (243, 'Luke', 'Lyman', 'luke.lyman@aitech.asia');
INSERT INTO `customer` VALUES (244, 'Dylan', 'Bower', 'dylan.bower@aitech.asia');
INSERT INTO `customer` VALUES (245, 'Stephen', 'Bell', 'stephen.bell@aitech.asia');
INSERT INTO `customer` VALUES (246, 'Gordon', 'Peake', 'gordon.peake@aitech.asia');
INSERT INTO `customer` VALUES (247, 'Maria', 'Lee', 'maria.lee@aitech.asia');
INSERT INTO `customer` VALUES (248, 'Matt', 'Ferguson', 'matt.ferguson@aitech.asia');
INSERT INTO `customer` VALUES (249, 'Sebastian', 'Coleman', 'sebastian.coleman@aitech.asia');
INSERT INTO `customer` VALUES (250, 'Nicholas', 'Lambert', 'nicholas.lambert@aitech.asia');
INSERT INTO `customer` VALUES (251, 'Isaac', 'Forsyth', 'isaac.forsyth@aitech.asia');
INSERT INTO `customer` VALUES (252, 'Robert', 'Martin', 'robert.martin@aitech.asia');
INSERT INTO `customer` VALUES (253, 'Jake', 'Carr', 'jake.carr@aitech.asia');
INSERT INTO `customer` VALUES (254, 'Deirdre', 'Davies', 'deirdre.davies@aitech.asia');
INSERT INTO `customer` VALUES (255, 'Jonathan', 'Hughes', 'jonathan.hughes@aitech.asia');
INSERT INTO `customer` VALUES (256, 'Harry', 'Kerr', 'harry.kerr@aitech.asia');
INSERT INTO `customer` VALUES (257, 'Samantha', 'Burgess', 'samantha.burgess@aitech.asia');
INSERT INTO `customer` VALUES (258, 'Kimberly', 'Cornish', 'kimberly.cornish@aitech.asia');
INSERT INTO `customer` VALUES (259, 'Robert', 'Graham', 'robert.graham@aitech.asia');
INSERT INTO `customer` VALUES (260, 'Anna', 'Abraham', 'anna.abraham@aitech.asia');
INSERT INTO `customer` VALUES (261, 'Max', 'Roberts', 'max.roberts@aitech.asia');
INSERT INTO `customer` VALUES (262, 'Jake', 'Newman', 'jake.newman@aitech.asia');
INSERT INTO `customer` VALUES (263, 'Sally', 'Terry', 'sally.terry@aitech.asia');
INSERT INTO `customer` VALUES (264, 'Charles', 'Butler', 'charles.butler@aitech.asia');
INSERT INTO `customer` VALUES (265, 'Adrian', 'Wright', 'adrian.wright@aitech.asia');
INSERT INTO `customer` VALUES (266, 'Donna', 'McGrath', 'donna.mcgrath@aitech.asia');
INSERT INTO `customer` VALUES (267, 'Dominic', 'Graham', 'dominic.graham@aitech.asia');
INSERT INTO `customer` VALUES (268, 'Theresa', 'Bailey', 'theresa.bailey@aitech.asia');
INSERT INTO `customer` VALUES (269, 'Mary', 'Randall', 'mary.randall@aitech.asia');
INSERT INTO `customer` VALUES (270, 'Matt', 'Wallace', 'matt.wallace@aitech.asia');
INSERT INTO `customer` VALUES (271, 'Anthony', 'White', 'anthony.white@aitech.asia');
INSERT INTO `customer` VALUES (272, 'Diana', 'Ball', 'diana.ball@aitech.asia');
INSERT INTO `customer` VALUES (273, 'Isaac', 'Harris', 'isaac.harris@aitech.asia');
INSERT INTO `customer` VALUES (274, 'Ian', 'Welch', 'ian.welch@aitech.asia');
INSERT INTO `customer` VALUES (275, 'Evan', 'Vance', 'evan.vance@aitech.asia');
INSERT INTO `customer` VALUES (276, 'Brian', 'Mackay', 'brian.mackay@aitech.asia');
INSERT INTO `customer` VALUES (277, 'Alan', 'Piper', 'alan.piper@aitech.asia');
INSERT INTO `customer` VALUES (278, 'Lisa', 'Poole', 'lisa.poole@aitech.asia');
INSERT INTO `customer` VALUES (279, 'Nicola', 'Hamilton', 'nicola.hamilton@aitech.asia');
INSERT INTO `customer` VALUES (280, 'Megan', 'Bailey', 'megan.bailey@aitech.asia');
INSERT INTO `customer` VALUES (281, 'Brian', 'Fisher', 'brian.fisher@aitech.asia');
INSERT INTO `customer` VALUES (282, 'Dorothy', 'Rutherford', 'dorothy.rutherford@aitech.asia');
INSERT INTO `customer` VALUES (283, 'Alan', 'North', 'alan.north@aitech.asia');
INSERT INTO `customer` VALUES (284, 'Lisa', 'Sanderson', 'lisa.sanderson@aitech.asia');
INSERT INTO `customer` VALUES (285, 'Nathan', 'Nash', 'nathan.nash@aitech.asia');
INSERT INTO `customer` VALUES (286, 'Sophie', 'McDonald', 'sophie.mcdonald@aitech.asia');
INSERT INTO `customer` VALUES (287, 'Grace', 'Roberts', 'grace.roberts@aitech.asia');
INSERT INTO `customer` VALUES (288, 'Stewart', 'Lewis', 'stewart.lewis@aitech.asia');
INSERT INTO `customer` VALUES (289, 'John', 'White', 'john.white@aitech.asia');
INSERT INTO `customer` VALUES (290, 'Jan', 'Reid', 'jan.reid@aitech.asia');
INSERT INTO `customer` VALUES (291, 'Joe', 'Lawrence', 'joe.lawrence@aitech.asia');
INSERT INTO `customer` VALUES (292, 'Claire', 'Ball', 'claire.ball@aitech.asia');
INSERT INTO `customer` VALUES (293, 'Christopher', 'Ball', 'christopher.ball@aitech.asia');
INSERT INTO `customer` VALUES (294, 'Cameron', 'Hart', 'cameron.hart@aitech.asia');
INSERT INTO `customer` VALUES (295, 'Isaac', 'Gill', 'isaac.gill@aitech.asia');
INSERT INTO `customer` VALUES (296, 'Carol', 'Simpson', 'carol.simpson@aitech.asia');
INSERT INTO `customer` VALUES (297, 'Eric', 'Powell', 'eric.powell@aitech.asia');
INSERT INTO `customer` VALUES (298, 'Emily', 'Wilkins', 'emily.wilkins@aitech.asia');
INSERT INTO `customer` VALUES (299, 'Ryan', 'Skinner', 'ryan.skinner@aitech.asia');
INSERT INTO `customer` VALUES (300, 'Virginia', 'Young', 'virginia.young@aitech.asia');
INSERT INTO `customer` VALUES (301, 'Sophie', 'Brown', 'sophie.brown@aitech.asia');
INSERT INTO `customer` VALUES (302, 'Oliver', 'Watson', 'oliver.watson@aitech.asia');
INSERT INTO `customer` VALUES (303, 'Nicola', 'Burgess', 'nicola.burgess@aitech.asia');
INSERT INTO `customer` VALUES (304, 'Alison', 'Wilson', 'alison.wilson@aitech.asia');
INSERT INTO `customer` VALUES (305, 'Jake', 'Parr', 'jake.parr@aitech.asia');
INSERT INTO `customer` VALUES (306, 'Frank', 'Bell', 'frank.bell@aitech.asia');
INSERT INTO `customer` VALUES (307, 'Emily', 'Buckland', 'emily.buckland@aitech.asia');
INSERT INTO `customer` VALUES (308, 'Rachel', 'Wilson', 'rachel.wilson@aitech.asia');
INSERT INTO `customer` VALUES (309, 'Jan', 'McDonald', 'jan.mcdonald@aitech.asia');
INSERT INTO `customer` VALUES (310, 'Mary', 'Nash', 'mary.nash@aitech.asia');
INSERT INTO `customer` VALUES (311, 'Una', 'Robertson', 'una.robertson@aitech.asia');
INSERT INTO `customer` VALUES (312, 'Ella', 'Vance', 'ella.vance@aitech.asia');
INSERT INTO `customer` VALUES (313, 'Michelle', 'Arnold', 'michelle.arnold@aitech.asia');
INSERT INTO `customer` VALUES (314, 'Sophie', 'Bailey', 'sophie.bailey@aitech.asia');
INSERT INTO `customer` VALUES (315, 'Leah', 'Cornish', 'leah.cornish@aitech.asia');
INSERT INTO `customer` VALUES (316, 'Simon', 'Peake', 'simon.peake@aitech.asia');
INSERT INTO `customer` VALUES (317, 'Mary', 'Clark', 'mary.clark@aitech.asia');
INSERT INTO `customer` VALUES (318, 'Jan', 'Nolan', 'jan.nolan@aitech.asia');
INSERT INTO `customer` VALUES (319, 'Pippa', 'Duncan', 'pippa.duncan@aitech.asia');
INSERT INTO `customer` VALUES (320, 'Isaac', 'Paige', 'isaac.paige@aitech.asia');
INSERT INTO `customer` VALUES (321, 'Lauren', 'Roberts', 'lauren.roberts@aitech.asia');
INSERT INTO `customer` VALUES (322, 'Nathan', 'Russell', 'nathan.russell@aitech.asia');
INSERT INTO `customer` VALUES (323, 'Benjamin', 'Quinn', 'benjamin.quinn@aitech.asia');
INSERT INTO `customer` VALUES (324, 'Charles', 'Hodges', 'charles.hodges@aitech.asia');
INSERT INTO `customer` VALUES (325, 'Tracey', 'Morgan', 'tracey.morgan@aitech.asia');
INSERT INTO `customer` VALUES (326, 'Rebecca', 'Fraser', 'rebecca.fraser@aitech.asia');
INSERT INTO `customer` VALUES (327, 'Michael', 'Robertson', 'michael.robertson@aitech.asia');
INSERT INTO `customer` VALUES (328, 'Adam', 'MacDonald', 'adam.macdonald@aitech.asia');
INSERT INTO `customer` VALUES (329, 'Cameron', 'Powell', 'cameron.powell@aitech.asia');
INSERT INTO `customer` VALUES (330, 'Rose', 'Simpson', 'rose.simpson@aitech.asia');
INSERT INTO `customer` VALUES (331, 'Diana', 'Clark', 'diana.clark@aitech.asia');
INSERT INTO `customer` VALUES (332, 'Jason', 'Dickens', 'jason.dickens@aitech.asia');
INSERT INTO `customer` VALUES (333, 'Sally', 'Davies', 'sally.davies@aitech.asia');
INSERT INTO `customer` VALUES (334, 'Christopher', 'Churchill', 'christopher.churchill@aitech.asia');
INSERT INTO `customer` VALUES (335, 'Sam', 'Ferguson', 'sam.ferguson@aitech.asia');
INSERT INTO `customer` VALUES (336, 'Jasmine', 'Lee', 'jasmine.lee@aitech.asia');
INSERT INTO `customer` VALUES (337, 'Joshua', 'Arnold', 'joshua.arnold@aitech.asia');
INSERT INTO `customer` VALUES (338, 'Matt', 'Simpson', 'matt.simpson@aitech.asia');
INSERT INTO `customer` VALUES (339, 'Owen', 'Arnold', 'owen.arnold@aitech.asia');
INSERT INTO `customer` VALUES (340, 'William', 'White', 'william.white@aitech.asia');
INSERT INTO `customer` VALUES (341, 'Paul', 'Gray', 'paul.gray@aitech.asia');
INSERT INTO `customer` VALUES (342, 'Lucas', 'Slater', 'lucas.slater@aitech.asia');
INSERT INTO `customer` VALUES (343, 'Jessica', 'Howard', 'jessica.howard@aitech.asia');
INSERT INTO `customer` VALUES (344, 'Dylan', 'Vance', 'dylan.vance@aitech.asia');
INSERT INTO `customer` VALUES (345, 'Elizabeth', 'North', 'elizabeth.north@aitech.asia');
INSERT INTO `customer` VALUES (346, 'Stephanie', 'Brown', 'stephanie.brown@aitech.asia');
INSERT INTO `customer` VALUES (347, 'Connor', 'Nash', 'connor.nash@aitech.asia');
INSERT INTO `customer` VALUES (348, 'William', 'Johnston', 'william.johnston@aitech.asia');
INSERT INTO `customer` VALUES (349, 'Heather', 'Stewart', 'heather.stewart@aitech.asia');
INSERT INTO `customer` VALUES (350, 'Melanie', 'Graham', 'melanie.graham@aitech.asia');
INSERT INTO `customer` VALUES (351, 'Joe', 'Hill', 'joe.hill@aitech.asia');
INSERT INTO `customer` VALUES (352, 'Rebecca', 'Thomson', 'rebecca.thomson@aitech.asia');
INSERT INTO `customer` VALUES (353, 'Alexandra', 'Terry', 'alexandra.terry@aitech.asia');
INSERT INTO `customer` VALUES (354, 'Lily', 'Berry', 'lily.berry@aitech.asia');
INSERT INTO `customer` VALUES (355, 'Peter', 'King', 'peter.king@aitech.asia');
INSERT INTO `customer` VALUES (356, 'Boris', 'Short', 'boris.short@aitech.asia');
INSERT INTO `customer` VALUES (357, 'Carolyn', 'Underwood', 'carolyn.underwood@aitech.asia');
INSERT INTO `customer` VALUES (358, 'Ian', 'Hamilton', 'ian.hamilton@aitech.asia');
INSERT INTO `customer` VALUES (359, 'Steven', 'Hill', 'steven.hill@aitech.asia');
INSERT INTO `customer` VALUES (360, 'Gabrielle', 'Randall', 'gabrielle.randall@aitech.asia');
INSERT INTO `customer` VALUES (361, 'Sonia', 'Stewart', 'sonia.stewart@aitech.asia');
INSERT INTO `customer` VALUES (362, 'Blake', 'Short', 'blake.short@aitech.asia');
INSERT INTO `customer` VALUES (363, 'Donna', 'Paterson', 'donna.paterson@aitech.asia');
INSERT INTO `customer` VALUES (364, 'Adam', 'Lewis', 'adam.lewis@aitech.asia');
INSERT INTO `customer` VALUES (365, 'Piers', 'Bailey', 'piers.bailey@aitech.asia');
INSERT INTO `customer` VALUES (366, 'Lisa', 'Campbell', 'lisa.campbell@aitech.asia');
INSERT INTO `customer` VALUES (367, 'Irene', 'Wilkins', 'irene.wilkins@aitech.asia');
INSERT INTO `customer` VALUES (368, 'Deirdre', 'Morrison', 'deirdre.morrison@aitech.asia');
INSERT INTO `customer` VALUES (369, 'Steven', 'Bailey', 'steven.bailey@aitech.asia');
INSERT INTO `customer` VALUES (370, 'Chloe', 'Morgan', 'chloe.morgan@aitech.asia');
INSERT INTO `customer` VALUES (371, 'Alexandra', 'Quinn', 'alexandra.quinn@aitech.asia');
INSERT INTO `customer` VALUES (372, 'Nicola', 'Dowd', 'nicola.dowd@aitech.asia');
INSERT INTO `customer` VALUES (373, 'Melanie', 'Wallace', 'melanie.wallace@aitech.asia');
INSERT INTO `customer` VALUES (374, 'Joseph', 'Smith', 'joseph.smith@aitech.asia');
INSERT INTO `customer` VALUES (375, 'Sonia', 'Roberts', 'sonia.roberts@aitech.asia');
INSERT INTO `customer` VALUES (376, 'Nicholas', 'Smith', 'nicholas.smith@aitech.asia');
INSERT INTO `customer` VALUES (377, 'Sophie', 'Peake', 'sophie.peake@aitech.asia');
INSERT INTO `customer` VALUES (378, 'Rebecca', 'Gibson', 'rebecca.gibson@aitech.asia');
INSERT INTO `customer` VALUES (379, 'Diana', 'Peake', 'diana.peake@aitech.asia');
INSERT INTO `customer` VALUES (380, 'Dylan', 'Sharp', 'dylan.sharp@aitech.asia');
INSERT INTO `customer` VALUES (381, 'Julian', 'Springer', 'julian.springer@aitech.asia');
INSERT INTO `customer` VALUES (382, 'Audrey', 'Wilkins', 'audrey.wilkins@aitech.asia');
INSERT INTO `customer` VALUES (383, 'Matt', 'Reid', 'matt.reid@aitech.asia');
INSERT INTO `customer` VALUES (384, 'Stewart', 'Morrison', 'stewart.morrison@aitech.asia');
INSERT INTO `customer` VALUES (385, 'Gordon', 'King', 'gordon.king@aitech.asia');
INSERT INTO `customer` VALUES (386, 'Emma', 'Short', 'emma.short@aitech.asia');
INSERT INTO `customer` VALUES (387, 'Joshua', 'Taylor', 'joshua.taylor@aitech.asia');
INSERT INTO `customer` VALUES (388, 'Claire', 'Ogden', 'claire.ogden@aitech.asia');
INSERT INTO `customer` VALUES (389, 'Una', 'Chapman', 'una.chapman@aitech.asia');
INSERT INTO `customer` VALUES (390, 'Olivia', 'Taylor', 'olivia.taylor@aitech.asia');
INSERT INTO `customer` VALUES (391, 'Jacob', 'Underwood', 'jacob.underwood@aitech.asia');
INSERT INTO `customer` VALUES (392, 'Andrea', 'Grant', 'andrea.grant@aitech.asia');
INSERT INTO `customer` VALUES (393, 'Lily', 'Powell', 'lily.powell@aitech.asia');
INSERT INTO `customer` VALUES (394, 'Ian', 'Vaughan', 'ian.vaughan@aitech.asia');
INSERT INTO `customer` VALUES (395, 'Gordon', 'Gibson', 'gordon.gibson@aitech.asia');
INSERT INTO `customer` VALUES (396, 'Stewart', 'Berry', 'stewart.berry@aitech.asia');
INSERT INTO `customer` VALUES (397, 'Joshua', 'Piper', 'joshua.piper@aitech.asia');
INSERT INTO `customer` VALUES (398, 'Jonathan', 'Hodges', 'jonathan.hodges@aitech.asia');
INSERT INTO `customer` VALUES (399, 'Jan', 'North', 'jan.north@aitech.asia');
INSERT INTO `customer` VALUES (400, 'Carolyn', 'Brown', 'carolyn.brown@aitech.asia');
INSERT INTO `customer` VALUES (401, 'Phil', 'Gray', 'phil.gray@aitech.asia');
INSERT INTO `customer` VALUES (402, 'Blake', 'Hemmings', 'blake.hemmings@aitech.asia');
INSERT INTO `customer` VALUES (403, 'Madeleine', 'Bower', 'madeleine.bower@aitech.asia');
INSERT INTO `customer` VALUES (404, 'Dominic', 'Vaughan', 'dominic.vaughan@aitech.asia');
INSERT INTO `customer` VALUES (405, 'Theresa', 'May', 'theresa.may@aitech.asia');
INSERT INTO `customer` VALUES (406, 'Tim', 'Bower', 'tim.bower@aitech.asia');
INSERT INTO `customer` VALUES (407, 'Alexandra', 'Hardacre', 'alexandra.hardacre@aitech.asia');
INSERT INTO `customer` VALUES (408, 'Jacob', 'Kerr', 'jacob.kerr@aitech.asia');
INSERT INTO `customer` VALUES (409, 'Liam', 'Roberts', 'liam.roberts@aitech.asia');
INSERT INTO `customer` VALUES (410, 'Molly', 'Marshall', 'molly.marshall@aitech.asia');
INSERT INTO `customer` VALUES (411, 'Anthony', 'Fisher', 'anthony.fisher@aitech.asia');
INSERT INTO `customer` VALUES (412, 'Brian', 'Cameron', 'brian.cameron@aitech.asia');
INSERT INTO `customer` VALUES (413, 'Richard', 'Ellison', 'richard.ellison@aitech.asia');
INSERT INTO `customer` VALUES (414, 'Gavin', 'Campbell', 'gavin.campbell@aitech.asia');
INSERT INTO `customer` VALUES (415, 'Diana', 'Ross', 'diana.ross@aitech.asia');
INSERT INTO `customer` VALUES (416, 'Michael', 'Martin', 'michael.martin@aitech.asia');
INSERT INTO `customer` VALUES (417, 'Robert', 'Bell', 'robert.bell@aitech.asia');
INSERT INTO `customer` VALUES (418, 'Thomas', 'Bailey', 'thomas.bailey@aitech.asia');
INSERT INTO `customer` VALUES (419, 'Sophie', 'Stewart', 'sophie.stewart@aitech.asia');
INSERT INTO `customer` VALUES (420, 'Sally', 'Bell', 'sally.bell@aitech.asia');
INSERT INTO `customer` VALUES (421, 'Samantha', 'James', 'samantha.james@aitech.asia');
INSERT INTO `customer` VALUES (422, 'Grace', 'Jones', 'grace.jones@aitech.asia');
INSERT INTO `customer` VALUES (423, 'Connor', 'Rutherford', 'connor.rutherford@aitech.asia');
INSERT INTO `customer` VALUES (424, 'Zoe', 'Stewart', 'zoe.stewart@aitech.asia');
INSERT INTO `customer` VALUES (425, 'Mary', 'Underwood', 'mary.underwood@aitech.asia');
INSERT INTO `customer` VALUES (426, 'Nicholas', 'Bond', 'nicholas.bond@aitech.asia');
INSERT INTO `customer` VALUES (427, 'Alan', 'Randall', 'alan.randall@aitech.asia');
INSERT INTO `customer` VALUES (428, 'Joshua', 'Churchill', 'joshua.churchill@aitech.asia');
INSERT INTO `customer` VALUES (429, 'Olivia', 'Greene', 'olivia.greene@aitech.asia');
INSERT INTO `customer` VALUES (430, 'Joan', 'Hamilton', 'joan.hamilton@aitech.asia');
INSERT INTO `customer` VALUES (431, 'Sam', 'Mitchell', 'sam.mitchell@aitech.asia');
INSERT INTO `customer` VALUES (432, 'Christian', 'Ogden', 'christian.ogden@aitech.asia');
INSERT INTO `customer` VALUES (433, 'Gordon', 'James', 'gordon.james@aitech.asia');
INSERT INTO `customer` VALUES (434, 'Jasmine', 'Arnold', 'jasmine.arnold@aitech.asia');
INSERT INTO `customer` VALUES (435, 'Amanda', 'Walker', 'amanda.walker@aitech.asia');
INSERT INTO `customer` VALUES (436, 'Adam', 'Harris', 'adam.harris@aitech.asia');
INSERT INTO `customer` VALUES (437, 'Bella', 'Ferguson', 'bella.ferguson@aitech.asia');
INSERT INTO `customer` VALUES (438, 'Jason', 'Ball', 'jason.ball@aitech.asia');
INSERT INTO `customer` VALUES (439, 'Victor', 'Howard', 'victor.howard@aitech.asia');
INSERT INTO `customer` VALUES (440, 'David', 'Jackson', 'david.jackson@aitech.asia');
INSERT INTO `customer` VALUES (441, 'Paul', 'Lawrence', 'paul.lawrence@aitech.asia');
INSERT INTO `customer` VALUES (442, 'Molly', 'Skinner', 'molly.skinner@aitech.asia');
INSERT INTO `customer` VALUES (443, 'Christian', 'Cameron', 'christian.cameron@aitech.asia');
INSERT INTO `customer` VALUES (444, 'Sue', 'May', 'sue.may@aitech.asia');
INSERT INTO `customer` VALUES (445, 'Stephen', 'Bond', 'stephen.bond@aitech.asia');
INSERT INTO `customer` VALUES (446, 'Wendy', 'Ferguson', 'wendy.ferguson@aitech.asia');
INSERT INTO `customer` VALUES (447, 'Claire', 'Rees', 'claire.rees@aitech.asia');
INSERT INTO `customer` VALUES (448, 'Theresa', 'Ince', 'theresa.ince@aitech.asia');
INSERT INTO `customer` VALUES (449, 'Kevin', 'Hamilton', 'kevin.hamilton@aitech.asia');
INSERT INTO `customer` VALUES (450, 'Julian', 'Parr', 'julian.parr@aitech.asia');
INSERT INTO `customer` VALUES (451, 'Colin', 'Fraser', 'colin.fraser@aitech.asia');
INSERT INTO `customer` VALUES (452, 'Donna', 'Gibson', 'donna.gibson@aitech.asia');
INSERT INTO `customer` VALUES (453, 'Lily', 'Rutherford', 'lily.rutherford@aitech.asia');
INSERT INTO `customer` VALUES (454, 'Victoria', 'James', 'victoria.james@aitech.asia');
INSERT INTO `customer` VALUES (455, 'Edward', 'Hemmings', 'edward.hemmings@aitech.asia');
INSERT INTO `customer` VALUES (456, 'Trevor', 'Clark', 'trevor.clark@aitech.asia');
INSERT INTO `customer` VALUES (457, 'Carolyn', 'Anderson', 'carolyn.anderson@aitech.asia');
INSERT INTO `customer` VALUES (458, 'Cameron', 'Glover', 'cameron.glover@aitech.asia');
INSERT INTO `customer` VALUES (459, 'Olivia', 'Wilson', 'olivia.wilson@aitech.asia');
INSERT INTO `customer` VALUES (460, 'Claire', 'Wilkins', 'claire.wilkins@aitech.asia');
INSERT INTO `customer` VALUES (461, 'Boris', 'Walker', 'boris.walker@aitech.asia');
INSERT INTO `customer` VALUES (462, 'Bella', 'Langdon', 'bella.langdon@aitech.asia');
INSERT INTO `customer` VALUES (463, 'Lisa', 'Darby', 'lisa.darby@aitech.asia');
INSERT INTO `customer` VALUES (464, 'Angela', 'Abraham', 'angela.abraham@aitech.asia');
INSERT INTO `customer` VALUES (465, 'Sue', 'White', 'sue.white@aitech.asia');
INSERT INTO `customer` VALUES (466, 'Faith', 'Morgan', 'faith.morgan@aitech.asia');
INSERT INTO `customer` VALUES (467, 'Oliver', 'Brown', 'oliver.brown@aitech.asia');
INSERT INTO `customer` VALUES (468, 'Dan', 'Ogden', 'dan.ogden@aitech.asia');
INSERT INTO `customer` VALUES (469, 'Ava', 'Buckland', 'ava.buckland@aitech.asia');
INSERT INTO `customer` VALUES (470, 'Natalie', 'Davidson', 'natalie.davidson@aitech.asia');
INSERT INTO `customer` VALUES (471, 'Luke', 'Forsyth', 'luke.forsyth@aitech.asia');
INSERT INTO `customer` VALUES (472, 'Anthony', 'Langdon', 'anthony.langdon@aitech.asia');
INSERT INTO `customer` VALUES (473, 'John', 'Hudson', 'john.hudson@aitech.asia');
INSERT INTO `customer` VALUES (474, 'Sue', 'Coleman', 'sue.coleman@aitech.asia');
INSERT INTO `customer` VALUES (475, 'Austin', 'Clarkson', 'austin.clarkson@aitech.asia');
INSERT INTO `customer` VALUES (476, 'Sam', 'Hamilton', 'sam.hamilton@aitech.asia');
INSERT INTO `customer` VALUES (477, 'Karen', 'MacDonald', 'karen.macdonald@aitech.asia');
INSERT INTO `customer` VALUES (478, 'Keith', 'Ross', 'keith.ross@aitech.asia');
INSERT INTO `customer` VALUES (479, 'Joshua', 'Bailey', 'joshua.bailey@aitech.asia');
INSERT INTO `customer` VALUES (480, 'Isaac', 'Turner', 'isaac.turner@aitech.asia');
INSERT INTO `customer` VALUES (481, 'Tracey', 'Sanderson', 'tracey.sanderson@aitech.asia');
INSERT INTO `customer` VALUES (482, 'Colin', 'Payne', 'colin.payne@aitech.asia');
INSERT INTO `customer` VALUES (483, 'Austin', 'Underwood', 'austin.underwood@aitech.asia');
INSERT INTO `customer` VALUES (484, 'Tracey', 'MacDonald', 'tracey.macdonald@aitech.asia');
INSERT INTO `customer` VALUES (485, 'Victor', 'Jackson', 'victor.jackson@aitech.asia');
INSERT INTO `customer` VALUES (486, 'William', 'Hamilton', 'william.hamilton@aitech.asia');
INSERT INTO `customer` VALUES (487, 'Kevin', 'Turner', 'kevin.turner@aitech.asia');
INSERT INTO `customer` VALUES (488, 'Sally', 'Underwood', 'sally.underwood@aitech.asia');
INSERT INTO `customer` VALUES (489, 'Jennifer', 'Nash', 'jennifer.nash@aitech.asia');
INSERT INTO `customer` VALUES (490, 'Sophie', 'Lyman', 'sophie.lyman@aitech.asia');
INSERT INTO `customer` VALUES (491, 'Vanessa', 'Ross', 'vanessa.ross@aitech.asia');
INSERT INTO `customer` VALUES (492, 'Ella', 'Quinn', 'ella.quinn@aitech.asia');
INSERT INTO `customer` VALUES (493, 'Jacob', 'Parr', 'jacob.parr@aitech.asia');
INSERT INTO `customer` VALUES (494, 'Anthony', 'Fraser', 'anthony.fraser@aitech.asia');
INSERT INTO `customer` VALUES (495, 'Nicola', 'Quinn', 'nicola.quinn@aitech.asia');
INSERT INTO `customer` VALUES (496, 'Natalie', 'Slater', 'natalie.slater@aitech.asia');
INSERT INTO `customer` VALUES (497, 'Julian', 'Mathis', 'julian.mathis@aitech.asia');
INSERT INTO `customer` VALUES (498, 'Sonia', 'Ball', 'sonia.ball@aitech.asia');
INSERT INTO `customer` VALUES (499, 'Ava', 'Kelly', 'ava.kelly@aitech.asia');
INSERT INTO `customer` VALUES (500, 'Gabrielle', 'Brown', 'gabrielle.brown@aitech.asia');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_name` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 502 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, 'John', 'Doe', 'john.doe@aitech.asia');
INSERT INTO `employee` VALUES (2, 'Amanda', 'Gibson', 'amanda.gibson@aitech.asia');
INSERT INTO `employee` VALUES (3, 'Jasmine', 'Manning', 'jasmine.manning@aitech.asia');
INSERT INTO `employee` VALUES (4, 'John', 'Metcalfe', 'john.metcalfe@aitech.asia');
INSERT INTO `employee` VALUES (5, 'Lisa', 'Smith', 'lisa.smith@aitech.asia');
INSERT INTO `employee` VALUES (6, 'Grace', 'Short', 'grace.short@aitech.asia');
INSERT INTO `employee` VALUES (7, 'Matt', 'Newman', 'matt.newman@aitech.asia');
INSERT INTO `employee` VALUES (8, 'Diane', 'Bell', 'diane.bell@aitech.asia');
INSERT INTO `employee` VALUES (9, 'Colin', 'McGrath', 'colin.mcgrath@aitech.asia');
INSERT INTO `employee` VALUES (10, 'Rachel', 'Lyman', 'rachel.lyman@aitech.asia');
INSERT INTO `employee` VALUES (11, 'Donna', 'Metcalfe', 'donna.metcalfe@aitech.asia');
INSERT INTO `employee` VALUES (12, 'Christian', 'Scott', 'christian.scott@aitech.asia');
INSERT INTO `employee` VALUES (13, 'Grace', 'Blake', 'grace.blake@aitech.asia');
INSERT INTO `employee` VALUES (14, 'Abigail', 'Clark', 'abigail.clark@aitech.asia');
INSERT INTO `employee` VALUES (15, 'Austin', 'Lewis', 'austin.lewis@aitech.asia');
INSERT INTO `employee` VALUES (16, 'Amy', 'McGrath', 'amy.mcgrath@aitech.asia');
INSERT INTO `employee` VALUES (17, 'Ian', 'Short', 'ian.short@aitech.asia');
INSERT INTO `employee` VALUES (18, 'Anna', 'Wilson', 'anna.wilson@aitech.asia');
INSERT INTO `employee` VALUES (19, 'Caroline', 'Blake', 'caroline.blake@aitech.asia');
INSERT INTO `employee` VALUES (20, 'Jasmine', 'Butler', 'jasmine.butler@aitech.asia');
INSERT INTO `employee` VALUES (21, 'Jane', 'Wilson', 'jane.wilson@aitech.asia');
INSERT INTO `employee` VALUES (22, 'Felicity', 'Wilson', 'felicity.wilson@aitech.asia');
INSERT INTO `employee` VALUES (23, 'Cameron', 'Davies', 'cameron.davies@aitech.asia');
INSERT INTO `employee` VALUES (24, 'Austin', 'Manning', 'austin.manning@aitech.asia');
INSERT INTO `employee` VALUES (25, 'Justin', 'Brown', 'justin.brown@aitech.asia');
INSERT INTO `employee` VALUES (26, 'Stephanie', 'Walsh', 'stephanie.walsh@aitech.asia');
INSERT INTO `employee` VALUES (27, 'Simon', 'Newman', 'simon.newman@aitech.asia');
INSERT INTO `employee` VALUES (28, 'Heather', 'Murray', 'heather.murray@aitech.asia');
INSERT INTO `employee` VALUES (29, 'Stewart', 'Anderson', 'stewart.anderson@aitech.asia');
INSERT INTO `employee` VALUES (30, 'Christian', 'MacDonald', 'christian.macdonald@aitech.asia');
INSERT INTO `employee` VALUES (31, 'Carolyn', 'Clark', 'carolyn.clark@aitech.asia');
INSERT INTO `employee` VALUES (32, 'Gavin', 'Powell', 'gavin.powell@aitech.asia');
INSERT INTO `employee` VALUES (33, 'Christian', 'Black', 'christian.black@aitech.asia');
INSERT INTO `employee` VALUES (34, 'Donna', 'MacDonald', 'donna.macdonald@aitech.asia');
INSERT INTO `employee` VALUES (35, 'Carl', 'Scott', 'carl.scott@aitech.asia');
INSERT INTO `employee` VALUES (36, 'Jacob', 'Parsons', 'jacob.parsons@aitech.asia');
INSERT INTO `employee` VALUES (37, 'Jason', 'Lee', 'jason.lee@aitech.asia');
INSERT INTO `employee` VALUES (38, 'John', 'Mitchell', 'john.mitchell@aitech.asia');
INSERT INTO `employee` VALUES (39, 'Hannah', 'Langdon', 'hannah.langdon@aitech.asia');
INSERT INTO `employee` VALUES (40, 'Victoria', 'Abraham', 'victoria.abraham4@aitech.asia');
INSERT INTO `employee` VALUES (41, 'Alison', 'Alsop', 'alison.alsop@aitech.asia');
INSERT INTO `employee` VALUES (42, 'Elizabeth', 'Chapman', 'elizabeth.chapman@aitech.asia');
INSERT INTO `employee` VALUES (43, 'Kimberly', 'Murray', 'kimberly.murray@aitech.asia');
INSERT INTO `employee` VALUES (44, 'Leonard', 'King', 'leonard.king@aitech.asia');
INSERT INTO `employee` VALUES (45, 'Rachel', 'White', 'rachel.white@aitech.asia');
INSERT INTO `employee` VALUES (46, 'Melanie', 'Gibson', 'melanie.gibson@aitech.asia');
INSERT INTO `employee` VALUES (47, 'Evan', 'Jones', 'evan.jones@aitech.asia');
INSERT INTO `employee` VALUES (48, 'Ella', 'Paterson', 'ella.paterson@aitech.asia');
INSERT INTO `employee` VALUES (49, 'Joshua', 'Forsyth', 'joshua.forsyth@aitech.asia');
INSERT INTO `employee` VALUES (50, 'Dan', 'Fraser', 'dan.fraser@aitech.asia');
INSERT INTO `employee` VALUES (51, 'Justin', 'Anderson', 'justin.anderson@aitech.asia');
INSERT INTO `employee` VALUES (52, 'Carol', 'Harris', 'carol.harris@aitech.asia');
INSERT INTO `employee` VALUES (53, 'Yvonne', 'Vance', 'yvonne.vance@aitech.asia');
INSERT INTO `employee` VALUES (54, 'Eric', 'Coleman', 'eric.coleman@aitech.asia');
INSERT INTO `employee` VALUES (55, 'Julia', 'Bailey', 'julia.bailey@aitech.asia');
INSERT INTO `employee` VALUES (56, 'Stephanie', 'Carr', 'stephanie.carr@aitech.asia');
INSERT INTO `employee` VALUES (57, 'Jennifer', 'Piper', 'jennifer.piper@aitech.asia');
INSERT INTO `employee` VALUES (58, 'Faith', 'Ogden', 'faith.ogden@aitech.asia');
INSERT INTO `employee` VALUES (59, 'Joan', 'Kerr', 'joan.kerr@aitech.asia');
INSERT INTO `employee` VALUES (60, 'Boris', 'Mackenzie', 'boris.mackenzie@aitech.asia');
INSERT INTO `employee` VALUES (61, 'Emma', 'Buckland', 'emma.buckland@aitech.asia');
INSERT INTO `employee` VALUES (62, 'Kylie', 'Bower', 'kylie.bower@aitech.asia');
INSERT INTO `employee` VALUES (63, 'Piers', 'MacLeod', 'piers.macleod@aitech.asia');
INSERT INTO `employee` VALUES (64, 'Julian', 'Edmunds', 'julian.edmunds@aitech.asia');
INSERT INTO `employee` VALUES (65, 'Felicity', 'Hughes', 'felicity.hughes@aitech.asia');
INSERT INTO `employee` VALUES (66, 'Adam', 'Wilkins', 'adam.wilkins@aitech.asia');
INSERT INTO `employee` VALUES (67, 'Natalie', 'Ferguson', 'natalie.ferguson@aitech.asia');
INSERT INTO `employee` VALUES (68, 'Mary', 'Kelly', 'mary.kelly@aitech.asia');
INSERT INTO `employee` VALUES (69, 'Joanne', 'Cameron', 'joanne.cameron@aitech.asia');
INSERT INTO `employee` VALUES (70, 'Leonard', 'Lambert', 'leonard.lambert@aitech.asia');
INSERT INTO `employee` VALUES (71, 'Tim', 'Robertson', 'tim.robertson@aitech.asia');
INSERT INTO `employee` VALUES (72, 'Carol', 'Slater', 'carol.slater@aitech.asia');
INSERT INTO `employee` VALUES (73, 'Virginia', 'Simpson', 'virginia.simpson@aitech.asia');
INSERT INTO `employee` VALUES (74, 'Lillian', 'Gill', 'lillian.gill@aitech.asia');
INSERT INTO `employee` VALUES (75, 'Deirdre', 'Fraser', 'deirdre.fraser@aitech.asia');
INSERT INTO `employee` VALUES (76, 'Liam', 'Glover', 'liam.glover@aitech.asia');
INSERT INTO `employee` VALUES (77, 'Diane', 'Thomson', 'diane.thomson@aitech.asia');
INSERT INTO `employee` VALUES (78, 'Connor', 'Simpson', 'connor.simpson@aitech.asia');
INSERT INTO `employee` VALUES (79, 'Ava', 'Vaughan', 'ava.vaughan@aitech.asia');
INSERT INTO `employee` VALUES (80, 'Alison', 'Hughes', 'alison.hughes@aitech.asia');
INSERT INTO `employee` VALUES (81, 'Sam', 'Poole', 'sam.poole@aitech.asia');
INSERT INTO `employee` VALUES (82, 'Oliver', 'Martin', 'oliver.martin@aitech.asia');
INSERT INTO `employee` VALUES (83, 'Colin', 'Glover', 'colin.glover@aitech.asia');
INSERT INTO `employee` VALUES (84, 'Anna', 'McDonald', 'anna.mcdonald@aitech.asia');
INSERT INTO `employee` VALUES (85, 'Richard', 'Coleman', 'richard.coleman@aitech.asia');
INSERT INTO `employee` VALUES (86, 'Faith', 'Kerr', 'faith.kerr@aitech.asia');
INSERT INTO `employee` VALUES (87, 'Ian', 'Robertson', 'ian.robertson@aitech.asia');
INSERT INTO `employee` VALUES (88, 'Grace', 'Fraser', 'grace.fraser@aitech.asia');
INSERT INTO `employee` VALUES (89, 'Sarah', 'Forsyth', 'sarah.forsyth@aitech.asia');
INSERT INTO `employee` VALUES (90, 'Sue', 'Bond', 'sue.bond@aitech.asia');
INSERT INTO `employee` VALUES (91, 'Joanne', 'Manning', 'joanne.manning@aitech.asia');
INSERT INTO `employee` VALUES (92, 'Stephen', 'Lewis', 'stephen.lewis@aitech.asia');
INSERT INTO `employee` VALUES (93, 'Jasmine', 'Avery', 'jasmine.avery@aitech.asia');
INSERT INTO `employee` VALUES (94, 'Felicity', 'Murray', 'felicity.murray@aitech.asia');
INSERT INTO `employee` VALUES (95, 'Caroline', 'Hodges', 'caroline.hodges@aitech.asia');
INSERT INTO `employee` VALUES (96, 'Steven', 'Jones', 'steven.jones@aitech.asia');
INSERT INTO `employee` VALUES (97, 'Julia', 'Roberts', 'julia.roberts@aitech.asia');
INSERT INTO `employee` VALUES (98, 'Sophie', 'Churchill', 'sophie.churchill@aitech.asia');
INSERT INTO `employee` VALUES (99, 'Zoe', 'Cornish', 'zoe.cornish@aitech.asia');
INSERT INTO `employee` VALUES (100, 'Zoe', 'McDonald', 'zoe.mcdonald@aitech.asia');
INSERT INTO `employee` VALUES (101, 'Vanessa', 'Hughes', 'vanessa.hughes@aitech.asia');
INSERT INTO `employee` VALUES (102, 'Richard', 'Hodges', 'richard.hodges@aitech.asia');
INSERT INTO `employee` VALUES (103, 'Ruth', 'Jackson', 'ruth.jackson@aitech.asia');
INSERT INTO `employee` VALUES (104, 'Elizabeth', 'Scott', 'elizabeth.scott@aitech.asia');
INSERT INTO `employee` VALUES (105, 'Neil', 'Cameron', 'neil.cameron@aitech.asia');
INSERT INTO `employee` VALUES (106, 'Dorothy', 'Howard', 'dorothy.howard@aitech.asia');
INSERT INTO `employee` VALUES (107, 'Ella', 'Taylor', 'ella.taylor@aitech.asia');
INSERT INTO `employee` VALUES (108, 'Austin', 'Berry', 'austin.berry@aitech.asia');
INSERT INTO `employee` VALUES (109, 'Andrew', 'Lawrence', 'andrew.lawrence@aitech.asia');
INSERT INTO `employee` VALUES (110, 'Piers', 'Sharp', 'piers.sharp@aitech.asia');
INSERT INTO `employee` VALUES (111, 'Wendy', 'Short', 'wendy.short@aitech.asia');
INSERT INTO `employee` VALUES (112, 'Liam', 'Terry', 'liam.terry@aitech.asia');
INSERT INTO `employee` VALUES (113, 'Alan', 'Grant', 'alan.grant@aitech.asia');
INSERT INTO `employee` VALUES (114, 'Anna', 'Fisher', 'anna.fisher@aitech.asia');
INSERT INTO `employee` VALUES (115, 'Brandon', 'Duncan', 'brandon.duncan@aitech.asia');
INSERT INTO `employee` VALUES (116, 'Amy', 'Manning', 'amy.manning@aitech.asia');
INSERT INTO `employee` VALUES (117, 'Bella', 'Hemmings', 'bella.hemmings@aitech.asia');
INSERT INTO `employee` VALUES (118, 'John', 'Quinn', 'john.quinn@aitech.asia');
INSERT INTO `employee` VALUES (119, 'Eric', 'Forsyth', 'eric.forsyth@aitech.asia');
INSERT INTO `employee` VALUES (120, 'Victoria', 'Cameron', 'victoria.cameron@aitech.asia');
INSERT INTO `employee` VALUES (121, 'Hannah', 'Short', 'hannah.short@aitech.asia');
INSERT INTO `employee` VALUES (122, 'Blake', 'Peters', 'blake.peters@aitech.asia');
INSERT INTO `employee` VALUES (123, 'Stephanie', 'Ellison', 'stephanie.ellison@aitech.asia');
INSERT INTO `employee` VALUES (124, 'Kimberly', 'Ellison', 'kimberly.ellison@aitech.asia');
INSERT INTO `employee` VALUES (125, 'Joanne', 'Jackson', 'joanne.jackson@aitech.asia');
INSERT INTO `employee` VALUES (126, 'Michael', 'Ball', 'michael.ball@aitech.asia');
INSERT INTO `employee` VALUES (127, 'Ryan', 'Martin', 'ryan.martin@aitech.asia');
INSERT INTO `employee` VALUES (128, 'Rose', 'Marshall', 'rose.marshall@aitech.asia');
INSERT INTO `employee` VALUES (129, 'Isaac', 'Hardacre', 'isaac.hardacre@aitech.asia');
INSERT INTO `employee` VALUES (130, 'Isaac', 'MacLeod', 'isaac.macleod@aitech.asia');
INSERT INTO `employee` VALUES (131, 'Adrian', 'Walsh', 'adrian.walsh@aitech.asia');
INSERT INTO `employee` VALUES (132, 'Ella', 'Ross', 'ella.ross@aitech.asia');
INSERT INTO `employee` VALUES (133, 'Wendy', 'Stewart', 'wendy.stewart@aitech.asia');
INSERT INTO `employee` VALUES (134, 'Caroline', 'Gray', 'caroline.gray@aitech.asia');
INSERT INTO `employee` VALUES (135, 'Isaac', 'Davies', 'isaac.davies@aitech.asia');
INSERT INTO `employee` VALUES (136, 'Maria', 'Butler', 'maria.butler@aitech.asia');
INSERT INTO `employee` VALUES (137, 'Zoe', 'Young', 'zoe.young@aitech.asia');
INSERT INTO `employee` VALUES (138, 'Tim', 'Thomson', 'tim.thomson@aitech.asia');
INSERT INTO `employee` VALUES (139, 'Nicholas', 'Ross', 'nicholas.ross@aitech.asia');
INSERT INTO `employee` VALUES (140, 'Sophie', 'Lewis', 'sophie.lewis@aitech.asia');
INSERT INTO `employee` VALUES (141, 'Irene', 'Gill', 'irene.gill@aitech.asia');
INSERT INTO `employee` VALUES (142, 'Irene', 'Davidson', 'irene.davidson@aitech.asia');
INSERT INTO `employee` VALUES (143, 'Eric', 'Wilson', 'eric.wilson@aitech.asia');
INSERT INTO `employee` VALUES (144, 'Grace', 'Jackson', 'grace.jackson@aitech.asia');
INSERT INTO `employee` VALUES (145, 'Ryan', 'Brown', 'ryan.brown@aitech.asia');
INSERT INTO `employee` VALUES (146, 'Yvonne', 'Terry', 'yvonne.terry@aitech.asia');
INSERT INTO `employee` VALUES (147, 'David', 'Clark', 'david.clark@aitech.asia');
INSERT INTO `employee` VALUES (148, 'Thomas', 'Wallace', 'thomas.wallace@aitech.asia');
INSERT INTO `employee` VALUES (149, 'Chloe', 'Arnold', 'chloe.arnold@aitech.asia');
INSERT INTO `employee` VALUES (150, 'Sue', 'Ball', 'sue.ball@aitech.asia');
INSERT INTO `employee` VALUES (151, 'Owen', 'Hardacre', 'owen.hardacre@aitech.asia');
INSERT INTO `employee` VALUES (152, 'Tracey', 'Walker', 'tracey.walker@aitech.asia');
INSERT INTO `employee` VALUES (153, 'Sophie', 'Mackay', 'sophie.mackay@aitech.asia');
INSERT INTO `employee` VALUES (154, 'Liam', 'Wright', 'liam.wright@aitech.asia');
INSERT INTO `employee` VALUES (155, 'Kevin', 'Vaughan', 'kevin.vaughan@aitech.asia');
INSERT INTO `employee` VALUES (156, 'Steven', 'Mackay', 'steven.mackay@aitech.asia');
INSERT INTO `employee` VALUES (157, 'Nicholas', 'Sanderson', 'nicholas.sanderson@aitech.asia');
INSERT INTO `employee` VALUES (158, 'Luke', 'Hill', 'luke.hill@aitech.asia');
INSERT INTO `employee` VALUES (159, 'Deirdre', 'Terry', 'deirdre.terry@aitech.asia');
INSERT INTO `employee` VALUES (160, 'Joshua', 'Roberts', 'joshua.roberts@aitech.asia');
INSERT INTO `employee` VALUES (161, 'Rebecca', 'Carr', 'rebecca.carr@aitech.asia');
INSERT INTO `employee` VALUES (162, 'Donna', 'Martin', 'donna.martin@aitech.asia');
INSERT INTO `employee` VALUES (163, 'Penelope', 'Tucker', 'penelope.tucker@aitech.asia');
INSERT INTO `employee` VALUES (164, 'Jan', 'Sharp', 'jan.sharp@aitech.asia');
INSERT INTO `employee` VALUES (165, 'Sonia', 'Chapman', 'sonia.chapman@aitech.asia');
INSERT INTO `employee` VALUES (166, 'Sonia', 'Dyer', 'sonia.dyer@aitech.asia');
INSERT INTO `employee` VALUES (167, 'Diana', 'Abraham', 'diana.abraham@aitech.asia');
INSERT INTO `employee` VALUES (168, 'Kylie', 'Wilson', 'kylie.wilson@aitech.asia');
INSERT INTO `employee` VALUES (169, 'Justin', 'Mackenzie', 'justin.mackenzie@aitech.asia');
INSERT INTO `employee` VALUES (170, 'Charles', 'Grant', 'charles.grant@aitech.asia');
INSERT INTO `employee` VALUES (171, 'James', 'Hart', 'james.hart@aitech.asia');
INSERT INTO `employee` VALUES (172, 'Piers', 'Gibson', 'piers.gibson@aitech.asia');
INSERT INTO `employee` VALUES (173, 'Joshua', 'Vance', 'joshua.vance@aitech.asia');
INSERT INTO `employee` VALUES (174, 'Colin', 'Vance', 'colin.vance@aitech.asia');
INSERT INTO `employee` VALUES (175, 'Madeleine', 'Dyer', 'madeleine.dyer@aitech.asia');
INSERT INTO `employee` VALUES (176, 'Michelle', 'Clark', 'michelle.clark@aitech.asia');
INSERT INTO `employee` VALUES (177, 'Tim', 'Dowd', 'tim.dowd@aitech.asia');
INSERT INTO `employee` VALUES (178, 'Wanda', 'Turner', 'wanda.turner@aitech.asia');
INSERT INTO `employee` VALUES (179, 'Keith', 'Lambert', 'keith.lambert@aitech.asia');
INSERT INTO `employee` VALUES (180, 'Karen', 'Manning', 'karen.manning@aitech.asia');
INSERT INTO `employee` VALUES (181, 'Carolyn', 'Sanderson', 'carolyn.sanderson@aitech.asia');
INSERT INTO `employee` VALUES (182, 'Lillian', 'Harris', 'lillian.harris@aitech.asia');
INSERT INTO `employee` VALUES (183, 'Anne', 'Short', 'anne.short@aitech.asia');
INSERT INTO `employee` VALUES (184, 'Liam', 'Underwood', 'liam.underwood@aitech.asia');
INSERT INTO `employee` VALUES (185, 'Victoria', 'Ince', 'victoria.ince@aitech.asia');
INSERT INTO `employee` VALUES (186, 'Yvonne', 'Hunter', 'yvonne.hunter@aitech.asia');
INSERT INTO `employee` VALUES (187, 'Leonard', 'Walker', 'leonard.walker@aitech.asia');
INSERT INTO `employee` VALUES (188, 'Sonia', 'Abraham2', 'sonia.abraham@aitech.asia');
INSERT INTO `employee` VALUES (189, 'Dylan', 'Simpson', 'dylan.simpson@aitech.asia');
INSERT INTO `employee` VALUES (190, 'Emma', 'Mackay', 'emma.mackay@aitech.asia');
INSERT INTO `employee` VALUES (191, 'Ryan', 'Ferguson', 'ryan.ferguson@aitech.asia');
INSERT INTO `employee` VALUES (192, 'Joan', 'Henderson', 'joan.henderson@aitech.asia');
INSERT INTO `employee` VALUES (193, 'Emma', 'Hamilton', 'emma.hamilton@aitech.asia');
INSERT INTO `employee` VALUES (194, 'Abigail', 'Parr', 'abigail.parr@aitech.asia');
INSERT INTO `employee` VALUES (195, 'Brandon', 'Hudson', 'brandon.hudson@aitech.asia');
INSERT INTO `employee` VALUES (196, 'Christian', 'Hunter', 'christian.hunter@aitech.asia');
INSERT INTO `employee` VALUES (197, 'Phil', 'Simpson', 'phil.simpson@aitech.asia');
INSERT INTO `employee` VALUES (198, 'Simon', 'Burgess', 'simon.burgess@aitech.asia');
INSERT INTO `employee` VALUES (199, 'Rebecca', 'Ogden', 'rebecca.ogden@aitech.asia');
INSERT INTO `employee` VALUES (200, 'Hannah', 'Nash', 'hannah.nash@aitech.asia');
INSERT INTO `employee` VALUES (201, 'Anna', 'Russell', 'anna.russell@aitech.asia');
INSERT INTO `employee` VALUES (202, 'Kevin', 'Black', 'kevin.black@aitech.asia');
INSERT INTO `employee` VALUES (203, 'Joan', 'Taylor', 'joan.taylor@aitech.asia');
INSERT INTO `employee` VALUES (204, 'Neil', 'Churchill', 'neil.churchill@aitech.asia');
INSERT INTO `employee` VALUES (205, 'Maria', 'Wright', 'maria.wright@aitech.asia');
INSERT INTO `employee` VALUES (206, 'Edward', 'Wilson', 'edward.wilson@aitech.asia');
INSERT INTO `employee` VALUES (207, 'Grace', 'James', 'grace.james@aitech.asia');
INSERT INTO `employee` VALUES (208, 'Stephanie', 'Howard', 'stephanie.howard@aitech.asia');
INSERT INTO `employee` VALUES (209, 'Benjamin', 'Powell', 'benjamin.powell@aitech.asia');
INSERT INTO `employee` VALUES (210, 'Lucas', 'Robertson', 'lucas.robertson@aitech.asia');
INSERT INTO `employee` VALUES (211, 'Amanda', 'Knox', 'amanda.knox@aitech.asia');
INSERT INTO `employee` VALUES (212, 'Nathan', 'Allan', 'nathan.allan@aitech.asia');
INSERT INTO `employee` VALUES (213, 'Fiona', 'Glover', 'fiona.glover@aitech.asia');
INSERT INTO `employee` VALUES (214, 'Nicola', 'McDonald', 'nicola.mcdonald@aitech.asia');
INSERT INTO `employee` VALUES (215, 'Vanessa', 'Mills', 'vanessa.mills@aitech.asia');
INSERT INTO `employee` VALUES (216, 'Jack', 'Gibson', 'jack.gibson@aitech.asia');
INSERT INTO `employee` VALUES (217, 'Grace', 'Miller', 'grace.miller@aitech.asia');
INSERT INTO `employee` VALUES (218, 'Robert', 'Hunter', 'robert.hunter@aitech.asia');
INSERT INTO `employee` VALUES (219, 'Simon', 'Mills', 'simon.mills@aitech.asia');
INSERT INTO `employee` VALUES (220, 'Christian', 'Kerr', 'christian.kerr@aitech.asia');
INSERT INTO `employee` VALUES (221, 'James', 'Blake', 'james.blake@aitech.asia');
INSERT INTO `employee` VALUES (222, 'Robert', 'Lambert', 'robert.lambert@aitech.asia');
INSERT INTO `employee` VALUES (223, 'Anna', 'Langdon', 'anna.langdon@aitech.asia');
INSERT INTO `employee` VALUES (224, 'Yvonne', 'Mackay', 'yvonne.mackay@aitech.asia');
INSERT INTO `employee` VALUES (225, 'Rachel', 'Wallace', 'rachel.wallace@aitech.asia');
INSERT INTO `employee` VALUES (226, 'Diana', 'Ince', 'diana.ince@aitech.asia');
INSERT INTO `employee` VALUES (227, 'Carl', 'Pullman', 'carl.pullman@aitech.asia');
INSERT INTO `employee` VALUES (228, 'Jessica', 'Dickens', 'jessica.dickens@aitech.asia');
INSERT INTO `employee` VALUES (229, 'Wendy', 'Mackay', 'wendy.mackay@aitech.asia');
INSERT INTO `employee` VALUES (230, 'Grace', 'Vaughan', 'grace.vaughan@aitech.asia');
INSERT INTO `employee` VALUES (231, 'Joan', 'Abraham', 'joan.abraham@aitech.asia');
INSERT INTO `employee` VALUES (232, 'Joe', 'Fraser', 'joe.fraser@aitech.asia');
INSERT INTO `employee` VALUES (233, 'Gavin', 'Vance', 'gavin.vance@aitech.asia');
INSERT INTO `employee` VALUES (234, 'Pippa', 'Parr', 'pippa.parr@aitech.asia');
INSERT INTO `employee` VALUES (235, 'Peter', 'Rampling', 'peter.rampling@aitech.asia');
INSERT INTO `employee` VALUES (236, 'Jennifer', 'Simpson', 'jennifer.simpson@aitech.asia');
INSERT INTO `employee` VALUES (237, 'Thomas', 'Berry', 'thomas.berry@aitech.asia');
INSERT INTO `employee` VALUES (238, 'Pippa', 'Hardacre', 'pippa.hardacre@aitech.asia');
INSERT INTO `employee` VALUES (239, 'Alan', 'Hudson', 'alan.hudson@aitech.asia');
INSERT INTO `employee` VALUES (240, 'David', 'Fraser', 'david.fraser@aitech.asia');
INSERT INTO `employee` VALUES (241, 'Abigail', 'Pullman', 'abigail.pullman@aitech.asia');
INSERT INTO `employee` VALUES (242, 'Lauren', 'Wilkins', 'lauren.wilkins@aitech.asia');
INSERT INTO `employee` VALUES (243, 'Luke', 'Lyman', 'luke.lyman@aitech.asia');
INSERT INTO `employee` VALUES (244, 'Dylan', 'Bower', 'dylan.bower@aitech.asia');
INSERT INTO `employee` VALUES (245, 'Stephen', 'Bell', 'stephen.bell@aitech.asia');
INSERT INTO `employee` VALUES (246, 'Gordon', 'Peake', 'gordon.peake@aitech.asia');
INSERT INTO `employee` VALUES (247, 'Maria', 'Lee', 'maria.lee@aitech.asia');
INSERT INTO `employee` VALUES (248, 'Matt', 'Ferguson', 'matt.ferguson@aitech.asia');
INSERT INTO `employee` VALUES (249, 'Sebastian', 'Coleman', 'sebastian.coleman@aitech.asia');
INSERT INTO `employee` VALUES (250, 'Nicholas', 'Lambert', 'nicholas.lambert@aitech.asia');
INSERT INTO `employee` VALUES (251, 'Isaac', 'Forsyth', 'isaac.forsyth@aitech.asia');
INSERT INTO `employee` VALUES (252, 'Robert', 'Martin', 'robert.martin@aitech.asia');
INSERT INTO `employee` VALUES (253, 'Jake', 'Carr', 'jake.carr@aitech.asia');
INSERT INTO `employee` VALUES (254, 'Deirdre', 'Davies', 'deirdre.davies@aitech.asia');
INSERT INTO `employee` VALUES (255, 'Jonathan', 'Hughes', 'jonathan.hughes@aitech.asia');
INSERT INTO `employee` VALUES (256, 'Harry', 'Kerr', 'harry.kerr@aitech.asia');
INSERT INTO `employee` VALUES (257, 'Samantha', 'Burgess', 'samantha.burgess@aitech.asia');
INSERT INTO `employee` VALUES (258, 'Kimberly', 'Cornish', 'kimberly.cornish@aitech.asia');
INSERT INTO `employee` VALUES (259, 'Robert', 'Graham', 'robert.graham@aitech.asia');
INSERT INTO `employee` VALUES (260, 'Anna', 'Abraham', 'anna.abraham4@aitech.asia');
INSERT INTO `employee` VALUES (261, 'Max', 'Roberts', 'max.roberts@aitech.asia');
INSERT INTO `employee` VALUES (262, 'Jake', 'Newman', 'jake.newman@aitech.asia');
INSERT INTO `employee` VALUES (263, 'Sally', 'Terry', 'sally.terry@aitech.asia');
INSERT INTO `employee` VALUES (264, 'Charles', 'Butler', 'charles.butler@aitech.asia');
INSERT INTO `employee` VALUES (265, 'Adrian', 'Wright', 'adrian.wright@aitech.asia');
INSERT INTO `employee` VALUES (266, 'Donna', 'McGrath', 'donna.mcgrath@aitech.asia');
INSERT INTO `employee` VALUES (267, 'Dominic', 'Graham', 'dominic.graham@aitech.asia');
INSERT INTO `employee` VALUES (268, 'Theresa', 'Bailey', 'theresa.bailey@aitech.asia');
INSERT INTO `employee` VALUES (269, 'Mary', 'Randall', 'mary.randall@aitech.asia');
INSERT INTO `employee` VALUES (270, 'Matt', 'Wallace', 'matt.wallace@aitech.asia');
INSERT INTO `employee` VALUES (271, 'Anthony', 'White', 'anthony.white@aitech.asia');
INSERT INTO `employee` VALUES (272, 'Diana', 'Ball', 'diana.ball@aitech.asia');
INSERT INTO `employee` VALUES (273, 'Isaac', 'Harris', 'isaac.harris@aitech.asia');
INSERT INTO `employee` VALUES (274, 'Ian', 'Welch', 'ian.welch@aitech.asia');
INSERT INTO `employee` VALUES (275, 'Evan', 'Vance', 'evan.vance@aitech.asia');
INSERT INTO `employee` VALUES (276, 'Brian', 'Mackay', 'brian.mackay@aitech.asia');
INSERT INTO `employee` VALUES (277, 'Alan', 'Piper', 'alan.piper@aitech.asia');
INSERT INTO `employee` VALUES (278, 'Lisa', 'Poole', 'lisa.poole@aitech.asia');
INSERT INTO `employee` VALUES (279, 'Nicola', 'Hamilton', 'nicola.hamilton@aitech.asia');
INSERT INTO `employee` VALUES (280, 'Megan', 'Bailey', 'megan.bailey@aitech.asia');
INSERT INTO `employee` VALUES (281, 'Brian', 'Fisher', 'brian.fisher@aitech.asia');
INSERT INTO `employee` VALUES (282, 'Dorothy', 'Rutherford', 'dorothy.rutherford@aitech.asia');
INSERT INTO `employee` VALUES (283, 'Alan', 'North', 'alan.north@aitech.asia');
INSERT INTO `employee` VALUES (284, 'Lisa', 'Sanderson', 'lisa.sanderson@aitech.asia');
INSERT INTO `employee` VALUES (285, 'Nathan', 'Nash', 'nathan.nash@aitech.asia');
INSERT INTO `employee` VALUES (286, 'Sophie', 'McDonald', 'sophie.mcdonald@aitech.asia');
INSERT INTO `employee` VALUES (287, 'Grace', 'Roberts', 'grace.roberts@aitech.asia');
INSERT INTO `employee` VALUES (288, 'Stewart', 'Lewis', 'stewart.lewis@aitech.asia');
INSERT INTO `employee` VALUES (289, 'John', 'White', 'john.white@aitech.asia');
INSERT INTO `employee` VALUES (290, 'Jan', 'Reid', 'jan.reid@aitech.asia');
INSERT INTO `employee` VALUES (291, 'Joe', 'Lawrence', 'joe.lawrence@aitech.asia');
INSERT INTO `employee` VALUES (292, 'Claire', 'Ball', 'claire.ball@aitech.asia');
INSERT INTO `employee` VALUES (293, 'Christopher', 'Ball', 'christopher.ball@aitech.asia');
INSERT INTO `employee` VALUES (294, 'Cameron', 'Hart', 'cameron.hart@aitech.asia');
INSERT INTO `employee` VALUES (295, 'Isaac', 'Gill', 'isaac.gill@aitech.asia');
INSERT INTO `employee` VALUES (296, 'Carol', 'Simpson', 'carol.simpson@aitech.asia');
INSERT INTO `employee` VALUES (297, 'Eric', 'Powell', 'eric.powell@aitech.asia');
INSERT INTO `employee` VALUES (298, 'Emily', 'Wilkins', 'emily.wilkins@aitech.asia');
INSERT INTO `employee` VALUES (299, 'Ryan', 'Skinner', 'ryan.skinner@aitech.asia');
INSERT INTO `employee` VALUES (300, 'Virginia', 'Young', 'virginia.young@aitech.asia');
INSERT INTO `employee` VALUES (301, 'Sophie', 'Brown', 'sophie.brown@aitech.asia');
INSERT INTO `employee` VALUES (302, 'Oliver', 'Watson', 'oliver.watson@aitech.asia');
INSERT INTO `employee` VALUES (303, 'Nicola', 'Burgess', 'nicola.burgess@aitech.asia');
INSERT INTO `employee` VALUES (304, 'Alison', 'Wilson', 'alison.wilson@aitech.asia');
INSERT INTO `employee` VALUES (305, 'Jake', 'Parr', 'jake.parr@aitech.asia');
INSERT INTO `employee` VALUES (306, 'Frank', 'Bell', 'frank.bell@aitech.asia');
INSERT INTO `employee` VALUES (307, 'Emily', 'Buckland', 'emily.buckland@aitech.asia');
INSERT INTO `employee` VALUES (308, 'Rachel', 'Wilson', 'rachel.wilson@aitech.asia');
INSERT INTO `employee` VALUES (309, 'Jan', 'McDonald', 'jan.mcdonald@aitech.asia');
INSERT INTO `employee` VALUES (310, 'Mary', 'Nash', 'mary.nash@aitech.asia');
INSERT INTO `employee` VALUES (311, 'Una', 'Robertson', 'una.robertson@aitech.asia');
INSERT INTO `employee` VALUES (312, 'Ella', 'Vance', 'ella.vance@aitech.asia');
INSERT INTO `employee` VALUES (313, 'Michelle', 'Arnold', 'michelle.arnold@aitech.asia');
INSERT INTO `employee` VALUES (314, 'Sophie', 'Bailey', 'sophie.bailey@aitech.asia');
INSERT INTO `employee` VALUES (315, 'Leah', 'Cornish', 'leah.cornish@aitech.asia');
INSERT INTO `employee` VALUES (316, 'Simon', 'Peake', 'simon.peake@aitech.asia');
INSERT INTO `employee` VALUES (317, 'Mary', 'Clark', 'mary.clark@aitech.asia');
INSERT INTO `employee` VALUES (318, 'Jan', 'Nolan', 'jan.nolan@aitech.asia');
INSERT INTO `employee` VALUES (319, 'Pippa', 'Duncan', 'pippa.duncan@aitech.asia');
INSERT INTO `employee` VALUES (320, 'Isaac', 'Paige', 'isaac.paige@aitech.asia');
INSERT INTO `employee` VALUES (321, 'Lauren', 'Roberts', 'lauren.roberts@aitech.asia');
INSERT INTO `employee` VALUES (322, 'Nathan', 'Russell', 'nathan.russell@aitech.asia');
INSERT INTO `employee` VALUES (323, 'Benjamin', 'Quinn', 'benjamin.quinn@aitech.asia');
INSERT INTO `employee` VALUES (324, 'Charles', 'Hodges', 'charles.hodges@aitech.asia');
INSERT INTO `employee` VALUES (325, 'Tracey', 'Morgan', 'tracey.morgan@aitech.asia');
INSERT INTO `employee` VALUES (326, 'Rebecca', 'Fraser', 'rebecca.fraser@aitech.asia');
INSERT INTO `employee` VALUES (327, 'Michael', 'Robertson', 'michael.robertson@aitech.asia');
INSERT INTO `employee` VALUES (328, 'Adam', 'MacDonald', 'adam.macdonald@aitech.asia');
INSERT INTO `employee` VALUES (329, 'Cameron', 'Powell', 'cameron.powell@aitech.asia');
INSERT INTO `employee` VALUES (330, 'Rose', 'Simpson', 'rose.simpson@aitech.asia');
INSERT INTO `employee` VALUES (331, 'Diana', 'Clark', 'diana.clark@aitech.asia');
INSERT INTO `employee` VALUES (332, 'Jason', 'Dickens', 'jason.dickens@aitech.asia');
INSERT INTO `employee` VALUES (333, 'Sally', 'Davies', 'sally.davies@aitech.asia');
INSERT INTO `employee` VALUES (334, 'Christopher', 'Churchill', 'christopher.churchill@aitech.asia');
INSERT INTO `employee` VALUES (335, 'Sam', 'Ferguson', 'sam.ferguson@aitech.asia');
INSERT INTO `employee` VALUES (336, 'Jasmine', 'Lee', 'jasmine.lee@aitech.asia');
INSERT INTO `employee` VALUES (337, 'Joshua', 'Arnold', 'joshua.arnold@aitech.asia');
INSERT INTO `employee` VALUES (338, 'Matt', 'Simpson', 'matt.simpson@aitech.asia');
INSERT INTO `employee` VALUES (339, 'Owen', 'Arnold', 'owen.arnold@aitech.asia');
INSERT INTO `employee` VALUES (340, 'William', 'White', 'william.white@aitech.asia');
INSERT INTO `employee` VALUES (341, 'Paul', 'Gray', 'paul.gray@aitech.asia');
INSERT INTO `employee` VALUES (342, 'Lucas', 'Slater', 'lucas.slater@aitech.asia');
INSERT INTO `employee` VALUES (343, 'Jessica', 'Howard', 'jessica.howard@aitech.asia');
INSERT INTO `employee` VALUES (344, 'Dylan', 'Vance', 'dylan.vance@aitech.asia');
INSERT INTO `employee` VALUES (345, 'Elizabeth', 'North', 'elizabeth.north@aitech.asia');
INSERT INTO `employee` VALUES (346, 'Stephanie', 'Brown', 'stephanie.brown@aitech.asia');
INSERT INTO `employee` VALUES (347, 'Connor', 'Nash', 'connor.nash@aitech.asia');
INSERT INTO `employee` VALUES (348, 'William', 'Johnston', 'william.johnston@aitech.asia');
INSERT INTO `employee` VALUES (349, 'Heather', 'Stewart', 'heather.stewart@aitech.asia');
INSERT INTO `employee` VALUES (350, 'Melanie', 'Graham', 'melanie.graham@aitech.asia');
INSERT INTO `employee` VALUES (351, 'Joe', 'Hill', 'joe.hill@aitech.asia');
INSERT INTO `employee` VALUES (352, 'Rebecca', 'Thomson', 'rebecca.thomson@aitech.asia');
INSERT INTO `employee` VALUES (353, 'Alexandra', 'Terry', 'alexandra.terry@aitech.asia');
INSERT INTO `employee` VALUES (354, 'Lily', 'Berry', 'lily.berry@aitech.asia');
INSERT INTO `employee` VALUES (355, 'Peter', 'King', 'peter.king@aitech.asia');
INSERT INTO `employee` VALUES (356, 'Boris', 'Short', 'boris.short@aitech.asia');
INSERT INTO `employee` VALUES (357, 'Carolyn', 'Underwood', 'carolyn.underwood@aitech.asia');
INSERT INTO `employee` VALUES (358, 'Ian', 'Hamilton', 'ian.hamilton@aitech.asia');
INSERT INTO `employee` VALUES (359, 'Steven', 'Hill', 'steven.hill@aitech.asia');
INSERT INTO `employee` VALUES (360, 'Gabrielle', 'Randall', 'gabrielle.randall@aitech.asia');
INSERT INTO `employee` VALUES (361, 'Sonia', 'Stewart', 'sonia.stewart@aitech.asia');
INSERT INTO `employee` VALUES (362, 'Blake', 'Short', 'blake.short@aitech.asia');
INSERT INTO `employee` VALUES (363, 'Donna', 'Paterson', 'donna.paterson@aitech.asia');
INSERT INTO `employee` VALUES (364, 'Adam', 'Lewis', 'adam.lewis@aitech.asia');
INSERT INTO `employee` VALUES (365, 'Piers', 'Bailey', 'piers.bailey@aitech.asia');
INSERT INTO `employee` VALUES (366, 'Lisa', 'Campbell', 'lisa.campbell@aitech.asia');
INSERT INTO `employee` VALUES (367, 'Irene', 'Wilkins', 'irene.wilkins@aitech.asia');
INSERT INTO `employee` VALUES (368, 'Deirdre', 'Morrison', 'deirdre.morrison@aitech.asia');
INSERT INTO `employee` VALUES (369, 'Steven', 'Bailey', 'steven.bailey@aitech.asia');
INSERT INTO `employee` VALUES (370, 'Chloe', 'Morgan', 'chloe.morgan@aitech.asia');
INSERT INTO `employee` VALUES (371, 'Alexandra', 'Quinn', 'alexandra.quinn@aitech.asia');
INSERT INTO `employee` VALUES (372, 'Nicola', 'Dowd', 'nicola.dowd@aitech.asia');
INSERT INTO `employee` VALUES (373, 'Melanie', 'Wallace', 'melanie.wallace@aitech.asia');
INSERT INTO `employee` VALUES (374, 'Joseph', 'Smith', 'joseph.smith@aitech.asia');
INSERT INTO `employee` VALUES (375, 'Sonia', 'Roberts', 'sonia.roberts@aitech.asia');
INSERT INTO `employee` VALUES (376, 'Nicholas', 'Smith', 'nicholas.smith@aitech.asia');
INSERT INTO `employee` VALUES (377, 'Sophie', 'Peake', 'sophie.peake@aitech.asia');
INSERT INTO `employee` VALUES (378, 'Rebecca', 'Gibson', 'rebecca.gibson@aitech.asia');
INSERT INTO `employee` VALUES (379, 'Diana', 'Peake', 'diana.peake@aitech.asia');
INSERT INTO `employee` VALUES (380, 'Dylan', 'Sharp', 'dylan.sharp@aitech.asia');
INSERT INTO `employee` VALUES (381, 'Julian', 'Springer', 'julian.springer@aitech.asia');
INSERT INTO `employee` VALUES (382, 'Audrey', 'Wilkins', 'audrey.wilkins@aitech.asia');
INSERT INTO `employee` VALUES (383, 'Matt', 'Reid', 'matt.reid@aitech.asia');
INSERT INTO `employee` VALUES (384, 'Stewart', 'Morrison', 'stewart.morrison@aitech.asia');
INSERT INTO `employee` VALUES (385, 'Gordon', 'King', 'gordon.king@aitech.asia');
INSERT INTO `employee` VALUES (386, 'Emma', 'Short', 'emma.short@aitech.asia');
INSERT INTO `employee` VALUES (387, 'Joshua', 'Taylor', 'joshua.taylor@aitech.asia');
INSERT INTO `employee` VALUES (388, 'Claire', 'Ogden', 'claire.ogden@aitech.asia');
INSERT INTO `employee` VALUES (389, 'Una', 'Chapman', 'una.chapman@aitech.asia');
INSERT INTO `employee` VALUES (390, 'Olivia', 'Taylor', 'olivia.taylor@aitech.asia');
INSERT INTO `employee` VALUES (391, 'Jacob', 'Underwood', 'jacob.underwood@aitech.asia');
INSERT INTO `employee` VALUES (392, 'Andrea', 'Grant', 'andrea.grant@aitech.asia');
INSERT INTO `employee` VALUES (393, 'Lily', 'Powell', 'lily.powell@aitech.asia');
INSERT INTO `employee` VALUES (394, 'Ian', 'Vaughan', 'ian.vaughan@aitech.asia');
INSERT INTO `employee` VALUES (395, 'Gordon', 'Gibson', 'gordon.gibson@aitech.asia');
INSERT INTO `employee` VALUES (396, 'Stewart', 'Berry', 'stewart.berry@aitech.asia');
INSERT INTO `employee` VALUES (397, 'Joshua', 'Piper', 'joshua.piper@aitech.asia');
INSERT INTO `employee` VALUES (398, 'Jonathan', 'Hodges', 'jonathan.hodges@aitech.asia');
INSERT INTO `employee` VALUES (399, 'Jan', 'North', 'jan.north@aitech.asia');
INSERT INTO `employee` VALUES (400, 'Carolyn', 'Brown', 'carolyn.brown@aitech.asia');
INSERT INTO `employee` VALUES (401, 'Phil', 'Gray', 'phil.gray@aitech.asia');
INSERT INTO `employee` VALUES (402, 'Blake', 'Hemmings', 'blake.hemmings@aitech.asia');
INSERT INTO `employee` VALUES (403, 'Madeleine', 'Bower', 'madeleine.bower@aitech.asia');
INSERT INTO `employee` VALUES (404, 'Dominic', 'Vaughan', 'dominic.vaughan@aitech.asia');
INSERT INTO `employee` VALUES (405, 'Theresa', 'May', 'theresa.may@aitech.asia');
INSERT INTO `employee` VALUES (406, 'Tim', 'Bower', 'tim.bower@aitech.asia');
INSERT INTO `employee` VALUES (407, 'Alexandra', 'Hardacre', 'alexandra.hardacre@aitech.asia');
INSERT INTO `employee` VALUES (408, 'Jacob', 'Kerr', 'jacob.kerr@aitech.asia');
INSERT INTO `employee` VALUES (409, 'Liam', 'Roberts', 'liam.roberts@aitech.asia');
INSERT INTO `employee` VALUES (410, 'Molly', 'Marshall', 'molly.marshall@aitech.asia');
INSERT INTO `employee` VALUES (411, 'Anthony', 'Fisher', 'anthony.fisher@aitech.asia');
INSERT INTO `employee` VALUES (412, 'Brian', 'Cameron', 'brian.cameron@aitech.asia');
INSERT INTO `employee` VALUES (413, 'Richard', 'Ellison', 'richard.ellison@aitech.asia');
INSERT INTO `employee` VALUES (414, 'Gavin', 'Campbell', 'gavin.campbell@aitech.asia');
INSERT INTO `employee` VALUES (415, 'Diana', 'Ross', 'diana.ross@aitech.asia');
INSERT INTO `employee` VALUES (416, 'Michael', 'Martin', 'michael.martin@aitech.asia');
INSERT INTO `employee` VALUES (417, 'Robert', 'Bell', 'robert.bell@aitech.asia');
INSERT INTO `employee` VALUES (418, 'Thomas', 'Bailey', 'thomas.bailey@aitech.asia');
INSERT INTO `employee` VALUES (419, 'Sophie', 'Stewart', 'sophie.stewart@aitech.asia');
INSERT INTO `employee` VALUES (420, 'Sally', 'Bell', 'sally.bell@aitech.asia');
INSERT INTO `employee` VALUES (421, 'Samantha', 'James', 'samantha.james@aitech.asia');
INSERT INTO `employee` VALUES (422, 'Grace', 'Jones', 'grace.jones@aitech.asia');
INSERT INTO `employee` VALUES (423, 'Connor', 'Rutherford', 'connor.rutherford@aitech.asia');
INSERT INTO `employee` VALUES (424, 'Zoe', 'Stewart', 'zoe.stewart@aitech.asia');
INSERT INTO `employee` VALUES (425, 'Mary', 'Underwood', 'mary.underwood@aitech.asia');
INSERT INTO `employee` VALUES (426, 'Nicholas', 'Bond', 'nicholas.bond@aitech.asia');
INSERT INTO `employee` VALUES (427, 'Alan', 'Randall', 'alan.randall@aitech.asia');
INSERT INTO `employee` VALUES (428, 'Joshua', 'Churchill', 'joshua.churchill@aitech.asia');
INSERT INTO `employee` VALUES (429, 'Olivia', 'Greene', 'olivia.greene@aitech.asia');
INSERT INTO `employee` VALUES (430, 'Joan', 'Hamilton', 'joan.hamilton@aitech.asia');
INSERT INTO `employee` VALUES (431, 'Sam', 'Mitchell', 'sam.mitchell@aitech.asia');
INSERT INTO `employee` VALUES (432, 'Christian', 'Ogden', 'christian.ogden@aitech.asia');
INSERT INTO `employee` VALUES (433, 'Gordon', 'James', 'gordon.james@aitech.asia');
INSERT INTO `employee` VALUES (434, 'Jasmine', 'Arnold', 'jasmine.arnold@aitech.asia');
INSERT INTO `employee` VALUES (435, 'Amanda', 'Walker', 'amanda.walker@aitech.asia');
INSERT INTO `employee` VALUES (436, 'Adam', 'Harris', 'adam.harris@aitech.asia');
INSERT INTO `employee` VALUES (437, 'Bella', 'Ferguson', 'bella.ferguson@aitech.asia');
INSERT INTO `employee` VALUES (438, 'Jason', 'Ball', 'jason.ball@aitech.asia');
INSERT INTO `employee` VALUES (439, 'Victor', 'Howard', 'victor.howard@aitech.asia');
INSERT INTO `employee` VALUES (440, 'David', 'Jackson', 'david.jackson@aitech.asia');
INSERT INTO `employee` VALUES (441, 'Paul', 'Lawrence', 'paul.lawrence@aitech.asia');
INSERT INTO `employee` VALUES (442, 'Molly', 'Skinner', 'molly.skinner@aitech.asia');
INSERT INTO `employee` VALUES (443, 'Christian', 'Cameron', 'christian.cameron@aitech.asia');
INSERT INTO `employee` VALUES (444, 'Sue', 'May', 'sue.may@aitech.asia');
INSERT INTO `employee` VALUES (445, 'Stephen', 'Bond', 'stephen.bond@aitech.asia');
INSERT INTO `employee` VALUES (446, 'Wendy', 'Ferguson', 'wendy.ferguson@aitech.asia');
INSERT INTO `employee` VALUES (447, 'Claire', 'Rees', 'claire.rees@aitech.asia');
INSERT INTO `employee` VALUES (448, 'Theresa', 'Ince', 'theresa.ince@aitech.asia');
INSERT INTO `employee` VALUES (449, 'Kevin', 'Hamilton', 'kevin.hamilton@aitech.asia');
INSERT INTO `employee` VALUES (450, 'Julian', 'Parr', 'julian.parr@aitech.asia');
INSERT INTO `employee` VALUES (451, 'Colin', 'Fraser', 'colin.fraser@aitech.asia');
INSERT INTO `employee` VALUES (452, 'Donna', 'Gibson', 'donna.gibson@aitech.asia');
INSERT INTO `employee` VALUES (453, 'Lily', 'Rutherford', 'lily.rutherford@aitech.asia');
INSERT INTO `employee` VALUES (454, 'Victoria', 'James', 'victoria.james@aitech.asia');
INSERT INTO `employee` VALUES (455, 'Edward', 'Hemmings', 'edward.hemmings@aitech.asia');
INSERT INTO `employee` VALUES (456, 'Trevor', 'Clark', 'trevor.clark@aitech.asia');
INSERT INTO `employee` VALUES (457, 'Carolyn', 'Anderson', 'carolyn.anderson@aitech.asia');
INSERT INTO `employee` VALUES (458, 'Cameron', 'Glover', 'cameron.glover@aitech.asia');
INSERT INTO `employee` VALUES (459, 'Olivia', 'Wilson', 'olivia.wilson@aitech.asia');
INSERT INTO `employee` VALUES (460, 'Claire', 'Wilkins', 'claire.wilkins@aitech.asia');
INSERT INTO `employee` VALUES (461, 'Boris', 'Walker', 'boris.walker@aitech.asia');
INSERT INTO `employee` VALUES (462, 'Bella', 'Langdon', 'bella.langdon@aitech.asia');
INSERT INTO `employee` VALUES (463, 'Lisa', 'Darby', 'lisa.darby@aitech.asia');
INSERT INTO `employee` VALUES (464, 'Angela', 'Abraham', 'angela.abraham@aitech.asia');
INSERT INTO `employee` VALUES (465, 'Sue', 'White', 'sue.white@aitech.asia');
INSERT INTO `employee` VALUES (466, 'Faith', 'Morgan', 'faith.morgan@aitech.asia');
INSERT INTO `employee` VALUES (467, 'Oliver', 'Brown', 'oliver.brown@aitech.asia');
INSERT INTO `employee` VALUES (468, 'Dan', 'Ogden', 'dan.ogden@aitech.asia');
INSERT INTO `employee` VALUES (469, 'Ava', 'Buckland', 'ava.buckland@aitech.asia');
INSERT INTO `employee` VALUES (470, 'Natalie', 'Davidson', 'natalie.davidson@aitech.asia');
INSERT INTO `employee` VALUES (471, 'Luke', 'Forsyth', 'luke.forsyth@aitech.asia');
INSERT INTO `employee` VALUES (472, 'Anthony', 'Langdon', 'anthony.langdon@aitech.asia');
INSERT INTO `employee` VALUES (473, 'John', 'Hudson', 'john.hudson@aitech.asia');
INSERT INTO `employee` VALUES (474, 'Sue', 'Coleman', 'sue.coleman@aitech.asia');
INSERT INTO `employee` VALUES (475, 'Austin', 'Clarkson', 'austin.clarkson@aitech.asia');
INSERT INTO `employee` VALUES (476, 'Sam', 'Hamilton', 'sam.hamilton@aitech.asia');
INSERT INTO `employee` VALUES (477, 'Karen', 'MacDonald', 'karen.macdonald@aitech.asia');
INSERT INTO `employee` VALUES (478, 'Keith', 'Ross', 'keith.ross@aitech.asia');
INSERT INTO `employee` VALUES (479, 'Joshua', 'Bailey', 'joshua.bailey@aitech.asia');
INSERT INTO `employee` VALUES (480, 'Isaac', 'Turner', 'isaac.turner@aitech.asia');
INSERT INTO `employee` VALUES (481, 'Tracey', 'Sanderson', 'tracey.sanderson@aitech.asia');
INSERT INTO `employee` VALUES (482, 'Colin', 'Payne', 'colin.payne@aitech.asia');
INSERT INTO `employee` VALUES (483, 'Austin', 'Underwood', 'austin.underwood@aitech.asia');
INSERT INTO `employee` VALUES (484, 'Tracey', 'MacDonald', 'tracey.macdonald@aitech.asia');
INSERT INTO `employee` VALUES (485, 'Victor', 'Jackson', 'victor.jackson@aitech.asia');
INSERT INTO `employee` VALUES (486, 'William', 'Hamilton', 'william.hamilton@aitech.asia');
INSERT INTO `employee` VALUES (487, 'Kevin', 'Turner', 'kevin.turner@aitech.asia');
INSERT INTO `employee` VALUES (488, 'Sally', 'Underwood', 'sally.underwood@aitech.asia');
INSERT INTO `employee` VALUES (489, 'Jennifer', 'Nash', 'jennifer.nash@aitech.asia');
INSERT INTO `employee` VALUES (490, 'Sophie', 'Lyman', 'sophie.lyman@aitech.asia');
INSERT INTO `employee` VALUES (491, 'Vanessa', 'Ross', 'vanessa.ross@aitech.asia');
INSERT INTO `employee` VALUES (492, 'Ella', 'Quinn', 'ella.quinn@aitech.asia');
INSERT INTO `employee` VALUES (493, 'Jacob', 'Parr', 'jacob.parr@aitech.asia');
INSERT INTO `employee` VALUES (494, 'Anthony', 'Fraser', 'anthony.fraser@aitech.asia');
INSERT INTO `employee` VALUES (495, 'Nicola', 'Quinn', 'nicola.quinn@aitech.asia');
INSERT INTO `employee` VALUES (496, 'Natalie', 'Slater', 'natalie.slater@aitech.asia');
INSERT INTO `employee` VALUES (497, 'Julian', 'Mathis', 'julian.mathis@aitech.asia');
INSERT INTO `employee` VALUES (498, 'Sonia', 'Ball', 'sonia.ball@aitech.asia');
INSERT INTO `employee` VALUES (499, 'Ava', 'Kelly', 'ava.kelly@aitech.asia');
INSERT INTO `employee` VALUES (500, 'Gabrielle', 'Brown', 'gabrielle.brown@aitech.asia');
INSERT INTO `employee` VALUES (501, 'ww', 'Thanh', 'thanh19nt@icloud.com');

-- ----------------------------
-- Table structure for key_action_attachment
-- ----------------------------
DROP TABLE IF EXISTS `key_action_attachment`;
CREATE TABLE `key_action_attachment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key_action_id` bigint(20) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_active` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creator_id` bigint(20) NULL DEFAULT NULL,
  `created_time` timestamp(0) NULL DEFAULT NULL,
  `last_updater_id` bigint(20) NULL DEFAULT NULL,
  `last_updated_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_key_action_attachment_key_action_idx`(`key_action_id`) USING BTREE,
  CONSTRAINT `fk_key_action_attachment_key_action` FOREIGN KEY (`key_action_id`) REFERENCES `strategy_key_action` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for key_action_conversation
-- ----------------------------
DROP TABLE IF EXISTS `key_action_conversation`;
CREATE TABLE `key_action_conversation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key_action_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_active` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creator_id` bigint(20) NULL DEFAULT NULL,
  `created_time` timestamp(0) NULL DEFAULT NULL,
  `last_updater_id` bigint(20) NULL DEFAULT NULL,
  `last_updated_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_key_action_conversation_key_action`(`key_action_id`) USING BTREE,
  INDEX `fk_key_action_conversation_user`(`user_id`) USING BTREE,
  CONSTRAINT `fk_key_action_conversation_key_action` FOREIGN KEY (`key_action_id`) REFERENCES `strategy_key_action` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_key_action_conversation_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 13490176 kB; (`org_unit_id`) REFER `bsc/org_uni; InnoDB free: 13490' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for kpi
-- ----------------------------
DROP TABLE IF EXISTS `kpi`;
CREATE TABLE `kpi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `measure` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `weight` decimal(5, 2) NULL DEFAULT NULL,
  `is_active` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creator_id` bigint(20) NULL DEFAULT NULL,
  `created_time` timestamp(0) NULL DEFAULT NULL,
  `last_updater_id` bigint(20) NULL DEFAULT NULL,
  `last_updated_time` timestamp(0) NULL DEFAULT NULL,
  `prospect` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `stage` tinyint(1) NULL DEFAULT NULL,
  `approved_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_kpi_code_idx`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for kpi_attachment
-- ----------------------------
DROP TABLE IF EXISTS `kpi_attachment`;
CREATE TABLE `kpi_attachment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_active` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creator_id` bigint(20) NULL DEFAULT NULL,
  `created_time` timestamp(0) NULL DEFAULT NULL,
  `last_updater_id` bigint(20) NULL DEFAULT NULL,
  `last_updated_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for measure
-- ----------------------------
DROP TABLE IF EXISTS `measure`;
CREATE TABLE `measure`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creator_id` bigint(20) NULL DEFAULT NULL,
  `created_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `last_updater_id` bigint(20) NULL DEFAULT NULL,
  `last_updated_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_measure_name_idx`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for themes
-- ----------------------------
DROP TABLE IF EXISTS `themes`;
CREATE TABLE `themes`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `descriptions` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `creator_id` int(11) NULL DEFAULT NULL,
  `created_time` datetime(0) NULL DEFAULT NULL,
  `last_updater_id` int(11) NULL DEFAULT NULL,
  `last_updated_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` char(68) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('john', '{bcrypt}$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K', 1);
INSERT INTO `users` VALUES ('mary', '{bcrypt}$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K', 1);
INSERT INTO `users` VALUES ('susan', '{bcrypt}$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K', 1);

SET FOREIGN_KEY_CHECKS = 1;
