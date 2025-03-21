-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmdmkas
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `ssmdmkas`
--

/*!40000 DROP DATABASE IF EXISTS `ssmdmkas`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssmdmkas` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssmdmkas`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/1647661761386.png'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `dianhua` varchar(200) NOT NULL COMMENT '电话',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1647661654268 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2022-03-19 01:15:02','教师工号1','123456','教师姓名1','男','职称1','13823888881','upload/jiaoshi_zhaopian1.jpg','班级1'),(22,'2022-03-19 01:15:02','教师工号2','123456','教师姓名2','男','职称2','13823888882','upload/jiaoshi_zhaopian2.jpg','班级2'),(23,'2022-03-19 01:15:02','教师工号3','123456','教师姓名3','男','职称3','13823888883','upload/jiaoshi_zhaopian3.jpg','班级3'),(24,'2022-03-19 01:15:02','教师工号4','123456','教师姓名4','男','职称4','13823888884','upload/jiaoshi_zhaopian4.jpg','班级4'),(25,'2022-03-19 01:15:02','教师工号5','123456','教师姓名5','男','职称5','13823888885','upload/jiaoshi_zhaopian5.jpg','班级5'),(26,'2022-03-19 01:15:02','教师工号6','123456','教师姓名6','男','职称6','13823888886','upload/jiaoshi_zhaopian6.jpg','班级6'),(1647661654267,'2022-03-19 03:47:34','22','22','李四','男','教授','13933333333','upload/1647661663966.jpg','101');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengleixing`
--

DROP TABLE IF EXISTS `kechengleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647661724735 DEFAULT CHARSET=utf8 COMMENT='课程类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengleixing`
--

LOCK TABLES `kechengleixing` WRITE;
/*!40000 ALTER TABLE `kechengleixing` DISABLE KEYS */;
INSERT INTO `kechengleixing` VALUES (31,'2022-03-19 01:15:02','语文'),(32,'2022-03-19 01:15:02','课程类型2'),(33,'2022-03-19 01:15:02','课程类型3'),(34,'2022-03-19 01:15:02','课程类型4'),(35,'2022-03-19 01:15:02','课程类型5'),(36,'2022-03-19 01:15:02','课程类型6'),(1647661724734,'2022-03-19 03:48:44','数学');
/*!40000 ALTER TABLE `kechengleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  `xueshi` varchar(200) DEFAULT NULL COMMENT '学时',
  `xuefen` varchar(200) DEFAULT NULL COMMENT '学分',
  `kaikeshijian` date DEFAULT NULL COMMENT '开课时间',
  `jieshuriqi` date DEFAULT NULL COMMENT '结束日期',
  `kechengneirong` longtext COMMENT '课程内容',
  `kaohefangshi` varchar(200) DEFAULT NULL COMMENT '考核方式',
  `renshu` int(11) DEFAULT NULL COMMENT '人数',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1647661695836 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (41,'2022-03-19 01:15:02','1111111111','课程名称1','upload/kechengxinxi_fengmian1.jpg','语文','学时1','学分1','2022-03-19','2022-03-19','课程内容1','考核方式1',1,'教师工号1','教师姓名1',1,1,2),(42,'2022-03-19 01:15:02','2222222222','课程名称2','upload/kechengxinxi_fengmian2.jpg','课程类型2','学时2','学分2','2022-03-19','2022-03-19','课程内容2','考核方式2',2,'教师工号2','教师姓名2',2,2,2),(43,'2022-03-19 01:15:02','3333333333','课程名称3','upload/kechengxinxi_fengmian3.jpg','课程类型3','学时3','学分3','2022-03-19','2022-03-19','课程内容3','考核方式3',2,'教师工号3','教师姓名3',3,3,5),(44,'2022-03-19 01:15:02','4444444444','课程名称4','upload/kechengxinxi_fengmian4.jpg','课程类型4','学时4','学分4','2022-03-19','2022-03-19','课程内容4','考核方式4',4,'教师工号4','教师姓名4',5,4,5),(45,'2022-03-19 01:15:02','5555555555','课程名称5','upload/kechengxinxi_fengmian5.jpg','课程类型5','学时5','学分5','2022-03-19','2022-03-19','课程内容5','考核方式5',5,'教师工号5','教师姓名5',5,5,5),(46,'2022-03-19 01:15:02','6666666666','课程名称6','upload/kechengxinxi_fengmian6.jpg','课程类型6','学时6','学分6','2022-03-19','2022-03-19','课程内容6','考核方式6',6,'教师工号6','教师姓名6',6,6,6),(1647661695835,'2022-03-19 03:48:14','1647661684399','阿斯顿法撒旦','upload/1647661675026.jpg','数学','22','22','2022-03-19','2022-03-24','阿斯蒂芬撒地方啊实打实的阿斯蒂芬撒地方啊实打实的阿斯蒂芬撒地方啊实打实的阿斯蒂芬撒地方啊实打实的阿斯蒂芬撒地方啊实打实的阿斯蒂芬撒地方啊实打实的阿斯蒂芬撒地方啊实打实的阿斯蒂芬撒地方啊实打实的','阿斯顿法撒旦法撒旦撒旦f',21,'22','李四',0,0,4);
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647661785181 DEFAULT CHARSET=utf8 COMMENT='选课介绍';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (81,'2022-03-19 01:15:02','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(82,'2022-03-19 01:15:02','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(83,'2022-03-19 01:15:02','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(84,'2022-03-19 01:15:02','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(85,'2022-03-19 01:15:02','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(86,'2022-03-19 01:15:02','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(1647661785180,'2022-03-19 03:49:44','阿斯顿发生大苏打','阿斯顿发射点发生的撒阿斯顿发射点发生的撒阿斯顿发射点发生的撒阿斯顿发射点发生的撒阿斯顿发射点发生的撒阿斯顿发射点发生的撒阿斯顿发射点发生的撒\n','upload/1647661771081.jpg','<p>阿斯蒂芬阿斯蒂芬阿三</p><p><img src=\"http://localhost:8080/ssmdmkas/upload/1647661780216.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quxiaoxuanke`
--

DROP TABLE IF EXISTS `quxiaoxuanke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quxiaoxuanke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  `xueshi` varchar(200) DEFAULT NULL COMMENT '学时',
  `xuefen` varchar(200) DEFAULT NULL COMMENT '学分',
  `kaikeshijian` varchar(200) DEFAULT NULL COMMENT '开课时间',
  `jieshuriqi` varchar(200) DEFAULT NULL COMMENT '结束日期',
  `kaohefangshi` varchar(200) DEFAULT NULL COMMENT '考核方式',
  `renshu` int(11) DEFAULT NULL COMMENT '人数',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `quxiaoyuanyin` varchar(200) NOT NULL COMMENT '取消原因',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647661885725 DEFAULT CHARSET=utf8 COMMENT='取消选课';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quxiaoxuanke`
--

LOCK TABLES `quxiaoxuanke` WRITE;
/*!40000 ALTER TABLE `quxiaoxuanke` DISABLE KEYS */;
INSERT INTO `quxiaoxuanke` VALUES (61,'2022-03-19 01:15:02','课程编号1','课程名称1','upload/quxiaoxuanke_fengmian1.jpg','课程类型1','学时1','学分1','开课时间1','结束日期1','考核方式1',1,'教师工号1','教师姓名1','学号1','姓名1','13823888881','取消原因1','2022-03-19 09:15:02','是','',1),(62,'2022-03-19 01:15:02','课程编号2','课程名称2','upload/quxiaoxuanke_fengmian2.jpg','课程类型2','学时2','学分2','开课时间2','结束日期2','考核方式2',2,'教师工号2','教师姓名2','学号2','姓名2','13823888882','取消原因2','2022-03-19 09:15:02','是','',2),(63,'2022-03-19 01:15:02','课程编号3','课程名称3','upload/quxiaoxuanke_fengmian3.jpg','课程类型3','学时3','学分3','开课时间3','结束日期3','考核方式3',3,'教师工号3','教师姓名3','学号3','姓名3','13823888883','取消原因3','2022-03-19 09:15:02','是','',3),(64,'2022-03-19 01:15:02','课程编号4','课程名称4','upload/quxiaoxuanke_fengmian4.jpg','课程类型4','学时4','学分4','开课时间4','结束日期4','考核方式4',4,'教师工号4','教师姓名4','学号4','姓名4','13823888884','取消原因4','2022-03-19 09:15:02','是','',4),(65,'2022-03-19 01:15:02','课程编号5','课程名称5','upload/quxiaoxuanke_fengmian5.jpg','课程类型5','学时5','学分5','开课时间5','结束日期5','考核方式5',5,'教师工号5','教师姓名5','学号5','姓名5','13823888885','取消原因5','2022-03-19 09:15:02','是','',5),(66,'2022-03-19 01:15:02','课程编号6','课程名称6','upload/quxiaoxuanke_fengmian6.jpg','课程类型6','学时6','学分6','开课时间6','结束日期6','考核方式6',6,'教师工号6','教师姓名6','学号6','姓名6','13823888886','取消原因6','2022-03-19 09:15:02','是','',6),(1647661562701,'2022-03-19 03:46:01','3333333333','课程名称3','upload/kechengxinxi_fengmian3.jpg','课程类型3','学时3','学分3','2022-03-19','2022-03-19','考核方式3',1,'教师工号3','教师姓名3','11','张三','13922222222','阿斯蒂芬撒旦','2022-03-19 11:46:10','','',1647661510372),(1647661885724,'2022-03-19 03:51:24','1647661684399','阿斯顿法撒旦','upload/1647661675026.jpg','数学','22','22','2022-03-19','2022-03-24','阿斯顿法撒旦法撒旦撒旦f',1,'22','李四','11','张三','13922222222','阿斯蒂芬撒旦发射点 ','2022-03-19 11:51:30','是','阿斯顿法撒旦法撒旦法撒旦撒',1647661510372);
/*!40000 ALTER TABLE `quxiaoxuanke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647661859261 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1647661577422,'2022-03-19 03:46:16',1647661510372,44,'kechengxinxi','课程名称4','upload/kechengxinxi_fengmian4.jpg','1',NULL),(1647661581562,'2022-03-19 03:46:21',1647661510372,44,'kechengxinxi','课程名称4','upload/kechengxinxi_fengmian4.jpg','21',NULL),(1647661859260,'2022-03-19 03:50:58',1647661510372,1647661695835,'kechengxinxi','阿斯顿法撒旦','upload/1647661675026.jpg','1',NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1647661510372,'11','xuesheng','学生','4mrkyetbvyhnnrf65m39e4ai9yuoly3l','2022-03-19 03:45:13','2022-03-19 04:50:53'),(2,1647661654267,'22','jiaoshi','教师','c4vpc5zzyul58bwffsv21tt8h80tczdi','2022-03-19 03:47:38','2022-03-19 04:52:13'),(3,1,'abo','users','管理员','q4rsaoxn83rpnv6k6jmuxtdt1448mqvj','2022-03-19 03:48:24','2022-03-19 04:48:25');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-19 01:15:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuankexinxi`
--

DROP TABLE IF EXISTS `xuankexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuankexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  `xueshi` varchar(200) DEFAULT NULL COMMENT '学时',
  `xuefen` varchar(200) DEFAULT NULL COMMENT '学分',
  `kaikeshijian` varchar(200) DEFAULT NULL COMMENT '开课时间',
  `jieshuriqi` varchar(200) DEFAULT NULL COMMENT '结束日期',
  `kaohefangshi` varchar(200) DEFAULT NULL COMMENT '考核方式',
  `renshu` int(11) NOT NULL COMMENT '人数',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647661866598 DEFAULT CHARSET=utf8 COMMENT='选课信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuankexinxi`
--

LOCK TABLES `xuankexinxi` WRITE;
/*!40000 ALTER TABLE `xuankexinxi` DISABLE KEYS */;
INSERT INTO `xuankexinxi` VALUES (51,'2022-03-19 01:15:02','课程编号1','课程名称1','upload/xuankexinxi_fengmian1.jpg','课程类型1','学时1','学分1','开课时间1','结束日期1','考核方式1',1,'教师工号1','教师姓名1','学号1','姓名1','13823888881','2022-03-19 09:15:02','已取消',1),(52,'2022-03-19 01:15:02','课程编号2','课程名称2','upload/xuankexinxi_fengmian2.jpg','课程类型2','学时2','学分2','开课时间2','结束日期2','考核方式2',2,'教师工号2','教师姓名2','学号2','姓名2','13823888882','2022-03-19 09:15:02','已取消',2),(53,'2022-03-19 01:15:02','课程编号3','课程名称3','upload/xuankexinxi_fengmian3.jpg','课程类型3','学时3','学分3','开课时间3','结束日期3','考核方式3',3,'教师工号3','教师姓名3','学号3','姓名3','13823888883','2022-03-19 09:15:02','已取消',3),(54,'2022-03-19 01:15:02','课程编号4','课程名称4','upload/xuankexinxi_fengmian4.jpg','课程类型4','学时4','学分4','开课时间4','结束日期4','考核方式4',4,'教师工号4','教师姓名4','学号4','姓名4','13823888884','2022-03-19 09:15:02','已取消',4),(55,'2022-03-19 01:15:02','课程编号5','课程名称5','upload/xuankexinxi_fengmian5.jpg','课程类型5','学时5','学分5','开课时间5','结束日期5','考核方式5',5,'教师工号5','教师姓名5','学号5','姓名5','13823888885','2022-03-19 09:15:02','已取消',5),(56,'2022-03-19 01:15:02','课程编号6','课程名称6','upload/xuankexinxi_fengmian6.jpg','课程类型6','学时6','学分6','开课时间6','结束日期6','考核方式6',6,'教师工号6','教师姓名6','学号6','姓名6','13823888886','2022-03-19 09:15:02','已取消',6),(1647661548796,'2022-03-19 03:45:47','3333333333','课程名称3','upload/kechengxinxi_fengmian3.jpg','课程类型3','学时3','学分3','2022-03-19','2022-03-19','考核方式3',1,'教师工号3','教师姓名3','11','张三','13922222222','2022-03-19 11:45:54','已取消',1647661510372),(1647661866597,'2022-03-19 03:51:06','1647661684399','阿斯顿法撒旦','upload/1647661675026.jpg','数学','22','22','2022-03-19','2022-03-24','阿斯顿法撒旦法撒旦撒旦f',1,'22','李四','11','张三','13922222222','2022-03-19 11:51:12','已取消',1647661510372);
/*!40000 ALTER TABLE `xuankexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1647661510373 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2022-03-19 01:15:02','学号1','姓名1','123456','男',1,'13823888881','773890001@qq.com','学院1','专业1','upload/xuesheng_touxiang1.jpg'),(12,'2022-03-19 01:15:02','学号2','姓名2','123456','男',2,'13823888882','773890002@qq.com','学院2','专业2','upload/xuesheng_touxiang2.jpg'),(13,'2022-03-19 01:15:02','学号3','姓名3','123456','男',3,'13823888883','773890003@qq.com','学院3','专业3','upload/xuesheng_touxiang3.jpg'),(14,'2022-03-19 01:15:02','学号4','姓名4','123456','男',4,'13823888884','773890004@qq.com','学院4','专业4','upload/xuesheng_touxiang4.jpg'),(15,'2022-03-19 01:15:02','学号5','姓名5','123456','男',5,'13823888885','773890005@qq.com','学院5','专业5','upload/xuesheng_touxiang5.jpg'),(16,'2022-03-19 01:15:02','学号6','姓名6','123456','男',6,'13823888886','773890006@qq.com','学院6','专业6','upload/xuesheng_touxiang6.jpg'),(1647661510372,'2022-03-19 03:45:10','11','张三','11','女',22,'13922222222','22@163.com','计算机','通信','upload/1647661529946.jpg');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-22 16:12:00
