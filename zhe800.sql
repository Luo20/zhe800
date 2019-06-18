/*
Navicat MySQL Data Transfer

Source Server         : mycon
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : zhe800

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-06-15 20:56:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for indexlist
-- ----------------------------
DROP TABLE IF EXISTS `indexlist`;
CREATE TABLE `indexlist` (
  `gid` int(255) NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `zhekou` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indexlist
-- ----------------------------
INSERT INTO `indexlist` VALUES ('1', 'img/shuju1.jpg', '多衣斯夏装上新专场', '满2件6.8折', '6');
INSERT INTO `indexlist` VALUES ('2', 'img/shuju2.jpg.webp', '金汇众纸尿裤专场', '领3元券下单', '6');
INSERT INTO `indexlist` VALUES ('3', 'img/shuju3.jpg.webp', '帝柔年中大促开抢', '38元任选1件起', '6');
INSERT INTO `indexlist` VALUES ('4', 'img/shuju4.jpg.webp', 'gxg kids童装', '满1件5折', '6');
INSERT INTO `indexlist` VALUES ('5', 'img/shuju5.jpg.webp', '易成手机配件专场', '满2件8.5折', '6');
INSERT INTO `indexlist` VALUES ('6', 'img/shuju6.jpg.webp', '美特斯邦新店入驻', '2件6.9折3件6.6折', '6');
INSERT INTO `indexlist` VALUES ('7', 'img/shuju7.jpg.webp', '铃铛猪童鞋专场', '59元任选2件', '6');
INSERT INTO `indexlist` VALUES ('8', 'img/shuju8.jpg.webp', '美康粉黛 实惠彩妆C位榜', '满99减50元起', '6');
INSERT INTO `indexlist` VALUES ('9', 'img/shuju9.jpg.webp', '乔丹夏季新品鞋服清仓专场', '全场低至49.0元起', '6');
INSERT INTO `indexlist` VALUES ('10', 'img/shuju10.jpg.webp', '欧凯斯杂件百货专场', '?.5-?1.8', '6');
INSERT INTO `indexlist` VALUES ('11', 'img/shuju11.jpg.webp', '罗拉诗发夹发圈专场', '满2件8折,满3件7折 ', '6');
INSERT INTO `indexlist` VALUES ('12', 'img/shuju12.jpg.webp', '匹克鞋服夏季特卖清仓会场', '满100元减10元', '6');
INSERT INTO `indexlist` VALUES ('13', 'img/shuju13.jpg.webp', '三角牌 电饭锅大促热卖', '满2件9.5折', '6');
INSERT INTO `indexlist` VALUES ('14', 'img/shuju14.jpg.webp', '乔丹6月为了销售额大降价', '全场低至149.0元起', '6');
INSERT INTO `indexlist` VALUES ('15', 'img/shuju15.jpg.webp', '杜嘎地户外鞋服全部清仓', '满58元减25元', '6');
INSERT INTO `indexlist` VALUES ('16', 'img/shuju16.jpg.webp', 'GXG品牌男装清仓专场', '满2件8折', '6');
INSERT INTO `indexlist` VALUES ('17', 'img/shuju17.jpg.webp', '依思Q女鞋上新特价专场', '新品区1件5折', '6');
INSERT INTO `indexlist` VALUES ('18', 'img/shuju18.jpg.webp', '富贵鸟夏季上新男装专场', '满1件8折 2件7折', '7');
INSERT INTO `indexlist` VALUES ('19', 'img/shuju19.jpg.webp', '雯京海淘联合热销品牌专场', '满99减30元起', '7');
INSERT INTO `indexlist` VALUES ('20', 'img/shuju20.jpg.webp', '贵人鸟运动鞋服清仓专场', '满99元减30元', '7');
INSERT INTO `indexlist` VALUES ('21', 'img/shuju20.jpg.webp', '贵人鸟运动鞋服清仓专场1', '满99元减30元1', '7');
INSERT INTO `indexlist` VALUES ('22', 'img/shuju1.jpg', '贵人鸟运动鞋服清仓专场2', '满99元减30元2', '7');
INSERT INTO `indexlist` VALUES ('23', 'img/shuju11.jpg.webp', '贵人鸟运动鞋服清仓专场3', '满99元减30元3', '7');
INSERT INTO `indexlist` VALUES ('24', 'img/shuju12.jpg.webp', '贵人鸟运动鞋服清仓专场4', '满99元减30元4', '7');
INSERT INTO `indexlist` VALUES ('25', 'img/shuju13.jpg.webp', '贵人鸟运动鞋服清仓专场5', '满99元减30元5', '7');
INSERT INTO `indexlist` VALUES ('26', 'img/shuju14.jpg.webp', '贵人鸟运动鞋服清仓专场6', '满99元减30元6', '7');
INSERT INTO `indexlist` VALUES ('27', 'img/shuju15.jpg.webp', '贵人鸟运动鞋服清仓专场7', '满99元减30元7', '7');
INSERT INTO `indexlist` VALUES ('28', 'img/shuju16.jpg.webp', '贵人鸟运动鞋服清仓专场8', '满99元减30元8', '7');
INSERT INTO `indexlist` VALUES ('29', 'img/shuju17.jpg.webp', '贵人鸟运动鞋服清仓专场9', '满99元减30元9', '7');
INSERT INTO `indexlist` VALUES ('30', 'img/shuju18.jpg.webp', '贵人鸟运动鞋服清仓专场10', '满99元减30元10', '7');
INSERT INTO `indexlist` VALUES ('31', 'img/shuju19.jpg.webp', '富贵鸟夏季上新男装专场1', '满99元减30元11', '7');
INSERT INTO `indexlist` VALUES ('32', 'img/shuju20.jpg.webp', '富贵鸟夏季上新男装专场2', '满99元减30元12', '7');
INSERT INTO `indexlist` VALUES ('33', 'img/shuju20.jpg.webp', '富贵鸟夏季上新男装专场3', '满99元减30元13', '7');
INSERT INTO `indexlist` VALUES ('34', 'img/shuju13.jpg.webp', '富贵鸟夏季上新男装专场4', '满100元减10元1', '7');
INSERT INTO `indexlist` VALUES ('35', 'img/shuju14.jpg.webp', '富贵鸟夏季上新男装专场5', '满100元减10元2', '7');
INSERT INTO `indexlist` VALUES ('36', 'img/shuju15.jpg.webp', '富贵鸟夏季上新男装专场6', '满100元减10元3', '7');
INSERT INTO `indexlist` VALUES ('37', 'img/shuju16.jpg.webp', '富贵鸟夏季上新男装专场7', '满100元减10元4', '7');
INSERT INTO `indexlist` VALUES ('38', 'img/shuju17.jpg.webp', '富贵鸟夏季上新男装专场8', '满100元减10元5', '8');
INSERT INTO `indexlist` VALUES ('39', 'img/shuju18.jpg.webp', '富贵鸟夏季上新男装专场9', '满100元减10元6', '8');
INSERT INTO `indexlist` VALUES ('40', 'img/shuju19.jpg.webp', '富贵鸟夏季上新男装专场10', '满100元减10元7', '8');
INSERT INTO `indexlist` VALUES ('41', 'img/shuju20.jpg.webp', '富贵鸟夏季上新男装专场11', '满100元减10元8', '8');
INSERT INTO `indexlist` VALUES ('42', 'img/shuju20.jpg.webp', '富贵鸟夏季上新男装专场12', '满100元减10元9', '8');
INSERT INTO `indexlist` VALUES ('43', 'img/shuju13.jpg.webp', '富贵鸟夏季上新男装专场13', '满100元减10元10', '8');
INSERT INTO `indexlist` VALUES ('44', 'img/shuju14.jpg.webp', '依思Q女鞋上新特价专场1', '满100元减10元11', '8');
INSERT INTO `indexlist` VALUES ('45', 'img/shuju15.jpg.webp', '依思Q女鞋上新特价专场2', '满100元减10元12', '8');
INSERT INTO `indexlist` VALUES ('46', 'img/shuju16.jpg.webp', '依思Q女鞋上新特价专场3', '满100元减10元13', '8');
INSERT INTO `indexlist` VALUES ('47', 'img/shuju17.jpg.webp', '依思Q女鞋上新特价专场4', '全场低至149.0元起1', '8');
INSERT INTO `indexlist` VALUES ('48', 'img/shuju18.jpg.webp', '依思Q女鞋上新特价专场5', '全场低至149.0元起2', '8');
INSERT INTO `indexlist` VALUES ('49', 'img/shuju19.jpg.webp', '依思Q女鞋上新特价专场6', '全场低至149.0元起3', '8');
INSERT INTO `indexlist` VALUES ('50', 'img/shuju20.jpg.webp', '依思Q女鞋上新特价专场7', '全场低至149.0元起4', '8');
INSERT INTO `indexlist` VALUES ('51', 'img/shuju20.jpg.webp', '依思Q女鞋上新特价专场8', '全场低至149.0元起5', '8');
INSERT INTO `indexlist` VALUES ('52', 'img/shuju13.jpg.webp', '依思Q女鞋上新特价专场9', '全场低至149.0元起6', '8');
INSERT INTO `indexlist` VALUES ('53', 'img/shuju14.jpg.webp', '依思Q女鞋上新特价专场10', '全场低至149.0元起7', '8');
INSERT INTO `indexlist` VALUES ('54', 'img/shuju15.jpg.webp', '依思Q女鞋上新特价专场11', '全场低至149.0元起8', '8');
INSERT INTO `indexlist` VALUES ('55', 'img/shuju16.jpg.webp', '依思Q女鞋上新特价专场12', '全场低至149.0元起9', '8');
INSERT INTO `indexlist` VALUES ('56', 'img/shuju17.jpg.webp', '依思Q女鞋上新特价专场13', '全场低至149.0元起10', '8');
INSERT INTO `indexlist` VALUES ('57', 'img/shuju18.jpg.webp', '帝柔年中大促开抢1', '全场低至149.0元起11', '8');
INSERT INTO `indexlist` VALUES ('58', 'img/shuju19.jpg.webp', '帝柔年中大促开抢2', '全场低至149.0元起12', '9');
INSERT INTO `indexlist` VALUES ('59', 'img/shuju20.jpg.webp', '帝柔年中大促开抢3', '38元任选1件起1', '9');
INSERT INTO `indexlist` VALUES ('60', 'img/shuju20.jpg.webp', '帝柔年中大促开抢4', '38元任选1件起2', '9');
INSERT INTO `indexlist` VALUES ('61', 'img/shuju13.jpg.webp', '帝柔年中大促开抢5', '38元任选1件起3', '9');
INSERT INTO `indexlist` VALUES ('62', 'img/shuju14.jpg.webp', '帝柔年中大促开抢6', '38元任选1件起4', '9');
INSERT INTO `indexlist` VALUES ('63', 'img/shuju15.jpg.webp', '帝柔年中大促开抢7', '38元任选1件起5', '9');
INSERT INTO `indexlist` VALUES ('64', 'img/shuju16.jpg.webp', '帝柔年中大促开抢8', '38元任选1件起6', '9');
INSERT INTO `indexlist` VALUES ('65', 'img/shuju17.jpg.webp', '帝柔年中大促开抢9', '38元任选1件起7', '9');
INSERT INTO `indexlist` VALUES ('66', 'img/shuju18.jpg.webp', '帝柔年中大促开抢10', '38元任选1件起8', '9');
INSERT INTO `indexlist` VALUES ('67', 'img/shuju19.jpg.webp', '帝柔年中大促开抢11', '38元任选1件起9', '9');
INSERT INTO `indexlist` VALUES ('68', 'img/shuju20.jpg.webp', '铃铛猪童鞋专场1', '38元任选1件起10', '9');
INSERT INTO `indexlist` VALUES ('69', 'img/shuju20.jpg.webp', '铃铛猪童鞋专场2', '38元任选1件起11', '9');
INSERT INTO `indexlist` VALUES ('70', 'img/shuju2.jpg.webp', '铃铛猪童鞋专场3', '38元任选1件起12', '9');
INSERT INTO `indexlist` VALUES ('71', 'img/shuju3.jpg.webp', '铃铛猪童鞋专场4', '38元任选1件起13', '9');
INSERT INTO `indexlist` VALUES ('72', 'img/shuju4.jpg.webp', '铃铛猪童鞋专场5', '38元任选1件起14', '9');
INSERT INTO `indexlist` VALUES ('73', 'img/shuju5.jpg.webp', '铃铛猪童鞋专场6', '领3元券下单1', '9');
INSERT INTO `indexlist` VALUES ('74', 'img/shuju6.jpg.webp', '铃铛猪童鞋专场7', '领3元券下单2', '9');
INSERT INTO `indexlist` VALUES ('75', 'img/shuju7.jpg.webp', '铃铛猪童鞋专场8', '领3元券下单3', '6');
INSERT INTO `indexlist` VALUES ('76', 'img/shuju8.jpg.webp', '铃铛猪童鞋专场9', '领3元券下单4', '6');
INSERT INTO `indexlist` VALUES ('77', 'img/shuju9.jpg.webp', '多衣斯夏装上新专场1', '领3元券下单5', '6');
INSERT INTO `indexlist` VALUES ('78', 'img/shuju10.jpg.webp', '多衣斯夏装上新专场2', '领3元券下单6', '6');
INSERT INTO `indexlist` VALUES ('79', 'img/shuju11.jpg.webp', '多衣斯夏装上新专场3', '领3元券下单7', '6');
INSERT INTO `indexlist` VALUES ('80', 'img/shuju2.jpg.webp', '多衣斯夏装上新专场4', '领3元券下单8', '6');
INSERT INTO `indexlist` VALUES ('81', 'img/shuju3.jpg.webp', '多衣斯夏装上新专场5', '领3元券下单9', '6');
INSERT INTO `indexlist` VALUES ('82', 'img/shuju4.jpg.webp', '多衣斯夏装上新专场6', '领3元券下单10', '6');
INSERT INTO `indexlist` VALUES ('83', 'img/shuju5.jpg.webp', '多衣斯夏装上新专场7', '领3元券下单11', '6');
INSERT INTO `indexlist` VALUES ('84', 'img/shuju6.jpg.webp', '多衣斯夏装上新专场8', '领3元券下单12', '6');
INSERT INTO `indexlist` VALUES ('85', 'img/shuju7.jpg.webp', '多衣斯夏装上新专场9', '领3元券下单13', '6');
INSERT INTO `indexlist` VALUES ('86', 'img/shuju8.jpg.webp', '多衣斯夏装上新专场10', '领3元券下单14', '6');
INSERT INTO `indexlist` VALUES ('87', 'img/shuju9.jpg.webp', '多衣斯夏装上新专场11', '2件6.9折3件6.6折1', '6');
INSERT INTO `indexlist` VALUES ('88', 'img/shuju10.jpg.webp', '多衣斯夏装上新专场12', '2件6.9折3件6.6折2', '7');
INSERT INTO `indexlist` VALUES ('89', 'img/shuju11.jpg.webp', '美特斯邦新店入驻1', '2件6.9折3件6.6折3', '7');
INSERT INTO `indexlist` VALUES ('90', 'img/shuju2.jpg.webp', '美特斯邦新店入驻2', '2件6.9折3件6.6折4', '7');
INSERT INTO `indexlist` VALUES ('91', 'img/shuju3.jpg.webp', '美特斯邦新店入驻3', '2件6.9折3件6.6折5', '7');
INSERT INTO `indexlist` VALUES ('92', 'img/shuju4.jpg.webp', '美特斯邦新店入驻4', '2件6.9折3件6.6折6', '7');
INSERT INTO `indexlist` VALUES ('93', 'img/shuju5.jpg.webp', '美特斯邦新店入驻5', '2件6.9折3件6.6折7', '7');
INSERT INTO `indexlist` VALUES ('94', 'img/shuju6.jpg.webp', '美特斯邦新店入驻6', '2件6.9折3件6.6折8', '7');
INSERT INTO `indexlist` VALUES ('95', 'img/shuju7.jpg.webp', '美特斯邦新店入驻7', '2件6.9折3件6.6折9', '7');
INSERT INTO `indexlist` VALUES ('96', 'img/shuju8.jpg.webp', '美特斯邦新店入驻8', '2件6.9折3件6.6折10', '7');
INSERT INTO `indexlist` VALUES ('97', 'img/shuju9.jpg.webp', '美特斯邦新店入驻9', '2件6.9折3件6.6折11', '7');
INSERT INTO `indexlist` VALUES ('98', 'img/shuju10.jpg.webp', '美特斯邦新店入驻10', '2件6.9折3件6.6折12', '7');
INSERT INTO `indexlist` VALUES ('99', 'img/shuju11.jpg.webp', '美特斯邦新店入驻11', '2件6.9折3件6.6折13', '7');
INSERT INTO `indexlist` VALUES ('100', 'img/shuju1.jpg', '美特斯邦新店入驻12', '2件6.9折3件6.6折14', '7');

-- ----------------------------
-- Table structure for list
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `del` varchar(255) DEFAULT NULL,
  `imglist` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO `list` VALUES ('1', '珂卡芙夏新款时尚亮面鱼嘴高跟细跟牛筋底脚踝带女凉鞋172126581', '69', '439', '../img/list1.jpg');
INSERT INTO `list` VALUES ('2', '珂卡芙夏季新款平跟平底简约舒适女一字拖172250331', '22', '200', '../img/list2.jpg');
INSERT INTO `list` VALUES ('3', '珂卡芙春季女鞋舒适中跟粗跟圆头纯色套脚休闲单鞋173143561', '44', '314', '../img/list3.jpg');
INSERT INTO `list` VALUES ('4', '珂卡芙水钻浅口平底平跟尖头通勤时尚女士单鞋171250081', '69', '428', '../img/list4.jpg');
INSERT INTO `list` VALUES ('5', '珂卡芙春秋新款浅口单鞋舒适软底平底圆头漆皮亮面女鞋171250071', '74.5', '542', '../img/list5.jpg');
INSERT INTO `list` VALUES ('6', '珂卡芙春季新款水钻漆皮粗跟单鞋女休闲鞋平底鞋171253611', '87.5', '656', '../img/list6.jpg');
INSERT INTO `list` VALUES ('7', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250141', '100.5', '770', '../img/list7.jpg');
INSERT INTO `list` VALUES ('8', '珂卡芙夹趾夏季后绑带金属装饰平底平跟女士凉鞋172140081', '113.5', '884', '../img/list8.jpg');
INSERT INTO `list` VALUES ('9', '珂卡芙凉鞋女新款夏季一字扣高跟鞋子女时尚粗跟凉鞋女172123751', '126.5', '998', '../img/list9.jpg');
INSERT INTO `list` VALUES ('10', '珂卡芙凉鞋女新款夏季一字扣高跟鞋子女时尚粗跟凉鞋女172123751', '139.5', '1112', '../img/list10.jpg');
INSERT INTO `list` VALUES ('11', '1珂卡芙凉鞋女新款夏季一字扣高跟鞋子女时尚粗跟凉鞋女172123751', '152.5', '500', '../img/list10.jpg');
INSERT INTO `list` VALUES ('12', '1珂卡芙凉鞋女新款夏季一字扣高跟鞋子女时尚粗跟凉鞋女172123752', '165.5', '467', '../img/list9.jpg');
INSERT INTO `list` VALUES ('13', '1珂卡芙凉鞋女新款夏季一字扣高跟鞋子女时尚粗跟凉鞋女172123753', '178.5', '434', '../img/list8.jpg');
INSERT INTO `list` VALUES ('14', '1珂卡芙凉鞋女新款夏季一字扣高跟鞋子女时尚粗跟凉鞋女172123754', '191.5', '401', '../img/list7.jpg');
INSERT INTO `list` VALUES ('15', '1珂卡芙凉鞋女新款夏季一字扣高跟鞋子女时尚粗跟凉鞋女172123755', '204.5', '368', '../img/list6.jpg');
INSERT INTO `list` VALUES ('16', '1珂卡芙凉鞋女新款夏季一字扣高跟鞋子女时尚粗跟凉鞋女172123756', '217.5', '335', '../img/list5.jpg');
INSERT INTO `list` VALUES ('17', '1珂卡芙凉鞋女新款夏季一字扣高跟鞋子女时尚粗跟凉鞋女172123757', '230.5', '302', '../img/list4.jpg');
INSERT INTO `list` VALUES ('18', '1珂卡芙凉鞋女新款夏季一字扣高跟鞋子女时尚粗跟凉鞋女172123758', '243.5', '269', '../img/list3.jpg');
INSERT INTO `list` VALUES ('19', '1珂卡芙凉鞋女新款夏季一字扣高跟鞋子女时尚粗跟凉鞋女172123759', '256.5', '236', '../img/list2.jpg');
INSERT INTO `list` VALUES ('20', '1珂卡芙凉鞋女新款夏季一字扣高跟鞋子女时尚粗跟凉鞋女172123760', '269.5', '203', '../img/list1.jpg');
INSERT INTO `list` VALUES ('21', '1珂卡芙凉鞋女新款夏季一字扣高跟鞋子女时尚粗跟凉鞋女172123761', '282.5', '170', '../img/list1.jpg');
INSERT INTO `list` VALUES ('22', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250141', '295.5', '137', '../img/list2.jpg');
INSERT INTO `list` VALUES ('23', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250142', '308.5', '1000', '../img/list3.jpg');
INSERT INTO `list` VALUES ('24', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250143', '321.5', '988', '../img/list4.jpg');
INSERT INTO `list` VALUES ('25', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250144', '334.5', '976', '../img/list5.jpg');
INSERT INTO `list` VALUES ('26', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250145', '347.5', '964', '../img/list6.jpg');
INSERT INTO `list` VALUES ('27', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250146', '360.5', '952', '../img/list7.jpg');
INSERT INTO `list` VALUES ('28', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250147', '373.5', '940', '../img/list8.jpg');
INSERT INTO `list` VALUES ('29', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250148', '386.5', '928', '../img/list9.jpg');
INSERT INTO `list` VALUES ('30', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250149', '399.5', '916', '../img/list10.jpg');
INSERT INTO `list` VALUES ('31', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250150', '412.5', '904', '../img/list10.jpg');
INSERT INTO `list` VALUES ('32', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250151', '425.5', '892', '../img/list9.jpg');
INSERT INTO `list` VALUES ('33', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250152', '438.5', '880', '../img/list8.jpg');
INSERT INTO `list` VALUES ('34', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250153', '451.5', '868', '../img/list7.jpg');
INSERT INTO `list` VALUES ('35', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250154', '464.5', '856', '../img/list6.jpg');
INSERT INTO `list` VALUES ('36', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250155', '477.5', '844', '../img/list5.jpg');
INSERT INTO `list` VALUES ('37', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250156', '490.5', '832', '../img/list4.jpg');
INSERT INTO `list` VALUES ('38', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250157', '503.5', '820', '../img/list3.jpg');
INSERT INTO `list` VALUES ('39', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250158', '516.5', '808', '../img/list2.jpg');
INSERT INTO `list` VALUES ('40', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250159', '529.5', '796', '../img/list1.jpg');
INSERT INTO `list` VALUES ('41', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250160', '542.5', '784', '../img/list2.jpg');
INSERT INTO `list` VALUES ('42', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250161', '555.5', '772', '../img/list3.jpg');
INSERT INTO `list` VALUES ('43', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250162', '568.5', '760', '../img/list4.jpg');
INSERT INTO `list` VALUES ('44', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250163', '581.5', '748', '../img/list5.jpg');
INSERT INTO `list` VALUES ('45', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250164', '594.5', '736', '../img/list6.jpg');
INSERT INTO `list` VALUES ('46', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250165', '607.5', '724', '../img/list7.jpg');
INSERT INTO `list` VALUES ('47', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250166', '620.5', '712', '../img/list8.jpg');
INSERT INTO `list` VALUES ('48', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250167', '633.5', '700', '../img/list9.jpg');
INSERT INTO `list` VALUES ('49', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250168', '646.5', '688', '../img/list10.jpg');
INSERT INTO `list` VALUES ('50', '珂卡芙夏季新款流行水钻平底牛筋底夹趾凉拖女凉鞋172250169', '659.5', '676', '../img/list2.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `psw` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '13377778930', '123456');
INSERT INTO `user` VALUES ('2', '1338749890', '123456');
INSERT INTO `user` VALUES ('3', '1338749890', '123456');
INSERT INTO `user` VALUES ('4', '133777789301', '12345');
INSERT INTO `user` VALUES ('5', '13670961470', '112233');
INSERT INTO `user` VALUES ('6', '13267884361', '12345');
INSERT INTO `user` VALUES ('7', '13456789101', '23456');
INSERT INTO `user` VALUES ('8', '13645678901', '13456');
INSERT INTO `user` VALUES ('9', '173456798876', '12345');
INSERT INTO `user` VALUES ('10', '13267884362', '12345');
SET FOREIGN_KEY_CHECKS=1;
