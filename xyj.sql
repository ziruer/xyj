-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: db_user
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `age` int(11) NOT NULL COMMENT '年龄',
  `ctm` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (1,'张三',18,'2018-10-07 23:05:41'),(2,'李四',20,'2018-10-07 23:05:57'),(3,'王五',19,'2018-10-07 23:06:02');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xyjclass`
--

DROP TABLE IF EXISTS `xyjclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `xyjclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) NOT NULL COMMENT '门派',
  `des` varchar(500) DEFAULT NULL COMMENT '介绍',
  `suitid` int(11) DEFAULT NULL COMMENT '套装ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xyjclass`
--

LOCK TABLES `xyjclass` WRITE;
/*!40000 ALTER TABLE `xyjclass` DISABLE KEYS */;
INSERT INTO `xyjclass` VALUES (3,'大雪山','却说长安最北边有座高山，长年四季都被大雪封住，山谷内却是四季如春。山上诸多鸟类成精，聚集在一起，颇具声势。',1),(4,'方寸山','灵台方寸山开山祖师是菩提祖师，传说他是佛的十大弟子之一，又是一个道佛结合的人物．方寸山门规严谨，要求弟子做事端庄．武功方面初进极易，而后对悟性要求极高．其方寸，灵台，及菩提祖师的法号斜月三星都是心的隐意．',3),(5,'地府','天上有玉皇掌管，西天有佛祖掌管，人间有人王掌管，而阴间，则是由地藏菩萨和众王主持。人死后回归阴府，阎罗王会根据其在阳间所做予以惩罚。所以有道是：莫言不报应，神鬼有安排。并且阴府有一十八层地狱，专以惩治那些为非作歹之徒。',13),(6,'火云洞','火云洞并不只是一个小的山头，而是几洞妖王联合的总称。火云洞中主要有两派势力比较强大，枯松涧火云洞，积雷山 摩云洞。',4),(7,'将军府','唐高祖李渊由太原起兵，短短几十年间打下了李家天下，不靠着秦王李世民手下网罗的一批文人武将是不可能的。因此待太祖传位于太宗李世民时，当年秦王手下众将自然是各自封王。',5),(8,'玉虚洞','昆仑山拔地而起，高耸直入云巅。山顶上终年云雾萦绕，传闻昆仑山玉虚宫为阐教鼻祖道法元始天尊传经讲道之所在。',6),(9,'月宫','当年嫦娥在西王母门下是极得其师欢心的。后一错再错，先叛师─助其夫后羿盗取西王母之灵药，再叛夫─独自服药升天，终有“嫦娥应悔偷灵药，碧海青天夜夜心”之叹。所谓“天上人间 寂寞广寒”，嫦娥到底是耐不住广寒清冷，遂设法求得西王母之原谅，在昆仑玉女峰立派受徒，并邀西王母出掌月宫一门。',14),(10,'盘丝洞','紫霞与青霞本是如来佛祖座前日月神灯的灯芯，白天是紫霞，晚上是青霞，二人虽然同一肉身却仇恨颇深。紫霞有一誓言，只要谁能拔出她手中的紫青宝剑，就是她的意中人，此举被看成是仙界的耻辱而遭到追杀。',8),(11,'普陀山','南海普陀乃是救苦救难大慈大悲观音菩萨宣讲佛法之所在。观音菩萨端坐莲花台，微开善口，敷演大法，宣扬正果，讲的是三乘妙典，五蕴楞严。普陀山佛法无边，其金刚护法，大力降魔杵及隐身术等佛家法术均是无以伦比。',7),(12,'散仙','散仙派由春秋战国时期道家、兵家、纵横家的鼻祖鬼谷子创立，其派中武学主打刺客剑法，融会贯通史上著名刺客的招数，暗含道家的玄玄之理，于高深莫测间即已折服对手。散仙派最重忠心，如果有判师记录来到散仙，则不能使用所有技能！',9),(13,'蜀山','四川境内群山矗立，自古为天下名山之秀。蜀山一带颇多灵迹，素闻有剑仙在彼服辟谷精勤修为，凭着一柄飞剑出入青冥，横飞山川，纵贯宇宙，游戏人间好不逍遥。剑仙行事首重仁义，入世行善，广积功德，若是路见不平必伸援手，除魔卫道义不容辞。多少看破红尘的凡夫俗子，舍弃世间荣华富贵，爱恨喜乐，千里迢迢欲上署山寻仙访道，祈能超脱生老病死等灾患疾苦。',10),(14,'无底洞','无底洞乃妖魔门派，洞中大小妖怪喜食人肉。因此若想于无底洞中有一席之地，一众弟子需时常给厨子提供新鲜人肉。传说洞中藏有武功秘笈及练功法台，但不知真伪，需弟子自行寻找。',12),(15,'五庄观','庄观位于万寿山之颠，传说观内种着一种很神气的果树，三千年一开花，三千年一结果，三千年一成熟。如若人吃了会长生不老，成佛成仙！观主号称镇元，辈分极高，乃是地仙之祖。他手段高，面子大，朋友多，门人弟子遍天下，三界五行中没有吃不开的地方。镇元大仙平生得意之处不少，其中最得意的有两件：一是袖里乾坤，大袖一张，包罗万象，二是人参果，乃是天地间独一无二的灵宝。后来唐僧师徒取经路过此处，孙悟空和镇元大仙八拜之交，结为兄弟。',11),(16,'龙宫','话说天下居人之土地，共分四大部洲：曰东胜神州，西牛贺洲，南蟾部洲，与北钜芦洲。除此之外，天下尽为汪洋大海。而这汪洋大海又有东南西北之分，各由东海龙王敖广，南海龙王敖钦，北海龙王敖顺，于西海龙王敖闰四兄弟分别掌管。',2);
/*!40000 ALTER TABLE `xyjclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xyjsuit`
--

DROP TABLE IF EXISTS `xyjsuit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `xyjsuit` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) NOT NULL COMMENT '套装名称',
  `des1` varchar(200) DEFAULT NULL COMMENT '效果1',
  `des2` varchar(200) DEFAULT NULL COMMENT '效果2',
  `des3` varchar(200) DEFAULT NULL COMMENT '效果3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xyjsuit`
--

LOCK TABLES `xyjsuit` WRITE;
/*!40000 ALTER TABLE `xyjsuit` DISABLE KEYS */;
INSERT INTO `xyjsuit` VALUES (1,'雪山 - 凤舞九天','降低凝血耗内35点,\r\n飞剑CD减少1秒, 35%几率增加一击,\r\n百鸟朝凤35%几率暗器数增加2,\r\n','降低凝血耗内70点,\r\n飞剑CD减少2秒, 70%几率增加一击,\r\n百鸟朝凤70%几率暗器数增加8,','降低凝血耗内100点,\r\n飞剑CD减少3秒, 100%几率增加一击,\r\n百鸟朝凤100%几率暗器数增加18,'),(2,'龙宫 - 龙御天下','舍身降低内力消耗35点,\r\n\r\n龙鳞额外增加防御数值为龙神心法等级2倍,\r\n\r\n雷动35%增加一击,','舍身降低内力消耗70点,\r\n\r\n龙鳞额外增加防御数值为龙神心法等级4倍,\r\n\r\n雷动70%增加两击,','舍身降低内力消耗100点,\r\n\r\n龙鳞额外增加防御数值为龙神心法等级8倍,\r\n\r\n雷动100%增加三击,'),(3,'菩提 - 大圣归来','拈花三指降低内力消耗35点,\r\n\r\n借力打力生效时对对方伤害增加35%,\r\n\r\n霹雳三打35%增加一击,','拈花三指降低内力消耗70点,\r\n\r\n借力打力生效时对对方伤害增加70%,\r\n\r\n霹雳三打70%增加两击,','拈花三指降低内力消耗100点,\r\n\r\n借力打力生效时对对方伤害增加100%,\r\n\r\n霹雳三打100%增加三击,'),(4,'火云 - 五岳独尊','五岳封禅降低内力消耗35点,\r\n\r\n火魂的附加伤害增加火云枪等级*2,\r\n\r\n离火35%几率增加一击,','五岳封禅降低内力消耗70点,\r\n\r\n火魂的附加伤害增加火云枪等级*4,\r\n\r\n离火70%几率增加两击,','五岳封禅降低内力消耗100点,\r\n\r\n火魂的附加伤害增加火云枪等级*8,\r\n\r\n离火100%几率增加三击，且无BUSY，CD2秒\r\n\r\n'),(5,'将军府 - 壮士百战','计出连环内力消耗降低35点,\r\n\r\n三板斧伤害总百分比提高5%,\r\n\r\n梅花六出35%几率增加一击,\r\n\r\n\r\n','计出连环内力消耗降低70点,\r\n\r\n三板斧伤害总百分比提高10%,\r\n\r\n梅花六出70%几率增加一击,','计出连环内力消耗降低100点,\r\n\r\n三板斧伤害总百分比提高15%,\r\n\r\n梅花六出100%几率增加一击, 且无BUSY, CD 2秒,\r\n\r\n'),(6,'玉虚 - 太虚金仙','天龙破内力消耗降低35点,\r\n\r\n天龙破CD减少2秒,\r\n\r\n麟生雾彩35%概率增加一击,\r\n\r\n\r\n','天龙破内力消耗降低70点,\r\n\r\n天龙破CD减少4秒,\r\n\r\n麟生雾彩70%概率增加一击,','天龙破内力消耗降低100点,\r\n\r\n天龙破CD减少6秒,\r\n\r\n麟生雾彩100%概率增加一击, 且无BUSY, CD 2秒,'),(7,'普陀 - 佛济天下','大力降魔杵命中和伤害增加10%,\r\n\r\n火魂的附加伤害增加火云枪等级*2,\r\n\r\n慈光普渡35%概率增加额外一击,\r\n\r\n\r\n','大力降魔杵命中和伤害增加20%,\r\n\r\n火魂的附加伤害增加火云枪等级*4,\r\n\r\n慈光普渡70%概率增加额外两击,','大力降魔杵命中和伤害增加40%,\r\n\r\n火魂的附加伤害增加火云枪等级*8,\r\n\r\n慈光普渡100%概率增加额外三击,'),(8,'盘丝 - 来世今生','红颜白发内力消耗降低35点,\r\n\r\n天上人间同时增加伤害数值为银索金铃等级*2,\r\n\r\n青霞漫天35%概率增加一次剑鞘攻击,','红颜白发内力消耗降低70点,\r\n\r\n天上人间同时增加伤害数值为银索金铃等级*4,\r\n\r\n青霞漫天70%概率增加两次剑鞘攻击,','红颜白发内力消耗降低100点,\r\n\r\n天上人间同时增加伤害数值为银索金铃等级*8,\r\n\r\n青霞漫天100%概率增加三次剑鞘攻击,'),(9,'散仙 - 天外飞仙','图穷匕见内力消耗降低35点,\r\n\r\n匿石神通同时提高伤害数值为补天心法等级*2,\r\n\r\n名可名35%几率增加额外一击,\r\n\r\n\r\n','图穷匕见内力消耗降低70点,\r\n\r\n匿石神通同时提高伤害数值为补天心法等级*4,\r\n\r\n名可名70%几率增加额外一击,','图穷匕见内力消耗降低70点,\r\n\r\n匿石神通同时提高伤害数值为补天心法等级*4,\r\n\r\n名可名70%几率增加额外一击,'),(10,'蜀山 - 御剑相思','化功的效果提高35%,\r\n\r\n剑气CD减少1秒,\r\n\r\n相思三剑有35%几率增加一击,','化功的效果提高70%,\r\n\r\n剑气CD减少2秒,\r\n\r\n相思三剑有70%几率增加两击,','化功的效果提高100%,\r\n\r\n剑气CD减少3秒,\r\n\r\n相思三剑有100%几率增加三击，且无BUSY，CD2秒\r\n\r\n'),(11,'五庄 - 无限乾坤','剑掌内力消耗降低35,\r\n\r\n真气冲天同时提高伤害数值为镇元神功等级*2,\r\n\r\n流星有35%几率增加一击,','剑掌内力消耗降低70,\r\n\r\n真气冲天同时提高伤害数值为镇元神功等级*4,\r\n\r\n流星有70%几率增加两击,','剑掌内力消耗降低100,\r\n\r\n真气冲天同时提高伤害数值为镇元神功等级*8,\r\n\r\n流星有100%几率增加三击，且无BUSY，CD2秒'),(12,'无底洞 - 刀光剑影','无边地狱内力消耗降低35,\r\n\r\n追腥逐血效果触发时的攻击伤害额外增加数值七修剑等级*2,\r\n\r\n七剑35%几率固定出七剑,','无边地狱内力消耗降低70,\r\n\r\n追腥逐血效果触发时的攻击伤害额外增加数值七修剑等级*4,\r\n\r\n七剑70%几率固定出七剑,','无边地狱内力消耗降低100,\r\n\r\n追腥逐血效果触发时的攻击伤害额外增加数值七修剑等级*8,\r\n\r\n七剑100%几率固定出七剑, 且无BUSY, CD 2秒,\r\n\r\n'),(13,'地府 - 不坠轮回','六道轮回效果触发时伤害提高35%,\r\n\r\n妖鬼现形同时提高伤害数值为摄气诀等级*2,\r\n\r\n神人鬼35%概率增加一击,','六道轮回效果触发时伤害提高70%,\r\n\r\n妖鬼现形同时提高伤害数值为摄气诀等级*4,\r\n\r\n神人鬼70%概率增加一击,','六道轮回效果触发时伤害提高100%,\r\n\r\n妖鬼现形同时提高伤害数值为摄气诀等级*8,\r\n\r\n神人鬼100概率增加一击, 且无BUSY, CD 2秒,\r\n\r\n'),(14,'月宫 - 漫天飞雪','断发伤害提高35%,同时对气血造成同等伤害,\r\n\r\n舞雪同时提高伤害数值为冷月凝香舞等级*2,\r\n\r\n漫天飞雪35%几率额外增加一击,','断发伤害提高7%0,同时对气血造成同等伤害,\r\n\r\n舞雪同时提高伤害数值为冷月凝香舞等级*4,\r\n\r\n漫天飞雪70%几率额外增加一击,','断发伤害提高100%,同时对气血造成同等伤害,\r\n\r\n舞雪同时提高伤害数值为冷月凝香舞等级*8,\r\n\r\n漫天飞雪100%几率额外增加一击, CD减少1秒。');
/*!40000 ALTER TABLE `xyjsuit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-11 23:06:26
