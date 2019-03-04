-- MySQL dump 10.13  Distrib 5.5.53, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: myshop
-- ------------------------------------------------------
-- Server version	5.5.53

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_man` varchar(45) DEFAULT NULL,
  `address_tel` char(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `utime` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `sta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `fk_shop_address_shop_user1_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (72,'zhouruijie','213123',2,NULL,NULL,NULL,'e32423','0');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_order`
--

DROP TABLE IF EXISTS `address_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_order` (
  `ao_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ao_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_order`
--

LOCK TABLES `address_order` WRITE;
/*!40000 ALTER TABLE `address_order` DISABLE KEYS */;
INSERT INTO `address_order` VALUES (21,72,183);
/*!40000 ALTER TABLE `address_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `goods_num` int(11) DEFAULT NULL,
  `car_time` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  PRIMARY KEY (`car_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (9,'189',2,1,NULL,'vivo','2');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `code`
--

DROP TABLE IF EXISTS `code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `timeout` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `code`
--

LOCK TABLES `code` WRITE;
/*!40000 ALTER TABLE `code` DISABLE KEYS */;
INSERT INTO `code` VALUES (6,'18515382622','1','1550798378',6109);
/*!40000 ALTER TABLE `code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_sn` char(40) NOT NULL COMMENT '订单编码',
  `u_id` int(11) NOT NULL,
  `order_amount` decimal(10,2) NOT NULL COMMENT '订单总额',
  `order_pay_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1线上支付2货到付款',
  `pay_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '支付状态 1未支付2已支付',
  `pay_way` tinyint(4) NOT NULL DEFAULT '1' COMMENT '支付方式1余额支付2余额宝3货到付款',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '支付状态1未支付2已支付3已确认4备货中5发货中6已发货7订单完成',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (183,'2019022806420936009',2,111.00,1,1,1,1);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_cate`
--

DROP TABLE IF EXISTS `shop_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_cate` (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(255) DEFAULT NULL,
  `parend_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_cate`
--

LOCK TABLES `shop_cate` WRITE;
/*!40000 ALTER TABLE `shop_cate` DISABLE KEYS */;
INSERT INTO `shop_cate` VALUES (1,'男装',0),(2,'食品',0),(3,'女装',0),(4,'百货',0),(5,'美妆洗护',0),(6,'手机数码',0),(7,'家电',0),(8,'生活服务',0),(9,'内衣配饰',0),(10,'箱包',0),(11,'母婴',0),(12,'整车车品',0),(13,'家装',0),(14,'家居家纺',0),(15,'运动户外',0),(16,'珠宝配饰',0),(17,'图书乐器',0),(18,'鲜花宠物',0);
/*!40000 ALTER TABLE `shop_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_category`
--

DROP TABLE IF EXISTS `shop_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_category` (
  `cate_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(30) NOT NULL,
  `parent_id` smallint(6) NOT NULL DEFAULT '0',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: 展示 0：不展示',
  `keywords` varchar(150) DEFAULT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `add_time` int(10) NOT NULL,
  `depath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cate_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_category`
--

LOCK TABLES `shop_category` WRITE;
/*!40000 ALTER TABLE `shop_category` DISABLE KEYS */;
INSERT INTO `shop_category` VALUES (1,'家电',0,1,NULL,NULL,0,'0'),(2,'小型家电',1,1,NULL,NULL,0,'0-1'),(3,'大型家电',1,1,NULL,NULL,0,'0-1'),(4,'智能产品',0,1,NULL,NULL,0,'0'),(6,'华为',4,1,NULL,NULL,0,'0-4'),(7,'小爱同学',9,1,NULL,NULL,1544704202,'0-4-5'),(9,'小米',4,1,'xiaomi','666666',0,'0-4'),(8,'huawei mate20',6,1,'华为，mate20','666666',0,'0-4-6');
/*!40000 ALTER TABLE `shop_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_goods`
--

DROP TABLE IF EXISTS `shop_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_number` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `shop_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_start_date` int(11) unsigned NOT NULL DEFAULT '0',
  `promote_end_date` int(11) unsigned NOT NULL DEFAULT '0',
  `warn_number` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `goods_thumb` varchar(255) NOT NULL DEFAULT '',
  `goods_img` varchar(255) NOT NULL DEFAULT '',
  `original_img` varchar(255) NOT NULL DEFAULT '',
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seller_note` varchar(255) NOT NULL DEFAULT '',
  `tell` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goods_id`) USING BTREE,
  KEY `goods_sn` (`goods_sn`) USING BTREE,
  KEY `cat_id` (`cat_id`) USING BTREE,
  KEY `brand_id` (`brand_id`) USING BTREE,
  KEY `promote_end_date` (`promote_end_date`) USING BTREE,
  KEY `promote_start_date` (`promote_start_date`) USING BTREE,
  KEY `goods_number` (`goods_number`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=191 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_goods`
--

LOCK TABLES `shop_goods` WRITE;
/*!40000 ALTER TABLE `shop_goods` DISABLE KEYS */;
INSERT INTO `shop_goods` VALUES (4,8,'ECS000004','诺基亚N85原装充电器',0,0,100000,69.60,58.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/200905/goods_img/4_G_1241422402722.jpg','images/200905/source_img/4_G_1241422402919.jpg',1,0,1241422402,0,1,1,1,0,6,'','0'),(8,3,'ECS000008','飞利浦9@9v',12,4,0,478.79,399.00,385.00,1241366400,1417276800,1,'双模 2008年春 黑色 直板 中低档','','<p align=\"left\">作为一款性价比极高的入门级<font size=\"3\" color=\"#ff0000\"><strong>商务手机</strong></font>，飞利浦<a href=\"mailto:9@9v\">Xenium&nbsp; 9@9v</a>三围大小为105&times;44&times;15.8mm，机身重量仅为<strong><font size=\"3\" color=\"#ff0000\">75g</font></strong>，装配了一块低规格1.75英寸128&times;160像素65000色CSTN显示屏。身正面采用月银色功能键区与屏幕数字键区相分隔，键盘设计较为<font size=\"3\"><strong><font color=\"#ff0000\">别</font><font color=\"#ff0000\">致</font></strong></font>，中部导航键区采用钛金色的&ldquo;腰带&rdquo;彰显出浓郁的商务气息。</p>\r\n<p align=\"left\">&nbsp;</p>\r\n<p align=\"left\">此款手机采用<strong><font size=\"3\" color=\"#ff0000\">触摸屏</font></strong>设计，搭配精致的手写笔，可支持手写中文和英文两个版本。增强的内置系统还能识别潦草字迹，确保在移动中和匆忙时输入文字的识别率。手写指令功能还支持特定图案的瞬间调用，独特的手写记事本功能，可以在触摸屏上随意绘制个性化的图案并进行<strong><font size=\"3\" color=\"#ff0000\">记事提醒</font></strong>，让商务应用更加随意。</p>\r\n<p align=\"left\">&nbsp;</p>\r\n<p align=\"left\">&nbsp;作为入门级为数不多支持<strong><font size=\"3\" color=\"#ff0000\">双卡功能</font></strong>的手机，可以同时插入两张SIM卡，通过菜单随意切换，只需开启漫游自动切换模式，<a href=\"mailto:9@9V\">9@9V</a>在该模式下能够判断网络情况，自动切换适合的手机号。</p>\r\n<p align=\"left\">&nbsp;</p>\r\n<p align=\"left\">&nbsp;</p>','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/200905/goods_img/8_G_1241425513055.jpg','images/200905/source_img/8_G_1241425513518.jpg',1,0,1241425512,0,1,1,1,1,9,'','0'),(9,3,'ECS000009','诺基亚E66',28,0,2,2757.60,2298.00,0.00,0,0,1,'SMS EMS MMS 短消息群发 语音 阅读器 SMS,EMS,MMS,短消息群发语音合成信息阅读器 黑色 白色 滑盖','','<p>在机身材质方面，诺基亚E66大量采用金属材质，刨光的金属表面光泽动人，背面的点状效果规则却又不失变化，时尚感总是在不经意间诠释出来，并被人们所感知。E66机身尺寸为<span style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: larger;\"><strong>107.5&times;49.5&times;13.6毫米，重量为121克</strong></span></span>，滑盖的造型竟然比E71还要轻一些。</p>\r\n<p>&nbsp;</p>\r\n<div>诺基亚E66机身正面是<span style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: larger;\"><strong>一块2.4英寸1600万色QVGA分辨率（240&times;320像素）液晶显示屏</strong></span></span>。屏幕上方拥有光线感应元件，能够自适应周 围环境光调节屏幕亮度；屏幕下方是方向功能键区。打开滑盖，可以看到传统的数字键盘，按键的大小、手感、间隔以及键程适中，手感非常舒适。</div>\r\n<div>&nbsp;</div>\r\n<div>诺基亚为E66配备了一颗320万像素自动对焦摄像头，带有LED 闪光灯，支持多种拍照尺寸选择。</div>\r\n<p>&nbsp;</p>','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/200905/goods_img/9_G_1241511871574.jpg','images/200905/source_img/9_G_1241511871550.jpg',1,0,1241511871,0,1,1,1,0,9,'','0'),(35,8,'ECS000035','体重秤',0,0,1,16.80,14.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/35_G_1462851036470.jpg','images/201605/source_img/35_G_1462851036185.jpg',1,0,1462851036,0,1,0,0,0,0,'','1'),(69,1,'ECS000069','平衡车',3,15,1,2398.79,1999.00,0.00,0,0,1,'','','<p><img src=\"/images/upload/Image/3_1.jpg\" width=\"1311\" height=\"656\" alt=\"\" />&nbsp;</p>','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/69_G_1462955300173.jpg','images/201605/source_img/69_G_1462955300153.jpg',1,0,1462955300,0,1,0,0,0,0,'','1'),(70,2,'ECS000070','炫彩翻页保护套',3,15,1,46.80,39.00,0.00,0,0,1,'','','<p><img src=\"/images/upload/Image/4_1.jpg\" width=\"1226\" height=\"1068\" alt=\"\" />&nbsp;</p>','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/70_G_1462955414630.jpg','images/201605/source_img/70_G_1462955414637.jpg',1,0,1462955414,0,1,0,0,0,0,'','0'),(72,3,'ECS000072','智能相机',6,15,20,178.79,149.00,0.00,0,0,1,'','','<p>&nbsp;<img src=\"http://cbu2.test.shopex123.com/images//20160510/5984c3f800d7ef3c.jpg\" alt=\"\" /></p>','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/72_G_1462956048145.jpg','images/201605/source_img/72_G_1462956048413.jpg',1,0,1462956048,0,1,0,0,0,0,'','0'),(63,5,'ECS000063','自拍杆',7,15,0,49.00,49.00,0.00,0,0,1,'','','<p>&nbsp;<img src=\"http://cbu2.test.shopex123.com/images//20160510/4f04b67e7a2035bd.jpg\" alt=\"\" /></p>','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/63_G_1462953395397.jpg','images/201605/source_img/63_G_1462953395626.jpg',1,0,1462952749,0,1,0,0,0,12,'','0'),(152,4,'ECS0000152','iphone ',0,17,4,11000.00,10000.00,8888.00,2009,2014,1,'2018年10月 GSM,850,900,1800,1900 黑色','','','20190108\\f59ea0988d2beecf1a755b1424c46c96.jpg','./thumb/5c342f690e651.jpg','',1,0,0,0,1,1,1,1,0,'fsrgfrsf','0'),(68,6,'ECS000068','透明超薄软胶保护套',4,15,1,22.80,19.00,0.00,0,0,1,'','','<p><img src=\"/images/upload/Image/2_1.jpg\" width=\"1240\" height=\"869\" alt=\"\" />&nbsp;</p>','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/68_G_1462955204977.jpg','images/201605/source_img/68_G_1462955204991.jpg',1,0,1462955204,0,1,0,1,0,0,'','0'),(36,8,'ECS000036','路由器',0,0,1,178.79,149.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/36_G_1462851087064.jpg','images/201605/source_img/36_G_1462851087201.jpg',1,0,1462851087,0,1,0,0,0,0,'','0'),(37,7,'ECS000037','Note3 钢化玻璃膜(0.33mm) ',2,15,1,19.00,19.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/37_G_1462852086030.jpg','images/201605/source_img/37_G_1462852086626.jpg',1,0,1462852086,0,1,0,0,0,0,'','0'),(38,9,'ECS000038','圈铁耳机',2,15,1,118.80,99.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/38_G_1462951652287.jpg','images/201605/source_img/38_G_1462951652405.jpg',1,0,1462852185,0,1,0,0,0,0,'','0'),(39,10,'ECS000039','移动电源 10000mAh 高配版',1,15,1,178.79,149.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/39_G_1462852326708.jpg','images/201605/source_img/39_G_1462852326569.jpg',1,0,1462852326,0,1,0,0,0,0,'','0'),(40,11,'ECS000040',' 炫彩翻页保护套',2,15,1,39.00,39.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/40_G_1462852478331.jpg','images/201605/source_img/40_G_1462852478647.jpg',1,0,1462852478,0,1,0,0,0,0,'','0'),(41,12,'ECS000041','蓝牙耳机',1,15,1,94.80,79.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/41_G_1462951739858.jpg','images/201605/source_img/41_G_1462951739827.jpg',1,0,1462852621,0,1,0,0,0,0,'','0'),(42,13,'ECS000042','短袖T恤 米兔大游行',0,0,1,46.80,39.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/42_G_1462852622613.jpg','images/201605/source_img/42_G_1462852622905.jpg',1,0,1462852622,0,1,0,0,0,0,'','0'),(43,14,'ECS000043','短袖T恤 摇滚星球',0,0,1,46.80,39.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/43_G_1462852740043.jpg','images/201605/source_img/43_G_1462852740973.jpg',1,0,1462852674,0,1,0,0,0,0,'','0'),(44,15,'ECS000044','短袖POLO衫 女款',1,0,1,70.80,59.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/44_G_1462854145484.jpg','images/201605/source_img/44_G_1462854145205.jpg',1,0,1462852818,0,1,0,0,0,0,'','0'),(45,16,'ECS000045','自拍杆',1,15,1,58.80,49.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/45_G_1462852876401.jpg','images/201605/source_img/45_G_1462852876959.jpg',1,0,1462852839,0,1,0,0,0,0,'','0'),(46,16,'ECS000046','V领短袖T恤 女款',2,0,1,46.80,39.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/46_G_1462852854671.jpg','images/201605/source_img/46_G_1462852854698.jpg',1,0,1462852854,0,1,0,0,0,0,'','0'),(47,16,'ECS000047','极简都市双肩包',3,0,1,178.79,149.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/47_G_1462852887140.jpg','images/201605/source_img/47_G_1462852887382.jpg',1,0,1462852887,0,1,0,0,0,0,'','0'),(48,16,'ECS000048','学院风简约双肩包',4,0,1,70.80,59.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/48_G_1462852915946.jpg','images/201605/source_img/48_G_1462852915332.jpg',1,0,1462852915,0,1,0,0,0,0,'','0'),(49,17,'ECS000049','随身风扇',5,0,1,23.88,19.90,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/49_G_1462852939406.jpg','images/201605/source_img/49_G_1462852939577.jpg',1,0,1462852939,0,1,0,0,0,0,'','0'),(50,17,'ECS000050','移动电源16000mAh',6,15,1,154.79,129.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/50_G_1462852961232.jpg','images/201605/source_img/50_G_1462852961568.jpg',1,0,1462852961,0,1,0,0,0,0,'','0'),(51,17,'ECS000051','鼠标垫',7,0,1,5.88,4.90,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/51_G_1462852967543.jpg','images/201605/source_img/51_G_1462852967694.jpg',1,0,1462852967,0,1,0,0,0,0,'','0'),(52,8,'ECS000052','活塞耳机 三大升级 全新听歌神器',8,15,1,99.00,69.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/52_G_1462951604094.jpg','images/201605/source_img/52_G_1462951604873.jpg',1,0,1462853039,0,1,0,0,0,0,'','0'),(53,8,'ECS000053','活塞耳机 标准版',9,15,1,34.80,29.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/53_G_1462951586918.jpg','images/201605/source_img/53_G_1462951586806.jpg',1,0,1462853130,0,1,0,0,0,0,'','0'),(54,6,'ECS000054','插线板',10,15,1,58.80,49.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/54_G_1462853264188.jpg','images/201605/source_img/54_G_1462853264278.jpg',1,0,1462853264,0,1,0,0,0,0,'','0'),(55,2,'ECS000055','移动电源10000mAh',11,15,1,82.80,69.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/55_G_1462853376630.jpg','images/201605/source_img/55_G_1462853376496.jpg',1,0,1462853376,0,1,0,0,0,0,'','0'),(58,3,'ECS000058','手机3高配版 超薄钢化玻璃膜(0.22mm) ',12,15,1,34.80,29.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/58_G_1462854555626.jpg','images/201605/source_img/58_G_1462854555917.jpg',1,0,1462854555,0,1,0,0,0,0,'','0'),(59,6,'ECS000059',' 标准高透贴膜(2片装) ',13,15,1,22.80,19.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/59_G_1462854683071.jpg','images/201605/source_img/59_G_1462854683549.jpg',1,0,1462854683,0,1,0,0,0,0,'','0'),(60,6,'ECS000060','指环式防滑手机支架',14,15,1,15.00,12.50,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/60_G_1462854857550.jpg','images/201605/source_img/60_G_1462854857625.jpg',1,0,1462854857,0,1,0,0,0,0,'','0'),(73,6,'ECS000073','苹果XS',15,5,1,12000.00,10000.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201811/goods_img/73_G_1543477521230.jpg','images/201811/source_img/73_G_1543477521606.jpg',1,0,1543477521,1,1,0,0,0,0,'','0'),(74,6,'ECS000074','XS 苹果',16,5,8,12000.00,10000.00,9500.00,1541001600,1543420800,3,'苹果','苹果 很贵','<p>&nbsp;<img src=\"/ecshop/images/upload/Image/1.jpg\" width=\"450\" height=\"450\" alt=\"\" /><img src=\"/ecshop/images/upload/Image/57d0c55cNeb17a9b8.jpg\" width=\"450\" height=\"450\" alt=\"\" /></p>','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201811/goods_img/74_G_1543477901288.jpg','images/201811/source_img/74_G_1543477901044.jpg',1,0,1543477901,0,1,0,0,1,4,'贵鬼的苹果','0'),(149,4,'ECS0000149','oppo',17,16,4,3899.00,3699.00,3600.00,2009,2014,1,'2018年10月 GSM,850,900,1800,1900 黑色','','','20190108\\442a1a61e9c38c678db33709aad283f8.jpg','./thumb/5c33fe70da97e.jpg','',1,0,0,0,1,1,1,1,0,'v','0'),(151,4,'ECS0000151','vivo',18,16,4,111.00,111.00,1111.00,2009,2014,1,'2018年10月 GSM,850,900,1800,1900 黑色','','','20190108\\70f2a066ea77a80c16819aaabd2d2763.jpg','./thumb/5c3401b9d7b1c.jpg','',1,0,0,0,1,1,1,1,0,'1','0'),(150,4,'ECS0000150','oppo',19,16,4,3899.00,3699.00,3600.00,2009,2014,1,'2018年10月 GSM,850,900,1800,1900 黑色','','','20190108\\38c154f269435678cecd4f5a19ef577d.jpg','./thumb/5c33ff5cf0769.jpg','',1,0,0,0,1,1,1,1,0,'v','0'),(153,8,'ECS000004','诺基亚N85原装充电器',20,0,17,69.60,58.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/200905/goods_img/4_G_1241422402722.jpg','images/200905/source_img/4_G_1241422402919.jpg',1,0,1241422402,0,1,1,1,0,6,'','0'),(154,3,'ECS000008','飞利浦9@9v',21,4,0,478.79,399.00,385.00,1241366400,1417276800,1,'双模 2008年春 黑色 直板 中低档','','<p align=\"left\">作为一款性价比极高的入门级<font size=\"3\" color=\"#ff0000\"><strong>商务手机</strong></font>，飞利浦<a href=\"mailto:9@9v\">Xenium&nbsp; 9@9v</a>三围大小为105&times;44&times;15.8mm，机身重量仅为<strong><font size=\"3\" color=\"#ff0000\">75g</font></strong>，装配了一块低规格1.75英寸128&times;160像素65000色CSTN显示屏。身正面采用月银色功能键区与屏幕数字键区相分隔，键盘设计较为<font size=\"3\"><strong><font color=\"#ff0000\">别</font><font color=\"#ff0000\">致</font></strong></font>，中部导航键区采用钛金色的&ldquo;腰带&rdquo;彰显出浓郁的商务气息。</p>\r\n<p align=\"left\">&nbsp;</p>\r\n<p align=\"left\">此款手机采用<strong><font size=\"3\" color=\"#ff0000\">触摸屏</font></strong>设计，搭配精致的手写笔，可支持手写中文和英文两个版本。增强的内置系统还能识别潦草字迹，确保在移动中和匆忙时输入文字的识别率。手写指令功能还支持特定图案的瞬间调用，独特的手写记事本功能，可以在触摸屏上随意绘制个性化的图案并进行<strong><font size=\"3\" color=\"#ff0000\">记事提醒</font></strong>，让商务应用更加随意。</p>\r\n<p align=\"left\">&nbsp;</p>\r\n<p align=\"left\">&nbsp;作为入门级为数不多支持<strong><font size=\"3\" color=\"#ff0000\">双卡功能</font></strong>的手机，可以同时插入两张SIM卡，通过菜单随意切换，只需开启漫游自动切换模式，<a href=\"mailto:9@9V\">9@9V</a>在该模式下能够判断网络情况，自动切换适合的手机号。</p>\r\n<p align=\"left\">&nbsp;</p>\r\n<p align=\"left\">&nbsp;</p>','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/200905/goods_img/8_G_1241425513055.jpg','images/200905/source_img/8_G_1241425513518.jpg',1,0,1241425512,0,1,1,1,1,9,'','0'),(155,3,'ECS000009','诺基亚E66',22,0,2,2757.60,2298.00,0.00,0,0,1,'SMS EMS MMS 短消息群发 语音 阅读器 SMS,EMS,MMS,短消息群发语音合成信息阅读器 黑色 白色 滑盖','','<p>在机身材质方面，诺基亚E66大量采用金属材质，刨光的金属表面光泽动人，背面的点状效果规则却又不失变化，时尚感总是在不经意间诠释出来，并被人们所感知。E66机身尺寸为<span style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: larger;\"><strong>107.5&times;49.5&times;13.6毫米，重量为121克</strong></span></span>，滑盖的造型竟然比E71还要轻一些。</p>\r\n<p>&nbsp;</p>\r\n<div>诺基亚E66机身正面是<span style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: larger;\"><strong>一块2.4英寸1600万色QVGA分辨率（240&times;320像素）液晶显示屏</strong></span></span>。屏幕上方拥有光线感应元件，能够自适应周 围环境光调节屏幕亮度；屏幕下方是方向功能键区。打开滑盖，可以看到传统的数字键盘，按键的大小、手感、间隔以及键程适中，手感非常舒适。</div>\r\n<div>&nbsp;</div>\r\n<div>诺基亚为E66配备了一颗320万像素自动对焦摄像头，带有LED 闪光灯，支持多种拍照尺寸选择。</div>\r\n<p>&nbsp;</p>','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/200905/goods_img/9_G_1241511871574.jpg','images/200905/source_img/9_G_1241511871550.jpg',1,0,1241511871,0,1,1,1,0,9,'','0'),(156,8,'ECS000035','体重秤',23,0,1,16.80,14.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/35_G_1462851036470.jpg','images/201605/source_img/35_G_1462851036185.jpg',1,0,1462851036,0,1,0,0,0,0,'','1'),(157,1,'ECS000069','平衡车',24,15,1,2398.79,1999.00,0.00,0,0,1,'','','<p><img src=\"/images/upload/Image/3_1.jpg\" width=\"1311\" height=\"656\" alt=\"\" />&nbsp;</p>','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/69_G_1462955300173.jpg','images/201605/source_img/69_G_1462955300153.jpg',1,0,1462955300,0,1,0,0,0,0,'','1'),(158,2,'ECS000070','炫彩翻页保护套',25,15,1,46.80,39.00,0.00,0,0,1,'','','<p><img src=\"/images/upload/Image/4_1.jpg\" width=\"1226\" height=\"1068\" alt=\"\" />&nbsp;</p>','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/70_G_1462955414630.jpg','images/201605/source_img/70_G_1462955414637.jpg',1,0,1462955414,0,1,0,0,0,0,'','0'),(159,3,'ECS000072','智能相机',26,15,20,178.79,149.00,0.00,0,0,1,'','','<p>&nbsp;<img src=\"http://cbu2.test.shopex123.com/images//20160510/5984c3f800d7ef3c.jpg\" alt=\"\" /></p>','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/72_G_1462956048145.jpg','images/201605/source_img/72_G_1462956048413.jpg',1,0,1462956048,0,1,0,0,0,0,'','0'),(160,5,'ECS000063','自拍杆',27,15,0,49.00,49.00,0.00,0,0,1,'','','<p>&nbsp;<img src=\"http://cbu2.test.shopex123.com/images//20160510/4f04b67e7a2035bd.jpg\" alt=\"\" /></p>','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/63_G_1462953395397.jpg','images/201605/source_img/63_G_1462953395626.jpg',1,0,1462952749,0,1,0,0,0,12,'','0'),(161,4,'ECS0000152','iphone ',28,17,4,11000.00,10000.00,8888.00,2009,2014,1,'2018年10月 GSM,850,900,1800,1900 黑色','','','20190108\\f59ea0988d2beecf1a755b1424c46c96.jpg','./thumb/5c342f690e651.jpg','',1,0,0,0,1,1,1,1,0,'fsrgfrsf','0'),(162,6,'ECS000068','透明超薄软胶保护套',29,15,1,22.80,19.00,0.00,0,0,1,'','','<p><img src=\"/images/upload/Image/2_1.jpg\" width=\"1240\" height=\"869\" alt=\"\" />&nbsp;</p>','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/68_G_1462955204977.jpg','images/201605/source_img/68_G_1462955204991.jpg',1,0,1462955204,0,1,0,1,0,0,'','0'),(163,8,'ECS000036','路由器',30,0,1,178.79,149.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/36_G_1462851087064.jpg','images/201605/source_img/36_G_1462851087201.jpg',1,0,1462851087,0,1,0,0,0,0,'','0'),(164,7,'ECS000037','Note3 钢化玻璃膜(0.33mm) ',31,15,1,19.00,19.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/37_G_1462852086030.jpg','images/201605/source_img/37_G_1462852086626.jpg',1,0,1462852086,0,1,0,0,0,0,'','0'),(165,9,'ECS000038','圈铁耳机',32,15,1,118.80,99.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/38_G_1462951652287.jpg','images/201605/source_img/38_G_1462951652405.jpg',1,0,1462852185,0,1,0,0,0,0,'','0'),(166,10,'ECS000039','移动电源 10000mAh 高配版',33,15,1,178.79,149.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/39_G_1462852326708.jpg','images/201605/source_img/39_G_1462852326569.jpg',1,0,1462852326,0,1,0,0,0,0,'','0'),(167,11,'ECS000040',' 炫彩翻页保护套',34,15,1,39.00,39.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/40_G_1462852478331.jpg','images/201605/source_img/40_G_1462852478647.jpg',1,0,1462852478,0,1,0,0,0,0,'','0'),(168,12,'ECS000041','蓝牙耳机',35,15,1,94.80,79.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/41_G_1462951739858.jpg','images/201605/source_img/41_G_1462951739827.jpg',1,0,1462852621,0,1,0,0,0,0,'','0'),(169,13,'ECS000042','短袖T恤 米兔大游行',36,0,1,46.80,39.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/42_G_1462852622613.jpg','images/201605/source_img/42_G_1462852622905.jpg',1,0,1462852622,0,1,0,0,0,0,'','0'),(170,14,'ECS000043','短袖T恤 摇滚星球',37,0,1,46.80,39.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/43_G_1462852740043.jpg','images/201605/source_img/43_G_1462852740973.jpg',1,0,1462852674,0,1,0,0,0,0,'','0'),(171,15,'ECS000044','短袖POLO衫 女款',38,0,1,70.80,59.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/44_G_1462854145484.jpg','images/201605/source_img/44_G_1462854145205.jpg',1,0,1462852818,0,1,0,0,0,0,'','0'),(172,16,'ECS000045','自拍杆',39,15,1,58.80,49.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/45_G_1462852876401.jpg','images/201605/source_img/45_G_1462852876959.jpg',1,0,1462852839,0,1,0,0,0,0,'','0'),(173,16,'ECS000046','V领短袖T恤 女款',40,0,1,46.80,39.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/46_G_1462852854671.jpg','images/201605/source_img/46_G_1462852854698.jpg',1,0,1462852854,0,1,0,0,0,0,'','0'),(174,16,'ECS000047','极简都市双肩包',41,0,1,178.79,149.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/47_G_1462852887140.jpg','images/201605/source_img/47_G_1462852887382.jpg',1,0,1462852887,0,1,0,0,0,0,'','0'),(175,16,'ECS000048','学院风简约双肩包',42,0,1,70.80,59.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/48_G_1462852915946.jpg','images/201605/source_img/48_G_1462852915332.jpg',1,0,1462852915,0,1,0,0,0,0,'','0'),(176,17,'ECS000049','随身风扇',43,0,1,23.88,19.90,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/49_G_1462852939406.jpg','images/201605/source_img/49_G_1462852939577.jpg',1,0,1462852939,0,1,0,0,0,0,'','0'),(177,17,'ECS000050','移动电源16000mAh',44,15,1,154.79,129.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/50_G_1462852961232.jpg','images/201605/source_img/50_G_1462852961568.jpg',1,0,1462852961,0,1,0,0,0,0,'','0'),(178,17,'ECS000051','鼠标垫',45,0,1,5.88,4.90,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/51_G_1462852967543.jpg','images/201605/source_img/51_G_1462852967694.jpg',1,0,1462852967,0,1,0,0,0,0,'','0'),(179,8,'ECS000052','活塞耳机 三大升级 全新听歌神器',46,15,1,99.00,69.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/52_G_1462951604094.jpg','images/201605/source_img/52_G_1462951604873.jpg',1,0,1462853039,0,1,0,0,0,0,'','0'),(180,8,'ECS000053','活塞耳机 标准版',47,15,1,34.80,29.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/53_G_1462951586918.jpg','images/201605/source_img/53_G_1462951586806.jpg',1,0,1462853130,0,1,0,0,0,0,'','0'),(181,6,'ECS000054','插线板',48,15,1,58.80,49.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/54_G_1462853264188.jpg','images/201605/source_img/54_G_1462853264278.jpg',1,0,1462853264,0,1,0,0,0,0,'','0'),(182,2,'ECS000055','移动电源10000mAh',49,15,1,82.80,69.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/55_G_1462853376630.jpg','images/201605/source_img/55_G_1462853376496.jpg',1,0,1462853376,0,1,0,0,0,0,'','0'),(183,3,'ECS000058','手机3高配版 超薄钢化玻璃膜(0.22mm) ',50,15,1,34.80,29.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/58_G_1462854555626.jpg','images/201605/source_img/58_G_1462854555917.jpg',1,0,1462854555,0,1,0,0,0,0,'','0'),(184,6,'ECS000059',' 标准高透贴膜(2片装) ',51,15,1,22.80,19.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/59_G_1462854683071.jpg','images/201605/source_img/59_G_1462854683549.jpg',1,0,1462854683,0,1,0,0,0,0,'','0'),(185,6,'ECS000060','指环式防滑手机支架',52,15,1,15.00,12.50,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201605/goods_img/60_G_1462854857550.jpg','images/201605/source_img/60_G_1462854857625.jpg',1,0,1462854857,0,1,0,0,0,0,'','0'),(186,6,'ECS000073','苹果XS',53,5,1,12000.00,10000.00,0.00,0,0,1,'','','','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201811/goods_img/73_G_1543477521230.jpg','images/201811/source_img/73_G_1543477521606.jpg',1,0,1543477521,1,1,0,0,0,0,'','0'),(187,6,'ECS000074','XS 苹果',54,5,8,12000.00,10000.00,9500.00,1541001600,1543420800,3,'苹果','苹果 很贵','<p>&nbsp;<img src=\"/ecshop/images/upload/Image/1.jpg\" width=\"450\" height=\"450\" alt=\"\" /><img src=\"/ecshop/images/upload/Image/57d0c55cNeb17a9b8.jpg\" width=\"450\" height=\"450\" alt=\"\" /></p>','20181213/f2677700cda3326c637f8f8f0d48adc6.jpg','images/201811/goods_img/74_G_1543477901288.jpg','images/201811/source_img/74_G_1543477901044.jpg',1,0,1543477901,0,1,0,0,1,4,'贵鬼的苹果','0'),(188,4,'ECS0000149','oppo',55,16,4,3899.00,3699.00,3600.00,2009,2014,1,'2018年10月 GSM,850,900,1800,1900 黑色','','','20190108\\442a1a61e9c38c678db33709aad283f8.jpg','./thumb/5c33fe70da97e.jpg','',1,0,0,0,1,1,1,1,0,'v','0'),(189,4,'ECS0000151','vivo',56,16,5,111.00,111.00,1111.00,2009,2014,1,'2018年10月 GSM,850,900,1800,1900 黑色','','','20190108\\70f2a066ea77a80c16819aaabd2d2763.jpg','./thumb/5c3401b9d7b1c.jpg','',1,0,0,0,1,1,1,1,0,'1','0'),(190,4,'ECS0000150','oppo',57,16,4,3899.00,3699.00,3600.00,2009,2014,1,'2018年10月 GSM,850,900,1800,1900 黑色','','','20190108\\38c154f269435678cecd4f5a19ef577d.jpg','./thumb/5c33ff5cf0769.jpg','',1,0,0,0,0,1,1,1,0,'v','0');
/*!40000 ALTER TABLE `shop_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order_detail`
--

DROP TABLE IF EXISTS `shop_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `buy_number` int(11) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_price` decimal(10,2) DEFAULT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `express` varchar(30) DEFAULT NULL,
  `utime` int(11) DEFAULT NULL,
  `order_on` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1150 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order_detail`
--

LOCK TABLES `shop_order_detail` WRITE;
/*!40000 ALTER TABLE `shop_order_detail` DISABLE KEYS */;
INSERT INTO `shop_order_detail` VALUES (1149,183,2,189,1,'vivo',111.00,NULL,2,NULL,NULL,NULL,'2019022806420936009'),(1148,182,2,157,1,'平衡车',1999.00,NULL,2,NULL,NULL,NULL,'2019022712324239074'),(1147,181,2,182,1,'移动电源10000mAh',69.00,NULL,2,NULL,NULL,NULL,'2019022711223153043');
/*!40000 ALTER TABLE `shop_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'13731865195','200820e3227815ed1756a6b531e7e0d2'),(3,'13751953185','200820e3227815ed1756a6b531e7e0d2'),(4,'13734785195','200820e3227815ed1756a6b531e7e0d2'),(5,'13734785196','200820e3227815ed1756a6b531e7e0d2'),(6,'13731865185','200820e3227815ed1756a6b531e7e0d2'),(7,'13765486911','200820e3227815ed1756a6b531e7e0d2'),(9,'18515382622','200820e3227815ed1756a6b531e7e0d2');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-02 10:32:15
