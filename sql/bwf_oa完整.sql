/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : bwf_oa

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-11-29 15:25:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `affair`
-- ----------------------------
DROP TABLE IF EXISTS `affair`;
CREATE TABLE `affair` (
  `affairId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `affairTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `affairContent` text,
  `affairState` tinyint(4) DEFAULT NULL,
  `affairModelId` int(11) DEFAULT NULL,
  PRIMARY KEY (`affairId`),
  KEY `fk_affair_admin` (`userId`),
  KEY `fk_affair_model` (`affairModelId`),
  CONSTRAINT `affair_ibfk_1` FOREIGN KEY (`affairModelId`) REFERENCES `affairmodel` (`affairModelId`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `affair_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of affair
-- ----------------------------
INSERT INTO `affair` VALUES ('14', '24', '2017-11-28 11:47:53', '<table class=\'table table-responsive table-bordered\'><tr><td width=\'20%\' align=\'right\'>出差地点</td><td>成都</td></tr><tr><td width=\'20%\' align=\'right\'>开始时间</td><td>2017-11-28T09:00</td></tr><tr><td width=\'20%\' align=\'right\'>结束时间</td><td>2017-11-30T17:30</td></tr><tr><td width=\'20%\' align=\'right\'>出差时长(小时)</td><td>32</td></tr><tr><td width=\'20%\' align=\'right\'>交通工具</td><td>飞机</td></tr><tr><td width=\'20%\' align=\'right\'>出差事由</td><td>去成都吃小吃</td></tr><tr><td width=\'20%\' align=\'right\'>报销类型</td><td>市间交通,市内交通,餐饮费,住宿费</td></tr><tr><td width=\'20%\' align=\'right\'>出差任务</td><td>业务拓展</td></tr></table>', '2', '18');
INSERT INTO `affair` VALUES ('15', '24', '2017-11-28 15:54:43', '<table class=\'table table-responsive table-bordered\'><tr><td width=\'20%\' align=\'right\'>请假类型</td><td>年假</td></tr><tr><td width=\'20%\' align=\'right\'>开始时间</td><td>2017-11-28T09:00</td></tr><tr><td width=\'20%\' align=\'right\'>结束时间</td><td>2017-11-30T17:30</td></tr><tr><td width=\'20%\' align=\'right\'>请假时长</td><td>32</td></tr><tr><td width=\'20%\' align=\'right\'>事由说明</td><td>去七浦路买衣服</td></tr></table>', '3', '19');

-- ----------------------------
-- Table structure for `affairchain`
-- ----------------------------
DROP TABLE IF EXISTS `affairchain`;
CREATE TABLE `affairchain` (
  `affairChainId` int(11) NOT NULL AUTO_INCREMENT,
  `affairId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `affairChainOrder` tinyint(4) DEFAULT NULL,
  `affairChainTime` timestamp NULL DEFAULT NULL,
  `affairChainRemark` varchar(255) DEFAULT NULL,
  `affairChainState` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`affairChainId`),
  KEY `fk_affair_chain` (`affairId`),
  KEY `fk_chain_admin` (`userId`),
  KEY `FKBC25B58E4A8CB9` (`userId`),
  CONSTRAINT `affairchain_ibfk_1` FOREIGN KEY (`affairId`) REFERENCES `affair` (`affairId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `affairchain_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of affairchain
-- ----------------------------
INSERT INTO `affairchain` VALUES ('39', '14', '19', '1', '2017-11-28 15:47:27', '给我带一点', '2');
INSERT INTO `affairchain` VALUES ('40', '14', '3', '2', '2017-11-28 15:49:30', '多放点辣', '2');
INSERT INTO `affairchain` VALUES ('41', '14', '2', '3', '2017-11-28 15:50:29', '买点贵的，反正可以报销', '2');
INSERT INTO `affairchain` VALUES ('42', '14', '11', '4', '2017-11-28 15:51:03', '去吧', '2');
INSERT INTO `affairchain` VALUES ('43', '15', '19', '1', '2017-11-28 15:55:13', '给我带一点', '2');
INSERT INTO `affairchain` VALUES ('44', '15', '3', '2', '2017-11-28 15:55:42', '去死', '3');
INSERT INTO `affairchain` VALUES ('45', '15', '11', '3', null, null, '0');

-- ----------------------------
-- Table structure for `affairmodel`
-- ----------------------------
DROP TABLE IF EXISTS `affairmodel`;
CREATE TABLE `affairmodel` (
  `affairModelId` int(11) NOT NULL AUTO_INCREMENT,
  `affairModelName` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `affairChain` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`affairModelId`),
  KEY `fk_model_admin` (`userId`),
  CONSTRAINT `affairmodel_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of affairmodel
-- ----------------------------
INSERT INTO `affairmodel` VALUES ('18', '出差申请单', '3', '-1,3,2,11');
INSERT INTO `affairmodel` VALUES ('19', '请假申请单', '3', '-1,3,11');

-- ----------------------------
-- Table structure for `affairmodelitem`
-- ----------------------------
DROP TABLE IF EXISTS `affairmodelitem`;
CREATE TABLE `affairmodelitem` (
  `modelItemId` int(11) NOT NULL AUTO_INCREMENT,
  `modelItemName` varchar(255) DEFAULT NULL,
  `modelItemType` int(11) DEFAULT NULL,
  `modelItemOption` varchar(255) DEFAULT NULL,
  `affairModelId` int(11) DEFAULT NULL,
  PRIMARY KEY (`modelItemId`),
  KEY `fkmodelitem` (`affairModelId`),
  CONSTRAINT `affairmodelitem_ibfk_1` FOREIGN KEY (`affairModelId`) REFERENCES `affairmodel` (`affairModelId`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of affairmodelitem
-- ----------------------------
INSERT INTO `affairmodelitem` VALUES ('19', '出差地点', '1', '', '18');
INSERT INTO `affairmodelitem` VALUES ('20', '开始时间', '5', '', '18');
INSERT INTO `affairmodelitem` VALUES ('21', '结束时间', '5', '', '18');
INSERT INTO `affairmodelitem` VALUES ('22', '出差时长(小时)', '1', '', '18');
INSERT INTO `affairmodelitem` VALUES ('23', '交通工具', '8', '飞机,火车,汽车', '18');
INSERT INTO `affairmodelitem` VALUES ('24', '出差事由', '2', '', '18');
INSERT INTO `affairmodelitem` VALUES ('25', '报销类型', '7', '市间交通,市内交通,餐饮费,住宿费', '18');
INSERT INTO `affairmodelitem` VALUES ('26', '出差任务', '7', '业务拓展,业务支持,内部培训,业务会议', '18');
INSERT INTO `affairmodelitem` VALUES ('27', '请假类型', '8', '调休,事假,年假,婚假,产假,病假,丧假', '19');
INSERT INTO `affairmodelitem` VALUES ('28', '开始时间', '5', '', '19');
INSERT INTO `affairmodelitem` VALUES ('29', '结束时间', '5', '', '19');
INSERT INTO `affairmodelitem` VALUES ('30', '请假时长', '1', '', '19');
INSERT INTO `affairmodelitem` VALUES ('31', '事由说明', '2', '', '19');

-- ----------------------------
-- Table structure for `daily`
-- ----------------------------
DROP TABLE IF EXISTS `daily`;
CREATE TABLE `daily` (
  `dailyId` int(11) NOT NULL AUTO_INCREMENT,
  `dailyTitle` varchar(255) DEFAULT NULL,
  `dailyContent` text,
  `dailyAddTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `dailyUpdateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `userId` int(11) DEFAULT NULL,
  `departmentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`dailyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daily
-- ----------------------------

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `departmentId` int(11) NOT NULL AUTO_INCREMENT,
  `departmentName` varchar(50) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`departmentId`),
  KEY `fk_10` (`userId`),
  CONSTRAINT `fk_10` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '总经理办公室', null, '11');
INSERT INTO `department` VALUES ('2', '业务集群I-王琰', '1', '8');
INSERT INTO `department` VALUES ('3', '业务集群II-余笑', '1', '7');
INSERT INTO `department` VALUES ('4', '财务部', '1', '2');
INSERT INTO `department` VALUES ('5', '人力资源部', '1', '3');
INSERT INTO `department` VALUES ('6', '行政管理部', '1', '3');
INSERT INTO `department` VALUES ('7', '市场部', '2', '4');
INSERT INTO `department` VALUES ('8', '销售部', '3', '5');
INSERT INTO `department` VALUES ('9', '就业部', '2', '6');
INSERT INTO `department` VALUES ('10', '教学部', '3', '19');
INSERT INTO `department` VALUES ('11', '教务部', '10', '19');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menuId` int(11) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(50) NOT NULL,
  `menuUrl` varchar(50) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '人力资源', '', null);
INSERT INTO `menu` VALUES ('2', '公文模块', '', null);
INSERT INTO `menu` VALUES ('3', '邮箱模块', '', null);
INSERT INTO `menu` VALUES ('4', '个人办公', '', null);
INSERT INTO `menu` VALUES ('5', '系统设置', '', null);
INSERT INTO `menu` VALUES ('6', '考勤管理', 'Roster', '1');
INSERT INTO `menu` VALUES ('7', '公告管理', 'News', '1');
INSERT INTO `menu` VALUES ('8', '员工管理', 'User', '1');
INSERT INTO `menu` VALUES ('9', '部门管理', 'Department', '1');
INSERT INTO `menu` VALUES ('10', '角色管理', 'Role', '1');
INSERT INTO `menu` VALUES ('11', '权限管理', 'Permission', '1');
INSERT INTO `menu` VALUES ('12', '公文设计', 'AffairModule', '2');
INSERT INTO `menu` VALUES ('13', '公文管理', 'Affair', '2');
INSERT INTO `menu` VALUES ('14', '邮箱管理', 'Email', '3');
INSERT INTO `menu` VALUES ('15', '工作日志', 'Daily', '4');
INSERT INTO `menu` VALUES ('16', '行程安排', 'Schedule', '4');
INSERT INTO `menu` VALUES ('17', '菜单管理', 'Menu', '5');
INSERT INTO `menu` VALUES ('18', '个人设置', 'Setting', '5');

-- ----------------------------
-- Table structure for `mynews`
-- ----------------------------
DROP TABLE IF EXISTS `mynews`;
CREATE TABLE `mynews` (
  `mynewsId` int(11) NOT NULL AUTO_INCREMENT,
  `mynewsTitle` varchar(255) DEFAULT NULL,
  `mynewsUrl` varchar(255) DEFAULT NULL,
  `mynewsAddTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `mynewsUpdateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `userId` int(11) DEFAULT NULL,
  `mynewsState` int(11) DEFAULT NULL,
  PRIMARY KEY (`mynewsId`),
  KEY `fk_111` (`userId`),
  CONSTRAINT `fk_111` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mynews
-- ----------------------------
INSERT INTO `mynews` VALUES ('1', '春节放假通知', 'f24c9d9e-424b-49f9-8725-433c0b8f0cc6.html', '2017-11-29 10:46:05', '2017-11-29 10:46:05', '3', '1');
INSERT INTO `mynews` VALUES ('2', '2017年年终奖发放规格', '6c07ca58-36fb-4f85-9cb7-4c2d68fde569.html', '2017-11-29 10:48:03', '2017-11-29 10:48:03', '3', '1');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `newsId` int(11) NOT NULL AUTO_INCREMENT,
  `newsTitle` varchar(255) DEFAULT NULL,
  `newsContent` text,
  `newsAddTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `newsUpdateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `userId` int(11) DEFAULT NULL,
  `newsState` int(11) DEFAULT NULL,
  PRIMARY KEY (`newsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------

-- ----------------------------
-- Table structure for `operate`
-- ----------------------------
DROP TABLE IF EXISTS `operate`;
CREATE TABLE `operate` (
  `operateId` int(11) NOT NULL AUTO_INCREMENT,
  `operateName` varchar(50) NOT NULL,
  `operateAction` varchar(50) NOT NULL,
  `operateURL` varchar(50) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`operateId`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operate
-- ----------------------------
INSERT INTO `operate` VALUES ('1', '博为峰OA办公自动化系统', 'OA', '', null);
INSERT INTO `operate` VALUES ('6', '考勤管理', 'Roster', '', '1');
INSERT INTO `operate` VALUES ('7', '公告管理', 'News', '', '1');
INSERT INTO `operate` VALUES ('8', '员工管理', 'User', '', '1');
INSERT INTO `operate` VALUES ('9', '部门管理', 'Department', '', '1');
INSERT INTO `operate` VALUES ('10', '角色管理', 'Role', '', '1');
INSERT INTO `operate` VALUES ('11', '权限管理', 'Permission', '', '1');
INSERT INTO `operate` VALUES ('12', '公文设计', 'AffairModule', '', '1');
INSERT INTO `operate` VALUES ('13', '公文管理', 'Affair', '', '1');
INSERT INTO `operate` VALUES ('14', '邮箱管理', 'Email', '', '1');
INSERT INTO `operate` VALUES ('15', '工作日志', 'Daily', '', '1');
INSERT INTO `operate` VALUES ('16', '行程安排', 'Schedule', '', '1');
INSERT INTO `operate` VALUES ('17', '菜单管理', 'Menu', '', '1');
INSERT INTO `operate` VALUES ('18', '个人设置', 'Setting', '', '1');
INSERT INTO `operate` VALUES ('19', '添加公告', 'NewsAdd', '', '1');
INSERT INTO `operate` VALUES ('20', '修改公告', 'NewsUpdate', '', '1');
INSERT INTO `operate` VALUES ('21', '删除公告', 'NewsDelete', '', '1');
INSERT INTO `operate` VALUES ('22', '添加考勤', 'RosterAdd', '', '1');
INSERT INTO `operate` VALUES ('23', '修改考勤', 'RosterUpdate', '', '1');
INSERT INTO `operate` VALUES ('24', '删除考勤', 'RosterDelete', '', '1');
INSERT INTO `operate` VALUES ('25', '新增员工', 'UserAdd', '', '1');
INSERT INTO `operate` VALUES ('26', '修改员工', 'UserUpdate', '', '1');
INSERT INTO `operate` VALUES ('27', '删除员工', 'UserDelete', '', '1');
INSERT INTO `operate` VALUES ('28', '新增部门', 'DepartmentAdd', '', '1');
INSERT INTO `operate` VALUES ('29', '修改部门', 'DepartmentUpdate', '', '1');
INSERT INTO `operate` VALUES ('30', '删除部门', 'DepartmentDelete', '', '1');
INSERT INTO `operate` VALUES ('31', '新增角色', 'RoleAdd', '', '1');
INSERT INTO `operate` VALUES ('32', '修改角色', 'RoleUpdate', '', '1');
INSERT INTO `operate` VALUES ('33', '删除角色', 'RoleDelete', '', '1');
INSERT INTO `operate` VALUES ('34', '新增公文模板', 'AffairModuleAdd', '', '1');
INSERT INTO `operate` VALUES ('35', '修改公文模板', 'AffairModuleUpdate', '', '1');
INSERT INTO `operate` VALUES ('36', '删除公文模板', 'AffairModuleDelete', '', '1');
INSERT INTO `operate` VALUES ('37', '添加公告保存', 'NewsSave', '', '1');
INSERT INTO `operate` VALUES ('38', '修改公告保存', 'NewsAlter', '', '1');
INSERT INTO `operate` VALUES ('39', '添加考勤保存', 'RosterSave', '', '1');
INSERT INTO `operate` VALUES ('40', '修改考勤保存', 'RosterAlter', '', '1');
INSERT INTO `operate` VALUES ('41', '新增员工保存', 'UserSave', '', '1');
INSERT INTO `operate` VALUES ('42', '修改员工保存', 'UserAlter', '', '1');
INSERT INTO `operate` VALUES ('43', '新增部门保存', 'DepartmentSave', '', '1');
INSERT INTO `operate` VALUES ('44', '修改部门保存', 'DepartmentAlter', '', '1');
INSERT INTO `operate` VALUES ('45', '新增角色保存', 'RoleSave', '', '1');
INSERT INTO `operate` VALUES ('46', '修改角色保存', 'RoleAlter', '', '1');
INSERT INTO `operate` VALUES ('47', '新增公文模板保存', 'AffairModuleSave', '', '1');
INSERT INTO `operate` VALUES ('48', '修改公文模板保存', 'AffairModuleAlter', '', '1');

-- ----------------------------
-- Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `permissionId` int(11) NOT NULL AUTO_INCREMENT,
  `permissionName` varchar(50) NOT NULL,
  `permissionType` varchar(50) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`permissionId`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '人力资源', '', null);
INSERT INTO `permission` VALUES ('2', '公文模块', null, null);
INSERT INTO `permission` VALUES ('3', '邮箱模块', null, null);
INSERT INTO `permission` VALUES ('4', '个人办公', null, null);
INSERT INTO `permission` VALUES ('5', '系统设置', null, null);
INSERT INTO `permission` VALUES ('6', '考勤管理', null, '1');
INSERT INTO `permission` VALUES ('7', '公告管理', null, '1');
INSERT INTO `permission` VALUES ('8', '员工管理', null, '1');
INSERT INTO `permission` VALUES ('9', '部门管理', null, '1');
INSERT INTO `permission` VALUES ('10', '角色管理', null, '1');
INSERT INTO `permission` VALUES ('11', '权限管理', null, '1');
INSERT INTO `permission` VALUES ('12', '公文设计', null, '2');
INSERT INTO `permission` VALUES ('13', '公文管理', null, '2');
INSERT INTO `permission` VALUES ('14', '邮箱管理', null, '3');
INSERT INTO `permission` VALUES ('15', '工作日志', null, '4');
INSERT INTO `permission` VALUES ('16', '行程安排', null, '4');
INSERT INTO `permission` VALUES ('17', '菜单管理', null, '5');
INSERT INTO `permission` VALUES ('18', '个人设置', null, '5');
INSERT INTO `permission` VALUES ('19', '添加公告', null, '7');
INSERT INTO `permission` VALUES ('20', '修改公告', null, '7');
INSERT INTO `permission` VALUES ('21', '删除公告', null, '7');
INSERT INTO `permission` VALUES ('22', '添加考勤', null, '6');
INSERT INTO `permission` VALUES ('23', '修改考勤', null, '6');
INSERT INTO `permission` VALUES ('24', '删除考勤', null, '6');
INSERT INTO `permission` VALUES ('25', '新增员工', null, '8');
INSERT INTO `permission` VALUES ('26', '修改员工', null, '8');
INSERT INTO `permission` VALUES ('27', '删除员工', null, '8');
INSERT INTO `permission` VALUES ('28', '新增部门', null, '9');
INSERT INTO `permission` VALUES ('29', '修改部门', null, '9');
INSERT INTO `permission` VALUES ('30', '删除部门', null, '9');
INSERT INTO `permission` VALUES ('31', '新增角色', null, '10');
INSERT INTO `permission` VALUES ('32', '修改角色', null, '10');
INSERT INTO `permission` VALUES ('33', '删除角色', null, '10');
INSERT INTO `permission` VALUES ('34', '新增公文模板', null, '12');
INSERT INTO `permission` VALUES ('35', '修改公文模板', null, '12');
INSERT INTO `permission` VALUES ('36', '删除公文模板', null, '12');

-- ----------------------------
-- Table structure for `permission_menu`
-- ----------------------------
DROP TABLE IF EXISTS `permission_menu`;
CREATE TABLE `permission_menu` (
  `permissionId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  KEY `pk_1` (`permissionId`),
  KEY `pk_2` (`menuId`),
  CONSTRAINT `pk_1` FOREIGN KEY (`permissionId`) REFERENCES `permission` (`permissionId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `pk_2` FOREIGN KEY (`menuId`) REFERENCES `menu` (`menuId`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission_menu
-- ----------------------------
INSERT INTO `permission_menu` VALUES ('1', '1');
INSERT INTO `permission_menu` VALUES ('2', '2');
INSERT INTO `permission_menu` VALUES ('3', '3');
INSERT INTO `permission_menu` VALUES ('4', '4');
INSERT INTO `permission_menu` VALUES ('5', '5');
INSERT INTO `permission_menu` VALUES ('6', '6');
INSERT INTO `permission_menu` VALUES ('7', '7');
INSERT INTO `permission_menu` VALUES ('8', '8');
INSERT INTO `permission_menu` VALUES ('9', '9');
INSERT INTO `permission_menu` VALUES ('10', '10');
INSERT INTO `permission_menu` VALUES ('11', '11');
INSERT INTO `permission_menu` VALUES ('12', '12');
INSERT INTO `permission_menu` VALUES ('13', '13');
INSERT INTO `permission_menu` VALUES ('14', '14');
INSERT INTO `permission_menu` VALUES ('15', '15');
INSERT INTO `permission_menu` VALUES ('16', '16');
INSERT INTO `permission_menu` VALUES ('17', '17');
INSERT INTO `permission_menu` VALUES ('18', '18');

-- ----------------------------
-- Table structure for `permission_operate`
-- ----------------------------
DROP TABLE IF EXISTS `permission_operate`;
CREATE TABLE `permission_operate` (
  `permissionId` int(11) NOT NULL,
  `operateId` int(11) NOT NULL,
  KEY `pk_7` (`permissionId`),
  KEY `pk_8` (`operateId`),
  CONSTRAINT `pk_7` FOREIGN KEY (`permissionId`) REFERENCES `permission` (`permissionId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `pk_8` FOREIGN KEY (`operateId`) REFERENCES `operate` (`operateId`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission_operate
-- ----------------------------
INSERT INTO `permission_operate` VALUES ('6', '6');
INSERT INTO `permission_operate` VALUES ('7', '7');
INSERT INTO `permission_operate` VALUES ('8', '8');
INSERT INTO `permission_operate` VALUES ('9', '9');
INSERT INTO `permission_operate` VALUES ('10', '10');
INSERT INTO `permission_operate` VALUES ('11', '11');
INSERT INTO `permission_operate` VALUES ('12', '12');
INSERT INTO `permission_operate` VALUES ('13', '13');
INSERT INTO `permission_operate` VALUES ('14', '14');
INSERT INTO `permission_operate` VALUES ('15', '15');
INSERT INTO `permission_operate` VALUES ('16', '16');
INSERT INTO `permission_operate` VALUES ('17', '17');
INSERT INTO `permission_operate` VALUES ('18', '18');
INSERT INTO `permission_operate` VALUES ('19', '19');
INSERT INTO `permission_operate` VALUES ('20', '20');
INSERT INTO `permission_operate` VALUES ('21', '21');
INSERT INTO `permission_operate` VALUES ('22', '22');
INSERT INTO `permission_operate` VALUES ('23', '23');
INSERT INTO `permission_operate` VALUES ('24', '24');
INSERT INTO `permission_operate` VALUES ('25', '25');
INSERT INTO `permission_operate` VALUES ('26', '26');
INSERT INTO `permission_operate` VALUES ('27', '27');
INSERT INTO `permission_operate` VALUES ('28', '28');
INSERT INTO `permission_operate` VALUES ('29', '29');
INSERT INTO `permission_operate` VALUES ('30', '30');
INSERT INTO `permission_operate` VALUES ('31', '31');
INSERT INTO `permission_operate` VALUES ('32', '32');
INSERT INTO `permission_operate` VALUES ('33', '33');
INSERT INTO `permission_operate` VALUES ('34', '34');
INSERT INTO `permission_operate` VALUES ('35', '35');
INSERT INTO `permission_operate` VALUES ('36', '36');
INSERT INTO `permission_operate` VALUES ('19', '37');
INSERT INTO `permission_operate` VALUES ('20', '38');
INSERT INTO `permission_operate` VALUES ('22', '39');
INSERT INTO `permission_operate` VALUES ('23', '40');
INSERT INTO `permission_operate` VALUES ('25', '41');
INSERT INTO `permission_operate` VALUES ('26', '42');
INSERT INTO `permission_operate` VALUES ('28', '43');
INSERT INTO `permission_operate` VALUES ('29', '44');
INSERT INTO `permission_operate` VALUES ('31', '45');
INSERT INTO `permission_operate` VALUES ('32', '46');
INSERT INTO `permission_operate` VALUES ('34', '47');
INSERT INTO `permission_operate` VALUES ('35', '48');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(50) NOT NULL,
  `departmentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`roleId`),
  KEY `fk_11` (`departmentId`),
  CONSTRAINT `fk_11` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('2', '超级管理员', null);
INSERT INTO `role` VALUES ('3', '总经理', '1');
INSERT INTO `role` VALUES ('4', '副总经理', '1');
INSERT INTO `role` VALUES ('5', '财务经理', '4');
INSERT INTO `role` VALUES ('6', '出纳', '4');
INSERT INTO `role` VALUES ('7', '会计', '4');
INSERT INTO `role` VALUES ('8', '人力资源经理', '5');
INSERT INTO `role` VALUES ('9', '招聘主管', '5');
INSERT INTO `role` VALUES ('10', '薪酬主管', '5');
INSERT INTO `role` VALUES ('11', '招聘专员', '5');
INSERT INTO `role` VALUES ('12', '薪酬专员', '5');
INSERT INTO `role` VALUES ('13', '行政经理', '6');
INSERT INTO `role` VALUES ('14', '行政专员', '6');
INSERT INTO `role` VALUES ('15', '前台', '6');
INSERT INTO `role` VALUES ('16', '法务', '6');
INSERT INTO `role` VALUES ('17', '市场经理', '7');
INSERT INTO `role` VALUES ('18', '网络推广', '7');
INSERT INTO `role` VALUES ('19', '广告宣传', '7');
INSERT INTO `role` VALUES ('20', '销售经理', '8');
INSERT INTO `role` VALUES ('21', '电话销售', '8');
INSERT INTO `role` VALUES ('22', '产品顾问', '8');
INSERT INTO `role` VALUES ('23', '就业经理', '9');
INSERT INTO `role` VALUES ('24', '就业主管', '9');
INSERT INTO `role` VALUES ('25', '就业顾问', '9');
INSERT INTO `role` VALUES ('26', '教学经理', '10');
INSERT INTO `role` VALUES ('27', '讲师', '10');
INSERT INTO `role` VALUES ('28', '班主任', '11');
INSERT INTO `role` VALUES ('29', '分管业务副总I-王琰', '2');
INSERT INTO `role` VALUES ('30', '分管业务副总II-余笑', '3');

-- ----------------------------
-- Table structure for `role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `roleId` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  KEY `pk_5` (`roleId`),
  KEY `pk_6` (`permissionId`),
  CONSTRAINT `pk_5` FOREIGN KEY (`roleId`) REFERENCES `role` (`roleId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `pk_6` FOREIGN KEY (`permissionId`) REFERENCES `permission` (`permissionId`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('2', '1');
INSERT INTO `role_permission` VALUES ('2', '2');
INSERT INTO `role_permission` VALUES ('2', '3');
INSERT INTO `role_permission` VALUES ('2', '4');
INSERT INTO `role_permission` VALUES ('2', '5');
INSERT INTO `role_permission` VALUES ('2', '6');
INSERT INTO `role_permission` VALUES ('2', '7');
INSERT INTO `role_permission` VALUES ('2', '8');
INSERT INTO `role_permission` VALUES ('2', '9');
INSERT INTO `role_permission` VALUES ('2', '10');
INSERT INTO `role_permission` VALUES ('2', '11');
INSERT INTO `role_permission` VALUES ('2', '12');
INSERT INTO `role_permission` VALUES ('2', '13');
INSERT INTO `role_permission` VALUES ('2', '14');
INSERT INTO `role_permission` VALUES ('2', '15');
INSERT INTO `role_permission` VALUES ('2', '16');
INSERT INTO `role_permission` VALUES ('2', '17');
INSERT INTO `role_permission` VALUES ('2', '18');
INSERT INTO `role_permission` VALUES ('2', '19');
INSERT INTO `role_permission` VALUES ('2', '20');
INSERT INTO `role_permission` VALUES ('2', '21');
INSERT INTO `role_permission` VALUES ('2', '22');
INSERT INTO `role_permission` VALUES ('2', '23');
INSERT INTO `role_permission` VALUES ('2', '24');
INSERT INTO `role_permission` VALUES ('2', '25');
INSERT INTO `role_permission` VALUES ('2', '26');
INSERT INTO `role_permission` VALUES ('2', '27');
INSERT INTO `role_permission` VALUES ('2', '28');
INSERT INTO `role_permission` VALUES ('2', '29');
INSERT INTO `role_permission` VALUES ('2', '30');
INSERT INTO `role_permission` VALUES ('2', '31');
INSERT INTO `role_permission` VALUES ('2', '32');
INSERT INTO `role_permission` VALUES ('2', '33');
INSERT INTO `role_permission` VALUES ('2', '34');
INSERT INTO `role_permission` VALUES ('2', '35');
INSERT INTO `role_permission` VALUES ('2', '36');
INSERT INTO `role_permission` VALUES ('3', '1');
INSERT INTO `role_permission` VALUES ('3', '2');
INSERT INTO `role_permission` VALUES ('3', '3');
INSERT INTO `role_permission` VALUES ('3', '4');
INSERT INTO `role_permission` VALUES ('3', '5');
INSERT INTO `role_permission` VALUES ('3', '6');
INSERT INTO `role_permission` VALUES ('3', '7');
INSERT INTO `role_permission` VALUES ('3', '8');
INSERT INTO `role_permission` VALUES ('3', '9');
INSERT INTO `role_permission` VALUES ('3', '10');
INSERT INTO `role_permission` VALUES ('3', '11');
INSERT INTO `role_permission` VALUES ('3', '12');
INSERT INTO `role_permission` VALUES ('3', '13');
INSERT INTO `role_permission` VALUES ('3', '14');
INSERT INTO `role_permission` VALUES ('3', '15');
INSERT INTO `role_permission` VALUES ('3', '16');
INSERT INTO `role_permission` VALUES ('3', '17');
INSERT INTO `role_permission` VALUES ('3', '18');
INSERT INTO `role_permission` VALUES ('3', '19');
INSERT INTO `role_permission` VALUES ('3', '20');
INSERT INTO `role_permission` VALUES ('3', '21');
INSERT INTO `role_permission` VALUES ('3', '22');
INSERT INTO `role_permission` VALUES ('3', '23');
INSERT INTO `role_permission` VALUES ('3', '24');
INSERT INTO `role_permission` VALUES ('3', '25');
INSERT INTO `role_permission` VALUES ('3', '26');
INSERT INTO `role_permission` VALUES ('3', '27');
INSERT INTO `role_permission` VALUES ('3', '28');
INSERT INTO `role_permission` VALUES ('3', '29');
INSERT INTO `role_permission` VALUES ('3', '30');
INSERT INTO `role_permission` VALUES ('3', '31');
INSERT INTO `role_permission` VALUES ('3', '32');
INSERT INTO `role_permission` VALUES ('3', '33');
INSERT INTO `role_permission` VALUES ('3', '34');
INSERT INTO `role_permission` VALUES ('3', '35');
INSERT INTO `role_permission` VALUES ('3', '36');
INSERT INTO `role_permission` VALUES ('26', '2');
INSERT INTO `role_permission` VALUES ('26', '3');
INSERT INTO `role_permission` VALUES ('26', '4');
INSERT INTO `role_permission` VALUES ('26', '5');
INSERT INTO `role_permission` VALUES ('26', '13');
INSERT INTO `role_permission` VALUES ('26', '14');
INSERT INTO `role_permission` VALUES ('26', '15');
INSERT INTO `role_permission` VALUES ('26', '16');
INSERT INTO `role_permission` VALUES ('26', '18');
INSERT INTO `role_permission` VALUES ('27', '2');
INSERT INTO `role_permission` VALUES ('27', '3');
INSERT INTO `role_permission` VALUES ('27', '4');
INSERT INTO `role_permission` VALUES ('27', '5');
INSERT INTO `role_permission` VALUES ('27', '13');
INSERT INTO `role_permission` VALUES ('27', '14');
INSERT INTO `role_permission` VALUES ('27', '15');
INSERT INTO `role_permission` VALUES ('27', '16');
INSERT INTO `role_permission` VALUES ('27', '18');
INSERT INTO `role_permission` VALUES ('28', '2');
INSERT INTO `role_permission` VALUES ('28', '3');
INSERT INTO `role_permission` VALUES ('28', '4');
INSERT INTO `role_permission` VALUES ('28', '5');
INSERT INTO `role_permission` VALUES ('28', '13');
INSERT INTO `role_permission` VALUES ('28', '14');
INSERT INTO `role_permission` VALUES ('28', '15');
INSERT INTO `role_permission` VALUES ('28', '16');
INSERT INTO `role_permission` VALUES ('28', '18');
INSERT INTO `role_permission` VALUES ('8', '1');
INSERT INTO `role_permission` VALUES ('8', '2');
INSERT INTO `role_permission` VALUES ('8', '3');
INSERT INTO `role_permission` VALUES ('8', '4');
INSERT INTO `role_permission` VALUES ('8', '5');
INSERT INTO `role_permission` VALUES ('8', '6');
INSERT INTO `role_permission` VALUES ('8', '7');
INSERT INTO `role_permission` VALUES ('8', '8');
INSERT INTO `role_permission` VALUES ('8', '9');
INSERT INTO `role_permission` VALUES ('8', '10');
INSERT INTO `role_permission` VALUES ('8', '11');
INSERT INTO `role_permission` VALUES ('8', '12');
INSERT INTO `role_permission` VALUES ('8', '13');
INSERT INTO `role_permission` VALUES ('8', '14');
INSERT INTO `role_permission` VALUES ('8', '15');
INSERT INTO `role_permission` VALUES ('8', '16');
INSERT INTO `role_permission` VALUES ('8', '17');
INSERT INTO `role_permission` VALUES ('8', '18');
INSERT INTO `role_permission` VALUES ('8', '19');
INSERT INTO `role_permission` VALUES ('8', '20');
INSERT INTO `role_permission` VALUES ('8', '21');
INSERT INTO `role_permission` VALUES ('8', '22');
INSERT INTO `role_permission` VALUES ('8', '23');
INSERT INTO `role_permission` VALUES ('8', '24');
INSERT INTO `role_permission` VALUES ('8', '25');
INSERT INTO `role_permission` VALUES ('8', '26');
INSERT INTO `role_permission` VALUES ('8', '27');
INSERT INTO `role_permission` VALUES ('8', '28');
INSERT INTO `role_permission` VALUES ('8', '29');
INSERT INTO `role_permission` VALUES ('8', '30');
INSERT INTO `role_permission` VALUES ('8', '31');
INSERT INTO `role_permission` VALUES ('8', '32');
INSERT INTO `role_permission` VALUES ('8', '33');
INSERT INTO `role_permission` VALUES ('8', '34');
INSERT INTO `role_permission` VALUES ('8', '35');
INSERT INTO `role_permission` VALUES ('8', '36');
INSERT INTO `role_permission` VALUES ('13', '2');
INSERT INTO `role_permission` VALUES ('13', '3');
INSERT INTO `role_permission` VALUES ('13', '4');
INSERT INTO `role_permission` VALUES ('13', '5');
INSERT INTO `role_permission` VALUES ('13', '13');
INSERT INTO `role_permission` VALUES ('13', '14');
INSERT INTO `role_permission` VALUES ('13', '15');
INSERT INTO `role_permission` VALUES ('13', '16');
INSERT INTO `role_permission` VALUES ('13', '18');
INSERT INTO `role_permission` VALUES ('5', '1');
INSERT INTO `role_permission` VALUES ('5', '2');
INSERT INTO `role_permission` VALUES ('5', '3');
INSERT INTO `role_permission` VALUES ('5', '4');
INSERT INTO `role_permission` VALUES ('5', '5');
INSERT INTO `role_permission` VALUES ('5', '6');
INSERT INTO `role_permission` VALUES ('5', '7');
INSERT INTO `role_permission` VALUES ('5', '8');
INSERT INTO `role_permission` VALUES ('5', '9');
INSERT INTO `role_permission` VALUES ('5', '10');
INSERT INTO `role_permission` VALUES ('5', '11');
INSERT INTO `role_permission` VALUES ('5', '12');
INSERT INTO `role_permission` VALUES ('5', '13');
INSERT INTO `role_permission` VALUES ('5', '14');
INSERT INTO `role_permission` VALUES ('5', '15');
INSERT INTO `role_permission` VALUES ('5', '16');
INSERT INTO `role_permission` VALUES ('5', '17');
INSERT INTO `role_permission` VALUES ('5', '18');
INSERT INTO `role_permission` VALUES ('5', '19');
INSERT INTO `role_permission` VALUES ('5', '20');
INSERT INTO `role_permission` VALUES ('5', '21');
INSERT INTO `role_permission` VALUES ('5', '22');
INSERT INTO `role_permission` VALUES ('5', '23');
INSERT INTO `role_permission` VALUES ('5', '24');
INSERT INTO `role_permission` VALUES ('5', '25');
INSERT INTO `role_permission` VALUES ('5', '26');
INSERT INTO `role_permission` VALUES ('5', '27');
INSERT INTO `role_permission` VALUES ('5', '28');
INSERT INTO `role_permission` VALUES ('5', '29');
INSERT INTO `role_permission` VALUES ('5', '30');
INSERT INTO `role_permission` VALUES ('5', '31');
INSERT INTO `role_permission` VALUES ('5', '32');
INSERT INTO `role_permission` VALUES ('5', '33');
INSERT INTO `role_permission` VALUES ('5', '34');
INSERT INTO `role_permission` VALUES ('5', '35');
INSERT INTO `role_permission` VALUES ('5', '36');

-- ----------------------------
-- Table structure for `schedule`
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  `scheduleId` int(11) NOT NULL AUTO_INCREMENT,
  `scheduleTitle` varchar(255) DEFAULT NULL,
  `scheduleContent` text,
  `scheduleDate` date DEFAULT NULL,
  `scheduleTime` time DEFAULT NULL,
  `scheduleAddTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `scheduleUpdateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`scheduleId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO `schedule` VALUES ('1', '培训业务周例会', '例行培训业务全国各分中心负责人及支撑部门总监会议。', '2017-11-29', '18:31:24', '2017-11-28 18:31:34', '2017-11-28 18:31:34', '24');
INSERT INTO `schedule` VALUES ('2', '上海漕河泾开发中心教学部门会议', '例行漕河泾开发培训中心教学部、就业部、教务部沟通会议。', '2017-11-29', '18:31:28', '2017-11-28 18:31:37', '2017-11-28 18:31:37', '24');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) NOT NULL,
  `upwd` varchar(50) NOT NULL,
  `nickName` varchar(50) NOT NULL,
  `leaderId` int(11) DEFAULT NULL,
  `face` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'f6fdffe48c908deb0f4c3bd36c032e72', 'admin', null, null);
INSERT INTO `user` VALUES ('2', 'maxuemei', '7ff2af0c05b01ec2456c6b143d48181a', '马雪梅', '11', null);
INSERT INTO `user` VALUES ('3', 'nixiaoyu', '7ff2af0c05b01ec2456c6b143d48181a', '倪笑宇', '11', null);
INSERT INTO `user` VALUES ('4', 'zhangming', '7ff2af0c05b01ec2456c6b143d48181a', '张明', '11', null);
INSERT INTO `user` VALUES ('5', 'huofang', '7ff2af0c05b01ec2456c6b143d48181a', '霍芳', '7', null);
INSERT INTO `user` VALUES ('6', 'sunlirui', '7ff2af0c05b01ec2456c6b143d48181a', '孙丽睿', '8', null);
INSERT INTO `user` VALUES ('7', 'yuxiao', '7ff2af0c05b01ec2456c6b143d48181a', '余笑', '11', null);
INSERT INTO `user` VALUES ('8', 'wangyan', '7ff2af0c05b01ec2456c6b143d48181a', '王琰', '11', null);
INSERT INTO `user` VALUES ('9', 'zhoufeng', '7ff2af0c05b01ec2456c6b143d48181a', '周峰', '11', null);
INSERT INTO `user` VALUES ('10', 'wangwei', '7ff2af0c05b01ec2456c6b143d48181a', '王威', '11', null);
INSERT INTO `user` VALUES ('11', 'libo', '7ff2af0c05b01ec2456c6b143d48181a', '李波', null, null);
INSERT INTO `user` VALUES ('12', 'zhuminghua', '7ff2af0c05b01ec2456c6b143d48181a', '朱明华', '2', null);
INSERT INTO `user` VALUES ('13', 'kangshanshan', '7ff2af0c05b01ec2456c6b143d48181a', '康珊珊', '3', null);
INSERT INTO `user` VALUES ('14', 'xujiayao', '7ff2af0c05b01ec2456c6b143d48181a', '徐佳瑶', '13', null);
INSERT INTO `user` VALUES ('15', 'lipingran', '7ff2af0c05b01ec2456c6b143d48181a', '李品然', '5', null);
INSERT INTO `user` VALUES ('16', 'wanglixia', '7ff2af0c05b01ec2456c6b143d48181a', '王丽霞', '5', null);
INSERT INTO `user` VALUES ('17', 'donghuanhuan', '7ff2af0c05b01ec2456c6b143d48181a', '董欢欢', '6', null);
INSERT INTO `user` VALUES ('18', 'zhuqiong', '7ff2af0c05b01ec2456c6b143d48181a', '朱琼', '17', null);
INSERT INTO `user` VALUES ('19', 'gongweibin', '7ff2af0c05b01ec2456c6b143d48181a', '龚玮斌', '7', null);
INSERT INTO `user` VALUES ('20', 'fengrui', '7ff2af0c05b01ec2456c6b143d48181a', '冯瑞', '19', null);
INSERT INTO `user` VALUES ('21', 'chenchen', '7ff2af0c05b01ec2456c6b143d48181a', '陈晨', '19', null);
INSERT INTO `user` VALUES ('22', 'zhaokai', '7ff2af0c05b01ec2456c6b143d48181a', '赵凯', '19', null);
INSERT INTO `user` VALUES ('23', 'caigenrong', '7ff2af0c05b01ec2456c6b143d48181a', '蔡根荣', '19', null);
INSERT INTO `user` VALUES ('24', 'wenshuqing', '7ff2af0c05b01ec2456c6b143d48181a', '闻书晴', '19', null);
INSERT INTO `user` VALUES ('25', 'chengfengjiao', '7ff2af0c05b01ec2456c6b143d48181a', '陈凤娇', '3', null);

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  KEY `pk_3` (`userId`),
  KEY `pk_4` (`roleId`),
  CONSTRAINT `pk_3` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `pk_4` FOREIGN KEY (`roleId`) REFERENCES `role` (`roleId`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '2');
INSERT INTO `user_role` VALUES ('2', '5');
INSERT INTO `user_role` VALUES ('3', '8');
INSERT INTO `user_role` VALUES ('3', '13');
INSERT INTO `user_role` VALUES ('4', '17');
INSERT INTO `user_role` VALUES ('5', '20');
INSERT INTO `user_role` VALUES ('6', '23');
INSERT INTO `user_role` VALUES ('7', '30');
INSERT INTO `user_role` VALUES ('8', '29');
INSERT INTO `user_role` VALUES ('9', '4');
INSERT INTO `user_role` VALUES ('10', '4');
INSERT INTO `user_role` VALUES ('11', '3');
INSERT INTO `user_role` VALUES ('12', '6');
INSERT INTO `user_role` VALUES ('13', '10');
INSERT INTO `user_role` VALUES ('14', '12');
INSERT INTO `user_role` VALUES ('15', '21');
INSERT INTO `user_role` VALUES ('16', '22');
INSERT INTO `user_role` VALUES ('17', '24');
INSERT INTO `user_role` VALUES ('18', '25');
INSERT INTO `user_role` VALUES ('19', '26');
INSERT INTO `user_role` VALUES ('20', '27');
INSERT INTO `user_role` VALUES ('21', '27');
INSERT INTO `user_role` VALUES ('22', '27');
INSERT INTO `user_role` VALUES ('23', '27');
INSERT INTO `user_role` VALUES ('24', '28');
INSERT INTO `user_role` VALUES ('25', '15');
