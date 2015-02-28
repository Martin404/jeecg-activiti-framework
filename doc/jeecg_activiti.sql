/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : jeecg

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2014-05-28 15:22:34
*/

SET FOREIGN_KEY_CHECKS=0;


-- ----------------------------
-- Table structure for `cgform_button`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_button`;
CREATE TABLE `cgform_button` (
  `ID` varchar(32) NOT NULL,
  `BUTTON_CODE` varchar(50) default NULL,
  `button_icon` varchar(20) default NULL,
  `BUTTON_NAME` varchar(50) default NULL,
  `BUTTON_STATUS` varchar(2) default NULL,
  `BUTTON_STYLE` varchar(20) default NULL,
  `EXP` varchar(255) default NULL,
  `FORM_ID` varchar(32) default NULL,
  `OPT_TYPE` varchar(20) default NULL,
  `order_num` int(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_button
-- ----------------------------

-- ----------------------------
-- Table structure for `cgform_button_sql`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_button_sql`;
CREATE TABLE `cgform_button_sql` (
  `ID` varchar(32) NOT NULL,
  `BUTTON_CODE` varchar(50) default NULL,
  `CGB_SQL` tinyblob,
  `CGB_SQL_NAME` varchar(50) default NULL,
  `CONTENT` longtext,
  `FORM_ID` varchar(32) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_button_sql
-- ----------------------------

-- ----------------------------
-- Table structure for `cgform_enhance_js`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_enhance_js`;
CREATE TABLE `cgform_enhance_js` (
  `ID` varchar(32) NOT NULL,
  `CG_JS` blob,
  `CG_JS_TYPE` varchar(20) default NULL,
  `CONTENT` longtext,
  `FORM_ID` varchar(32) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_enhance_js
-- ----------------------------

-- ----------------------------
-- Table structure for `cgform_field`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_field`;
CREATE TABLE `cgform_field` (
  `id` varchar(32) NOT NULL,
  `content` varchar(200) NOT NULL,
  `create_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `create_name` varchar(32) default NULL,
  `dict_field` varchar(100) default NULL,
  `dict_table` varchar(100) default NULL,
  `dict_text` varchar(100) default NULL,
  `field_default` varchar(20) default NULL,
  `field_href` varchar(200) default NULL,
  `field_length` int(11) default NULL,
  `field_name` varchar(32) NOT NULL,
  `field_valid_type` varchar(10) default NULL,
  `is_key` varchar(2) default NULL,
  `is_null` varchar(5) default NULL,
  `is_query` varchar(5) default NULL,
  `is_show` varchar(5) default NULL,
  `is_show_list` varchar(5) default NULL,
  `length` int(11) NOT NULL,
  `main_field` varchar(100) default NULL,
  `main_table` varchar(100) default NULL,
  `old_field_name` varchar(32) default NULL,
  `order_num` int(11) default NULL,
  `point_length` int(11) default NULL,
  `query_mode` varchar(10) default NULL,
  `show_type` varchar(10) default NULL,
  `type` varchar(32) NOT NULL,
  `update_by` varchar(32) default NULL,
  `update_date` datetime default NULL,
  `update_name` varchar(32) default NULL,
  `table_id` varchar(32) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_field
-- ----------------------------
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b9562c012f', '主键', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'text', 'string', null, null, null, '402881e445e4b8990145e4b9560c012a');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b9563c0130', '订单号', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'order_code', null, 'N', 'Y', 'Y', 'Y', 'Y', '50', '', '', null, '1', '0', 'single', 'text', 'string', null, null, null, '402881e445e4b8990145e4b9560c012a');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b9563c0131', '订单日期', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'order_date', null, 'N', 'Y', 'Y', 'Y', 'Y', '20', '', '', null, '2', '0', 'single', 'date', 'Date', null, null, null, '402881e445e4b8990145e4b9560c012a');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b9564b0132', '订单金额', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'order_money', null, 'N', 'Y', 'Y', 'Y', 'Y', '10', '', '', null, '3', '3', 'single', 'text', 'double', null, null, null, '402881e445e4b8990145e4b9560c012a');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b9564b0133', '备注', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'content', null, 'N', 'Y', 'Y', 'Y', 'Y', '255', '', '', null, '4', '0', 'single', 'text', 'string', null, null, null, '402881e445e4b8990145e4b9560c012a');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b9565b0134', '主键', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'text', 'string', null, null, null, '402881e445e4b8990145e4b9561c012b');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b9565b0135', '请假标题', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'title', null, 'N', 'N', 'N', 'Y', 'Y', '50', '', '', null, '1', '0', 'single', 'text', 'string', null, null, null, '402881e445e4b8990145e4b9561c012b');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b9565b0136', '请假人', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'people', null, 'N', 'N', 'Y', 'Y', 'Y', '20', '', '', null, '2', '0', 'single', 'text', 'string', null, null, null, '402881e445e4b8990145e4b9561c012b');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b9565b0137', '性别', 'admin', '2014-05-10 14:02:02', '管理员', 'sex', '', null, null, null, '0', 'sex', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '3', '0', 'single', 'list', 'string', null, null, null, '402881e445e4b8990145e4b9561c012b');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b9565b0138', '请假开始时间', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'begindate', null, 'N', 'N', 'N', 'Y', 'Y', '0', '', '', null, '4', '0', 'group', 'date', 'Date', null, null, null, '402881e445e4b8990145e4b9561c012b');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b9565b0139', '请假结束时间', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'enddate', null, 'N', 'N', 'N', 'Y', 'Y', '0', '', '', null, '5', '0', 'group', 'datetime', 'Date', null, null, null, '402881e445e4b8990145e4b9561c012b');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b9566b013a', '所属部门', 'admin', '2014-05-10 14:02:02', '管理员', 'id', 't_s_depart', 'departname', null, null, '0', 'hol_dept', null, 'N', 'N', 'N', 'Y', 'Y', '32', '', '', null, '7', '0', 'single', 'list', 'string', null, null, null, '402881e445e4b8990145e4b9561c012b');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b9566b013b', '请假原因', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'hol_reson', null, 'N', 'N', 'N', 'Y', 'Y', '255', '', '', null, '8', '0', 'single', 'text', 'string', null, null, null, '402881e445e4b8990145e4b9561c012b');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b9566b013c', '部门审批人', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'dep_leader', null, 'N', 'N', 'N', 'Y', 'Y', '20', '', '', null, '9', '0', 'single', 'text', 'string', null, null, null, '402881e445e4b8990145e4b9561c012b');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b9566b013d', '部门审批意见', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'content', null, 'N', 'N', 'N', 'Y', 'Y', '255', '', '', null, '10', '0', 'single', 'text', 'string', null, null, null, '402881e445e4b8990145e4b9561c012b');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b9567a013e', '请假天数', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '120', 'day_num', null, 'N', 'Y', 'N', 'Y', 'Y', '10', '', '', null, '6', '0', 'single', 'text', 'int', null, null, null, '402881e445e4b8990145e4b9561c012b');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b9568a013f', '主键', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'text', 'string', null, null, null, '402881e445e4b8990145e4b9561c012c');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b9568a0140', '客户名', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'name', null, 'N', 'Y', 'Y', 'Y', 'Y', '32', '', '', null, '1', '0', 'single', 'text', 'string', null, null, null, '402881e445e4b8990145e4b9561c012c');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b9568a0141', '单价', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'money', null, 'N', 'Y', 'Y', 'Y', 'Y', '10', '', '', null, '2', '2', 'group', 'text', 'double', null, null, null, '402881e445e4b8990145e4b9561c012c');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b9568a0142', '外键', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '120', 'fk_id', null, 'N', 'N', 'Y', 'N', 'N', '36', 'id', 'jform_order_main', null, '5', '0', 'single', 'text', 'string', null, null, null, '402881e445e4b8990145e4b9561c012c');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b9568a0143', '电话', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '120', 'telphone', null, 'N', 'Y', 'Y', 'Y', 'Y', '32', '', '', null, '4', '0', 'single', 'text', 'string', null, null, null, '402881e445e4b8990145e4b9561c012c');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b956990144', '性别', 'admin', '2014-05-10 14:02:02', '管理员', 'sex', '', null, null, null, '120', 'sex', null, 'N', 'Y', 'Y', 'Y', 'Y', '4', '', '', null, '3', '0', 'single', 'radio', 'string', null, null, null, '402881e445e4b8990145e4b9561c012c');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b956990145', '主键', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '120', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'checkbox', 'string', null, null, null, '402881e445e4b8990145e4b9561c012d');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b956990146', '航班号', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '120', 'ticket_code', null, 'N', 'N', 'Y', 'Y', 'Y', '100', '', '', null, '1', '0', 'single', 'text', 'string', null, null, null, '402881e445e4b8990145e4b9561c012d');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b956990147', '航班时间', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '120', 'tickect_date', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '2', '0', 'single', 'datetime', 'Date', null, null, null, '402881e445e4b8990145e4b9561c012d');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b956a90148', '外键', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '120', 'fck_id', null, 'N', 'N', 'N', 'N', 'N', '36', 'id', 'jform_order_main', null, '3', '0', 'single', 'text', 'string', null, null, null, '402881e445e4b8990145e4b9561c012d');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b956a90149', '主键', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'text', 'string', null, null, null, '402881e445e4b8990145e4b9561c012e');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b956a9014a', '机构合计', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'a', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '1', '2', 'group', 'text', 'double', null, null, null, '402881e445e4b8990145e4b9561c012e');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b956a9014b', '行政小计', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'b1', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '2', '2', 'group', 'text', 'double', null, null, null, '402881e445e4b8990145e4b9561c012e');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b956a9014c', '行政省', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'b11', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '3', '0', 'group', 'text', 'string', null, null, null, '402881e445e4b8990145e4b9561c012e');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b956b9014d', '行政市', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'b12', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '4', '0', 'group', 'text', 'string', null, null, null, '402881e445e4b8990145e4b9561c012e');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b956b9014e', '行政县', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'b13', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '5', '0', 'single', 'text', 'string', null, null, null, '402881e445e4b8990145e4b9561c012e');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b956b9014f', '事业合计', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'b2', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '6', '2', 'single', 'text', 'double', null, null, null, '402881e445e4b8990145e4b9561c012e');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b956b90150', '参公小计', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'b3', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '7', '2', 'single', 'text', 'double', null, null, null, '402881e445e4b8990145e4b9561c012e');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b956c80151', '参公省', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'b31', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '8', '0', 'single', 'text', 'string', null, null, null, '402881e445e4b8990145e4b9561c012e');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b956c80152', '参公市', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'b32', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '9', '0', 'single', 'text', 'string', null, null, null, '402881e445e4b8990145e4b9561c012e');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b956c80153', '参公县', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'b33', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '10', '0', 'single', 'text', 'string', null, null, null, '402881e445e4b8990145e4b9561c012e');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b956c80154', '全额拨款', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'c1', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '11', '2', 'single', 'text', 'double', null, null, null, '402881e445e4b8990145e4b9561c012e');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b956c80155', '差额拨款', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'c2', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '12', '2', 'single', 'text', 'double', null, null, null, '402881e445e4b8990145e4b9561c012e');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b956d80156', '自收自支', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'c3', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '13', '2', 'single', 'text', 'double', null, null, null, '402881e445e4b8990145e4b9561c012e');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b956d80157', '经费合计', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'd', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '14', '2', 'single', 'text', 'int', null, null, null, '402881e445e4b8990145e4b9561c012e');
INSERT INTO `cgform_field` VALUES ('402881e445e4b8990145e4b956d80158', '机构资质', 'admin', '2014-05-10 14:02:02', '管理员', '', '', null, null, null, '0', 'd1', null, 'N', 'N', 'N', 'Y', 'Y', '1000', '', '', null, '15', '0', 'single', 'text', 'string', null, null, null, '402881e445e4b8990145e4b9561c012e');

-- ----------------------------
-- Table structure for `cgform_ftl`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_ftl`;
CREATE TABLE `cgform_ftl` (
  `ID` varchar(32) NOT NULL,
  `CGFORM_ID` varchar(36) NOT NULL,
  `CGFORM_NAME` varchar(100) NOT NULL,
  `CREATE_BY` varchar(36) default NULL,
  `CREATE_DATE` datetime default NULL,
  `CREATE_NAME` varchar(32) default NULL,
  `FTL_CONTENT` longtext,
  `FTL_STATUS` varchar(50) default NULL,
  `FTL_VERSION` int(11) NOT NULL,
  `FTL_WORD_URL` varchar(200) default NULL,
  `UPDATE_BY` varchar(36) default NULL,
  `UPDATE_DATE` datetime default NULL,
  `UPDATE_NAME` varchar(32) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_ftl
-- ----------------------------

-- ----------------------------
-- Table structure for `cgform_head`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_head`;
CREATE TABLE `cgform_head` (
  `id` varchar(32) NOT NULL,
  `content` varchar(200) NOT NULL,
  `create_by` varchar(32) default NULL,
  `create_date` datetime default NULL,
  `create_name` varchar(32) default NULL,
  `is_checkbox` varchar(5) NOT NULL,
  `is_dbsynch` varchar(20) NOT NULL,
  `is_pagination` varchar(5) NOT NULL,
  `is_tree` varchar(5) NOT NULL,
  `jform_pk_sequence` varchar(200) default NULL,
  `jform_pk_type` varchar(100) default NULL,
  `jform_type` int(11) NOT NULL,
  `jform_version` varchar(10) NOT NULL,
  `querymode` varchar(10) NOT NULL,
  `relation_type` int(11) default NULL,
  `sub_table_str` longtext,
  `tab_order` int(11) default NULL,
  `table_name` varchar(20) NOT NULL,
  `update_by` varchar(32) default NULL,
  `update_date` datetime default NULL,
  `update_name` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_head
-- ----------------------------
INSERT INTO `cgform_head` VALUES ('402881e445e4b8990145e4b9560c012a', '订单主信息', 'admin', '2014-05-10 14:02:02', '管理员', 'N', 'N', 'Y', 'N', null, 'UUID', '2', '57', 'group', '0', 'jform_order_ticket,jform_order_customer', null, 'jform_order_main', null, null, null);
INSERT INTO `cgform_head` VALUES ('402881e445e4b8990145e4b9561c012b', '请假单', 'admin', '2014-05-10 14:02:02', '管理员', 'N', 'N', 'Y', 'N', null, 'UUID', '1', '51', 'group', '0', null, null, 'jform_leave', null, null, null);
INSERT INTO `cgform_head` VALUES ('402881e445e4b8990145e4b9561c012c', '订单客户信息', 'admin', '2014-05-10 14:02:02', '管理员', 'Y', 'N', 'Y', 'N', null, 'UUID', '3', '16', 'single', '0', null, null, 'jform_order_customer', null, null, null);
INSERT INTO `cgform_head` VALUES ('402881e445e4b8990145e4b9561c012d', '订单机票信息', 'admin', '2014-05-10 14:02:02', '管理员', 'N', 'N', 'Y', 'N', null, 'UUID', '3', '20', 'single', '0', null, null, 'jform_order_ticket', null, null, null);
INSERT INTO `cgform_head` VALUES ('402881e445e4b8990145e4b9561c012e', '价格认证机构统计表', 'admin', '2014-05-10 14:02:02', '管理员', 'N', 'N', 'Y', 'N', null, 'UUID', '1', '3', 'group', '0', null, null, 'jform_price1', null, null, null);

-- ----------------------------
-- Table structure for `cgform_uploadfiles`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_uploadfiles`;
CREATE TABLE `cgform_uploadfiles` (
  `CGFORM_FIELD` varchar(100) NOT NULL,
  `CGFORM_ID` varchar(36) NOT NULL,
  `CGFORM_NAME` varchar(100) NOT NULL,
  `id` varchar(32) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_qwig8sn3okhvh4wye8nn8gdeg` (`id`),
  CONSTRAINT `FK_qwig8sn3okhvh4wye8nn8gdeg` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_uploadfiles
-- ----------------------------

-- ----------------------------
-- Table structure for `ck_editor`
-- ----------------------------
DROP TABLE IF EXISTS `ck_editor`;
CREATE TABLE `ck_editor` (
  `ID` varchar(32) NOT NULL,
  `CONTENTS` blob,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_editor
-- ----------------------------
INSERT INTO `ck_editor` VALUES ('402881e445e4b8990145e4b9560c0129', 0x3C68746D6C3E3C686561643E3C7469746C653E3C2F7469746C653E3C6C696E6B20687265663D27706C75672D696E2F6561737975692F7468656D65732F64656661756C742F6561737975692E637373272069643D276561737975695468656D65272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F6561737975692F7468656D65732F69636F6E2E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F6163636F7264696F6E2F6373732F6163636F7264696F6E2E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F56616C6964666F726D2F6373732F7374796C652E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F56616C6964666F726D2F6373732F7461626C6566726F6D2E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C7374796C6520747970653D27746578742F637373273E626F64797B666F6E742D73697A653A313270783B7D7461626C65207B626F726465723A31707820736F6C696420233030303030303B626F726465722D636F6C6C617073653A20636F6C6C617073653B7D7464207B626F726465723A31707820736F6C696420233030303030303B6261636B67726F756E643A77686974653B666F6E742D73697A653A313270783B666F6E742D66616D696C793A20E696B0E5AE8BE4BD933B636F6C6F723A20233333333B3C2F7374796C653E3C2F686561643E3C626F64793E3C6469763E3C703EE99984E4BBB632EFBC9A3C2F703E3C6831207374796C653D27746578742D616C69676E3A63656E746572273E3C7370616E207374796C653D27666F6E742D73697A653A32347078273E3C7374726F6E673EE4BBB7E6A0BCE8AEA4E8AF81E4BABAE59198E7BB9FE8AEA1E8A1A83C2F7374726F6E673E3C2F7370616E3E3C2F68313E3C703EE5A1ABE68AA5E58D95E4BD8DEFBC88E79B96E7ABA0EFBC89EFBC9A3C696E707574206E616D653D276F72675F6E616D652720747970653D2774657874272076616C75653D27247B6F72675F6E616D653F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C703EE58D95E4BD8DE4BBA3E7A081E58FB7EFBC9A3C696E707574206E616D653D276E756D2720747970653D2774657874272076616C75653D27247B6E756D3F69665F6578697374733F68746D6C7D27202F3E20266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703BE58D95E4BD8DEFBC9AE4BABAE5A1AB266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B20E68AA5E697A5E69C9FEFBC9A266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B20E5B9B4266E6273703B266E6273703B20E69C88266E6273703B266E6273703B20E697A53C2F703E3C666F726D20616374696F6E3D276367466F726D4275696C64436F6E74726F6C6C65722E646F3F736176654F72557064617465272069643D27666F726D6F626A27206D6574686F643D27706F737427206E616D653D27666F726D6F626A273E3C696E707574206E616D653D277461626C654E616D652720747970653D2768696464656E272076616C75653D27247B7461626C654E616D653F69665F6578697374733F68746D6C7D27202F3E203C696E707574206E616D653D2769642720747970653D2768696464656E272076616C75653D27247B69643F69665F6578697374733F68746D6C7D27202F3E237B6A666F726D5F68696464656E5F6669656C647D3C696E70757420747970653D2768696464656E27202F3E3C703E266E6273703B3C2F703E3C7461626C6520626F726465723D2731272063656C6C70616464696E673D2730272063656C6C73706163696E673D273027207374796C653D2777696474683A313031367078273E3C74626F64793E3C74723E3C746420726F777370616E3D2734273E3C703E266E6273703B3C2F703E3C703E266E6273703B3C2F703E3C703EE59088E8AEA13C2F703E3C703E266E6273703B3C2F703E3C2F74643E3C746420636F6C7370616E3D27362720726F777370616E3D2732273E3C703E266E6273703B3C2F703E3C703EE4BABAE695B03C2F703E3C2F74643E3C746420636F6C7370616E3D27352720726F777370616E3D2732273E3C703E266E6273703B3C2F703E3C703EE5ADA6E58E863C2F703E3C2F74643E3C746420636F6C7370616E3D27342720726F777370616E3D2732273E3C703E266E6273703B3C2F703E3C703EE58F96E5BE97E79A84EFBC88E4B88AE5B297EFBC89E689A7E4B89AE8B584E6A0BC3C2F703E3C2F74643E3C746420636F6C7370616E3D2734273E3C703EE4B893E4B89AE68A80E69CAFE8818CE7A7B03C2F703E3C2F74643E3C2F74723E3C74723E3C746420636F6C7370616E3D2734273E3C703EEFBC88E7BB8FE6B58EE7B3BBE58897E38081E5B7A5E7A88BE7B3BBE58897EFBC893C2F703E3C2F74643E3C2F74723E3C74723E3C746420636F6C7370616E3D2733273E3C703EE59CA8E7BC96E4BABAE591983C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703EE88198E794A8E4BABAE591983C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE4B8B4E697B628E5809FE794A829E4BABAE591983C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE9AB98E4B8AD3C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE5A4A7E4B8933C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE69CACE7A7913C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE7A094E7A9B6E7949F3C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE585B6E5AE833C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE4BBB7E6A0BC3C2F703E3C703EE989B4E8AF81E591983C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE4BBB7E6A0BC3C2F703E3C703EE989B4E8AF81E5B8883C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE5A48DE6A0B83C2F703E3C703EE8A381E5AE9AE591983C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE585B6E5AE833C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE5889DE7BAA73C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE4B8ADE7BAA73C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE9AB98E7BAA73C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE585B6E5AE833C2F703E3C2F74643E3C2F74723E3C74723E3C74643E3C703EE69CACE58D95E4BD8D3C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703EE585B6E5AE833C2F703E3C2F74643E3C74643E3C703EE995BFE69C9F3C2F703E3C2F74643E3C74643E3C703EE79FADE69C9F3C2F703E3C2F74643E3C2F74723E3C74723E3C74643E3C703E41313C2F703E3C2F74643E3C74643E3C703E42313C2F703E3C2F74643E3C74643E3C703E42323C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703E42333C2F703E3C2F74643E3C74643E3C703E42343C2F703E3C2F74643E3C74643E3C703E42353C2F703E3C2F74643E3C74643E3C703E43313C2F703E3C2F74643E3C74643E3C703E43323C2F703E3C2F74643E3C74643E3C703E43333C2F703E3C2F74643E3C74643E3C703E43343C2F703E3C2F74643E3C74643E3C703E43353C2F703E3C2F74643E3C74643E3C703E44313C2F703E3C2F74643E3C74643E3C703E44323C2F703E3C2F74643E3C74643E3C703E44333C2F703E3C2F74643E3C74643E3C703E44343C2F703E3C2F74643E3C74643E3C703E45313C2F703E3C2F74643E3C74643E3C703E45323C2F703E3C2F74643E3C74643E3C703E45333C2F703E3C2F74643E3C74643E3C703E45343C2F703E3C2F74643E3C2F74723E3C74723E3C74643E3C703E3C696E707574206E616D653D276131272073697A653D27342720747970653D2774657874272076616C75653D27247B61313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276231272073697A653D27342720747970653D2774657874272076616C75653D27247B62313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276232272073697A653D27342720747970653D2774657874272076616C75653D27247B62323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703E3C696E707574206E616D653D276233272073697A653D27342720747970653D2774657874272076616C75653D27247B62333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276234272073697A653D27342720747970653D2774657874272076616C75653D27247B62343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276235272073697A653D27342720747970653D2774657874272076616C75653D27247B62353F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276331272073697A653D27342720747970653D2774657874272076616C75653D27247B63313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276332272073697A653D27342720747970653D2774657874272076616C75653D27247B63323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276333272073697A653D27342720747970653D2774657874272076616C75653D27247B63333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276334272073697A653D27342720747970653D2774657874272076616C75653D27247B63343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276335272073697A653D27342720747970653D2774657874272076616C75653D27247B63353F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276431272073697A653D27342720747970653D2774657874272076616C75653D27247B64313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276432272073697A653D27342720747970653D2774657874272076616C75653D27247B64323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276433272073697A653D27342720747970653D2774657874272076616C75653D27247B64333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276434272073697A653D27342720747970653D2774657874272076616C75653D27247B64343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276531272073697A653D27342720747970653D2774657874272076616C75653D27247B65313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276532272073697A653D27342720747970653D2774657874272076616C75653D27247B65323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276533272073697A653D27342720747970653D2774657874272076616C75653D27247B65333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276534272073697A653D27342720747970653D2774657874272076616C75653D27247B65343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C2F74723E3C74723E3C746420636F6C7370616E3D273230273E3C703E266E6273703B3C2F703E3C703EE5A1ABE68AA5E8AFB4E6988EEFBC9A3C2F703E3C703EE4B880E38081E59088E8AEA1EFBC8841EFBC89EFBC9AE5A1ABE68AA5E887B3E7BB9FE8AEA1E688AAE6ADA2E69C9FE79A84E69CACE69CBAE69E84E79A84E4BABAE59198E680BBE695B0E380823C2F703E3C703EE4BA8CE38081E4BABAE695B0EFBC9A3C2F703E3C703EE59CA8E7BC96E4BABAE59198EFBC9AE58886E588ABE68C89E785A7E4BBB7E6A0BCE8AEA4E8AF81E69CBAE69E84E7BC96E588B6E58685E58F8AE585B6E5AE83E585B7E69C89E4BBB7E6A0BCE4B8BBE7AEA1E983A8E997A8E7BC96E588B6E79A84E5AE9EE69C89E4BABAE695B0E5A1ABE68AA5E59CA84231E380814232E6A08FE58685E380823C2F703E3C703EE88198E794A8E4BABAE59198EFBC9AE68C89E785A7E7BB8FE4BBB7E6A0BCE4B8BBE7AEA1E983A8E997A8E68896E4BBB7E6A0BCE8AEA4E8AF81E69CBAE69E84E4BABAE4BA8BE983A8E997A8E8AEA4E58FAFE79A84E5B9B6E7ADBEE8AEA2E4B889E5B9B4E4BBA5E4B88AE79A84E5B7A5E4BD9CE59088E5908CE79A84E4BABAE59198EFBC884233EFBC89EFBC9BE4BBA5E58F8AE6B2A1E69C89E7BB8FE8BF87E4BBB7E6A0BCE4B8BBE7AEA1E983A8E997A8E68896E4BBB7E6A0BCE8AEA4E8AF81E69CBAE69E84E4BABAE4BA8BE983A8E997A8E8AEA4E58FAFE79A84E7ADBEE8AEA2E59088E5908CE5B091E4BA8EE4B889E5B9B4E79A84E4BABAE59198EFBC884234EFBC89E58886E588ABE69DA5E8BF9BE8A18CE7BB9FE8AEA1E380823C2F703E3C703EE4B8B4E697B6EFBC88E5809FE794A8EFBC89E4BABAE59198EFBC884235EFBC89EFBC9AE789B9E68C87E5A496E88198E79A84E4B8B4E697B6E5B7A5EFBC8CE68896E88085E5B7A5E4BD9CE585B3E7B3BBE4B88DE59CA8E69CACE58D95E4BD8DE4B894E697A0E995BFE69C9FE88198E794A8E59088E5908CE79A84E5809FE8B083E4BABAE59198E7AD89E380823C2F703E3C703EE4B889E38081E8A1A8E58685E59084E6A08FE79BAEE585B3E7B3BB3C2F703E3C703E413D42312B42322B42332B42342B42353D43312B43322B43332B43342B43353D44312B44322B44332B44343D45312B45322B45332B45343C2F703E3C2F74643E3C2F74723E3C2F74626F64793E3C2F7461626C653E3C2F666F726D3E3C2F6469763E3C2F626F64793E3C2F68746D6C3E);

-- ----------------------------
-- Table structure for `ck_finder`
-- ----------------------------
DROP TABLE IF EXISTS `ck_finder`;
CREATE TABLE `ck_finder` (
  `ID` varchar(32) NOT NULL,
  `ATTACHMENT` varchar(255) default NULL,
  `IMAGE` varchar(255) default NULL,
  `REMARK` longtext,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_finder
-- ----------------------------

-- ----------------------------
-- Table structure for `doc`
-- ----------------------------
DROP TABLE IF EXISTS `doc`;
CREATE TABLE `doc` (
  `ID` int(11) NOT NULL auto_increment,
  `DOCCONTENT` longblob,
  `DOCDATE` datetime default NULL,
  `DOCID` varchar(255) default NULL,
  `DOCTITLE` varchar(255) default NULL,
  `DOCTYPE` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doc
-- ----------------------------

-- ----------------------------
-- Table structure for `jeecg_demo`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo`;
CREATE TABLE `jeecg_demo` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) default NULL,
  `BIRTHDAY` datetime default NULL,
  `content` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `DEP_ID` varchar(255) default NULL,
  `EMAIL` varchar(255) default NULL,
  `MOBILE_PHONE` varchar(255) default NULL,
  `OFFICE_PHONE` varchar(255) default NULL,
  `SALARY` decimal(19,2) default NULL,
  `SEX` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `USER_NAME` varchar(255) NOT NULL,
  `CREATE_TIME` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo
-- ----------------------------
INSERT INTO `jeecg_demo` VALUES ('402881e445e4b8990145e4b95810015e', '12', '2014-02-14 00:00:00', null, null, '123', 'demo@jeecg.com', '13111111111', '66666666', '111111.00', '1', null, '小明', null);

-- ----------------------------
-- Table structure for `jeecg_demo_course`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo_course`;
CREATE TABLE `jeecg_demo_course` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(25) default NULL,
  `teacher_ID` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_g3jn8mfod69i7jfv5gnrcvgbx` (`teacher_ID`),
  CONSTRAINT `FK_g3jn8mfod69i7jfv5gnrcvgbx` FOREIGN KEY (`teacher_ID`) REFERENCES `jeecg_demo_teacher` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo_course
-- ----------------------------
INSERT INTO `jeecg_demo_course` VALUES ('402881e445e4b8990145e4b956e7015b', '海贼王', '402881e445e4b8990145e4b956e7015a');

-- ----------------------------
-- Table structure for `jeecg_demo_student`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo_student`;
CREATE TABLE `jeecg_demo_student` (
  `ID` varchar(32) NOT NULL,
  `BIRTHDAY` datetime default NULL,
  `NAME` varchar(32) default NULL,
  `SEX` varchar(1) default NULL,
  `COURSE_ID` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_r86q81koyocgod3cx6529hbpw` (`COURSE_ID`),
  CONSTRAINT `FK_r86q81koyocgod3cx6529hbpw` FOREIGN KEY (`COURSE_ID`) REFERENCES `jeecg_demo_course` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo_student
-- ----------------------------
INSERT INTO `jeecg_demo_student` VALUES ('402881e445e4b8990145e4b956e7015c', null, '卓洛', '0', '402881e445e4b8990145e4b956e7015b');
INSERT INTO `jeecg_demo_student` VALUES ('402881e445e4b8990145e4b956e7015d', null, '山治 ', '0', '402881e445e4b8990145e4b956e7015b');

-- ----------------------------
-- Table structure for `jeecg_demo_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo_teacher`;
CREATE TABLE `jeecg_demo_teacher` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(12) default NULL,
  `pic` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo_teacher
-- ----------------------------
INSERT INTO `jeecg_demo_teacher` VALUES ('402881e445e4b8990145e4b956e7015a', '路飞', 'upload/Teacher/pic3345280233.PNG');

-- ----------------------------
-- Table structure for `jeecg_matter_bom`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_matter_bom`;
CREATE TABLE `jeecg_matter_bom` (
  `ID` varchar(32) NOT NULL,
  `address` varchar(255) default NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(21,6) NOT NULL,
  `productionDate` datetime default NULL,
  `quantity` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `unit` varchar(50) default NULL,
  `weight` varchar(50) default NULL,
  `parent_ID` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_fldfyrevj0li4hej5b2gu2q7w` (`parent_ID`),
  CONSTRAINT `FK_fldfyrevj0li4hej5b2gu2q7w` FOREIGN KEY (`parent_ID`) REFERENCES `jeecg_matter_bom` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_matter_bom
-- ----------------------------
INSERT INTO `jeecg_matter_bom` VALUES ('402881e445e4b8990145e4b9582f0163', '广东深圳', '001', '电脑', '5000.000000', '2014-05-10 14:02:03', '5', '10', '台', '100', null);
INSERT INTO `jeecg_matter_bom` VALUES ('402881e445e4b8990145e4b9582f0164', '上海', '001001', '主板', '800.000000', '2014-05-10 14:02:03', '6', '18', '个', '60', '402881e445e4b8990145e4b9582f0163');

-- ----------------------------
-- Table structure for `jeecg_minidao`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_minidao`;
CREATE TABLE `jeecg_minidao` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) default NULL,
  `BIRTHDAY` datetime default NULL,
  `CONTENT` varchar(255) default NULL,
  `CREATE_TIME` datetime default NULL,
  `DEP_ID` varchar(255) default NULL,
  `EMAIL` varchar(255) default NULL,
  `MOBILE_PHONE` varchar(255) default NULL,
  `OFFICE_PHONE` varchar(255) default NULL,
  `SALARY` decimal(19,2) default NULL,
  `SEX` int(11) default NULL,
  `STATUS` varchar(255) default NULL,
  `USER_NAME` varchar(255) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_minidao
-- ----------------------------

-- ----------------------------
-- Table structure for `jeecg_order_custom`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_custom`;
CREATE TABLE `jeecg_order_custom` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime default NULL,
  `CRTUSER` varchar(12) default NULL,
  `CRTUSER_NAME` varchar(10) default NULL,
  `DEL_DT` datetime default NULL,
  `DELFLAG` int(11) default NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GOC_BUSS_CONTENT` varchar(33) default NULL,
  `GOC_CONTENT` varchar(66) default NULL,
  `GOC_CUS_NAME` varchar(16) default NULL,
  `GOC_IDCARD` varchar(18) default NULL,
  `GOC_PASSPORT_CODE` varchar(10) default NULL,
  `GOC_SEX` varchar(255) default NULL,
  `MODIFIER` varchar(12) default NULL,
  `MODIFIER_NAME` varchar(10) default NULL,
  `MODIFY_DT` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_order_custom
-- ----------------------------
INSERT INTO `jeecg_order_custom` VALUES ('402881e445e4b8990145e4b9581f0162', null, null, null, null, null, '11111AAA', null, null, '小明', null, null, '1', null, null, null);

-- ----------------------------
-- Table structure for `jeecg_order_main`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_main`;
CREATE TABLE `jeecg_order_main` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime default NULL,
  `CRTUSER` varchar(12) default NULL,
  `CRTUSER_NAME` varchar(10) default NULL,
  `DEL_DT` datetime default NULL,
  `DELFLAG` int(11) default NULL,
  `GO_ALL_PRICE` decimal(10,2) default NULL,
  `GO_CONTACT_NAME` varchar(16) default NULL,
  `GO_CONTENT` varchar(66) default NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GO_ORDER_COUNT` int(11) default NULL,
  `GO_RETURN_PRICE` decimal(10,2) default NULL,
  `GO_TELPHONE` varchar(11) default NULL,
  `GODER_TYPE` varchar(255) default NULL,
  `MODIFIER` varchar(12) default NULL,
  `MODIFIER_NAME` varchar(10) default NULL,
  `MODIFY_DT` datetime default NULL,
  `USERTYPE` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_order_main
-- ----------------------------
INSERT INTO `jeecg_order_main` VALUES ('402881e445e4b8990145e4b9581f0160', null, null, null, null, null, '1111111.00', 'alex', '别放辣椒', '11111AAA', '1', '100.00', null, '1', null, null, null, '1');

-- ----------------------------
-- Table structure for `jeecg_order_product`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_product`;
CREATE TABLE `jeecg_order_product` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime default NULL,
  `CRTUSER` varchar(12) default NULL,
  `CRTUSER_NAME` varchar(10) default NULL,
  `DEL_DT` datetime default NULL,
  `DELFLAG` int(11) default NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GOP_CONTENT` varchar(66) default NULL,
  `GOP_COUNT` int(11) default NULL,
  `GOP_ONE_PRICE` decimal(10,2) default NULL,
  `GOP_PRODUCT_NAME` varchar(33) default NULL,
  `GOP_PRODUCT_TYPE` varchar(1) NOT NULL,
  `GOP_SUM_PRICE` decimal(10,2) default NULL,
  `MODIFIER` varchar(12) default NULL,
  `MODIFIER_NAME` varchar(10) default NULL,
  `MODIFY_DT` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_order_product
-- ----------------------------
INSERT INTO `jeecg_order_product` VALUES ('402881e445e4b8990145e4b9581f0161', null, null, null, null, null, '11111AAA', null, '1', '100.00', '最最美味的地锅鸡', '1', '100.00', null, null, null);

-- ----------------------------
-- Table structure for `jform_cgreport_head`
-- ----------------------------
DROP TABLE IF EXISTS `jform_cgreport_head`;
CREATE TABLE `jform_cgreport_head` (
  `ID` varchar(36) NOT NULL,
  `CGR_SQL` longtext NOT NULL,
  `CODE` varchar(36) NOT NULL,
  `CONTENT` longtext NOT NULL,
  `NAME` varchar(100) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jform_cgreport_head
-- ----------------------------

-- ----------------------------
-- Table structure for `jform_cgreport_item`
-- ----------------------------
DROP TABLE IF EXISTS `jform_cgreport_item`;
CREATE TABLE `jform_cgreport_item` (
  `ID` varchar(36) NOT NULL,
  `S_FLAG` varchar(2) default NULL,
  `S_MODE` varchar(10) default NULL,
  `CGRHEAD_ID` varchar(36) default NULL,
  `DICT_CODE` varchar(36) default NULL,
  `FIELD_HREF` varchar(120) default NULL,
  `FIELD_NAME` varchar(36) default NULL,
  `FIELD_TXT` longtext,
  `FIELD_TYPE` varchar(10) default NULL,
  `IS_SHOW` varchar(5) default NULL,
  `ORDER_NUM` int(11) default NULL,
  `REPLACE_VA` varchar(36) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jform_cgreport_item
-- ----------------------------

-- ----------------------------
-- Table structure for `jg_person`
-- ----------------------------
DROP TABLE IF EXISTS `jg_person`;
CREATE TABLE `jg_person` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) default NULL,
  `BIRTHDAY` datetime default NULL,
  `CREATEDT` datetime default NULL,
  `NAME` varchar(255) NOT NULL,
  `SALARY` decimal(19,2) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jg_person
-- ----------------------------
INSERT INTO `jg_person` VALUES ('402881e445e4b8990145e4b95810015f', '10', '2014-05-10 14:02:03', '2014-05-10 14:02:03', '小红', '1000.00');

-- ----------------------------
-- Table structure for `oa_leave`
-- ----------------------------
DROP TABLE IF EXISTS `oa_leave`;
CREATE TABLE `oa_leave` (
  `id` bigint(20) NOT NULL auto_increment,
  `processInstanceId` varchar(255) default NULL,
  `reason` varchar(255) default NULL,
  `userId` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_leave
-- ----------------------------
INSERT INTO `oa_leave` VALUES ('2', '10', '刘京华申请婚假', 'admin');
INSERT INTO `oa_leave` VALUES ('3', '120', '刘京华请假', 'admin');
INSERT INTO `oa_leave` VALUES ('4', '129', '贺芳艳请假', 'admin');
INSERT INTO `oa_leave` VALUES ('5', '210', null, 'admin');
INSERT INTO `oa_leave` VALUES ('6', '218', null, 'admin');

-- ----------------------------
-- Table structure for `optimistic_locking`
-- ----------------------------
DROP TABLE IF EXISTS `optimistic_locking`;
CREATE TABLE `optimistic_locking` (
  `ID` varchar(32) NOT NULL,
  `ACCOUNT` int(11) default NULL,
  `AGE` int(11) default NULL,
  `NAME` varchar(85) default NULL,
  `VER` int(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of optimistic_locking
-- ----------------------------

-- ----------------------------
-- Table structure for `t_finance`
-- ----------------------------
DROP TABLE IF EXISTS `t_finance`;
CREATE TABLE `t_finance` (
  `ID` varchar(32) NOT NULL,
  `APPROFILETYPE` varchar(255) default NULL,
  `BUYMONEY` float default NULL,
  `BUYPROJECTNO` varchar(255) default NULL,
  `BUYPROJECTORG` varchar(255) default NULL,
  `BUYUSE` varchar(255) default NULL,
  `BUYYEAR` varchar(255) default NULL,
  `CATEGORY` varchar(255) default NULL,
  `COLLECTORG` varchar(255) default NULL,
  `EXPENSEACCOUNT` varchar(255) default NULL,
  `HAPPENYEAR` int(11) default NULL,
  `MONEYAREA` varchar(255) default NULL,
  `MONEYSOURCE` varchar(255) default NULL,
  `MONEYTOTAL` float default NULL,
  `MONEYUSE` varchar(255) default NULL,
  `PAYTIME` datetime default NULL,
  `ZBWNO` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_finance
-- ----------------------------

-- ----------------------------
-- Table structure for `t_finance_files`
-- ----------------------------
DROP TABLE IF EXISTS `t_finance_files`;
CREATE TABLE `t_finance_files` (
  `id` varchar(32) NOT NULL,
  `financeId` varchar(32) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_ij2p74feypwcda4n0n96pyd10` (`financeId`),
  KEY `FK_28m7vvi0cy5r5keke68b6f7rt` (`id`),
  CONSTRAINT `FK_28m7vvi0cy5r5keke68b6f7rt` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`),
  CONSTRAINT `FK_ij2p74feypwcda4n0n96pyd10` FOREIGN KEY (`financeId`) REFERENCES `t_finance` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_finance_files
-- ----------------------------

-- ----------------------------
-- Table structure for `t_s_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_attachment`;
CREATE TABLE `t_s_attachment` (
  `ID` varchar(32) NOT NULL,
  `attachmentcontent` longblob,
  `attachmenttitle` varchar(100) default NULL,
  `businesskey` varchar(32) default NULL,
  `createdate` datetime default NULL,
  `extend` varchar(32) default NULL,
  `note` longtext,
  `realpath` varchar(100) default NULL,
  `subclassname` longtext,
  `swfpath` longtext,
  `BUSENTITYNAME` varchar(100) default NULL,
  `INFOTYPEID` varchar(32) default NULL,
  `USERID` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_mnq23hlc835n4ufgjl7nkn3bd` (`USERID`),
  CONSTRAINT `FK_mnq23hlc835n4ufgjl7nkn3bd` FOREIGN KEY (`USERID`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_attachment
-- ----------------------------
INSERT INTO `t_s_attachment` VALUES ('402881e445e4b8990145e4b950220008', null, 'JR079839867R90000001000', null, null, 'doc', null, 'JR079839867R90000001000', null, 'upload/files/20130719201109hDr31jP1.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e445e4b8990145e4b950220009', null, 'JEECG平台协议', null, null, 'docx', null, 'JEECG平台协议', null, 'upload/files/20130719201156sYHjSFJj.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e445e4b8990145e4b95022000a', null, '分析JEECG与其他的开源项目的不足和优势', null, null, 'docx', null, '分析JEECG与其他的开源项目的不足和优势', null, 'upload/files/20130719201727ZLEX1OSf.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e445e4b8990145e4b95022000b', null, 'DMS-T3第三方租赁业务接口开发说明', null, null, 'docx', null, 'DMS-T3第三方租赁业务接口开发说明', null, 'upload/files/20130719201841LzcgqUek.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e445e4b8990145e4b95031000c', null, 'SAP-需求说明书-金融服务公司-第三方租赁业务需求V1.7-研发', null, null, 'doc', null, 'SAP-需求说明书-金融服务公司-第三方租赁业务需求V1.7-研发', null, 'upload/files/20130719201925mkCrU47P.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e445e4b8990145e4b95031000d', null, 'JEECG团队开发规范', null, null, 'txt', null, 'JEECG团队开发规范', null, 'upload/files/20130724103633fvOTwNSV.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e445e4b8990145e4b95031000e', null, '第一模板', null, null, 'doc', null, '第一模板', null, 'upload/files/20130724104603pHDw4QUT.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e445e4b8990145e4b95031000f', null, 'github入门使用教程', null, null, 'doc', null, 'github入门使用教程', null, 'upload/files/20130704200345EakUH3WB.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e445e4b8990145e4b950310010', null, 'github入门使用教程', null, null, 'doc', null, 'github入门使用教程', null, 'upload/files/20130704200651IE8wPdZ4.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e445e4b8990145e4b950310011', null, '（张代浩）-金融服务公司机构岗位职责与任职资格设置表(根据模板填写）', null, null, 'xlsx', null, '（张代浩）-金融服务公司机构岗位职责与任职资格设置表(根据模板填写）', null, 'upload/files/20130704201022KhdRW1Gd.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e445e4b8990145e4b950310012', null, 'EIM201_CN', null, null, 'pdf', null, 'EIM201_CN', null, 'upload/files/20130704201046JVAkvvOt.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e445e4b8990145e4b950410013', null, 'github入门使用教程', null, null, 'doc', null, 'github入门使用教程', null, 'upload/files/20130704201116Z8NhEK57.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e445e4b8990145e4b950410014', null, 'JEECGUI标签库帮助文档v3.2', null, null, 'pdf', null, 'JEECGUI标签库帮助文档v3.2', null, 'upload/files/20130704201125DQg8hi2x.swf', null, null, null);

-- ----------------------------
-- Table structure for `t_s_base_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_base_user`;
CREATE TABLE `t_s_base_user` (
  `ID` varchar(32) NOT NULL,
  `activitiSync` smallint(6) default NULL,
  `browser` varchar(20) default NULL,
  `password` varchar(100) default NULL,
  `realname` varchar(50) default NULL,
  `signature` blob,
  `status` smallint(6) default NULL,
  `userkey` varchar(200) default NULL,
  `username` varchar(10) NOT NULL,
  `departid` varchar(32) default NULL,
  `rev` INT(11) NULL DEFAULT NULL,
--  `first` VARCHAR(255) NULL DEFAULT NULL,
--  `last` VARCHAR(255) NULL DEFAULT NULL,
  `pictureId` VARCHAR(64) NULL DEFAULT NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_15jh1g4iem1857546ggor42et` (`departid`),
  CONSTRAINT `FK_15jh1g4iem1857546ggor42et` FOREIGN KEY (`departid`) REFERENCES `t_s_depart` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_base_user
-- ----------------------------
INSERT INTO `t_s_base_user` VALUES ('402881e445e4b8990145e4b9515a0043', '1', null, 'c44b01947c9e6e3f', '管理员', null, '1', null, 'admin', '402881e445e4b8990145e4b950410015', null, null);
INSERT INTO `t_s_base_user` VALUES ('402881e445e4b8990145e4b951690044', '0', null, '97c07a884bf272b5', '张代浩', null, '1', null, 'scott', '402881e445e4b8990145e4b950600017', null, null);
INSERT INTO `t_s_base_user` VALUES ('402881e445e4b8990145e4b951690045', '0', null, 'f2322ec2fb9f40d1', '采购员', null, '1', null, 'cgy', '402881e445e4b8990145e4b950410015', null, null);
INSERT INTO `t_s_base_user` VALUES ('402881e445e4b8990145e4b951790046', '1', null, 'a324509dc1a3089a', '采购审批员', null, '1', null, 'cgspy', '402881e445e4b8990145e4b950410015', null, null);
-- INSERT INTO `t_s_base_user` VALUES ('402881e445e4b8990145e4b9515a0043', '1', null, 'c44b01947c9e6e3f', '管理员', null, '1', null, 'admin', '402881e445e4b8990145e4b950410015', null, null, null, null);
-- INSERT INTO `t_s_base_user` VALUES ('402881e445e4b8990145e4b951690044', '0', null, '97c07a884bf272b5', '张代浩', null, '1', null, 'scott', '402881e445e4b8990145e4b950600017', null, null, null, null);
-- INSERT INTO `t_s_base_user` VALUES ('402881e445e4b8990145e4b951690045', '0', null, 'f2322ec2fb9f40d1', '采购员', null, '1', null, 'cgy', '402881e445e4b8990145e4b950410015', null, null, null, null);
-- INSERT INTO `t_s_base_user` VALUES ('402881e445e4b8990145e4b951790046', '1', null, 'a324509dc1a3089a', '采购审批员', null, '1', null, 'cgspy', '402881e445e4b8990145e4b950410015', null, null, null, null);

-- ----------------------------
-- Table structure for `t_s_config`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_config`;
CREATE TABLE `t_s_config` (
  `ID` varchar(32) NOT NULL,
  `code` varchar(100) default NULL,
  `content` longtext,
  `name` varchar(100) NOT NULL,
  `note` longtext,
  `userid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_m3q8r50ror4fl7fjkvd82tqgn` (`userid`),
  CONSTRAINT `FK_m3q8r50ror4fl7fjkvd82tqgn` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_config
-- ----------------------------

-- ----------------------------
-- Table structure for `t_s_demo`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_demo`;
CREATE TABLE `t_s_demo` (
  `ID` varchar(32) NOT NULL,
  `democode` longtext,
  `demoorder` smallint(6) default NULL,
  `demotitle` varchar(200) default NULL,
  `demourl` varchar(200) default NULL,
  `demopid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_fni8e3v88wcf2sahhlv57u4nm` (`demopid`),
  CONSTRAINT `FK_fni8e3v88wcf2sahhlv57u4nm` FOREIGN KEY (`demopid`) REFERENCES `t_s_demo` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_demo
-- ----------------------------
INSERT INTO `t_s_demo` VALUES ('402881e445e4b8990145e4b9550300c4', '<div class=\"form\">\r\n   <label class=\"Validform_label\">\r\n     非空验证：\r\n    </label>\r\n    <input name=\"demotitle\" id=\"demotitle\" datatype=\"*\" errormsg=\"该字段不为空\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     URL验证：\r\n    </label>\r\n    <input name=\"demourl\" id=\"demourl\" datatype=\"url\" errormsg=\"必须是URL\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     至少选择2项：\r\n    </label>\r\n    <input name=\"shoppingsite1\" class=\"rt2\" id=\"shoppingsite21\" type=\"checkbox\" value=\"1\" datatype=\"need2\" nullmsg=\"请选择您的爱好！\" />\r\n  \r\n     阅读\r\n  \r\n    <input name=\"shoppingsite1\" class=\"rt2\" id=\"shoppingsite22\" type=\"checkbox\" value=\"2\" />\r\n    \r\n     音乐\r\n  \r\n    <input name=\"shoppingsite1\" class=\"rt2\" id=\"shoppingsite23\" type=\"checkbox\" value=\"3\" />\r\n  \r\n     运动\r\n   \r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     邮箱：\r\n    </label>\r\n    <input name=\"demoorder\" id=\"demoorder\" datatype=\"e\" errormsg=\"邮箱非法\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     手机号：\r\n    </label>\r\n    <input name=\"phone\" id=\"phone\" datatype=\"m\" errormsg=\"手机号非法\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     金额：\r\n    </label>\r\n    <input name=\"money\" id=\"money\" datatype=\"d\" errormsg=\"金额非法\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     日期：\r\n    </label>\r\n    <input name=\"date\" id=\"date\" class=\"easyui-datebox\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     时间：\r\n    </label>\r\n    <input name=\"time\" id=\"time\" class=\"easyui-datetimebox\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>', null, '表单验证', null, null);

-- ----------------------------
-- Table structure for `t_s_depart`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_depart`;
CREATE TABLE `t_s_depart` (
  `ID` varchar(32) NOT NULL,
  `departname` varchar(100) NOT NULL,
  `description` longtext,
  `parentdepartid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_knnm3wb0bembwvm0il7tf6686` (`parentdepartid`),
  CONSTRAINT `FK_knnm3wb0bembwvm0il7tf6686` FOREIGN KEY (`parentdepartid`) REFERENCES `t_s_depart` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_depart
-- ----------------------------
INSERT INTO `t_s_depart` VALUES ('402881e445e4b8990145e4b950410015', '信息部', '12', null);
INSERT INTO `t_s_depart` VALUES ('402881e445e4b8990145e4b950510016', '设计部', null, null);
INSERT INTO `t_s_depart` VALUES ('402881e445e4b8990145e4b950600017', '研发室', '研发技术难题', '402881e445e4b8990145e4b950510016');

-- ----------------------------
-- Table structure for `t_s_document`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_document`;
CREATE TABLE `t_s_document` (
  `documentstate` smallint(6) default NULL,
  `documenttitle` varchar(100) default NULL,
  `pictureindex` blob,
  `showhome` smallint(6) default NULL,
  `id` varchar(32) NOT NULL,
  `typeid` varchar(32) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_qr3qlmgkflj35m5ci1xv0vvg3` (`typeid`),
  KEY `FK_f2mc12eu0umghp2i70apmtxjl` (`id`),
  CONSTRAINT `FK_f2mc12eu0umghp2i70apmtxjl` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`),
  CONSTRAINT `FK_qr3qlmgkflj35m5ci1xv0vvg3` FOREIGN KEY (`typeid`) REFERENCES `t_s_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_document
-- ----------------------------

-- ----------------------------
-- Table structure for `t_s_fileno`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_fileno`;
CREATE TABLE `t_s_fileno` (
  `ID` varchar(32) NOT NULL,
  `filenobefore` varchar(32) default NULL,
  `filenonum` int(11) default NULL,
  `filenotype` varchar(32) default NULL,
  `filenoYear` date default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_fileno
-- ----------------------------

-- ----------------------------
-- Table structure for `t_s_function`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_function`;
CREATE TABLE `t_s_function` (
  `ID` varchar(32) NOT NULL,
  `functioniframe` smallint(6) default NULL,
  `functionlevel` smallint(6) default NULL,
  `functionname` varchar(50) NOT NULL,
  `functionorder` varchar(255) default NULL,
  `functionurl` varchar(100) default NULL,
  `parentfunctionid` varchar(32) default NULL,
  `iconid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_brd7b3keorj8pmxcv8bpahnxp` (`parentfunctionid`),
  KEY `FK_q5tqo3v4ltsp1pehdxd59rccx` (`iconid`),
  CONSTRAINT `FK_brd7b3keorj8pmxcv8bpahnxp` FOREIGN KEY (`parentfunctionid`) REFERENCES `t_s_function` (`ID`),
  CONSTRAINT `FK_q5tqo3v4ltsp1pehdxd59rccx` FOREIGN KEY (`iconid`) REFERENCES `t_s_icon` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_function
-- ----------------------------
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b950700018', null, '0', 'Online 开发', '1', '', null, '402881e445e4b8990145e4b950220007');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b950700019', null, '0', '系统管理', '5', '', null, '402881e445e4b8990145e4b950120005');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b95070001a', null, '0', '统计查询', '3', '', null, '402881e445e4b8990145e4b950220007');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b9507f001b', null, '0', '常用示例', '8', '', null, '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b9507f001c', null, '0', '系统监控', '11', '', null, '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b9507f001d', null, '1', '用户管理', '5', 'userController.do?user', '402881e445e4b8990145e4b950700019', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b9507f001e', null, '1', '角色管理', '6', 'roleController.do?role', '402881e445e4b8990145e4b950700019', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b9507f001f', null, '1', '菜单管理', '7', 'functionController.do?function', '402881e445e4b8990145e4b950700019', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b9508f0020', null, '1', '数据字典', '6', 'systemController.do?typeGroupList', '402881e445e4b8990145e4b950700019', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b9509f0021', null, '1', '图标管理', '18', 'iconController.do?icon', '402881e445e4b8990145e4b950700019', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b9509f0022', null, '1', '部门管理', '22', 'departController.do?depart', '402881e445e4b8990145e4b950700019', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b9509f0023', null, '1', '地域管理', '22', 'territoryController.do?territory', '402881e445e4b8990145e4b950700019', '402881e445e4b8990145e4b950120001');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b9509f0024', null, '1', '用户分析', '17', 'logController.do?statisticTabs&isIframe', '402881e445e4b8990145e4b95070001a', '402881e445e4b8990145e4b950120001');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b950ae0025', null, '1', '表单配置', '1', 'cgFormHeadController.do?cgFormHeadList', '402881e445e4b8990145e4b950700018', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b950ae0026', null, '1', '动态报表配置', '2', 'cgreportConfigHeadController.do?cgreportConfigHead', '402881e445e4b8990145e4b950700018', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b950ae0027', null, '1', '数据监控', '11', 'dataSourceController.do?goDruid&isIframe', '402881e445e4b8990145e4b9507f001c', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b950be0028', null, '1', '系统日志', '21', 'logController.do?log', '402881e445e4b8990145e4b9507f001c', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b950be0029', null, '1', '定时任务', '21', 'timeTaskController.do?timeTask', '402881e445e4b8990145e4b9507f001c', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b950be002a', null, '1', '表单验证', '1', 'demoController.do?formTabs', '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b950be002b', null, '1', 'Demo示例', '2', 'jeecgDemoController.do?jeecgDemo', '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b950cd002c', null, '1', 'Minidao例子', '2', 'jeecgMinidaoController.do?jeecgMinidao', '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b950dd002d', null, '1', '单表模型', '3', 'jeecgNoteController.do?jeecgNote', '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b950ed002e', null, '1', '一对多模型', '4', 'jeecgOrderMainController.do?jeecgOrderMain', '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b950ed002f', null, '1', 'Excel导入导出', '5', 'courseController.do?course', '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b950ed0030', null, '1', '上传下载', '6', 'commonController.do?listTurn&turn=system/document/filesList', '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b950fc0031', null, '1', '无分页列表', '7', 'userNoPageController.do?user', '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b950fc0032', null, '1', 'jdbc示例', '8', 'jeecgJdbcController.do?jeecgJdbc', '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b950fc0033', null, '1', 'SQL分离', '9', 'jeecgJdbcController.do?dictParameter', '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b9510c0034', null, '1', '字典标签', '10', 'demoController.do?dictSelect', '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b9510c0035', null, '1', '表单弹出风格', '11', 'demoController.do?demoList', '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b9510c0036', null, '1', '特殊布局', '12', 'demoController.do?demoIframe', '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b9511b0037', null, '1', '单表例子(无Tag)', '13', 'jeecgEasyUIController.do?jeecgEasyUI', '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b9511b0038', null, '1', '一对多例子(无Tag)', '14', 'jeecgOrderMainNoTagController.do?jeecgOrderMainNoTag', '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b9511b0039', null, '1', 'HTML编辑器', '15', 'jeecgDemoController.do?ckeditor&isIframe', '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b9511b003a', null, '1', '在线word(IE)', '16', 'webOfficeController.do?webOffice', '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b9512b003b', null, '1', 'WebOffice官方例子', '17', 'webOfficeController.do?webOfficeSample&isIframe', '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b9512b003c', null, '1', '多附件管理', '18', 'tFinanceController.do?tFinance', '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b9512b003d', null, '1', 'Datagrid手工Html', '19', 'userController.do?userDemo', '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b9512b003e', null, '1', '物料Bom', '20', 'jeecgMatterBomController.do?goList', '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b9513b003f', null, '1', '报表示例', '21', 'reportDemoController.do?studentStatisticTabs&isIframe', '402881e445e4b8990145e4b95070001a', '402881e445e4b8990145e4b950120001');
INSERT INTO `t_s_function` VALUES ('402881e445e4b8990145e4b9513b0040', null, '1', 'ckfinder例子', '100', 'jeecgDemoCkfinderController.do?jeecgDemoCkfinder', '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4d06d0145e4d456480001', null, '0', '工作流管理', '15', '', null, '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4d06d0145e4d504410003', null, '1', '流程定义', '1', 'activitiController.do?processList', '402881e445e4d06d0145e4d456480001', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4d06d0145e4d6458c0008', null, '1', '发起新流程', '2', 'activitiController.do?myProcessList', '402881e445e4d06d0145e4d456480001', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4df710145e4e465d10005', null, '1', '运行的流程', '3', 'activitiController.do?runningProcessList', '402881e445e4d06d0145e4d456480001', '402881e445e4b8990145e4b950120006');
INSERT INTO `t_s_function` VALUES ('402881e445e4df710145e4e59d280007', null, '1', '待领任务', '4', 'activitiController.do?waitingClaimTask', '402881e445e4d06d0145e4d456480001', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4df710145e4e6157e0009', null, '1', '待办任务', '6', 'activitiController.do?claimedTask', '402881e445e4d06d0145e4d456480001', '402881e445e4b8990145e4b950120002');
INSERT INTO `t_s_function` VALUES ('402881e445e4df710145e4e6f14f000c', null, '1', '已办任务', '7', 'activitiController.do?finishedTask', '402881e445e4d06d0145e4d456480001', '402881e445e4b8990145e4b950120002');

-- ----------------------------
-- Table structure for `t_s_icon`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_icon`;
CREATE TABLE `t_s_icon` (
  `ID` varchar(32) NOT NULL,
  `extend` varchar(255) default NULL,
  `iconclas` varchar(200) default NULL,
  `content` blob,
  `name` varchar(100) NOT NULL,
  `path` longtext,
  `type` smallint(6) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_icon
-- ----------------------------
INSERT INTO `t_s_icon` VALUES ('402881e445e4b8990145e4b94fd40000', 'png', 'back', null, '返回', 'plug-in/accordion/images/back.png', '1');
INSERT INTO `t_s_icon` VALUES ('402881e445e4b8990145e4b950120001', 'png', 'pie', null, '饼图', 'plug-in/accordion/images/pie.png', '1');
INSERT INTO `t_s_icon` VALUES ('402881e445e4b8990145e4b950120002', 'png', 'pictures', null, '图片', 'plug-in/accordion/images/pictures.png', '1');
INSERT INTO `t_s_icon` VALUES ('402881e445e4b8990145e4b950120003', 'png', 'pencil', null, '笔', 'plug-in/accordion/images/pencil.png', '1');
INSERT INTO `t_s_icon` VALUES ('402881e445e4b8990145e4b950120004', 'png', 'map', null, '地图', 'plug-in/accordion/images/map.png', '1');
INSERT INTO `t_s_icon` VALUES ('402881e445e4b8990145e4b950120005', 'png', 'group_add', null, '组', 'plug-in/accordion/images/group_add.png', '1');
INSERT INTO `t_s_icon` VALUES ('402881e445e4b8990145e4b950120006', 'png', 'calculator', null, '计算器', 'plug-in/accordion/images/calculator.png', '1');
INSERT INTO `t_s_icon` VALUES ('402881e445e4b8990145e4b950220007', 'png', 'folder', null, '文件夹', 'plug-in/accordion/images/folder.png', '1');

-- ----------------------------
-- Table structure for `t_s_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_log`;
CREATE TABLE `t_s_log` (
  `ID` varchar(32) NOT NULL,
  `broswer` varchar(100) default NULL,
  `logcontent` longtext NOT NULL,
  `loglevel` smallint(6) default NULL,
  `note` longtext,
  `operatetime` datetime NOT NULL,
  `operatetype` smallint(6) default NULL,
  `userid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_oe64k4852uylhyc5a00rfwtay` (`userid`),
  CONSTRAINT `FK_oe64k4852uylhyc5a00rfwtay` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_log
-- ----------------------------
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9550300c5', 'Chrome', '用户: admin登录成功', '1', '169.254.200.136', '2013-04-24 16:22:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9551200c6', 'Chrome', '用户: admin登录成功', '1', '10.10.10.1', '2013-04-24 17:12:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9551200c7', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-10 15:37:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9551200c8', 'Chrome', '用户admin已退出', '2', '169.254.218.201', '2013-03-10 15:38:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9551200c9', 'MSIE 9.0', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-10 15:38:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9551200ca', 'MSIE 9.0', 'JeecgDemo例子: 12被删除 成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9551200cb', 'MSIE 9.0', 'JeecgDemo例子: 12被删除 成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9552200cc', 'Chrome', 'JeecgDemo例子: 12被删除 成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9552200cd', 'MSIE 9.0', '权限: 单表模型被更新成功', '5', '169.254.218.201', '2013-03-10 15:39:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9552200ce', 'Chrome', '删除成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9552200cf', 'MSIE 9.0', '删除成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9552200d0', 'Chrome', '删除成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9552200d1', 'Firefox', '删除成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9552200d2', 'Chrome', '添加成功', '3', '169.254.218.201', '2013-03-10 15:40:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9553200d3', 'Chrome', '更新成功', '5', '169.254.218.201', '2013-03-10 15:40:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9553200d4', 'Chrome', 'JeecgDemo例子: 12被添加成功', '3', '169.254.218.201', '2013-03-10 15:40:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9553200d5', 'Chrome', '部门: 信息部被更新成功', '5', '169.254.218.201', '2013-03-10 15:41:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9553200d6', 'Chrome', '部门: 设计部被更新成功', '5', '169.254.218.201', '2013-03-10 15:41:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9553200d7', 'Chrome', '类型: 信息部流程被更新成功', '5', '169.254.218.201', '2013-03-10 15:46:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9553200d8', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-10 15:48:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9554100d9', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-21 23:23:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9554100da', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-21 23:26:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9554100db', 'Chrome', '权限: 一对多实例被添加成功', '3', '169.254.218.201', '2013-03-21 23:28:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9554100dc', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 08:25:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9554100dd', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 09:05:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9554100de', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 09:09:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9554100df', 'MSIE 8.0', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 09:28:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9555100e0', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 10:32:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9555100e1', 'Chrome', '物品: 笔记本添加成功', '3', '169.254.218.201', '2013-03-22 10:35:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9555100e2', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 10:41:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9555100e3', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 16:11:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9555100e4', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 21:49:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9555100e5', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 23:17:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9555100e6', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 23:27:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9556000e7', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-23 00:16:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9556000e8', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-23 00:22:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9556000e9', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-23 00:31:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9556000ea', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-23 14:23:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9556000eb', 'Chrome', '流程参数: 主任审批被添加成功', '3', '169.254.218.201', '2013-03-23 15:05:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9556000ec', 'Firefox', '业务参数: 入职申请被添加成功', '3', '169.254.218.201', '2013-03-23 15:05:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9557000ed', 'Chrome', '权限: 入职申请被添加成功', '3', '169.254.218.201', '2013-03-23 15:12:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9557000ee', 'Firefox', '权限: 入职办理被添加成功', '3', '169.254.218.201', '2013-03-23 15:13:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9557000ef', 'Chrome', '用户: admin登录成功', '1', '10.10.10.1', '2013-05-06 15:27:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9557000f0', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 15:16:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9557000f1', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:02:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9557000f2', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:07:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9558000f3', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:09:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9558000f4', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:11:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9558000f5', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:13:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9558000f6', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:16:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9558000f7', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:19:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9558f00f8', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:27:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9558f00f9', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:42:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9558f00fa', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:44:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9558f00fb', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:49:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9558f00fc', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:50:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9558f00fd', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:53:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9558f00fe', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 16:56:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9559f00ff', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:59:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9559f0100', 'MSIE 8.0', '创建成功', '3', '192.168.197.1', '2013-07-07 17:22:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9559f0101', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 17:26:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9559f0102', 'MSIE 8.0', '删除成功', '4', '192.168.197.1', '2013-07-07 17:31:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9559f0103', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 17:35:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9559f0104', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 17:46:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955ae0105', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 17:55:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955ae0106', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 18:08:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955ae0107', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 18:13:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955ae0108', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 18:15:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955ae0109', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:28:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955ae010a', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:29:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955be010b', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:30:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955be010c', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:31:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955be010d', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:31:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955ce010e', 'MSIE 9.0', '物品: 555添加成功', '3', '192.168.1.103', '2013-03-20 23:03:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955ce010f', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-20 23:19:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955ce0110', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 20:09:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955ce0111', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 20:27:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955ce0112', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 20:44:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955ce0113', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 20:54:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955dd0114', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:01:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955dd0115', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:13:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955dd0116', 'MSIE 9.0', '物品: 55添加成功', '3', '192.168.1.103', '2013-03-21 21:15:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955dd0117', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:22:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955dd0118', 'MSIE 9.0', '物品: 55添加成功', '3', '192.168.1.103', '2013-03-21 21:23:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955dd0119', 'MSIE 9.0', '物品: 33添加成功', '3', '192.168.1.103', '2013-03-21 21:23:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955ed011a', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:25:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955ed011b', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:27:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955ed011c', 'MSIE 9.0', '权限: 采购审批被添加成功', '3', '192.168.1.103', '2013-03-21 21:29:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955ed011d', 'MSIE 9.0', '权限: 采购审批被更新成功', '5', '192.168.1.103', '2013-03-21 21:29:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955ed011e', 'MSIE 9.0', '权限: 采购审批被更新成功', '5', '192.168.1.103', '2013-03-21 21:30:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955ed011f', 'MSIE 9.0', '用户: admin更新成功', '5', '192.168.1.103', '2013-03-21 21:31:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955ed0120', 'MSIE 9.0', '流程参数: 采购审批员审批被添加成功', '3', '192.168.1.103', '2013-03-21 21:36:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955ed0121', 'MSIE 9.0', '流程参数: 采购审批员审批被更新成功', '5', '192.168.1.103', '2013-03-21 21:36:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955fc0122', 'MSIE 9.0', '流程参数: 采购审批员审批被更新成功', '5', '192.168.1.103', '2013-03-21 21:37:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955fc0123', 'MSIE 9.0', '流程类别: 采购审批员审批被删除 成功', '4', '192.168.1.103', '2013-03-21 21:38:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955fc0124', 'MSIE 9.0', '物品: 44添加成功', '3', '192.168.1.103', '2013-03-21 21:43:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955fc0125', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.105', '2013-02-07 10:10:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b955fc0126', 'MSIE 9.0', '权限: 上传下载被添加成功', '3', '192.168.1.105', '2013-02-07 11:07:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9560c0127', 'MSIE 9.0', '权限: 插件演示被删除成功', '4', '192.168.1.105', '2013-02-07 11:07:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b9560c0128', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.105', '2013-02-07 11:07:00', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4b8990145e4b977e70180', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 14:02:11', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4d06d0145e4d22ed60000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 14:29:10', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4d06d0145e4d456970002', 'MSIE 7.0', '权限: 工作流管理被添加成功', '3', '192.168.1.100', '2014-05-10 14:31:32', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4d06d0145e4d504900004', 'MSIE 7.0', '权限: 流程定义被添加成功', '3', '192.168.1.100', '2014-05-10 14:32:16', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4d06d0145e4d584830006', 'MSIE 7.0', '权限: 发起新流程被添加成功', '3', '192.168.1.100', '2014-05-10 14:32:49', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4d06d0145e4d603f20007', 'MSIE 7.0', '权限: 发起新流程被删除成功', '4', '192.168.1.100', '2014-05-10 14:33:22', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4d06d0145e4d645cb0009', 'MSIE 7.0', '权限: 发起新流程被添加成功', '3', '192.168.1.100', '2014-05-10 14:33:39', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4d06d0145e4d68fcf000d', 'MSIE 7.0', '用户admin已退出', '2', '192.168.1.100', '2014-05-10 14:33:57', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4d06d0145e4d6ad66000e', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 14:34:05', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4df710145e4dfedb00000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 14:44:11', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4df710145e4e1a7280001', 'MSIE 7.0', '用户admin已退出', '2', '192.168.1.100', '2014-05-10 14:46:04', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4df710145e4e1b89f0002', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 14:46:09', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4df710145e4e2293d0003', 'MSIE 7.0', '用户admin已退出', '2', '192.168.1.100', '2014-05-10 14:46:38', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4df710145e4e23b370004', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 14:46:42', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4df710145e4e466100006', 'MSIE 7.0', '权限: 运行的流程被添加成功', '3', '192.168.1.100', '2014-05-10 14:49:04', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4df710145e4e59d670008', 'MSIE 7.0', '权限: 待领任务被添加成功', '3', '192.168.1.100', '2014-05-10 14:50:24', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4df710145e4e615ae000a', 'MSIE 7.0', '权限: 已领任务被添加成功', '3', '192.168.1.100', '2014-05-10 14:50:55', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4df710145e4e6962d000b', 'MSIE 7.0', '权限: 待办任务被更新成功', '5', '192.168.1.100', '2014-05-10 14:51:28', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4df710145e4e6f18e000d', 'MSIE 7.0', '权限: 已办任务被添加成功', '3', '192.168.1.100', '2014-05-10 14:51:51', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4df710145e4e752f20012', 'MSIE 7.0', '用户admin已退出', '2', '192.168.1.100', '2014-05-10 14:52:16', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4df710145e4e764c60013', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 14:52:21', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4ed470145e4ed9d910000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 14:59:08', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4f2010145e4f283520000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 15:04:29', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e4f3fd0145e4f4765d0000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 15:06:37', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e506cb0145e50728780000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 15:27:02', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e514860145e5154f8e0000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 15:42:30', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e514860145e54240220001', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 16:31:35', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e55f7c0145e5602dd80000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 17:04:16', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e57f6d0145e5803f440000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 17:39:18', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e59a3b0145e5a18dc20000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 18:15:41', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e5c77d0145e5c82ced0000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 18:57:52', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e5cc440145e5ccc71b0000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 19:02:53', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e5eeb50145e5ef115c0000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 19:40:21', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e5f2800145e5f3e3b70000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 19:45:37', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e61adc0145e61b614a0000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 20:28:45', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e696c80145e697547e0000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 22:44:08', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e6a95f0145e6a9ff160000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 23:04:31', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e6a95f0145e6acd5570001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 23:07:37', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e6c2110145e6c2de130000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 23:31:41', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e6c2110145e6c61bd40001', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 23:35:14', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e6cb6f0145e6cbbd860000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 23:41:23', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e6db3b0145e6db92520000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-10 23:58:40', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e6e32c0145e6e387490000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-11 00:07:22', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e6e9660145e6ea9c450000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-11 00:15:06', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e6e9660145e6f8f1170002', 'MSIE 7.0', '添加成功', '3', '192.168.1.100', '2014-05-11 00:30:45', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e6e9660145e6f8ffdc0003', 'MSIE 7.0', '删除成功', '4', '192.168.1.100', '2014-05-11 00:30:49', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e8e2f10145e8e420f50000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-11 09:27:15', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e8ea500145e8eaba0d0000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-11 09:34:28', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e8ecfb0145e8eda4be0000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-11 09:37:39', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e8ee370145e8ef1b8c0000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-11 09:39:15', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e8f51f0145e8f5c3c10000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-11 09:46:31', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('402881e445e8fdde0145e8fe4ebb0000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-11 09:55:51', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('4028828c4622044c01462204b4920000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.2.12', '2014-05-22 11:41:12', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('4028829846417dbd01464182920e0000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.2.24', '2014-05-28 14:26:54', '1', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_log` VALUES ('4028829846417dbd01464183ffae0001', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.2.24', '2014-05-28 14:28:28', '1', '402881e445e4b8990145e4b9515a0043');

-- ----------------------------
-- Table structure for `t_s_operation`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_operation`;
CREATE TABLE `t_s_operation` (
  `ID` varchar(32) NOT NULL,
  `operationcode` varchar(50) default NULL,
  `operationicon` varchar(100) default NULL,
  `operationname` varchar(50) default NULL,
  `status` smallint(6) default NULL,
  `functionid` varchar(32) default NULL,
  `iconid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_pceuy41wr2fjbcilyc7mk3m1f` (`functionid`),
  KEY `FK_ny5de7922l39ta2pkhyspd5f` (`iconid`),
  CONSTRAINT `FK_ny5de7922l39ta2pkhyspd5f` FOREIGN KEY (`iconid`) REFERENCES `t_s_icon` (`ID`),
  CONSTRAINT `FK_pceuy41wr2fjbcilyc7mk3m1f` FOREIGN KEY (`functionid`) REFERENCES `t_s_function` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_operation
-- ----------------------------
INSERT INTO `t_s_operation` VALUES ('402881e445e4b8990145e4b952740069', 'add', null, '录入', null, '402881e445e4b8990145e4b950be002b', '402881e445e4b8990145e4b94fd40000');
INSERT INTO `t_s_operation` VALUES ('402881e445e4b8990145e4b95274006a', 'edit', null, '编辑', null, '402881e445e4b8990145e4b950be002b', '402881e445e4b8990145e4b94fd40000');
INSERT INTO `t_s_operation` VALUES ('402881e445e4b8990145e4b95274006b', 'del', null, '删除', null, '402881e445e4b8990145e4b950be002b', '402881e445e4b8990145e4b94fd40000');
INSERT INTO `t_s_operation` VALUES ('402881e445e4b8990145e4b95283006c', 'szqm', null, '审核', null, '402881e445e4b8990145e4b950be002b', '402881e445e4b8990145e4b94fd40000');

-- ----------------------------
-- Table structure for `t_s_opintemplate`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_opintemplate`;
CREATE TABLE `t_s_opintemplate` (
  `ID` varchar(32) NOT NULL,
  `descript` varchar(100) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_opintemplate
-- ----------------------------

-- ----------------------------
-- Table structure for `t_s_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_role`;
CREATE TABLE `t_s_role` (
  `ID` varchar(32) NOT NULL,
  `rolecode` varchar(10) default NULL,
  `rolename` varchar(100) NOT NULL,
  `rev` int(11) null,
  `type` varchar(255) null,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_role
-- ----------------------------
INSERT INTO `t_s_role` VALUES ('402881e445e4b8990145e4b9513b0041', 'admin', '管理员', null ,null );
INSERT INTO `t_s_role` VALUES ('402881e445e4b8990145e4b9514a0042', 'manager', '普通用户', null ,null );

-- ----------------------------
-- Table structure for `t_s_role_function`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_role_function`;
CREATE TABLE `t_s_role_function` (
  `ID` varchar(32) NOT NULL,
  `operation` varchar(100) default NULL,
  `functionid` varchar(32) default NULL,
  `roleid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_fvsillj2cxyk5thnuu625urab` (`functionid`),
  KEY `FK_9dww3p4w8jwvlrgwhpitsbfif` (`roleid`),
  CONSTRAINT `FK_9dww3p4w8jwvlrgwhpitsbfif` FOREIGN KEY (`roleid`) REFERENCES `t_s_role` (`ID`),
  CONSTRAINT `FK_fvsillj2cxyk5thnuu625urab` FOREIGN KEY (`functionid`) REFERENCES `t_s_function` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_role_function
-- ----------------------------
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b95293006d', null, '402881e445e4b8990145e4b950700018', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b952a2006e', null, '402881e445e4b8990145e4b950700018', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b952a2006f', null, '402881e445e4b8990145e4b950700019', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b952a20070', null, '402881e445e4b8990145e4b950700019', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b952b20071', null, '402881e445e4b8990145e4b95070001a', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b952b20072', null, '402881e445e4b8990145e4b95070001a', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b952b20073', null, '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b952c20074', null, '402881e445e4b8990145e4b9507f001b', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b952c20075', null, '402881e445e4b8990145e4b9507f001c', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b952d10076', null, '402881e445e4b8990145e4b9507f001c', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b952d10077', null, '402881e445e4b8990145e4b9507f001d', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b952d10078', null, '402881e445e4b8990145e4b9507f001d', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b952d10079', null, '402881e445e4b8990145e4b9507f001e', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b952e1007a', null, '402881e445e4b8990145e4b9507f001e', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b952e1007b', null, '402881e445e4b8990145e4b9507f001f', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b952e1007c', null, '402881e445e4b8990145e4b9507f001f', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b952f0007d', null, '402881e445e4b8990145e4b9508f0020', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b952f0007e', null, '402881e445e4b8990145e4b9508f0020', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b952f0007f', null, '402881e445e4b8990145e4b9509f0021', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b953000080', null, '402881e445e4b8990145e4b9509f0021', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b953000081', null, '402881e445e4b8990145e4b9509f0022', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b953000082', null, '402881e445e4b8990145e4b9509f0022', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b953100083', null, '402881e445e4b8990145e4b9509f0023', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b953100084', null, '402881e445e4b8990145e4b9509f0023', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9531f0085', null, '402881e445e4b8990145e4b9509f0024', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9531f0086', null, '402881e445e4b8990145e4b9509f0024', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9531f0087', null, '402881e445e4b8990145e4b950ae0025', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9532f0088', null, '402881e445e4b8990145e4b950ae0025', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9532f0089', null, '402881e445e4b8990145e4b950ae0026', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9532f008a', null, '402881e445e4b8990145e4b950ae0026', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9533e008b', null, '402881e445e4b8990145e4b950ae0027', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9533e008c', null, '402881e445e4b8990145e4b950ae0027', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9534e008d', null, '402881e445e4b8990145e4b950be0028', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9534e008e', null, '402881e445e4b8990145e4b950be0028', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9534e008f', null, '402881e445e4b8990145e4b950be0029', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9534e0090', null, '402881e445e4b8990145e4b950be0029', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9534e0091', null, '402881e445e4b8990145e4b950be002a', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9535e0092', null, '402881e445e4b8990145e4b950be002a', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9535e0093', 'add,szqm,', '402881e445e4b8990145e4b950be002b', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9535e0094', null, '402881e445e4b8990145e4b950be002b', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9535e0095', null, '402881e445e4b8990145e4b950cd002c', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9535e0096', null, '402881e445e4b8990145e4b950cd002c', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9535e0097', null, '402881e445e4b8990145e4b950dd002d', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9536d0098', null, '402881e445e4b8990145e4b950dd002d', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9536d0099', null, '402881e445e4b8990145e4b950ed002e', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9536d009a', null, '402881e445e4b8990145e4b950ed002e', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9536d009b', null, '402881e445e4b8990145e4b950ed002f', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9536d009c', null, '402881e445e4b8990145e4b950ed002f', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9536d009d', null, '402881e445e4b8990145e4b950ed0030', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9536d009e', null, '402881e445e4b8990145e4b950ed0030', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9537d009f', null, '402881e445e4b8990145e4b950fc0031', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9537d00a0', null, '402881e445e4b8990145e4b950fc0031', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9537d00a1', null, '402881e445e4b8990145e4b950fc0032', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9537d00a2', null, '402881e445e4b8990145e4b950fc0032', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9537d00a3', null, '402881e445e4b8990145e4b950fc0033', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9537d00a4', null, '402881e445e4b8990145e4b950fc0033', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9538c00a5', null, '402881e445e4b8990145e4b9510c0034', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9538c00a6', null, '402881e445e4b8990145e4b9510c0034', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9538c00a7', null, '402881e445e4b8990145e4b9510c0035', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9538c00a8', null, '402881e445e4b8990145e4b9510c0035', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9538c00a9', null, '402881e445e4b8990145e4b9510c0036', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9539c00aa', null, '402881e445e4b8990145e4b9510c0036', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9539c00ab', null, '402881e445e4b8990145e4b9511b0037', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9539c00ac', null, '402881e445e4b8990145e4b9511b0037', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9539c00ad', null, '402881e445e4b8990145e4b9511b0038', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9539c00ae', null, '402881e445e4b8990145e4b9511b0038', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b9539c00af', null, '402881e445e4b8990145e4b9511b0039', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b953ac00b0', null, '402881e445e4b8990145e4b9511b0039', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b953ac00b1', null, '402881e445e4b8990145e4b9511b003a', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b953ac00b2', null, '402881e445e4b8990145e4b9511b003a', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b953ac00b3', null, '402881e445e4b8990145e4b9512b003b', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b953bb00b4', null, '402881e445e4b8990145e4b9512b003b', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b953bb00b5', null, '402881e445e4b8990145e4b9512b003c', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b953cb00b6', null, '402881e445e4b8990145e4b9512b003c', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b953cb00b7', null, '402881e445e4b8990145e4b9512b003d', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b953cb00b8', null, '402881e445e4b8990145e4b9512b003d', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b953cb00b9', null, '402881e445e4b8990145e4b9512b003e', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b953da00ba', null, '402881e445e4b8990145e4b9512b003e', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b953da00bb', null, '402881e445e4b8990145e4b9513b003f', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b953da00bc', null, '402881e445e4b8990145e4b9513b003f', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b953da00bd', null, '402881e445e4b8990145e4b9513b0040', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4b8990145e4b953ea00be', null, '402881e445e4b8990145e4b9513b0040', '402881e445e4b8990145e4b9514a0042');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4d06d0145e4d66ee6000a', null, '402881e445e4d06d0145e4d6458c0008', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4d06d0145e4d66ef6000b', null, '402881e445e4d06d0145e4d504410003', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4d06d0145e4d66ef6000c', null, '402881e445e4d06d0145e4d456480001', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4df710145e4e72af8000e', null, '402881e445e4df710145e4e465d10005', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4df710145e4e72af8000f', null, '402881e445e4df710145e4e6157e0009', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4df710145e4e72af80010', null, '402881e445e4df710145e4e6f14f000c', '402881e445e4b8990145e4b9513b0041');
INSERT INTO `t_s_role_function` VALUES ('402881e445e4df710145e4e72af80011', null, '402881e445e4df710145e4e59d280007', '402881e445e4b8990145e4b9513b0041');

-- ----------------------------
-- Table structure for `t_s_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_role_user`;
CREATE TABLE `t_s_role_user` (
  `ID` varchar(32) NOT NULL,
  `roleid` varchar(32) default NULL,
  `userid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_n2ucxeorvpjy7qhnmuem01kbx` (`roleid`),
  KEY `FK_d4qb5xld2pfb0bkjx9iwtolda` (`userid`),
  CONSTRAINT `FK_d4qb5xld2pfb0bkjx9iwtolda` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`),
  CONSTRAINT `FK_n2ucxeorvpjy7qhnmuem01kbx` FOREIGN KEY (`roleid`) REFERENCES `t_s_role` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_role_user
-- ----------------------------
INSERT INTO `t_s_role_user` VALUES ('402881e445e4b8990145e4b953fa00bf', '402881e445e4b8990145e4b9513b0041', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_role_user` VALUES ('402881e445e4b8990145e4b953fa00c0', '402881e445e4b8990145e4b9513b0041', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_role_user` VALUES ('402881e445e4b8990145e4b953fa00c1', '402881e445e4b8990145e4b9514a0042', '402881e445e4b8990145e4b951690044');
INSERT INTO `t_s_role_user` VALUES ('402881e445e4b8990145e4b9540900c2', '402881e445e4b8990145e4b9513b0041', '402881e445e4b8990145e4b951690045');
INSERT INTO `t_s_role_user` VALUES ('402881e445e4b8990145e4b9540900c3', '402881e445e4b8990145e4b9513b0041', '402881e445e4b8990145e4b951790046');

-- ----------------------------
-- Table structure for `t_s_student`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_student`;
CREATE TABLE `t_s_student` (
  `ID` varchar(32) NOT NULL,
  `classname` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `sex` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_student
-- ----------------------------
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9582f0165', '1班', '张三', 'f');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9582f0166', '1班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9582f0167', '1班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9583f0168', '1班', '赵六', 'f');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9583f0169', '2班', '张三', 'f');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9583f016a', '2班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9583f016b', '2班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9583f016c', '2班', '赵六', 'f');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9584e016d', '3班', '张三', 'f');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9584e016e', '3班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9584e016f', '3班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9585e0170', '3班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9585e0171', '3班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9585e0172', '3班', '赵六', 'f');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9585e0173', '4班', '张三', 'f');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9585e0174', '4班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9586d0175', '4班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9586d0176', '4班', '赵六', 'f');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9586d0177', '5班', '张三', 'm');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9586d0178', '5班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9586d0179', '5班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9586d017a', '5班', '赵六', 'm');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9586d017b', '5班', '赵六', 'm');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9586d017c', '5班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9586d017d', '5班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9586d017e', '5班', '赵六', 'm');
INSERT INTO `t_s_student` VALUES ('402881e445e4b8990145e4b9587d017f', '5班', '赵六', 'm');

-- ----------------------------
-- Table structure for `t_s_territory`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_territory`;
CREATE TABLE `t_s_territory` (
  `ID` varchar(32) NOT NULL,
  `territorycode` varchar(10) NOT NULL,
  `territorylevel` smallint(6) NOT NULL,
  `territoryname` varchar(50) NOT NULL,
  `territory_pinyin` varchar(40) default NULL,
  `territorysort` varchar(3) NOT NULL,
  `x_wgs84` double NOT NULL,
  `y_wgs84` double NOT NULL,
  `territoryparentid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_territory
-- ----------------------------
INSERT INTO `t_s_territory` VALUES ('1', '100', '1', '全国', 'qg', '0', '106.258754', '38.471318', '0');
INSERT INTO `t_s_territory` VALUES ('10', '00000016', '2', '河南省', 'HNS', '0', '113.687228', '34.76819', '1');
INSERT INTO `t_s_territory` VALUES ('100', '371300', '3', '临沂市', 'LYS', '0', '118.356448', '35.104672', '18');
INSERT INTO `t_s_territory` VALUES ('1000', '370903', '4', '岱岳区', 'DYQ', '0', '117.041582', '36.18799', '96');
INSERT INTO `t_s_territory` VALUES ('1001', '370921', '4', '宁阳县', 'NYX', '0', '116.805797', '35.758787', '96');
INSERT INTO `t_s_territory` VALUES ('1002', '370923', '4', '东平县', 'DPX', '0', '116.470304', '35.937102', '96');
INSERT INTO `t_s_territory` VALUES ('1003', '370982', '4', '新泰市', 'XTS', '0', '117.767953', '35.909032', '96');
INSERT INTO `t_s_territory` VALUES ('1004', '370983', '4', '肥城市', 'FCS', '0', '116.768358', '36.182571', '96');
INSERT INTO `t_s_territory` VALUES ('1005', '371002', '4', '环翠区', 'HCQ', '0', '122.123444', '37.501991', '97');
INSERT INTO `t_s_territory` VALUES ('1006', '371081', '4', '文登市', 'WDS', '0', '122.058128', '37.1939129', '97');
INSERT INTO `t_s_territory` VALUES ('1007', '371082', '4', '荣成市', 'RCS', '0', '122.486676', '37.165249', '97');
INSERT INTO `t_s_territory` VALUES ('1008', '371083', '4', '乳山市', 'RSS', '0', '121.539764', '36.919816', '97');
INSERT INTO `t_s_territory` VALUES ('1009', '371102', '4', '东港区', 'DGQ', '0', '119.462228', '35.425475', '98');
INSERT INTO `t_s_territory` VALUES ('101', '371400', '3', '德州市', 'DZS', '0', '116.357465', '37.434093', '18');
INSERT INTO `t_s_territory` VALUES ('1010', '371103', '4', '岚山区', 'LSQ', '0', '119.318813', '35.121816', '98');
INSERT INTO `t_s_territory` VALUES ('1011', '371121', '4', '五莲县', 'WLX', '0', '119.208744', '35.750095', '98');
INSERT INTO `t_s_territory` VALUES ('1012', '371122', '4', '莒县', 'JX', '0', '118.837131', '35.579868', '98');
INSERT INTO `t_s_territory` VALUES ('1013', '371202', '4', '莱城区', 'LCQ', '0', '117.659864', '36.203208', '99');
INSERT INTO `t_s_territory` VALUES ('1014', '371203', '4', '钢城区', 'GCQ', '0', '117.811355', '36.058572', '99');
INSERT INTO `t_s_territory` VALUES ('1015', '371302', '4', '兰山区', 'LSQ', '0', '118.347707', '35.051729', '100');
INSERT INTO `t_s_territory` VALUES ('1016', '371311', '4', '罗庄区', 'LZQ', '0', '118.284786', '34.996741', '100');
INSERT INTO `t_s_territory` VALUES ('1017', '371312', '4', '河东区', 'HDQ', '0', '118.402893', '35.089917', '100');
INSERT INTO `t_s_territory` VALUES ('1018', '371321', '4', '沂南县', 'YNX', '0', '118.465213', '35.549976', '100');
INSERT INTO `t_s_territory` VALUES ('1019', '371322', '4', '郯城县', 'TCX', '0', '118.367263', '34.613557', '100');
INSERT INTO `t_s_territory` VALUES ('102', '371500', '3', '聊城市', 'LCS', '0', '115.985371', '36.4567039', '18');
INSERT INTO `t_s_territory` VALUES ('1020', '371323', '4', '沂水县', 'YSX', '0', '118.627918', '35.79045', '100');
INSERT INTO `t_s_territory` VALUES ('1021', '371324', '4', '苍山县', 'CSX', '0', '118.07065', '34.857149', '100');
INSERT INTO `t_s_territory` VALUES ('1022', '371325', '4', '费县', 'FX', '0', '117.977868', '35.26634', '100');
INSERT INTO `t_s_territory` VALUES ('1023', '371326', '4', '平邑县', 'PYX', '0', '117.640352', '35.5059429', '100');
INSERT INTO `t_s_territory` VALUES ('1024', '371327', '4', '莒南县', 'JNX', '0', '118.835163', '35.174846', '100');
INSERT INTO `t_s_territory` VALUES ('1025', '371328', '4', '蒙阴县', 'MYX', '0', '117.945085', '35.710032', '100');
INSERT INTO `t_s_territory` VALUES ('1026', '371329', '4', '临沭县', 'LSX', '0', '118.650782', '34.919852', '100');
INSERT INTO `t_s_territory` VALUES ('1027', '371402', '4', '德城区', 'DCQ', '0', '116.299434', '37.451272', '101');
INSERT INTO `t_s_territory` VALUES ('1028', '371421', '4', '陵县', 'LX', '0', '116.576176', '37.33579', '101');
INSERT INTO `t_s_territory` VALUES ('1029', '371422', '4', '宁津县', 'NJX', '0', '116.800324', '37.652329', '101');
INSERT INTO `t_s_territory` VALUES ('103', '371600', '3', '滨州市', 'BZS', '0', '117.970703', '37.38199', '18');
INSERT INTO `t_s_territory` VALUES ('1030', '371423', '4', '庆云县', 'QYX', '0', '117.385123', '37.77539', '101');
INSERT INTO `t_s_territory` VALUES ('1031', '371424', '4', '临邑县', 'LYX', '0', '116.86665', '37.189864', '101');
INSERT INTO `t_s_territory` VALUES ('1032', '371425', '4', '齐河县', 'QHX', '0', '116.758917', '36.795011', '101');
INSERT INTO `t_s_territory` VALUES ('1033', '371426', '4', '平原县', 'PYX', '0', '116.434187', '37.165419', '101');
INSERT INTO `t_s_territory` VALUES ('1034', '371427', '4', '夏津县', 'XJX', '0', '116.001726', '36.948371', '101');
INSERT INTO `t_s_territory` VALUES ('1035', '371428', '4', '武城县', 'WCX', '0', '116.069302', '37.213311', '101');
INSERT INTO `t_s_territory` VALUES ('1036', '371481', '4', '乐陵市', 'LLS', '0', '117.231935', '37.729907', '101');
INSERT INTO `t_s_territory` VALUES ('1037', '371482', '4', '禹城市', 'YCS', '0', '116.638387', '36.934259', '101');
INSERT INTO `t_s_territory` VALUES ('1038', '371502', '4', '东昌府区', 'DCFQ', '0', '115.988484', '36.434697', '102');
INSERT INTO `t_s_territory` VALUES ('1039', '371521', '4', '阳谷县', 'YGX', '0', '115.79182', '36.114392', '102');
INSERT INTO `t_s_territory` VALUES ('104', '371700', '3', '菏泽市', 'HZS', '0', '115.480656', '35.23375', '18');
INSERT INTO `t_s_territory` VALUES ('1040', '371522', '4', '莘县', 'SX', '0', '115.671191', '36.233599', '102');
INSERT INTO `t_s_territory` VALUES ('1041', '371523', '4', '茌平县', 'CPX', '0', '116.255282', '36.5807639', '102');
INSERT INTO `t_s_territory` VALUES ('1042', '371524', '4', '东阿县', 'DAX', '0', '116.24758', '36.334917', '102');
INSERT INTO `t_s_territory` VALUES ('1043', '371525', '4', '冠县', 'GX', '0', '115.44274', '36.484009', '102');
INSERT INTO `t_s_territory` VALUES ('1044', '371526', '4', '高唐县', 'GTX', '0', '116.231478', '36.866062', '102');
INSERT INTO `t_s_territory` VALUES ('1045', '371581', '4', '临清市', 'LQS', '0', '115.704881', '36.838277', '102');
INSERT INTO `t_s_territory` VALUES ('1046', '371602', '4', '滨城区', 'BCQ', '0', '118.019146', '37.43206', '103');
INSERT INTO `t_s_territory` VALUES ('1047', '371621', '4', '惠民县', 'HMX', '0', '117.510451', '37.489769', '103');
INSERT INTO `t_s_territory` VALUES ('1048', '371622', '4', '阳信县', 'YXX', '0', '117.578262', '37.641106', '103');
INSERT INTO `t_s_territory` VALUES ('1049', '371623', '4', '无棣县', 'WDX', '0', '117.625696', '37.770261', '103');
INSERT INTO `t_s_territory` VALUES ('1050', '371624', '4', '沾化县', 'ZHX', '0', '118.132199', '37.698281', '103');
INSERT INTO `t_s_territory` VALUES ('1051', '371625', '4', '博兴县', 'BXX', '0', '118.131815', '37.150226', '103');
INSERT INTO `t_s_territory` VALUES ('1052', '371626', '4', '邹平县', 'ZPX', '0', '117.743109', '36.862989', '103');
INSERT INTO `t_s_territory` VALUES ('1053', '371702', '4', '牡丹区', 'MDQ', '0', '115.417827', '35.252512', '104');
INSERT INTO `t_s_territory` VALUES ('1054', '371721', '4', '曹县', 'CX', '0', '115.542328', '34.825508', '104');
INSERT INTO `t_s_territory` VALUES ('1055', '371722', '4', '单县', 'DX', '0', '116.107428', '34.778808', '104');
INSERT INTO `t_s_territory` VALUES ('1056', '371723', '4', '成武县', 'CWX', '0', '115.889765', '34.952459', '104');
INSERT INTO `t_s_territory` VALUES ('1057', '371724', '4', '巨野县', 'JYX', '0', '116.094674', '35.396261', '104');
INSERT INTO `t_s_territory` VALUES ('1058', '371725', '4', '郓城县', 'YCX', '0', '115.943613', '35.599758', '104');
INSERT INTO `t_s_territory` VALUES ('1059', '371726', '4', '鄄城县', 'JCX', '0', '115.510193', '35.563408', '104');
INSERT INTO `t_s_territory` VALUES ('1060', '371727', '4', '定陶县', 'DTX', '0', '115.573094', '35.071', '104');
INSERT INTO `t_s_territory` VALUES ('1061', '371728', '4', '东明县', 'DMX', '0', '115.089905', '35.289368', '104');
INSERT INTO `t_s_territory` VALUES ('11', '00000008', '2', '黑龙江省', 'HLJS', '0', '126.662507', '45.7421699', '1');
INSERT INTO `t_s_territory` VALUES ('12', '20000000', '2', '上海市', 'SHS', '0', '121.473704', '31.230393', '1');
INSERT INTO `t_s_territory` VALUES ('13', '00000010', '2', '江苏省', 'JSS', '0', '118.763232', '32.061707', '1');
INSERT INTO `t_s_territory` VALUES ('14', '00000011', '2', '浙江省', 'ZJS', '0', '120.153676', '30.26586', '1');
INSERT INTO `t_s_territory` VALUES ('15', '00000012', '2', '安徽省', 'AHS', '0', '117.284923', '31.861184', '1');
INSERT INTO `t_s_territory` VALUES ('16', '00000013', '2', '福建省', 'FJS', '0', '119.296506', '26.099933', '1');
INSERT INTO `t_s_territory` VALUES ('17', '00000014', '2', '江西省', 'JXS', '0', '115.909175', '28.674424', '1');
INSERT INTO `t_s_territory` VALUES ('1739', '360102', '4', '东湖区', 'DHQ', '0', '115.89901', '28.6849159', '184');
INSERT INTO `t_s_territory` VALUES ('1740', '360103', '4', '西湖区', 'XHQ', '0', '115.877287', '28.656887', '184');
INSERT INTO `t_s_territory` VALUES ('1741', '360104', '4', '青云谱区', 'QYPQ', '0', '115.925749', '28.621169', '184');
INSERT INTO `t_s_territory` VALUES ('1742', '360105', '4', '湾里区', 'WLQ', '0', '115.730994', '28.714869', '184');
INSERT INTO `t_s_territory` VALUES ('1743', '360111', '4', '青山湖区', 'QSHQ', '0', '115.962144', '28.682985', '184');
INSERT INTO `t_s_territory` VALUES ('1744', '360121', '4', '南昌县', 'NCX', '0', '115.944162', '28.545459', '184');
INSERT INTO `t_s_territory` VALUES ('1745', '360122', '4', '新建县', 'XJX', '0', '115.815233', '28.692437', '184');
INSERT INTO `t_s_territory` VALUES ('1746', '360123', '4', '安义县', 'AYX', '0', '115.549199', '28.844429', '184');
INSERT INTO `t_s_territory` VALUES ('1747', '360124', '4', '进贤县', 'JXX', '0', '116.240924', '28.376918', '184');
INSERT INTO `t_s_territory` VALUES ('1748', '360202', '4', '昌江区', 'CJQ', '0', '117.183688', '29.27342', '185');
INSERT INTO `t_s_territory` VALUES ('1749', '360203', '4', '珠山区', 'ZSQ', '0', '117.202336', '29.301272', '185');
INSERT INTO `t_s_territory` VALUES ('1750', '360222', '4', '浮梁县', 'FLX', '0', '117.215061', '29.351739', '185');
INSERT INTO `t_s_territory` VALUES ('1751', '360281', '4', '乐平市', 'LPS', '0', '117.129169', '28.961902', '185');
INSERT INTO `t_s_territory` VALUES ('1752', '360302', '4', '安源区', 'AYQ', '0', '113.87073', '27.615202', '186');
INSERT INTO `t_s_territory` VALUES ('1753', '360313', '4', '湘东区', 'XDQ', '0', '113.733059', '27.640075', '186');
INSERT INTO `t_s_territory` VALUES ('1754', '360321', '4', '莲花县', 'LHX', '0', '113.961465', '27.127669', '186');
INSERT INTO `t_s_territory` VALUES ('1755', '360322', '4', '上栗县', 'SLX', '0', '113.795219', '27.880567', '186');
INSERT INTO `t_s_territory` VALUES ('1756', '360323', '4', '芦溪县', 'LXX', '0', '114.029595', '27.631145', '186');
INSERT INTO `t_s_territory` VALUES ('1757', '360402', '4', '庐山区', 'LSQ', '0', '115.989212', '29.671775', '187');
INSERT INTO `t_s_territory` VALUES ('1758', '360403', '4', '浔阳区', 'XYQ', '0', '115.990399', '29.72746', '187');
INSERT INTO `t_s_territory` VALUES ('1759', '360421', '4', '九江县', 'JJX', '0', '115.911314', '29.608456', '187');
INSERT INTO `t_s_territory` VALUES ('1760', '360423', '4', '武宁县', 'WNX', '0', '115.100579', '29.256323', '187');
INSERT INTO `t_s_territory` VALUES ('1761', '360424', '4', '修水县', 'XSX', '0', '114.547356', '29.025707', '187');
INSERT INTO `t_s_territory` VALUES ('1762', '360425', '4', '永修县', 'YXX', '0', '115.809111', '29.021824', '187');
INSERT INTO `t_s_territory` VALUES ('1763', '360426', '4', '德安县', 'DAX', '0', '115.756883', '29.314348', '187');
INSERT INTO `t_s_territory` VALUES ('1764', '360427', '4', '星子县', 'XZX', '0', '116.044893', '29.448037', '187');
INSERT INTO `t_s_territory` VALUES ('1765', '360428', '4', '都昌县', 'DCX', '0', '116.204099', '29.273194', '187');
INSERT INTO `t_s_territory` VALUES ('1766', '360429', '4', '湖口县', 'HKX', '0', '116.220266', '29.73944', '187');
INSERT INTO `t_s_territory` VALUES ('1767', '360430', '4', '彭泽县', 'PZX', '0', '116.549359', '29.896061', '187');
INSERT INTO `t_s_territory` VALUES ('1768', '360481', '4', '瑞昌市', 'RCS', '0', '115.681504', '29.673795', '187');
INSERT INTO `t_s_territory` VALUES ('1769', '360499', '4', '共青城', 'GQC', '0', '115.774', '29.2417', '187');
INSERT INTO `t_s_territory` VALUES ('1770', '360502', '4', '渝水区', 'YSQ', '0', '114.944574', '27.80038', '188');
INSERT INTO `t_s_territory` VALUES ('1771', '360521', '4', '分宜县', 'FYX', '0', '114.692039', '27.814628', '188');
INSERT INTO `t_s_territory` VALUES ('1772', '360602', '4', '月湖区', 'YHQ', '0', '117.036676', '28.238797', '189');
INSERT INTO `t_s_territory` VALUES ('1773', '360622', '4', '余江县', 'YJX', '0', '116.818871', '28.204174', '189');
INSERT INTO `t_s_territory` VALUES ('1774', '360681', '4', '贵溪市', 'GXS', '0', '117.245497', '28.292519', '189');
INSERT INTO `t_s_territory` VALUES ('1775', '360702', '4', '章贡区', 'ZGQ', '0', '114.941826', '25.862827', '190');
INSERT INTO `t_s_territory` VALUES ('1776', '360721', '4', '赣县', 'GX', '0', '115.011561', '25.860691', '190');
INSERT INTO `t_s_territory` VALUES ('1777', '360722', '4', '信丰县', 'XFX', '0', '114.922963', '25.386278', '190');
INSERT INTO `t_s_territory` VALUES ('1778', '360723', '4', '大余县', 'DYX', '0', '114.362094', '25.401283', '190');
INSERT INTO `t_s_territory` VALUES ('1779', '360724', '4', '上犹县', 'SYX', '0', '114.551371', '25.784978', '190');
INSERT INTO `t_s_territory` VALUES ('1780', '360725', '4', '崇义县', 'CYX', '0', '114.308273', '25.681879', '190');
INSERT INTO `t_s_territory` VALUES ('1781', '360726', '4', '安远县', 'AYX', '0', '115.393922', '25.136925', '190');
INSERT INTO `t_s_territory` VALUES ('1782', '360727', '4', '龙南县', 'LNX', '0', '114.789811', '24.911107', '190');
INSERT INTO `t_s_territory` VALUES ('1783', '360728', '4', '定南县', 'DNX', '0', '115.027845', '24.78441', '190');
INSERT INTO `t_s_territory` VALUES ('1784', '360729', '4', '全南县', 'QNX', '0', '114.530125', '24.742401', '190');
INSERT INTO `t_s_territory` VALUES ('1785', '360730', '4', '宁都县', 'NDX', '0', '116.009472', '26.470116', '190');
INSERT INTO `t_s_territory` VALUES ('1786', '360731', '4', '于都县', 'YDX', '0', '115.41551', '25.952066', '190');
INSERT INTO `t_s_territory` VALUES ('1787', '360732', '4', '兴国县', 'XGX', '0', '115.36319', '26.337937', '190');
INSERT INTO `t_s_territory` VALUES ('1788', '360733', '4', '会昌县', 'HCX', '0', '115.786057', '25.600272', '190');
INSERT INTO `t_s_territory` VALUES ('1789', '360734', '4', '寻乌县', 'YWX', '0', '115.646525', '24.963322', '190');
INSERT INTO `t_s_territory` VALUES ('1790', '360735', '4', '石城县', 'SCX', '0', '116.354201', '26.32686', '190');
INSERT INTO `t_s_territory` VALUES ('1791', '360781', '4', '瑞金市', 'RJS', '0', '116.02713', '25.885561', '190');
INSERT INTO `t_s_territory` VALUES ('1792', '360782', '4', '南康市', 'NKS', '0', '114.765238', '25.661356', '190');
INSERT INTO `t_s_territory` VALUES ('1793', '360802', '4', '吉州区', 'JZQ', '0', '114.994307', '27.129975', '191');
INSERT INTO `t_s_territory` VALUES ('1794', '360803', '4', '青原区', 'QYQ', '0', '115.01424', '27.081719', '191');
INSERT INTO `t_s_territory` VALUES ('1795', '360821', '4', '吉安县', 'JAX', '0', '114.907659', '27.040142', '191');
INSERT INTO `t_s_territory` VALUES ('1796', '360822', '4', '吉水县', 'JSX', '0', '115.135507', '27.229632', '191');
INSERT INTO `t_s_territory` VALUES ('1797', '360823', '4', '峡江县', 'XJX', '0', '115.316566', '27.582901', '191');
INSERT INTO `t_s_territory` VALUES ('1798', '360824', '4', '新干县', 'XGX', '0', '115.393043', '27.740809', '191');
INSERT INTO `t_s_territory` VALUES ('1799', '360825', '4', '永丰县', 'YFX', '0', '115.441477', '27.317869', '191');
INSERT INTO `t_s_territory` VALUES ('18', '00000015', '2', '山东省', 'SDS', '0', '117.020411', '36.668627', '1');
INSERT INTO `t_s_territory` VALUES ('1800', '360826', '4', '泰和县', 'THX', '0', '114.908861', '26.790231', '191');
INSERT INTO `t_s_territory` VALUES ('1801', '360827', '4', '遂川县', 'SCX', '0', '114.52098', '26.311894', '191');
INSERT INTO `t_s_territory` VALUES ('1802', '360828', '4', '万安县', 'WAX', '0', '114.786256', '26.458257', '191');
INSERT INTO `t_s_territory` VALUES ('1803', '360829', '4', '安福县', 'AFX', '0', '114.619893', '27.392874', '191');
INSERT INTO `t_s_territory` VALUES ('1804', '360830', '4', '永新县', 'YXX', '0', '114.242675', '26.945233', '191');
INSERT INTO `t_s_territory` VALUES ('1805', '360881', '4', '井冈山市', 'JGSS', '0', '114.289182', '26.748186', '191');
INSERT INTO `t_s_territory` VALUES ('1806', '360902', '4', '袁州区', 'YZQ', '0', '114.424657', '27.798846', '192');
INSERT INTO `t_s_territory` VALUES ('1807', '360921', '4', '奉新县', 'FXX', '0', '115.384904', '28.700806', '192');
INSERT INTO `t_s_territory` VALUES ('1808', '360922', '4', '万载县', 'WZX', '0', '114.447551', '28.10455', '192');
INSERT INTO `t_s_territory` VALUES ('1809', '360923', '4', '上高县', 'SGX', '0', '114.924494', '28.232827', '192');
INSERT INTO `t_s_territory` VALUES ('1810', '360924', '4', '宜丰县', 'YFX', '0', '114.803542', '28.393613', '192');
INSERT INTO `t_s_territory` VALUES ('1811', '360925', '4', '靖安县', 'JAX', '0', '115.362629', '28.861475', '192');
INSERT INTO `t_s_territory` VALUES ('1812', '360926', '4', '铜鼓县', 'TGX', '0', '114.37098', '28.520747', '192');
INSERT INTO `t_s_territory` VALUES ('1813', '360981', '4', '丰城市', 'FCS', '0', '115.771195', '28.159325', '192');
INSERT INTO `t_s_territory` VALUES ('1814', '360982', '4', '樟树市', 'ZSS', '0', '115.546063', '28.055796', '192');
INSERT INTO `t_s_territory` VALUES ('1815', '360983', '4', '高安市', 'GAS', '0', '115.375618', '28.417261', '192');
INSERT INTO `t_s_territory` VALUES ('1816', '361002', '4', '临川区', 'LCQ', '0', '116.31136', '27.934529', '193');
INSERT INTO `t_s_territory` VALUES ('1817', '361021', '4', '南城县', 'NCX', '0', '116.644658', '27.552748', '193');
INSERT INTO `t_s_territory` VALUES ('1818', '361022', '4', '黎川县', 'LCX', '0', '116.907508', '27.282382', '193');
INSERT INTO `t_s_territory` VALUES ('1819', '361023', '4', '南丰县', 'NFX', '0', '116.525725', '27.218445', '193');
INSERT INTO `t_s_territory` VALUES ('1820', '361024', '4', '崇仁县', 'CRX', '0', '116.061164', '27.764681', '193');
INSERT INTO `t_s_territory` VALUES ('1821', '361025', '4', '乐安县', 'LAX', '0', '115.837895', '27.420441', '193');
INSERT INTO `t_s_territory` VALUES ('1822', '361026', '4', '宜黄县', 'YHX', '0', '116.222128', '27.546146', '193');
INSERT INTO `t_s_territory` VALUES ('1823', '361027', '4', '金溪县', 'JXX', '0', '116.775435', '27.908337', '193');
INSERT INTO `t_s_territory` VALUES ('1824', '361028', '4', '资溪县', 'ZXX', '0', '117.060264', '27.706102', '193');
INSERT INTO `t_s_territory` VALUES ('1825', '361029', '4', '东乡县', 'DXX', '0', '116.590465', '28.236118', '193');
INSERT INTO `t_s_territory` VALUES ('1826', '361030', '4', '广昌县', 'GCX', '0', '116.325757', '26.837267', '193');
INSERT INTO `t_s_territory` VALUES ('1827', '361102', '4', '信州区', 'XZQ', '0', '117.966823', '28.43121', '194');
INSERT INTO `t_s_territory` VALUES ('1828', '361121', '4', '上饶县', 'SRX', '0', '117.90785', '28.448983', '194');
INSERT INTO `t_s_territory` VALUES ('1829', '361122', '4', '广丰县', 'GFX', '0', '118.19124', '28.436286', '194');
INSERT INTO `t_s_territory` VALUES ('1830', '361123', '4', '玉山县', 'YSX', '0', '118.245124', '28.682055', '194');
INSERT INTO `t_s_territory` VALUES ('1831', '361124', '4', '铅山县', 'QSX', '0', '117.709451', '28.315217', '194');
INSERT INTO `t_s_territory` VALUES ('1832', '361125', '4', '横峰县', 'HFX', '0', '117.596452', '28.407118', '194');
INSERT INTO `t_s_territory` VALUES ('1833', '361126', '4', '弋阳县', 'YYX', '0', '117.449588', '28.378044', '194');
INSERT INTO `t_s_territory` VALUES ('1834', '361127', '4', '余干县', 'YGX', '0', '116.695647', '28.702302', '194');
INSERT INTO `t_s_territory` VALUES ('1835', '361128', '4', '鄱阳县', 'PYX', '0', '116.699746', '29.011699', '194');
INSERT INTO `t_s_territory` VALUES ('1836', '361129', '4', '万年县', 'WNX', '0', '117.058445', '28.694582', '194');
INSERT INTO `t_s_territory` VALUES ('1837', '361130', '4', '婺源县', 'WYX', '0', '117.861911', '29.2480249', '194');
INSERT INTO `t_s_territory` VALUES ('1838', '361181', '4', '德兴市', 'DXS', '0', '117.578713', '28.946464', '194');
INSERT INTO `t_s_territory` VALUES ('1839', '370102', '4', '历下区', 'LXQ', '0', '117.07653', '36.666344', '195');
INSERT INTO `t_s_territory` VALUES ('184', '360100', '3', '南昌市', 'NCS', '0', '115.858089', '28.68316', '17');
INSERT INTO `t_s_territory` VALUES ('1840', '370103', '4', '市中区', 'SZQ', '0', '116.997475', '36.6511749', '195');
INSERT INTO `t_s_territory` VALUES ('1841', '370104', '4', '槐荫区', 'HYQ', '0', '116.90113', '36.651301', '195');
INSERT INTO `t_s_territory` VALUES ('1842', '370105', '4', '天桥区', 'TQQ', '0', '116.987492', '36.678016', '195');
INSERT INTO `t_s_territory` VALUES ('1843', '370112', '4', '历城区', 'LCQ', '0', '117.065222', '36.680171', '195');
INSERT INTO `t_s_territory` VALUES ('185', '360200', '3', '景德镇市', 'JDZS', '0', '117.17842', '29.268836', '17');
INSERT INTO `t_s_territory` VALUES ('186', '360300', '3', '萍乡市', 'PXS', '0', '113.854676', '27.622865', '17');
INSERT INTO `t_s_territory` VALUES ('187', '360400', '3', '九江市', 'JJS', '0', '116.001951', '29.705103', '17');
INSERT INTO `t_s_territory` VALUES ('188', '360500', '3', '新余市', 'XYS', '0', '114.91741', '27.817819', '17');
INSERT INTO `t_s_territory` VALUES ('189', '360600', '3', '鹰潭市', 'YTS', '0', '117.069202', '28.260189', '17');
INSERT INTO `t_s_territory` VALUES ('19', '00000017', '2', '湖北省', 'HBS', '0', '114.341921', '30.545861', '1');
INSERT INTO `t_s_territory` VALUES ('190', '360700', '3', '赣州市', 'GZS', '0', '114.935025', '25.831925', '17');
INSERT INTO `t_s_territory` VALUES ('191', '360800', '3', '吉安市', 'JAS', '0', '114.992912', '27.113039', '17');
INSERT INTO `t_s_territory` VALUES ('192', '360900', '3', '宜春市', 'YCS', '0', '114.416778', '27.815619', '17');
INSERT INTO `t_s_territory` VALUES ('193', '361000', '3', '抚州市', 'FZS', '0', '116.358176', '27.9492', '17');
INSERT INTO `t_s_territory` VALUES ('194', '361100', '3', '上饶市', 'SRS', '0', '117.943433', '28.454863', '17');
INSERT INTO `t_s_territory` VALUES ('195', '370100', '3', '济南市', 'JNS', '0', '116.994917', '36.665282', '18');
INSERT INTO `t_s_territory` VALUES ('20', '00000018', '2', '湖南省', 'HNS', '0', '112.98381', '28.112444', '1');
INSERT INTO `t_s_territory` VALUES ('21', '40000000', '2', '重庆市', 'ZQS', '0', '106.551557', '29.56301', '1');
INSERT INTO `t_s_territory` VALUES ('22', '00000022', '2', '四川省', 'SCS', '0', '104.075931', '30.651652', '1');
INSERT INTO `t_s_territory` VALUES ('23', '00000019', '2', '广东省', 'GDS', '0', '113.266531', '23.132191', '1');
INSERT INTO `t_s_territory` VALUES ('24', '00000020', '2', '广西壮族自治区', 'GXZZZZQ', '0', '108.327546', '22.815478', '1');
INSERT INTO `t_s_territory` VALUES ('25', '00000021', '2', '海南省', 'HNS', '0', '110.349229', '20.017378', '1');
INSERT INTO `t_s_territory` VALUES ('26', '810000', '2', '香港特别行政区', 'XGTBXZQ', '0', '114.109497', '22.396428', '1');
INSERT INTO `t_s_territory` VALUES ('27', '820000', '2', '澳门特别行政区', 'AMTBXZQ', '0', '113.543873', '22.198745', '1');
INSERT INTO `t_s_territory` VALUES ('28', '00000023', '2', '贵州省', 'GZS', '0', '106.707116', '26.598026', '1');
INSERT INTO `t_s_territory` VALUES ('29', '00000024', '2', '云南省', 'YNS', '0', '102.709812', '25.045359', '1');
INSERT INTO `t_s_territory` VALUES ('3', '00000006', '2', '辽宁省', 'LNS', '0', '123.42944', '41.835441', '1');
INSERT INTO `t_s_territory` VALUES ('30', '00000025', '2', '西藏自治区', 'XCZZQ', '0', '91.1170059', '29.647951', '1');
INSERT INTO `t_s_territory` VALUES ('31', '00000026', '2', '陕西省', 'SXS', '0', '108.954239', '34.265472', '1');
INSERT INTO `t_s_territory` VALUES ('32', '00000027', '2', '甘肃省', 'GSS', '0', '103.826308', '36.059421', '1');
INSERT INTO `t_s_territory` VALUES ('33', '00000028', '2', '青海省', 'QHS', '0', '101.780199', '36.620901', '1');
INSERT INTO `t_s_territory` VALUES ('34', '00000029', '2', '宁夏回族自治区', 'NXHZZZQ', '0', '106.258754', '38.471318', '1');
INSERT INTO `t_s_territory` VALUES ('35', '00000030', '2', '新疆维吾尔自治区', 'XJWWEZZQ', '0', '87.6278119', '43.793028', '1');
INSERT INTO `t_s_territory` VALUES ('4', '00000007', '2', '吉林省', 'JLS', '0', '125.326065', '43.896082', '1');
INSERT INTO `t_s_territory` VALUES ('5', '10000000', '2', '北京市', 'BJS', '0', '116.407413', '39.904214', '1');
INSERT INTO `t_s_territory` VALUES ('6', '30000000', '2', '天津市', 'TJS', '0', '117.200983', '39.084158', '1');
INSERT INTO `t_s_territory` VALUES ('7', '00000003', '2', '河北省', 'HBS', '0', '114.468665', '38.037057', '1');
INSERT INTO `t_s_territory` VALUES ('8', '00000004', '2', '山西省', 'SXS', '0', '112.562569', '37.873376', '1');
INSERT INTO `t_s_territory` VALUES ('89', '370200', '3', '青岛市', 'QDS', '0', '120.382504', '36.06722', '18');
INSERT INTO `t_s_territory` VALUES ('9', '00000005', '2', '内蒙古自治区', 'NMGZZQ', '0', '111.765618', '40.817498', '1');
INSERT INTO `t_s_territory` VALUES ('90', '370300', '3', '淄博市', 'ZBS', '0', '118.055007', '36.813497', '18');
INSERT INTO `t_s_territory` VALUES ('91', '370400', '3', '枣庄市', 'ZZS', '0', '117.323725', '34.810488', '18');
INSERT INTO `t_s_territory` VALUES ('92', '370500', '3', '东营市', 'DYS', '0', '118.674767', '37.434751', '18');
INSERT INTO `t_s_territory` VALUES ('926', '370113', '4', '长清区', 'CQQ', '0', '116.751959', '36.553691', '195');
INSERT INTO `t_s_territory` VALUES ('927', '370124', '4', '平阴县', 'PYX', '0', '116.456187', '36.289265', '195');
INSERT INTO `t_s_territory` VALUES ('928', '370125', '4', '济阳县', 'JYX', '0', '117.173529', '36.978547', '195');
INSERT INTO `t_s_territory` VALUES ('929', '370126', '4', '商河县', 'SHX', '0', '117.157183', '37.309045', '195');
INSERT INTO `t_s_territory` VALUES ('93', '370600', '3', '烟台市', 'YTS', '0', '121.447926', '37.463819', '18');
INSERT INTO `t_s_territory` VALUES ('930', '370181', '4', '章丘市', 'ZQS', '0', '117.534326', '36.714015', '195');
INSERT INTO `t_s_territory` VALUES ('931', '370202', '4', '市南区', 'SNQ', '0', '120.412392', '36.075651', '89');
INSERT INTO `t_s_territory` VALUES ('932', '370203', '4', '市北区', 'SBQ', '0', '120.374801', '36.087661', '89');
INSERT INTO `t_s_territory` VALUES ('933', '370205', '4', '四方区', 'SFQ', '0', '120.366454', '36.103993', '89');
INSERT INTO `t_s_territory` VALUES ('934', '370211', '4', '黄岛区', 'HDQ', '0', '120.198054', '35.960935', '89');
INSERT INTO `t_s_territory` VALUES ('935', '370212', '4', '崂山区', 'LSQ', '0', '120.468956', '36.107538', '89');
INSERT INTO `t_s_territory` VALUES ('936', '370213', '4', '李沧区', 'LCQ', '0', '120.432864', '36.145476', '89');
INSERT INTO `t_s_territory` VALUES ('937', '370214', '4', '城阳区', 'CYQ', '0', '120.396529', '36.307061', '89');
INSERT INTO `t_s_territory` VALUES ('938', '370281', '4', '胶州市', 'JZS', '0', '120.033345', '36.264664', '89');
INSERT INTO `t_s_territory` VALUES ('939', '370282', '4', '即墨市', 'JMS', '0', '120.447162', '36.389401', '89');
INSERT INTO `t_s_territory` VALUES ('94', '370700', '3', '潍坊市', 'WFS', '0', '119.16193', '36.706691', '18');
INSERT INTO `t_s_territory` VALUES ('940', '370283', '4', '平度市', 'PDS', '0', '119.960014', '36.7867', '89');
INSERT INTO `t_s_territory` VALUES ('941', '370284', '4', '胶南市', 'JNS', '0', '120.04643', '35.8725', '89');
INSERT INTO `t_s_territory` VALUES ('942', '370285', '4', '莱西市', 'LXS', '0', '120.51769', '36.889084', '89');
INSERT INTO `t_s_territory` VALUES ('943', '370302', '4', '淄川区', 'ZCQ', '0', '117.966842', '36.643449', '90');
INSERT INTO `t_s_territory` VALUES ('944', '370303', '4', '张店区', 'ZDQ', '0', '118.017656', '36.806773', '90');
INSERT INTO `t_s_territory` VALUES ('945', '370304', '4', '博山区', 'BSQ', '0', '117.861698', '36.494752', '90');
INSERT INTO `t_s_territory` VALUES ('946', '370305', '4', '临淄区', 'LZQ', '0', '118.308977', '36.827343', '90');
INSERT INTO `t_s_territory` VALUES ('947', '370306', '4', '周村区', 'ZCQ', '0', '117.869877', '36.803109', '90');
INSERT INTO `t_s_territory` VALUES ('948', '370321', '4', '桓台县', 'HTX', '0', '118.097955', '36.959623', '90');
INSERT INTO `t_s_territory` VALUES ('949', '370322', '4', '高青县', 'GQX', '0', '117.826916', '37.171063', '90');
INSERT INTO `t_s_territory` VALUES ('95', '370800', '3', '济宁市', 'JNS', '0', '116.587099', '35.414921', '18');
INSERT INTO `t_s_territory` VALUES ('950', '370323', '4', '沂源县', 'YYX', '0', '118.170979', '36.184827', '90');
INSERT INTO `t_s_territory` VALUES ('951', '370402', '4', '市中区', 'SZQ', '0', '117.556124', '34.864114', '91');
INSERT INTO `t_s_territory` VALUES ('952', '370403', '4', '薛城区', 'YCQ', '0', '117.263157', '34.795206', '91');
INSERT INTO `t_s_territory` VALUES ('953', '370404', '4', '峄城区', 'YCQ', '0', '117.590819', '34.772236', '91');
INSERT INTO `t_s_territory` VALUES ('954', '370405', '4', '台儿庄区', 'TEZQ', '0', '117.733832', '34.562528', '91');
INSERT INTO `t_s_territory` VALUES ('955', '370406', '4', '山亭区', 'STQ', '0', '117.461343', '35.099549', '91');
INSERT INTO `t_s_territory` VALUES ('956', '370481', '4', '滕州市', 'TZS', '0', '117.164388', '35.084021', '91');
INSERT INTO `t_s_territory` VALUES ('957', '370502', '4', '东营区', 'DYQ', '0', '118.582184', '37.448964', '92');
INSERT INTO `t_s_territory` VALUES ('958', '370503', '4', '河口区', 'HKQ', '0', '118.525579', '37.886138', '92');
INSERT INTO `t_s_territory` VALUES ('959', '370521', '4', '垦利县', 'KLX', '0', '118.547627', '37.58754', '92');
INSERT INTO `t_s_territory` VALUES ('960', '370522', '4', '利津县', 'LJX', '0', '118.255273', '37.49026', '92');
INSERT INTO `t_s_territory` VALUES ('961', '370523', '4', '广饶县', 'GRX', '0', '118.407045', '37.0537', '92');
INSERT INTO `t_s_territory` VALUES ('962', '370602', '4', '芝罘区', 'ZFQ', '0', '121.400031', '37.540687', '93');
INSERT INTO `t_s_territory` VALUES ('963', '370611', '4', '福山区', 'FSQ', '0', '121.267697', '37.498051', '93');
INSERT INTO `t_s_territory` VALUES ('964', '370612', '4', '牟平区', 'MPQ', '0', '121.600512', '37.386901', '93');
INSERT INTO `t_s_territory` VALUES ('965', '370613', '4', '莱山区', 'LSQ', '0', '121.445304', '37.511305', '93');
INSERT INTO `t_s_territory` VALUES ('966', '370614', '4', '开发区', 'KFQ', '0', '121.251001', '37.554683', '93');
INSERT INTO `t_s_territory` VALUES ('967', '370634', '4', '长岛县', 'CDX', '0', '120.736584', '37.921417', '93');
INSERT INTO `t_s_territory` VALUES ('968', '370681', '4', '龙口市', 'LKS', '0', '120.477836', '37.646064', '93');
INSERT INTO `t_s_territory` VALUES ('969', '370682', '4', '莱阳市', 'LYS', '0', '120.711607', '36.97891', '93');
INSERT INTO `t_s_territory` VALUES ('970', '370683', '4', '莱州市', 'LZS', '0', '119.942327', '37.177017', '93');
INSERT INTO `t_s_territory` VALUES ('971', '370684', '4', '蓬莱市', 'PLS', '0', '120.758848', '37.810661', '93');
INSERT INTO `t_s_territory` VALUES ('972', '370685', '4', '招远市', 'ZYS', '0', '120.434072', '37.355469', '93');
INSERT INTO `t_s_territory` VALUES ('973', '370686', '4', '栖霞市', 'QXS', '0', '120.849675', '37.335123', '93');
INSERT INTO `t_s_territory` VALUES ('974', '370687', '4', '海阳市', 'HYS', '0', '121.158477', '36.776425', '93');
INSERT INTO `t_s_territory` VALUES ('975', '370702', '4', '潍城区', 'WCQ', '0', '119.024836', '36.7281', '94');
INSERT INTO `t_s_territory` VALUES ('976', '370703', '4', '寒亭区', 'HTQ', '0', '119.219734', '36.775491', '94');
INSERT INTO `t_s_territory` VALUES ('977', '370704', '4', '坊子区', 'FZQ', '0', '119.166485', '36.654448', '94');
INSERT INTO `t_s_territory` VALUES ('978', '370705', '4', '奎文区', 'KWQ', '0', '119.132486', '36.707676', '94');
INSERT INTO `t_s_territory` VALUES ('979', '370724', '4', '临朐县', 'LQX', '0', '118.542982', '36.5125059', '94');
INSERT INTO `t_s_territory` VALUES ('980', '370725', '4', '昌乐县', 'CLX', '0', '118.829914', '36.706945', '94');
INSERT INTO `t_s_territory` VALUES ('981', '370781', '4', '青州市', 'QZS', '0', '118.479622', '36.684528', '94');
INSERT INTO `t_s_territory` VALUES ('982', '370782', '4', '诸城市', 'ZCS', '0', '119.410103', '35.995654', '94');
INSERT INTO `t_s_territory` VALUES ('983', '370783', '4', '寿光市', 'SGS', '0', '118.790652', '36.85548', '94');
INSERT INTO `t_s_territory` VALUES ('984', '370784', '4', '安丘市', 'AQS', '0', '119.218978', '36.478494', '94');
INSERT INTO `t_s_territory` VALUES ('985', '370785', '4', '高密市', 'GMS', '0', '119.755597', '36.3825949', '94');
INSERT INTO `t_s_territory` VALUES ('986', '370786', '4', '昌邑市', 'CYS', '0', '119.398525', '36.85882', '94');
INSERT INTO `t_s_territory` VALUES ('987', '370802', '4', '市中区', 'SZQ', '0', '116.596614', '35.40819', '95');
INSERT INTO `t_s_territory` VALUES ('988', '370811', '4', '任城区', 'RCQ', '0', '116.628562', '35.433727', '95');
INSERT INTO `t_s_territory` VALUES ('989', '370826', '4', '微山县', 'WSX', '0', '117.128946', '34.8071', '95');
INSERT INTO `t_s_territory` VALUES ('990', '370827', '4', '鱼台县', 'YTX', '0', '116.650608', '35.012749', '95');
INSERT INTO `t_s_territory` VALUES ('991', '370828', '4', '金乡县', 'JXX', '0', '116.311532', '35.06662', '95');
INSERT INTO `t_s_territory` VALUES ('992', '370829', '4', '嘉祥县', 'JXX', '0', '116.342442', '35.407829', '95');
INSERT INTO `t_s_territory` VALUES ('993', '370830', '4', '汶上县', 'WSX', '0', '116.489043', '35.732799', '95');
INSERT INTO `t_s_territory` VALUES ('994', '370831', '4', '泗水县', 'SSX', '0', '117.251195', '35.664323', '95');
INSERT INTO `t_s_territory` VALUES ('995', '370832', '4', '梁山县', 'LSX', '0', '116.096044', '35.802306', '95');
INSERT INTO `t_s_territory` VALUES ('996', '370881', '4', '曲阜市', 'QFS', '0', '116.986532', '35.581137', '95');
INSERT INTO `t_s_territory` VALUES ('997', '370882', '4', '兖州市', 'YZS', '0', '116.783834', '35.553144', '95');
INSERT INTO `t_s_territory` VALUES ('998', '370883', '4', '邹城市', 'ZCS', '0', '117.003743', '35.405185', '95');
INSERT INTO `t_s_territory` VALUES ('999', '370902', '4', '泰山区', 'TSQ', '0', '117.135354', '36.192084', '96');

-- ----------------------------
-- Table structure for `t_s_timetask`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_timetask`;
CREATE TABLE `t_s_timetask` (
  `ID` varchar(32) NOT NULL,
  `CREATE_BY` varchar(32) default NULL,
  `CREATE_DATE` datetime default NULL,
  `CREATE_NAME` varchar(32) default NULL,
  `CRON_EXPRESSION` varchar(100) NOT NULL,
  `IS_EFFECT` varchar(1) NOT NULL,
  `IS_START` varchar(1) NOT NULL,
  `TASK_DESCRIBE` varchar(50) NOT NULL,
  `TASK_ID` varchar(100) NOT NULL,
  `UPDATE_BY` varchar(32) default NULL,
  `UPDATE_DATE` datetime default NULL,
  `UPDATE_NAME` varchar(32) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_timetask
-- ----------------------------
INSERT INTO `t_s_timetask` VALUES ('402881e445e4b8990145e4b956d80159', null, null, null, '0 0/1 * * * ?', '0', '0', '测试Demo', 'taskDemoServiceTaskCronTrigger', null, null, null);

-- ----------------------------
-- Table structure for `t_s_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_type`;
CREATE TABLE `t_s_type` (
  `ID` varchar(32) NOT NULL,
  `typecode` varchar(50) default NULL,
  `typename` varchar(50) default NULL,
  `typepid` varchar(32) default NULL,
  `typegroupid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_nw2b22gy7plh7pqows186odmq` (`typepid`),
  KEY `FK_3q40mr4ebtd0cvx79matl39x1` (`typegroupid`),
  CONSTRAINT `FK_3q40mr4ebtd0cvx79matl39x1` FOREIGN KEY (`typegroupid`) REFERENCES `t_s_typegroup` (`ID`),
  CONSTRAINT `FK_nw2b22gy7plh7pqows186odmq` FOREIGN KEY (`typepid`) REFERENCES `t_s_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_type
-- ----------------------------
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b951e60051', '2', '菜单图标', null, '402881e445e4b8990145e4b951790047');
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b951f60052', '1', '系统图标', null, '402881e445e4b8990145e4b951790047');
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b951f60053', 'files', '附件', null, '402881e445e4b8990145e4b951b7004f');
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b951f60054', '1', '优质订单', null, '402881e445e4b8990145e4b951890048');
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b952050055', '2', '普通订单', null, '402881e445e4b8990145e4b951890048');
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b952050056', '1', '签约客户', null, '402881e445e4b8990145e4b951890049');
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b952150057', '2', '普通客户', null, '402881e445e4b8990145e4b951890049');
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b952150058', '1', '特殊服务', null, '402881e445e4b8990145e4b95198004a');
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b952150059', '2', '普通服务', null, '402881e445e4b8990145e4b95198004a');
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b95225005a', 'single', '单条件查询', null, '402881e445e4b8990145e4b95198004b');
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b95225005b', 'group', '范围查询', null, '402881e445e4b8990145e4b95198004b');
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b95225005c', 'Y', '是', null, '402881e445e4b8990145e4b951a8004c');
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b95235005d', 'N', '否', null, '402881e445e4b8990145e4b951a8004c');
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b95235005e', 'Integer', 'Integer', null, '402881e445e4b8990145e4b951a8004d');
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b95235005f', 'Date', 'Date', null, '402881e445e4b8990145e4b951a8004d');
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b952450060', 'String', 'String', null, '402881e445e4b8990145e4b951a8004d');
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b952450061', 'Long', 'Long', null, '402881e445e4b8990145e4b951a8004d');
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b952450062', 'act', '工作流引擎表', null, '402881e445e4b8990145e4b951a8004e');
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b952450063', 't_s', '系统基础表', null, '402881e445e4b8990145e4b951a8004e');
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b952540064', 't_b', '业务表', null, '402881e445e4b8990145e4b951a8004e');
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b952540065', 't_p', '自定义引擎表', null, '402881e445e4b8990145e4b951a8004e');
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b952540066', 'news', '新闻', null, '402881e445e4b8990145e4b951b7004f');
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b952540067', '0', '男性', null, '402881e445e4b8990145e4b951b70050');
INSERT INTO `t_s_type` VALUES ('402881e445e4b8990145e4b952640068', '1', '女性', null, '402881e445e4b8990145e4b951b70050');

-- ----------------------------
-- Table structure for `t_s_typegroup`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_typegroup`;
CREATE TABLE `t_s_typegroup` (
  `ID` varchar(32) NOT NULL,
  `typegroupcode` varchar(50) default NULL,
  `typegroupname` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_typegroup
-- ----------------------------
INSERT INTO `t_s_typegroup` VALUES ('402881e445e4b8990145e4b951790047', 'icontype', '图标类型');
INSERT INTO `t_s_typegroup` VALUES ('402881e445e4b8990145e4b951890048', 'order', '订单类型');
INSERT INTO `t_s_typegroup` VALUES ('402881e445e4b8990145e4b951890049', 'custom', '客户类型');
INSERT INTO `t_s_typegroup` VALUES ('402881e445e4b8990145e4b95198004a', 'service', '服务项目类型');
INSERT INTO `t_s_typegroup` VALUES ('402881e445e4b8990145e4b95198004b', 'searchmode', '查询模式');
INSERT INTO `t_s_typegroup` VALUES ('402881e445e4b8990145e4b951a8004c', 'yesorno', '逻辑条件');
INSERT INTO `t_s_typegroup` VALUES ('402881e445e4b8990145e4b951a8004d', 'fieldtype', '字段类型');
INSERT INTO `t_s_typegroup` VALUES ('402881e445e4b8990145e4b951a8004e', 'database', '数据表');
INSERT INTO `t_s_typegroup` VALUES ('402881e445e4b8990145e4b951b7004f', 'fieltype', '文档分类');
INSERT INTO `t_s_typegroup` VALUES ('402881e445e4b8990145e4b951b70050', 'sex', '性别类');

-- ----------------------------
-- Table structure for `t_s_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_user`;
CREATE TABLE `t_s_user` (
  `email` varchar(50) default NULL,
  `mobilePhone` varchar(30) default NULL,
  `officePhone` varchar(20) default NULL,
  `signatureFile` varchar(100) default NULL,
  `id` varchar(32) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_2cuji5h6yorrxgsr8ojndlmal` (`id`),
  CONSTRAINT `FK_2cuji5h6yorrxgsr8ojndlmal` FOREIGN KEY (`id`) REFERENCES `t_s_base_user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_user
-- ----------------------------
INSERT INTO `t_s_user` VALUES (null, null, null, 'images/renfang/qm/licf.gif', '402881e445e4b8990145e4b9515a0043');
INSERT INTO `t_s_user` VALUES ('zhangdaiscott@163.com', '13426432910', '7496661', null, '402881e445e4b8990145e4b951690044');
INSERT INTO `t_s_user` VALUES (null, null, null, null, '402881e445e4b8990145e4b951690045');
INSERT INTO `t_s_user` VALUES (null, null, null, null, '402881e445e4b8990145e4b951790046');

-- ----------------------------
-- Table structure for `t_s_version`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_version`;
CREATE TABLE `t_s_version` (
  `ID` varchar(32) NOT NULL,
  `loginpage` varchar(100) default NULL,
  `versioncode` varchar(50) default NULL,
  `versionname` varchar(30) default NULL,
  `versionnum` varchar(20) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_version
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(50) default NULL,
  `age` int(11) default NULL,
  `birthday` date default NULL,
  `image` blob,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------


-- ----------------------------
-- Table structure for `act_ge_bytearray`
-- ----------------------------
DROP TABLE IF EXISTS `act_ge_bytearray`;
CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `REV_` int(11) default NULL,
  `NAME_` varchar(255) collate utf8_bin default NULL,
  `DEPLOYMENT_ID_` varchar(64) collate utf8_bin default NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) default NULL,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for `act_ge_property`
-- ----------------------------
DROP TABLE IF EXISTS `act_ge_property`;
CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) collate utf8_bin NOT NULL default '',
  `VALUE_` varchar(300) collate utf8_bin default NULL,
  `REV_` int(11) default NULL,
  PRIMARY KEY  (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `act_ge_property` VALUES 
	('next.dbid', '1', 1),
	('schema.history', 'create(5.15)', 1),
	('schema.version', '5.15', 1);
-- ----------------------------
-- Table structure for `act_hi_actinst`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_actinst`;
CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) collate utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) collate utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) collate utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `CALL_PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `ACT_NAME_` varchar(255) collate utf8_bin default NULL,
  `ACT_TYPE_` varchar(255) collate utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) collate utf8_bin default NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime default NULL,
  `DURATION_` bigint(20) default NULL,
  `TENANT_ID_` varchar(255) collate utf8_bin default '',
  PRIMARY KEY  (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for `act_hi_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_attachment`;
CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `REV_` int(11) default NULL,
  `USER_ID_` varchar(255) collate utf8_bin default NULL,
  `NAME_` varchar(255) collate utf8_bin default NULL,
  `DESCRIPTION_` varchar(4000) collate utf8_bin default NULL,
  `TYPE_` varchar(255) collate utf8_bin default NULL,
  `TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `URL_` varchar(4000) collate utf8_bin default NULL,
  `CONTENT_ID_` varchar(64) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_hi_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `act_hi_comment`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_comment`;
CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `TYPE_` varchar(255) collate utf8_bin default NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) collate utf8_bin default NULL,
  `TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `ACTION_` varchar(255) collate utf8_bin default NULL,
  `MESSAGE_` varchar(4000) collate utf8_bin default NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY  (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_hi_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `act_hi_detail`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_detail`;
CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `TYPE_` varchar(255) collate utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `EXECUTION_ID_` varchar(64) collate utf8_bin default NULL,
  `TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `ACT_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `NAME_` varchar(255) collate utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) collate utf8_bin default NULL,
  `REV_` int(11) default NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) collate utf8_bin default NULL,
  `DOUBLE_` double default NULL,
  `LONG_` bigint(20) default NULL,
  `TEXT_` varchar(4000) collate utf8_bin default NULL,
  `TEXT2_` varchar(4000) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for `act_hi_identitylink`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_identitylink`;
CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `GROUP_ID_` varchar(255) collate utf8_bin default NULL,
  `TYPE_` varchar(255) collate utf8_bin default NULL,
  `USER_ID_` varchar(255) collate utf8_bin default NULL,
  `TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for `act_hi_procinst`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_procinst`;
CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) collate utf8_bin default NULL,
  `PROC_DEF_ID_` varchar(64) collate utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime default NULL,
  `DURATION_` bigint(20) default NULL,
  `START_USER_ID_` varchar(255) collate utf8_bin default NULL,
  `START_ACT_ID_` varchar(255) collate utf8_bin default NULL,
  `END_ACT_ID_` varchar(255) collate utf8_bin default NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) collate utf8_bin default NULL,
  `DELETE_REASON_` varchar(4000) collate utf8_bin default NULL,
  `TENANT_ID_` varchar(255) collate utf8_bin default '',
  PRIMARY KEY  (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for `act_hi_taskinst`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_taskinst`;
CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) collate utf8_bin default NULL,
  `TASK_DEF_KEY_` varchar(255) collate utf8_bin default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `EXECUTION_ID_` varchar(64) collate utf8_bin default NULL,
  `NAME_` varchar(255) collate utf8_bin default NULL,
  `PARENT_TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `DESCRIPTION_` varchar(4000) collate utf8_bin default NULL,
  `OWNER_` varchar(255) collate utf8_bin default NULL,
  `ASSIGNEE_` varchar(255) collate utf8_bin default NULL,
  `START_TIME_` datetime NOT NULL,
  `CLAIM_TIME_` datetime default NULL,
  `END_TIME_` datetime default NULL,
  `DURATION_` bigint(20) default NULL,
  `DELETE_REASON_` varchar(4000) collate utf8_bin default NULL,
  `PRIORITY_` int(11) default NULL,
  `DUE_DATE_` datetime default NULL,
  `FORM_KEY_` varchar(255) collate utf8_bin default NULL,
  `CATEGORY_` varchar(255) collate utf8_bin default NULL,
  `TENANT_ID_` varchar(255) collate utf8_bin default '',
  PRIMARY KEY  (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for `act_hi_varinst`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_varinst`;
CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `EXECUTION_ID_` varchar(64) collate utf8_bin default NULL,
  `TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `NAME_` varchar(255) collate utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) collate utf8_bin default NULL,
  `REV_` int(11) default NULL,
  `BYTEARRAY_ID_` varchar(64) collate utf8_bin default NULL,
  `DOUBLE_` double default NULL,
  `LONG_` bigint(20) default NULL,
  `TEXT_` varchar(4000) collate utf8_bin default NULL,
  `TEXT2_` varchar(4000) collate utf8_bin default NULL,
  `CREATE_TIME_` datetime default NULL,
  `LAST_UPDATED_TIME_` datetime default NULL,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for `act_id_group`
-- ----------------------------
DROP VIEW IF EXISTS `act_id_group`;
DROP TABLE IF EXISTS `act_id_group`;
CREATE TABLE `act_id_group` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `REV_` int(11) default NULL,
  `NAME_` varchar(255) collate utf8_bin default NULL,
  `TYPE_` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for `act_id_info`
-- ----------------------------
DROP TABLE IF EXISTS `act_id_info`;
CREATE TABLE `act_id_info` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `REV_` int(11) default NULL,
  `USER_ID_` varchar(64) collate utf8_bin default NULL,
  `TYPE_` varchar(64) collate utf8_bin default NULL,
  `KEY_` varchar(255) collate utf8_bin default NULL,
  `VALUE_` varchar(255) collate utf8_bin default NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- ----------------------------
-- Table structure for `act_id_membership`
-- ----------------------------
DROP VIEW IF EXISTS `act_id_membership`;
DROP TABLE IF EXISTS `act_id_membership`;
CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `GROUP_ID_` varchar(64) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for `act_id_user`
-- ----------------------------
DROP VIEW IF EXISTS `act_id_user`;
DROP TABLE IF EXISTS `act_id_user`;
CREATE TABLE `act_id_user` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `REV_` int(11) default NULL,
  `FIRST_` varchar(255) collate utf8_bin default NULL,
  `LAST_` varchar(255) collate utf8_bin default NULL,
  `EMAIL_` varchar(255) collate utf8_bin default NULL,
  `PWD_` varchar(255) collate utf8_bin default NULL,
  `PICTURE_ID_` varchar(64) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for `act_re_deployment`
-- ----------------------------
DROP TABLE IF EXISTS `act_re_deployment`;
CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `NAME_` varchar(255) collate utf8_bin default NULL,
  `CATEGORY_` varchar(255) collate utf8_bin default NULL,
  `TENANT_ID_` varchar(255) collate utf8_bin default '',
  `DEPLOY_TIME_` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for `act_re_model`
-- ----------------------------
DROP TABLE IF EXISTS `act_re_model`;
CREATE TABLE `act_re_model` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `REV_` int(11) default NULL,
  `NAME_` varchar(255) collate utf8_bin default NULL,
  `KEY_` varchar(255) collate utf8_bin default NULL,
  `CATEGORY_` varchar(255) collate utf8_bin default NULL,
  `CREATE_TIME_` timestamp NULL default NULL,
  `LAST_UPDATE_TIME_` timestamp NULL default NULL,
  `VERSION_` int(11) default NULL,
  `META_INFO_` varchar(4000) collate utf8_bin default NULL,
  `DEPLOYMENT_ID_` varchar(64) collate utf8_bin default NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) collate utf8_bin default NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) collate utf8_bin default NULL,
  `TENANT_ID_` varchar(255) collate utf8_bin default '',
  PRIMARY KEY  (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for `act_re_procdef`
-- ----------------------------
DROP TABLE IF EXISTS `act_re_procdef`;
CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `REV_` int(11) default NULL,
  `CATEGORY_` varchar(255) collate utf8_bin default NULL,
  `NAME_` varchar(255) collate utf8_bin default NULL,
  `KEY_` varchar(255) collate utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) collate utf8_bin default NULL,
  `RESOURCE_NAME_` varchar(4000) collate utf8_bin default NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) collate utf8_bin default NULL,
  `DESCRIPTION_` varchar(4000) collate utf8_bin default NULL,
  `HAS_START_FORM_KEY_` tinyint(4) default NULL,
  `SUSPENSION_STATE_` int(11) default NULL,
  `TENANT_ID_` varchar(255) collate utf8_bin default '',
  PRIMARY KEY  (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for `act_ru_event_subscr`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_event_subscr`;
CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `REV_` int(11) default NULL,
  `EVENT_TYPE_` varchar(255) collate utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) collate utf8_bin default NULL,
  `EXECUTION_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `ACTIVITY_ID_` varchar(64) collate utf8_bin default NULL,
  `CONFIGURATION_` varchar(255) collate utf8_bin default NULL,
  `CREATED_` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `PROC_DEF_ID_` varchar(64) collate utf8_bin default NULL,
  `TENANT_ID_` varchar(255) collate utf8_bin default '',
  PRIMARY KEY  (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for `act_ru_execution`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_execution`;
CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `REV_` int(11) default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `BUSINESS_KEY_` varchar(255) collate utf8_bin default NULL,
  `PARENT_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_DEF_ID_` varchar(64) collate utf8_bin default NULL,
  `SUPER_EXEC_` varchar(64) collate utf8_bin default NULL,
  `ACT_ID_` varchar(255) collate utf8_bin default NULL,
  `IS_ACTIVE_` tinyint(4) default NULL,
  `IS_CONCURRENT_` tinyint(4) default NULL,
  `IS_SCOPE_` tinyint(4) default NULL,
  `IS_EVENT_SCOPE_` tinyint(4) default NULL,
  `SUSPENSION_STATE_` int(11) default NULL,
  `CACHED_ENT_STATE_` int(11) default NULL,
  `TENANT_ID_` varchar(255) collate utf8_bin default '',
  PRIMARY KEY  (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for `act_ru_identitylink`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_identitylink`;
CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `REV_` int(11) default NULL,
  `GROUP_ID_` varchar(255) collate utf8_bin default NULL,
  `TYPE_` varchar(255) collate utf8_bin default NULL,
  `USER_ID_` varchar(255) collate utf8_bin default NULL,
  `TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_DEF_ID_` varchar(64) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for `act_ru_job`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_job`;
CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `REV_` int(11) default NULL,
  `TYPE_` varchar(255) collate utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL default NULL,
  `LOCK_OWNER_` varchar(255) collate utf8_bin default NULL,
  `EXCLUSIVE_` tinyint(1) default NULL,
  `EXECUTION_ID_` varchar(64) collate utf8_bin default NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_DEF_ID_` varchar(64) collate utf8_bin default NULL,
  `RETRIES_` int(11) default NULL,
  `EXCEPTION_STACK_ID_` varchar(64) collate utf8_bin default NULL,
  `EXCEPTION_MSG_` varchar(4000) collate utf8_bin default NULL,
  `DUEDATE_` timestamp NULL default NULL,
  `REPEAT_` varchar(255) collate utf8_bin default NULL,
  `HANDLER_TYPE_` varchar(255) collate utf8_bin default NULL,
  `HANDLER_CFG_` varchar(4000) collate utf8_bin default NULL,
  `TENANT_ID_` varchar(255) collate utf8_bin default '',
  PRIMARY KEY  (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for `act_ru_task`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_task`;
CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `REV_` int(11) default NULL,
  `EXECUTION_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_DEF_ID_` varchar(64) collate utf8_bin default NULL,
  `NAME_` varchar(255) collate utf8_bin default NULL,
  `PARENT_TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `DESCRIPTION_` varchar(4000) collate utf8_bin default NULL,
  `TASK_DEF_KEY_` varchar(255) collate utf8_bin default NULL,
  `OWNER_` varchar(255) collate utf8_bin default NULL,
  `ASSIGNEE_` varchar(255) collate utf8_bin default NULL,
  `DELEGATION_` varchar(64) collate utf8_bin default NULL,
  `PRIORITY_` int(11) default NULL,
  `CREATE_TIME_` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `DUE_DATE_` datetime default NULL,
  `CATEGORY_` varchar(255) collate utf8_bin default NULL,
  `SUSPENSION_STATE_` int(11) default NULL,
  `TENANT_ID_` varchar(255) collate utf8_bin default '',
  PRIMARY KEY  (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for `act_ru_variable`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_variable`;
CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `REV_` int(11) default NULL,
  `TYPE_` varchar(255) collate utf8_bin NOT NULL,
  `NAME_` varchar(255) collate utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `BYTEARRAY_ID_` varchar(64) collate utf8_bin default NULL,
  `DOUBLE_` double default NULL,
  `LONG_` bigint(20) default NULL,
  `TEXT_` varchar(4000) collate utf8_bin default NULL,
  `TEXT2_` varchar(4000) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- 导出  视图 jeecg_activiti.act_id_group 结构
DROP VIEW IF EXISTS `act_id_group`;
-- 移除临时表并创建最终视图结构
DROP TABLE IF EXISTS `act_id_group`;
CREATE ALGORITHM=UNDEFINED VIEW `act_id_group` AS select rolecode as ID_,rev as REV_,rolename as NAME_,type as TYPE_ from t_s_role ;


-- 导出  视图 jeecg_activiti.act_id_membership 结构
DROP VIEW IF EXISTS `act_id_membership`;
-- 移除临时表并创建最终视图结构
DROP TABLE IF EXISTS `act_id_membership`;
CREATE ALGORITHM=UNDEFINED VIEW `act_id_membership` AS select distinct t1.username as USER_ID_,t3.rolecode as GROUP_ID_ from t_s_base_user t1,t_s_role_user t2,t_s_role t3 where t1.ID = t2.userid and t2.roleid = t3.ID ;


-- 导出  视图 jeecg_activiti.act_id_user 结构
DROP VIEW IF EXISTS `act_id_user`;
-- 移除临时表并创建最终视图结构
DROP TABLE IF EXISTS `act_id_user`;
CREATE ALGORITHM=UNDEFINED VIEW `act_id_user` AS select t1.username as ID_,
	t1.rev as REV_,
	t1.realname as FIRST_,
	t1.realname as LAST_,
	t2.email as EMAIL_,
	t1.password as PWD_,
	t1.pictureId as PICTURE_ID_ 
from t_s_base_user t1,t_s_user t2 
where t1.ID = t2.id ;
