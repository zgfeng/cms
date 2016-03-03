/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : cms

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2015-12-30 19:27:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cms_adver
-- ----------------------------
DROP TABLE IF EXISTS `cms_adver`;
CREATE TABLE `cms_adver` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//编号',
  `title` varchar(20) NOT NULL COMMENT '//标题',
  `thumbnail` varchar(100) NOT NULL COMMENT '//图片',
  `link` varchar(100) NOT NULL COMMENT '//链接',
  `info` varchar(200) NOT NULL COMMENT '//描述',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//类型',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否前台广告',
  `date` datetime NOT NULL COMMENT '//时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_adver
-- ----------------------------
INSERT INTO `cms_adver` VALUES ('13', '腾讯开始进军网游市场', '', 'http://www.qq.com', '腾讯开始进军网游市场', '1', '1', '2011-08-21 22:00:03');
INSERT INTO `cms_adver` VALUES ('14', '新浪微博开始大量招聘', '', 'http://www.weibo.com', '新浪微博开始大量招聘', '1', '1', '2011-08-21 22:00:37');
INSERT INTO `cms_adver` VALUES ('15', '瓢城Web俱乐部开始PHP教程', '', 'http://www.yc60.com', '瓢城Web俱乐部开始PHP教程', '1', '1', '2011-08-21 22:00:49');
INSERT INTO `cms_adver` VALUES ('16', '网易开始代理魔兽世界', '', 'http://www.163.com', '网易开始代理魔兽世界', '1', '1', '2011-08-21 22:01:04');
INSERT INTO `cms_adver` VALUES ('17', '水润BB霜，买一赠一', '/cms/uploads/20110821/20110821220119177.png', 'http://www.taobao.com', '水润BB霜，买一赠一', '2', '1', '2011-08-21 22:01:25');
INSERT INTO `cms_adver` VALUES ('18', '生活家买一送三', '/cms/uploads/20110821/20110821220130319.png', 'http://www.tmall.com', '生活家买一送三', '2', '1', '2011-08-21 22:01:43');
INSERT INTO `cms_adver` VALUES ('19', '暑假人气网游推荐', '/cms/uploads/20110821/20110821220150378.png', 'http://www.163.com', '暑假人气网游推荐', '2', '1', '2011-08-21 22:02:02');
INSERT INTO `cms_adver` VALUES ('20', '爱制造旗舰店', '/cms/uploads/20110821/20110821220209387.png', 'http://www.360.cn', '爱制造旗舰店', '3', '1', '2011-08-21 22:02:23');
INSERT INTO `cms_adver` VALUES ('21', 'M绅士全场3折', '/cms/uploads/20110821/20110821220231540.png', 'http://www.tmall.com', 'M绅士全场3折', '3', '1', '2011-08-21 22:02:44');
INSERT INTO `cms_adver` VALUES ('22', '车优惠伴我行', '/cms/uploads/20110821/20110821220251713.png', 'http://www.yc60.com', '车优惠伴我行', '3', '1', '2011-08-21 22:03:06');

-- ----------------------------
-- Table structure for cms_comment
-- ----------------------------
DROP TABLE IF EXISTS `cms_comment`;
CREATE TABLE `cms_comment` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//id',
  `user` varchar(20) NOT NULL COMMENT '//评论者',
  `content` varchar(255) NOT NULL COMMENT '//内容',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//状态',
  `manner` tinyint(1) NOT NULL COMMENT '//态度',
  `cid` mediumint(8) unsigned NOT NULL COMMENT '//文档id',
  `sustain` smallint(6) unsigned NOT NULL COMMENT '//支持率',
  `oppose` smallint(6) unsigned NOT NULL COMMENT '//反对率',
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_comment
-- ----------------------------
INSERT INTO `cms_comment` VALUES ('21', '游客', '我一个女性朋友，刚参加工作不久，为了买个苹果手机，现在弄的房租都交不起了，上海房租便宜的都是每人1000多一月，她找我来借钱，我就晕了，我跟她说了现在收入远跟不上支出，她依然盲目消费，典型的月光族，还要负债消费，值得这样吗？', '1', '0', '23', '0', '0', '2011-08-05 20:43:40');
INSERT INTO `cms_comment` VALUES ('22', '蜡笔小新', '不要四五千，不要两三千，只要999元！！！如果你在30分钟内打进电话的话，还可以免费获赠价值50万元的手机套一个！你还在犹豫什么！马上拿起电话吧！对不起，稍等一下，喂，杨总啊，什么！只剩下30部了！您听见了吧！订购异常火爆，买到等于赚到，抓紧时间订购吧！', '1', '1', '23', '11', '5', '2011-08-05 20:44:22');
INSERT INTO `cms_comment` VALUES ('23', '黑崎一护', '宝马奔驰只是税高而已，还有一点苹果手机全是国产组装，就在家门口做出来的手机却要花最贵去买这手机。', '1', '-1', '23', '2', '0', '2011-08-05 20:44:56');
INSERT INTO `cms_comment` VALUES ('24', '黑崎一护', '早应该退出了，推出时间太慢了，我98年有各人电脑，用金山10年后开始用360，因为360免费，方便。其实最好是别捆绑，但是给用户方便是最佳的，捆绑产品给我感觉不舒服，360现在捆绑了很多东西，不舒服。我要用什么产品，我要能自己做主，还要方便使用，我就用。', '1', '0', '23', '0', '0', '2011-08-05 20:45:25');
INSERT INTO `cms_comment` VALUES ('26', '游客', '我是做电脑IT的 客观来说360对于维护系统安全方面确实比别的软件做的很好 而且很贴切 非常多的功能 而且使用 （当然只是我的观点，因为很多人不懂的系统维护 但是360提供了免费而且安全的服务 我是表示欢迎的） 当然我也希望其他软件能借鉴360的模式 能够做得更好 我会试用看看的，希望良性竞争！', '1', '0', '23', '3', '1', '2011-08-05 20:47:45');
INSERT INTO `cms_comment` VALUES ('35', '游客', '我不是很看好这款平板电脑', '1', '0', '35', '0', '0', '2011-08-07 22:31:19');

-- ----------------------------
-- Table structure for cms_content
-- ----------------------------
DROP TABLE IF EXISTS `cms_content`;
CREATE TABLE `cms_content` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//编号',
  `title` varchar(50) NOT NULL COMMENT '//标题',
  `nav` mediumint(8) unsigned NOT NULL COMMENT '//栏目号',
  `attr` varchar(20) NOT NULL COMMENT '//属性',
  `tag` varchar(30) NOT NULL COMMENT '//标签',
  `keyword` varchar(30) NOT NULL COMMENT '//关键字',
  `thumbnail` varchar(100) NOT NULL COMMENT '//缩略图',
  `source` varchar(20) NOT NULL COMMENT '//文章来源',
  `author` varchar(10) NOT NULL COMMENT '//作者',
  `info` varchar(200) NOT NULL COMMENT '//简介',
  `content` text NOT NULL COMMENT '//详细内容',
  `commend` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否允许评论',
  `count` smallint(6) NOT NULL DEFAULT '0' COMMENT '//浏览次数',
  `gold` smallint(6) NOT NULL DEFAULT '0' COMMENT '//消费金币',
  `sort` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//排序',
  `readlimit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//阅读权限',
  `color` varchar(20) NOT NULL COMMENT '//颜色',
  `date` datetime NOT NULL COMMENT '//发布时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_content
-- ----------------------------
INSERT INTO `cms_content` VALUES ('39', '伦敦奥运倒计时一线品牌平板电脑推荐你准备怎么观看这届奥运呢', '27', '推荐', 'ThinkPad,平板电脑', 'MaxOs,两点,体验', '/cms/uploads/20110813/20110813133521604.jpg', '太平洋电脑网', 'admin', '还有一年的时间2012年伦敦奥运会就要开幕了，你准备怎么观看这届奥运呢?像以前一样老老实实坐在电视机或者电脑前面观看吗?还是为了随时得到赛况而紧盯那窄小的手机屏幕?', '<p>\r\n	<span style=\"font-size: 16px;\">　　NO!看奥运，绝对不能再这么憋屈下去了!小编现在就为您推荐几款观看奥运的新装备&mdash;&mdash;平板电脑，让你随时随地的自由观看高清奥运赛事，还不误事。有准备的朋友，赶紧看看吧!</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-size: 16px;\"><img alt=\"\" src=\"/cms/uploads/20110813/20110813133615223.jpg\" style=\"width: 500px; height: 375px;\" /></span></p>\r\n<p>\r\n	<span style=\"font-size: 16px;\"><strong>Acer ICONIA TAB A500<br />\r\n	推荐理由：10.1英寸大屏幕、在线看赛况、外接显示，多人分享</strong></span></p>\r\n<p>\r\n	<span style=\"font-size: 16px;\">　 　作为2012年伦敦奥运会的全球赞助商，宏碁推出的首款平板电脑Acer ICONIA TAB A500具备10.1英寸的大屏幕，让你看比赛也能身临其境。同时，A500还支持PPLive、搜狐高清等众多网络视频应用程序，可以让你随时随地看比 赛。另外，Acer A500所配备的HDMI接口还能支持其与投影机或者大屏幕高清电视相连，让你和朋友一起共享奥运精彩!</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<table align=\"center\" bgcolor=\"#000000\" cellspacing=\"1\" class=\"js3TB\" width=\"500\">\r\n	<tbody>\r\n		<tr>\r\n			<td bgcolor=\"#3367cd\" colspan=\"2\" height=\"30\">\r\n				<div align=\"center\">\r\n					<span style=\"font-size: 16px;\"><strong><a href=\"http://product.pconline.com.cn/\" target=\"_blank\"><span style=\"color: rgb(255, 255, 255);\">PConline产品库</span></a><span style=\"color: rgb(255, 255, 255);\">&mdash;&mdash;规格参数</span></strong></span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td bgcolor=\"#ffffff\" height=\"30\" width=\"93\">\r\n				<div align=\"center\">\r\n					<span style=\"font-size: 16px;\">品牌：</span></div>\r\n			</td>\r\n			<td bgcolor=\"#ffffff\" height=\"30\" width=\"354\">\r\n				<div align=\"center\">\r\n					<span style=\"font-size: 16px;\"><a href=\"http://product.pconline.com.cn/tabletpc/acer/\" target=\"_blank\">宏碁</a></span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td bgcolor=\"#f2f2f2\" height=\"30\" width=\"93\">\r\n				<div align=\"center\">\r\n					<span style=\"font-size: 16px;\">系列：</span></div>\r\n			</td>\r\n			<td bgcolor=\"#f2f2f2\" height=\"30\" width=\"354\">\r\n				<div align=\"center\">\r\n					<span style=\"font-size: 16px;\"><a href=\"http://product.pconline.com.cn/tabletpc/series/408691.html\" target=\"_blank\">宏碁 Iconia Tab A500</a></span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td bgcolor=\"#ffffff\" height=\"30\" width=\"93\">\r\n				<div align=\"center\">\r\n					<span style=\"font-size: 16px;\">型号：</span></div>\r\n			</td>\r\n			<td bgcolor=\"#ffffff\" height=\"30\" width=\"354\">\r\n				<div align=\"center\">\r\n					<span style=\"font-size: 16px;\">Iconia Tab A500</span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td bgcolor=\"#f2f2f2\" height=\"30\" width=\"93\">\r\n				<div align=\"center\">\r\n					<span style=\"font-size: 16px;\">处理器：</span></div>\r\n			</td>\r\n			<td bgcolor=\"#f2f2f2\" height=\"30\" width=\"354\">\r\n				<div align=\"center\">\r\n					<span style=\"font-size: 16px;\">Nvidia Tegra 2</span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td bgcolor=\"#ffffff\" height=\"30\" width=\"93\">\r\n				<div align=\"center\">\r\n					<span style=\"font-size: 16px;\">屏幕尺寸：</span></div>\r\n			</td>\r\n			<td bgcolor=\"#ffffff\" height=\"30\" width=\"354\">\r\n				<div align=\"center\">\r\n					<span style=\"font-size: 16px;\">10.1英寸</span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td bgcolor=\"#f2f2f2\" height=\"30\" width=\"93\">\r\n				<div align=\"center\">\r\n					<span style=\"font-size: 16px;\">USB：</span></div>\r\n			</td>\r\n			<td bgcolor=\"#f2f2f2\" height=\"30\" width=\"354\">\r\n				<div align=\"center\">\r\n					<span style=\"font-size: 16px;\">2个,USB2.0,1个mini USB接口</span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td bgcolor=\"#ffffff\" height=\"30\" width=\"93\">\r\n				<div align=\"center\">\r\n					<span style=\"font-size: 16px;\">其它接口：</span></div>\r\n			</td>\r\n			<td bgcolor=\"#ffffff\" height=\"30\" width=\"354\">\r\n				<div align=\"center\">\r\n					<span style=\"font-size: 16px;\">HDMI接口</span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td bgcolor=\"#f2f2f2\" height=\"30\" width=\"93\">\r\n				<div align=\"center\">\r\n					<span style=\"font-size: 16px;\">重量：</span></div>\r\n			</td>\r\n			<td bgcolor=\"#f2f2f2\" height=\"30\" width=\"354\">\r\n				<div align=\"center\">\r\n					<span style=\"font-size: 16px;\">约0.758Kg</span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td bgcolor=\"#ffffff\" height=\"30\" width=\"93\">\r\n				<div align=\"center\">\r\n					<span style=\"font-size: 16px;\">操作系统：</span></div>\r\n			</td>\r\n			<td bgcolor=\"#ffffff\" height=\"30\" width=\"354\">\r\n				<div align=\"center\">\r\n					<span style=\"font-size: 16px;\">Android 3.1</span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td bgcolor=\"#f2f2f2\" height=\"30\" width=\"93\">\r\n				<div align=\"center\">\r\n					<span style=\"font-size: 16px;\">IT商城：</span></div>\r\n			</td>\r\n			<td bgcolor=\"#f2f2f2\" height=\"30\" width=\"354\">\r\n				<div align=\"center\">\r\n					<span style=\"font-size: 16px;\"><a href=\"http://m.pconline.com.cn/searchProductResult.jsp?keyword=%E5%AE%8F%E7%A2%81%20Iconia%20Tab%20A500%20%283G/WiFi%29&amp;ad=3814\">网购实价</a></span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td bgcolor=\"#ffffff\" colspan=\"2\" height=\"30\">\r\n				<div align=\"left\">\r\n					<span style=\"font-size: 16px;\"><a href=\"http://product.pconline.com.cn/tabletpc/acer/464810.html\" target=\"_blank\"><strong>&nbsp;&nbsp;&gt;&gt;更多详细资料</strong></a>（<a href=\"http://product.pconline.com.cn/pdlib/464810_picture.html\" target=\"_blank\">图片</a>&nbsp;<a href=\"http://product.pconline.com.cn/tabletpc/acer/464810_price.html\" target=\"_blank\">报价</a>&nbsp;<a href=\"http://product.pconline.com.cn/tabletpc/acer/464810_detail.html\" target=\"_blank\">参数</a>&nbsp;<a href=\"http://product.pconline.com.cn/tabletpc/acer/464810_compare.html\" target=\"_blank\">比较</a>&nbsp;<a href=\"http://product.pconline.com.cn/tabletpc/acer/464810_comment.html\" target=\"_blank\">网友点评</a>&nbsp;<a href=\"http://product.pconline.com.cn/tabletpc/acer/464810_review.html\" target=\"_blank\">评测&middot;行情</a>）&nbsp;</span></div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style=\"font-size: 16px;\"><strong>苹果 IPAD 2<br />\r\n	推荐理由：待机时间超长，丰富应用能提供更多奥运类游戏</strong></span></p>\r\n<p>\r\n	<span style=\"font-size: 16px;\">　　<a class=\"cmsLink\" href=\"http://product.pconline.com.cn/tabletpc/apple/442480.html\" target=\"_blank\">iPad2</a>自 然不会缺席奥运盛会。苹果虽然屏幕只有9.7英寸，但是胜在待机时间超长，据测算可在视频状态下待机可超过8小时，很适合长时间看比赛，比如网球比赛。但 如果你想跟别人一起分享，那恐怕就要付出更多的金钱(配件忒贵)和时间的代价了。但苹果毕竟是苹果，丰富的游戏可以弥补上苹果的劣势，你完全下载GT Racing(赛车)、SnoShredHD(真实滑雪)、Real Tennis HD(真实网球)等游戏，以与赛场上的运动员一起拼搏。</span></p>\r\n', '1', '131', '0', '0', '0', '', '2011-08-13 13:36:21');
INSERT INTO `cms_content` VALUES ('35', 'ThinkPad平板电脑 配“小红帽”传统键盘', '26', '头条,推荐', 'ThinkPad,平板电脑', 'IBM,商务', '/cms/uploads/20110724/20110724144123945.jpg', '太平洋电脑网', 'admin', '等了这么久，终于等来ThinkPad的平板电脑了，这使得最早拥有“Pad”名号的ThinkPad有种实至名归的感觉。目前这款平板在国内还没有发布，我们只能先根据图像先来感性的看一下ThinkPad平板的真面目了。', '<p>\r\n	<span style=\"font-size: 14px;\">　　<strong>【PConline 资讯】</strong>等了这么久，终于等来ThinkPad的平板电脑了，这使得最早拥有&ldquo;Pad&rdquo;名号的ThinkPad有种实至名归的感觉。目前这款平板在国内还没有发布，我们只能先根据图像先来感性的看一下ThinkPad平板的真面目了。</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-size: 14px;\"><img alt=\"\" src=\"/cms/uploads/20110724/20110724144147683.jpg\" style=\"width: 500px; height: 559px;\" /></span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style=\"font-size: 14px;\">经典的黑色设计，商务感浓厚</span></p>\r\n<p>\r\n	<span style=\"font-size: 14px;\">　　这款ThinkPad平板电脑依旧符合 Think的商务传统，背面依旧是ABS工程塑料材质，周身以经典的黑色打造，&ldquo;ThinkPad&rdquo;标记在机身一角十分显眼。这款平板采用10.1英寸的 显示屏，支持多点触控，屏幕下方左右两角分别印有lenovo和ThinkPad标志，屏幕正下方是四个导航键。</span></p>\r\n', '1', '1123', '0', '0', '0', '', '2011-08-05 14:42:14');
INSERT INTO `cms_content` VALUES ('26', '设计时尚高效处理 欧恩N5双核平板电脑', '26', '推荐,头条', '平板电脑,双核', '平板电脑,欧恩N5,双核', '/cms/uploads/20110719/20110719212914256.jpg', '太平洋电脑网', 'admin', '欧恩N5是一款任务处理速度极快的A9双核平板电脑，其影像读取速度是普通平板电脑的1倍左右，并可通过内置的“欧翔引擎”，达到普通设备1.5-2倍的读取播放速度。', '<p>\r\n	　　欧恩N5是一款任务处理速度极快的A9双核<a class=\"cmsLink\" href=\"http://product.pconline.com.cn/tabletpc/\" target=\"_blank\">平板电脑</a>，其影像读取速度是普通平板电脑的1倍左右，并可通过内置的&ldquo;欧翔引擎&rdquo;，达到普通设备1.5-2倍的读取播放速度。此外，该产品内置WIFI和蓝牙两种无线信号传输模式，并支持外接<a class=\"cmsLink\" href=\"http://tele.pconline.com.cn/td/card/\" target=\"_blank\">3G上网卡</a>，获取最佳信号接收，亦可通过所处环境选择上网模式，便于携带，更有利于节省用户上网<a class=\"cmsLink\" href=\"http://tele.pconline.com.cn/3gcost/\" target=\"_blank\">资费</a>。其内置TD800语音视频通话技术和200W像素前置摄像头，支持多种形式的网络视频通话。近日小编了解到这款平板电脑上市价为1980元，性价比十足，有兴趣的朋友不妨多关注一下。</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/cms/uploads/20110719/20110719213005943.jpg\" style=\"width: 500px; height: 283px;\" /></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	　　欧恩N5是一款任务处理速度极快的平板电脑，外观设计时尚，适用于企业精英白领及节日送礼用户。其采用欧恩独有的&ldquo;欧翔引擎&rdquo;技术，内置高速 Flash，使其具备了超越普通平板电脑的超快程序处理速度。同时，采用TD800视频通话技术，可以享受稳定流畅的视频通话，使朋友、同事间的交流更加 畅通。</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/cms/uploads/20110719/20110719213014750.jpg\" style=\"width: 500px; height: 247px;\" /></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	　　视频、<a class=\"cmsLink\" href=\"http://www.pcgames.com.cn/\" target=\"_blank\">游戏</a>、 显示预览是欧恩N5最突出的特点。在音视频解码播放方面，欧恩N5可以支持全格式1080p高清视频音频的解码播放。对高清画面的还原效果十分真实，电影 场景的层次感也得到了释放，使平板电脑播放的影片更加富有张力，无限接近影院效果。而且欧恩N5还能通过对屏幕光线的自动调节，减轻使用过程中屏幕对用户 眼睛的刺激，从而缓解长时间使用平板电脑出现的用眼疲劳现象。</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	　　在显示预览方面，采用Android 2.2系统的欧恩N5已经能够支持Flash 10.1动态画面播放。动态画面的显示更加流畅，残影、卡帧等现象在测试过程中已经达到了&ldquo;0&rdquo;出现率。并且，在浏览在线视频时，欧恩N5可通过对机器软 硬件的自动微调节，来达到使在线视频加载加速的目的，播放在线视频更加流畅。</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/cms/uploads/20110719/20110719213038226.jpg\" style=\"width: 500px; height: 322px;\" /></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	　　在3D游戏效果方面，欧恩N5拥有超灵敏的G重力感应能力，对竞速类游戏的方向操控更加准确灵敏；还集成了为解决传统图像处理过程中进行浮点运 算和多媒体应用程序的瓶颈问题而研究开发的一套全新的指令集，使N5的三维游戏图像生成速度更快、性能更高、视觉效果更逼真、更富娱乐性。</p>\r\n<p>\r\n	　　编辑点评：欧恩N5内置&ldquo;欧翔引擎&rdquo;，采用高速Flash，出色的性能表现受到业界众多专业人士的称赞，作为市面上颇受消费者关注的产品之一，现在官方上市价定为1980元，性价比很高，感兴趣的朋友不妨和欧恩的代理商家进行联系。</p>\r\n', '1', '166', '0', '0', '0', '', '2011-08-04 21:30:49');
INSERT INTO `cms_content` VALUES ('24', '摩托XOOM2曝光 新XOOM将支持更高分辨率 ', '29', '推荐,头条', '平板电脑,XOOM', '摩托XOOM2,高分辨率', '/cms/uploads/20110719/20110719212521748.jpg', '太平洋电脑网', 'admin', '今年年初，摩托罗拉推出的第一款搭载蜂巢系统的平板电脑XOOM在平板市场投放了一枚重磅炸弹，但可惜的是这款XOOM并不能算作出色的平板电脑。好在摩托并没有作罢，XOOM还没坐热市场，关于它的继任者XOOM 2的传闻已经风生水起了。上周在FCC上，摩托罗拉再次展现了一款配备LTE技术的平板电脑，关于XOOM 2的更多传闻浮出水面。', '<p>\r\n	　　<strong>【PConline 资讯】</strong>今年年初，摩托罗拉推出的第一款搭载蜂巢系统的平板电脑XOOM在平板市场投放了一枚 重磅炸弹，但可惜的是这款XOOM并不能算作出色的平板电脑。好在摩托并没有作罢，XOOM还没坐热市场，关于它的继任者XOOM 2的传闻已经风生水起了。上周在FCC上，摩托罗拉再次展现了一款配备LTE技术的平板电脑，关于XOOM 2的更多传闻浮出水面。</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/cms/uploads/20110719/20110719212552606.jpg\" style=\"width: 500px; height: 375px;\" /></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	　　根据Fudzilla.com的报道，摩托罗拉目前已经开始研发新一代的平板电脑，而且可能已经生产出了数位板的原型。据了解，这款新品将采用拥有 2048x1536分辨率的4：3比例的显示屏，另外，消息显示这款平板电脑明显比XOOM更薄，并会搭载安卓 Ice Cream Sandwich 系统，配备最新的英伟达Kal-El Tegra 3处理器。</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/cms/uploads/20110719/20110719212611564.jpg\" style=\"width: 500px; height: 333px;\" /></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	　　摩托罗拉的第一款平板电脑的抢先上市并没有使XOOM击败iPad2，反而为后来居上的其他竞争对手铺平了道路。心急的摩托这次不知道会不会重蹈XOOM的覆辙，但唯一肯定的是今年年底摩托罗拉的新品将会露出庐山真面目。</p>\r\n', '1', '147', '0', '0', '0', '', '2011-08-03 21:26:21');
INSERT INTO `cms_content` VALUES ('25', '宏碁10寸平板销量跃居第二 权威调研机构DisplaySearch的报告显示 仅次于苹果 ', '26', '推荐,头条', '平板电脑', '宏基,10寸,平板电脑', '/cms/uploads/20110719/20110719212740635.jpg', '太平洋电脑网', 'admin', '近日，权威调研机构DisplaySearch的报告显示，宏碁推出的10.1英寸平板电脑ICONIA TAB A500在全球的出货量已达80万台，居全球10英寸平板电脑市场第二位，仅次于苹果旗下的iPad。', '<p>\r\n	<span style=\"font-size: 16px;\">　　<strong>【PConline 资讯】</strong>近日，权威调研机构DisplaySearch的报告显示，宏碁推出的10.1英寸平板电脑ICONIA TAB A500在全球的出货量已达80万台，居全球10英寸平板电脑市场第二位，仅次于苹果旗下的iPad。</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-size: 16px;\"><img alt=\"\" src=\"/cms/uploads/20110719/20110719212802847.jpg\" style=\"width: 500px; height: 333px;\" /></span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style=\"font-size: 16px;\">　　对于宏碁在10英寸平板市场上的表现，华尔街日报曾撰文称，宏碁推出的ICONIA TAB A500是消费者寻找iPad替代品的最佳选择。&ldquo;2011年安卓软件商将会推出更多应用软件，使用者不妨购入一台。&rdquo;而本次调查公司Display Search还在报告中指出，&ldquo;由于配备了HDMI和USB接口以及闪存卡插槽，宏碁ICONIA TAB A500平板电脑在易用度上提升很多。&rdquo;</span></p>\r\n<p>\r\n	<span style=\"font-size: 16px;\">　 　A500采用了目前Android平板的主流配置，即Android 3.0+NVIDIA Tegra 2 处理器。这样的配置能够将Android在显示分辨率方面的提升良好的展现出来，也能让多任务处理等功能运行更加流畅，在网页浏览和娱乐游戏方面的体验可 谓不俗。而最新升级成Android 3.1之后，USB连结性得到进一步提高，与家庭其它IT产品的互联易用实现了更大拓展，这也是一个系统逐步走向成熟的体现。</span></p>\r\n<p>\r\n	<span style=\"font-size: 16px;\">　　此 前，Acer宏碁并没有推出任何Android2.X系统的产品，而是一步到位地推出10英寸的Android3.0平板电脑(目前已升级到 Andoid3.1)。得益于可靠的产品质量、积极的价格策略以及高效的渠道管理，A500能够快速得到消费者认可也是情理之中。这种情况与宏碁在上网本 市场上的表现如出一辙。虽然就目前行业发展态势来看，苹果的优势依然稳固，但以Acer为首的Android平板阵营也正在不断的积攒实力，并不断缩小与 苹果之间的差距。</span></p>\r\n', '1', '246', '0', '0', '0', '', '2011-08-02 21:28:14');
INSERT INTO `cms_content` VALUES ('23', '苹果或增1家iPad生产商 确保年内推出iPad3', '27', '头条,推荐,加粗', 'ipad3,平板电脑,苹果', '推出ipad3,增加生产商,苹果', '/cms/uploads/20110719/20110719212422412.jpg', '太平洋电脑网', 'admin', '据国外媒体报道，某台湾业内人士透露，苹果可能会在今年秋季新增一家iPad生产商，现在它的iPad生产商只有富士康一家。据说苹果这么做是为了确保生产出足够数量的第三代iPad，以保证在年内推出第三代iPad。富士康的工厂在5月份发生了爆炸事故，造成了3死15伤的悲剧。为了将生产风险降到最低程度，苹果很可能会再找一家iPad代工厂商。', '<p>\r\n	<span style=\"font-size: 16px;\"><strong>　　【PConline 新闻】</strong>据国外媒体报道，某台湾业内人士透露，苹果可能会在今年秋季新增一家iPad生产商， 现在它的iPad生产商只有富士康一家。据说苹果这么做是为了确保生产出足够数量的第三代iPad，以保证在年内推出第三代iPad。富士康的工厂在5月 份发生了爆炸事故，造成了3死15伤的悲剧。为了将生产风险降到最低程度，苹果很可能会再找一家iPad代工厂商。</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-size: 16px;\"><img alt=\"\" src=\"/cms/uploads/20110719/20110719212355737.jpg\" style=\"width: 500px; height: 375px;\" /></span></p>\r\n<p>\r\n	<span style=\"font-size: 16px;\">　　据知情人士透露，最有可能拿到iPad3订单的是广达电脑和和硕联合，而且和硕联合的中标率可能更高一些，因为有消息称它已经接到了苹果iPhone 5的订单。</span></p>\r\n<p>\r\n	<span style=\"font-size: 16px;\">　　虽然苹果即将推出的新款iPad很可能是iPad3，但有消息称新款平板电脑并不会替代iPad2，而是扩大苹果的产品库。上周有消息称，新款iPad的显示屏分辨率将达到2048*1536，因此也有人将这款产品称作是&ldquo;iPad HD&rdquo;。</span></p>\r\n<p>\r\n	<span style=\"font-size: 16px;\">　　另外，上周也有报道将新款平板电脑称作是&ldquo;iPad 2+&rdquo;，据说有些海外组件厂商已经接到了苹果发出的高端iPad的询价单。</span></p>\r\n<p>\r\n	<span style=\"font-size: 16px;\">　　台湾业内人士称，新款iPad将在今年第三季度末或第四季度初的时候发布。预计第三季度所有版本的iPad的总销量将达1300万台。</span></p>\r\n', '1', '1204', '0', '1', '0', 'red', '2011-08-01 21:24:24');

-- ----------------------------
-- Table structure for cms_level
-- ----------------------------
DROP TABLE IF EXISTS `cms_level`;
CREATE TABLE `cms_level` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//编号',
  `level_name` varchar(20) NOT NULL COMMENT '//等级名称',
  `level_info` varchar(200) NOT NULL COMMENT '//等级说明',
  `premission` varchar(100) NOT NULL COMMENT '//权限',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_level
-- ----------------------------
INSERT INTO `cms_level` VALUES ('1', '普通管理员', '除了不能操作别的管理员，其他任何后台功能都可以操作。', '');
INSERT INTO `cms_level` VALUES ('2', '超级管理员', '最大的权限，如果只有一个超级管理员的时候，不能删除自己。', '1,2,3,4,5,6,7,8,9,10,11,12,13,14');
INSERT INTO `cms_level` VALUES ('3', '发帖专员', '可以发表文章及修改和删除文章的权限。', '');
INSERT INTO `cms_level` VALUES ('21', '评论专员', '用于操作用户评论的权限~', '1,8');
INSERT INTO `cms_level` VALUES ('5', '会员专员', '只有管理会员的权限，包括新增、删除、修改和查询。', '');
INSERT INTO `cms_level` VALUES ('13', '后台游客', '只能访问后台的权限！', '1');

-- ----------------------------
-- Table structure for cms_link
-- ----------------------------
DROP TABLE IF EXISTS `cms_link`;
CREATE TABLE `cms_link` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//编号',
  `webname` varchar(20) NOT NULL COMMENT '//网站名称',
  `weburl` varchar(100) NOT NULL COMMENT '//网站地址',
  `logourl` varchar(100) NOT NULL COMMENT '//logo地址',
  `user` varchar(20) NOT NULL COMMENT '//站长名',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//类型',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//状态',
  `date` datetime NOT NULL COMMENT '//时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_link
-- ----------------------------
INSERT INTO `cms_link` VALUES ('1', '网易新闻', 'http://news.163.com', '', '丁磊', '1', '1', '2011-09-01 16:51:57');
INSERT INTO `cms_link` VALUES ('2', '优酷视频', 'http://www.youku.com', 'images/youku.png', '古永锵', '2', '1', '2011-09-01 16:52:48');
INSERT INTO `cms_link` VALUES ('3', '百度搜索', 'http://www.baidu.com', '', '李彦宏', '1', '1', '2011-09-01 21:20:58');
INSERT INTO `cms_link` VALUES ('6', '网易', 'http://www.163.com', 'images/163.png', '丁磊', '2', '1', '2011-09-02 13:33:16');

-- ----------------------------
-- Table structure for cms_manage
-- ----------------------------
DROP TABLE IF EXISTS `cms_manage`;
CREATE TABLE `cms_manage` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//编号',
  `admin_user` varchar(20) NOT NULL COMMENT '//管理员账号',
  `admin_pass` char(40) NOT NULL COMMENT '//管理员密码',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '//管理员等级',
  `login_count` smallint(5) NOT NULL DEFAULT '0' COMMENT '//登录次数',
  `last_ip` varchar(20) NOT NULL DEFAULT '000.000.000.000' COMMENT '//最后一次IP',
  `last_time` datetime NOT NULL COMMENT '//最后一次登录时间',
  `reg_time` datetime NOT NULL COMMENT '//注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_manage
-- ----------------------------
INSERT INTO `cms_manage` VALUES ('2', '李炎恢', '7c4a8d09ca3762af61e59520943dc26494f8941b', '5', '3', '127.0.0.1', '2011-06-20 11:16:40', '2011-05-18 19:09:52');
INSERT INTO `cms_manage` VALUES ('3', '我叫MT', '7c4a8d09ca3762af61e59520943dc26494f8941b', '1', '0', '000.000.000.000', '0000-00-00 00:00:00', '2011-05-18 19:10:07');
INSERT INTO `cms_manage` VALUES ('4', '樱木花道', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2', '0', '000.000.000.000', '0000-00-00 00:00:00', '2011-05-19 17:04:41');
INSERT INTO `cms_manage` VALUES ('5', '赤木晴子', '7c4a8d09ca3762af61e59520943dc26494f8941b', '13', '3', '127.0.0.1', '2011-09-10 22:41:38', '2011-05-19 17:04:57');
INSERT INTO `cms_manage` VALUES ('6', '樱桃小丸子', '7c4a8d09ca3762af61e59520943dc26494f8941b', '21', '1', '127.0.0.1', '2011-09-10 22:47:54', '2011-05-20 15:50:08');
INSERT INTO `cms_manage` VALUES ('56', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2', '145', '127.0.0.1', '2015-12-30 19:07:04', '2011-06-20 11:17:03');
INSERT INTO `cms_manage` VALUES ('8', '流川枫', '7c4a8d09ca3762af61e59520943dc26494f8941b', '1', '0', '000.000.000.000', '0000-00-00 00:00:00', '2011-05-20 15:52:06');
INSERT INTO `cms_manage` VALUES ('53', '蜡笔小新', '7c4a8d09ca3762af61e59520943dc26494f8941b', '1', '0', '000.000.000.000', '0000-00-00 00:00:00', '2011-06-18 21:12:42');

-- ----------------------------
-- Table structure for cms_nav
-- ----------------------------
DROP TABLE IF EXISTS `cms_nav`;
CREATE TABLE `cms_nav` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//编号',
  `nav_name` varchar(20) NOT NULL COMMENT '//导航名',
  `nav_info` varchar(200) NOT NULL COMMENT '//导航说明',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '//子分类',
  `sort` mediumint(8) unsigned NOT NULL COMMENT '//排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_nav
-- ----------------------------
INSERT INTO `cms_nav` VALUES ('1', '军事动态', '主要是军事方面的新闻。', '0', '1');
INSERT INTO `cms_nav` VALUES ('2', '八卦娱乐', '娱乐界的狗仔新闻集。', '0', '2');
INSERT INTO `cms_nav` VALUES ('3', '时尚女人', '关于时尚和女人方面的信息。', '0', '3');
INSERT INTO `cms_nav` VALUES ('4', '科技频道', '关于科技方面的资讯。', '0', '4');
INSERT INTO `cms_nav` VALUES ('5', '智能手机', '关于智能手机方面的推荐。', '0', '5');
INSERT INTO `cms_nav` VALUES ('7', '美容护肤', '关于美容方面的信息。', '0', '7');
INSERT INTO `cms_nav` VALUES ('8', '热门汽车', '关于汽车方面的信息。', '0', '8');
INSERT INTO `cms_nav` VALUES ('9', '房产家居', '关于房产家居的信息。', '0', '9');
INSERT INTO `cms_nav` VALUES ('10', '读书教育', '关于教育方面的信息。', '0', '10');
INSERT INTO `cms_nav` VALUES ('11', '股票基金', '关于股票基金的信息。', '0', '11');
INSERT INTO `cms_nav` VALUES ('26', '中国军事', '关于中国军事的信息。', '1', '3');
INSERT INTO `cms_nav` VALUES ('27', '美国军事', '关于美国军事的信息。', '1', '1');
INSERT INTO `cms_nav` VALUES ('29', '日本军事', '关于日本军事方面的信息。', '1', '2');
INSERT INTO `cms_nav` VALUES ('30', '韩国军事', '关于韩国军事的信息。', '1', '4');
INSERT INTO `cms_nav` VALUES ('32', '朝鲜军事', '关于朝鲜军事的信息。', '1', '5');
INSERT INTO `cms_nav` VALUES ('33', '越南军事', '关于越南军事的信息。', '1', '6');

-- ----------------------------
-- Table structure for cms_premission
-- ----------------------------
DROP TABLE IF EXISTS `cms_premission`;
CREATE TABLE `cms_premission` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//编号，标识',
  `name` varchar(100) NOT NULL COMMENT '//权限名称',
  `info` varchar(200) NOT NULL COMMENT '//权限描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_premission
-- ----------------------------
INSERT INTO `cms_premission` VALUES ('1', '后台登录', '后台登录');
INSERT INTO `cms_premission` VALUES ('2', '清理缓存', '清理缓存');
INSERT INTO `cms_premission` VALUES ('3', '管理员管理', '管理员管理');
INSERT INTO `cms_premission` VALUES ('4', '等级管理', '等级管理');
INSERT INTO `cms_premission` VALUES ('5', '权限设定', '权限设定');
INSERT INTO `cms_premission` VALUES ('6', '网站导航', '网站导航');
INSERT INTO `cms_premission` VALUES ('7', '文档操作', '文档操作');
INSERT INTO `cms_premission` VALUES ('8', '评论审核', '评论审核');
INSERT INTO `cms_premission` VALUES ('9', '轮播器管理', '轮播器管理');
INSERT INTO `cms_premission` VALUES ('10', '广告管理', '广告管理');
INSERT INTO `cms_premission` VALUES ('11', '投票管理', '投票管理');
INSERT INTO `cms_premission` VALUES ('12', '审核友情链接', '审核友情链接');
INSERT INTO `cms_premission` VALUES ('13', '会员管理', '会员管理');
INSERT INTO `cms_premission` VALUES ('14', '系统配置管理', '系统配置管理');

-- ----------------------------
-- Table structure for cms_rotatain
-- ----------------------------
DROP TABLE IF EXISTS `cms_rotatain`;
CREATE TABLE `cms_rotatain` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//编号',
  `thumbnail` varchar(100) NOT NULL COMMENT '//图片',
  `title` varchar(20) NOT NULL COMMENT '//标题',
  `info` varchar(200) NOT NULL COMMENT '//简介',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否在前台轮播',
  `link` varchar(100) NOT NULL COMMENT '//地址',
  `date` datetime NOT NULL COMMENT '//时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_rotatain
-- ----------------------------
INSERT INTO `cms_rotatain` VALUES ('2', '/cms/uploads/20110818/20110818140206474.png', '苹果或增1家iPad生产商 确保年内推出', '据国外媒体报道，某台湾业内人士透露，苹果可能会在今年秋季新增一家iPad生产商，现在它的iPad生产商只有富士康一家。据说苹果这么做是为了确保生产出足够数量的第三代iPad，以保证在年内推出第三代iPad。富士康的工厂在5月份发生了爆炸事故，造成了3死15伤的悲剧。为了将生产风险降到最低程度，苹果很可能会再找一家iPad代工厂商。', '0', '/cms/details.php?id=23', '2011-08-18 14:02:10');
INSERT INTO `cms_rotatain` VALUES ('3', '/cms/uploads/20110818/20110818140234683.png', '宏碁10寸平板销量跃居第二 权威调研机构', '近日，权威调研机构DisplaySearch的报告显示，宏碁推出的10.1英寸平板电脑ICONIA TAB A500在全球的出货量已达80万台，居全球10英寸平板电脑市场第二位，仅次于苹果旗下的iPad。', '1', '/cms/details.php?id=25', '2011-08-18 14:02:58');
INSERT INTO `cms_rotatain` VALUES ('4', '/cms/uploads/20110818/20110818140323167.png', '摩托XOOM2曝光 新XOOM将支持更高', '今年年初，摩托罗拉推出的第一款搭载蜂巢系统的平板电脑XOOM在平板市场投放了一枚重磅炸弹，但可惜的是这款XOOM并不能算作出色的平板电脑。好在摩托并没有作罢，XOOM还没坐热市场，关于它的继任者XOOM 2的传闻已经风生水起了。上周在FCC上，摩托罗拉再次展现了一款配备LTE技术的平板电脑，关于XOOM 2的更多传闻浮出水面。', '1', '/cms/details.php?id=24', '2011-08-18 14:03:29');
INSERT INTO `cms_rotatain` VALUES ('5', '/cms/uploads/20110818/20110818140355541.png', '设计时尚高效处理 欧恩N5双核平板电脑', '欧恩N5是一款任务处理速度极快的A9双核平板电脑，其影像读取速度是普通平板电脑的1倍左右，并可通过内置的“欧翔引擎”，达到普通设备1.5-2倍的读取播放速度。', '1', '/cms/details.php?id=26', '2011-08-18 14:04:03');

-- ----------------------------
-- Table structure for cms_system
-- ----------------------------
DROP TABLE IF EXISTS `cms_system`;
CREATE TABLE `cms_system` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//编号',
  `webname` varchar(100) NOT NULL COMMENT '//网站名称',
  `page_size` tinyint(2) NOT NULL COMMENT '//普通分页条数',
  `article_size` tinyint(2) NOT NULL COMMENT '//文章分页的条数',
  `nav_size` tinyint(2) NOT NULL COMMENT '//主导航前台显示的个数',
  `updir` varchar(100) NOT NULL COMMENT '//上传的主目录',
  `ro_time` tinyint(2) NOT NULL COMMENT '//轮播器的速度',
  `ro_num` tinyint(2) NOT NULL COMMENT '//轮播器的个数',
  `adver_text_num` tinyint(2) NOT NULL COMMENT '//文字广告的个数',
  `adver_pic_num` tinyint(2) NOT NULL COMMENT '//图片广告的个数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_system
-- ----------------------------
INSERT INTO `cms_system` VALUES ('1', '瓢城Web俱乐部', '0', '8', '10', '/uploads/', '3', '3', '5', '3');

-- ----------------------------
-- Table structure for cms_tag
-- ----------------------------
DROP TABLE IF EXISTS `cms_tag`;
CREATE TABLE `cms_tag` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//编号',
  `tagname` varchar(20) NOT NULL COMMENT '//标签名',
  `count` smallint(6) unsigned NOT NULL DEFAULT '1' COMMENT '//访问次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_tag
-- ----------------------------
INSERT INTO `cms_tag` VALUES ('3', '平板电脑', '22');
INSERT INTO `cms_tag` VALUES ('4', 'ThinkPad', '16');
INSERT INTO `cms_tag` VALUES ('5', '双核', '7');
INSERT INTO `cms_tag` VALUES ('6', 'XOOM', '10');
INSERT INTO `cms_tag` VALUES ('7', 'ipad3', '6');
INSERT INTO `cms_tag` VALUES ('8', '苹果', '1');
INSERT INTO `cms_tag` VALUES ('9', 'ƽ', '1');
INSERT INTO `cms_tag` VALUES ('10', 'ipd3 ', '1');
INSERT INTO `cms_tag` VALUES ('11', 'ipd3', '1');
INSERT INTO `cms_tag` VALUES ('12', 'Wi-Fi的间谍飞机', '14');
INSERT INTO `cms_tag` VALUES ('13', 'Wi-Fi的间谍飞机\\', '1');
INSERT INTO `cms_tag` VALUES ('14', 'ƽ', '1');
INSERT INTO `cms_tag` VALUES ('15', 'Wi-Fi', '1');
INSERT INTO `cms_tag` VALUES ('16', '%E5%B9%B3%E6%9D%BF%E', '1');
INSERT INTO `cms_tag` VALUES ('17', 'Wi-Fi%E7%9A%84%E9%97', '1');
INSERT INTO `cms_tag` VALUES ('18', 'Wi-Fi%E7%9A%84%E9%97', '1');
INSERT INTO `cms_tag` VALUES ('19', '%E5%B9%B3%E6%9D%BF%E', '1');
INSERT INTO `cms_tag` VALUES ('20', 'i%B7%FE', '2');
INSERT INTO `cms_tag` VALUES ('21', 'iove%B7%FE', '2');
INSERT INTO `cms_tag` VALUES ('22', 'iove', '2');
INSERT INTO `cms_tag` VALUES ('23', 'iove%E6%9C%8D', '1');
INSERT INTO `cms_tag` VALUES ('24', 'iove', '1');
INSERT INTO `cms_tag` VALUES ('25', 'iove', '1');
INSERT INTO `cms_tag` VALUES ('26', 'i', '1');
INSERT INTO `cms_tag` VALUES ('27', 'i', '1');
INSERT INTO `cms_tag` VALUES ('28', 'iove', '1');
INSERT INTO `cms_tag` VALUES ('29', 'iove', '1');
INSERT INTO `cms_tag` VALUES ('30', 'iove', '1');
INSERT INTO `cms_tag` VALUES ('31', 'iove', '1');
INSERT INTO `cms_tag` VALUES ('32', 'iove', '1');
INSERT INTO `cms_tag` VALUES ('33', 'Wi-Fi', '1');
INSERT INTO `cms_tag` VALUES ('34', 'i', '1');
INSERT INTO `cms_tag` VALUES ('35', 'i', '1');
INSERT INTO `cms_tag` VALUES ('36', 'i', '1');

-- ----------------------------
-- Table structure for cms_user
-- ----------------------------
DROP TABLE IF EXISTS `cms_user`;
CREATE TABLE `cms_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//id',
  `user` varchar(20) NOT NULL COMMENT '//用户名',
  `pass` char(40) NOT NULL COMMENT '//密码',
  `email` varchar(30) NOT NULL COMMENT '//电子邮件',
  `face` varchar(10) NOT NULL COMMENT '//头像',
  `question` varchar(20) NOT NULL COMMENT '//提问',
  `answer` varchar(20) NOT NULL COMMENT '//回答',
  `state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//会员状态',
  `time` char(10) NOT NULL COMMENT '//最近登录的时间戳',
  `date` datetime NOT NULL COMMENT '//注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_user
-- ----------------------------
INSERT INTO `cms_user` VALUES ('3', '蜡笔小新', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'labixiaoxin@sina.com.cn', '17.gif', '您母亲的职业？', '家庭主妇', '1', '1451461034', '2011-07-28 18:02:43');
INSERT INTO `cms_user` VALUES ('11', '黑崎一护', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'heiqiyihu@sina.com.cn', '08.gif', '您父亲的姓名？', '同行', '1', '1312548280', '2011-07-29 11:14:39');
INSERT INTO `cms_user` VALUES ('10', '樱桃小丸子', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'xiaowanzi@sina.com.cn', '22.gif', '您配偶的性别？', '没有啦', '1', '1312727496', '2011-07-29 10:28:20');
INSERT INTO `cms_user` VALUES ('19', '葫芦娃', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'huluwa@sina.com.cn', '11.gif', '您父亲的姓名？', '密码', '1', '1312522684', '2011-07-29 18:37:23');
INSERT INTO `cms_user` VALUES ('20', '变形金刚', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'bxjg@sina.com.cn', '09.gif', '您母亲的职业？', '同行', '1', '1312522576', '2011-07-29 18:39:06');
INSERT INTO `cms_user` VALUES ('21', '路飞', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'lufei@sina.com.cn', '03.gif', '您父亲的姓名？', '路飞飞', '1', '', '2011-07-30 20:03:07');
INSERT INTO `cms_user` VALUES ('22', '奈美', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'namei@sina.com.cn', '13.gif', '您母亲的职业？', '同行', '1', '1312521114', '2011-07-31 13:30:52');
INSERT INTO `cms_user` VALUES ('24', '圣斗士星矢', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'shengdoushixingshi@sina.com.cn', '14.gif', '您父亲的姓名？', '不知打', '1', '', '2011-08-02 14:45:29');
INSERT INTO `cms_user` VALUES ('27', '小叮当', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'xiaodingdang@sina.com', '20.gif', '您母亲的职业？', '大叮当', '1', '1312520726', '2011-08-03 11:16:33');
INSERT INTO `cms_user` VALUES ('28', '紫龙', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'zilong@sina.com.cn', '23.gif', '您配偶的性别？', '女', '4', '', '2011-08-04 11:46:35');
INSERT INTO `cms_user` VALUES ('29', '冰河', 'dd5fef9c1c1da1394d6d34b248c51be2ad740840', '111@sina.com.cn', '03.gif', '您配偶的性别？', '难', '5', '1312429682', '2011-08-04 11:48:02');

-- ----------------------------
-- Table structure for cms_vote
-- ----------------------------
DROP TABLE IF EXISTS `cms_vote`;
CREATE TABLE `cms_vote` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//编号',
  `title` varchar(20) NOT NULL COMMENT '//标题',
  `info` varchar(200) NOT NULL COMMENT '//简介',
  `vid` mediumint(8) NOT NULL DEFAULT '0' COMMENT '//是否主题或项目',
  `count` smallint(6) NOT NULL DEFAULT '0' COMMENT '//投票数',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否前台首选',
  `date` datetime NOT NULL COMMENT '//时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_vote
-- ----------------------------
INSERT INTO `cms_vote` VALUES ('1', '您最喜欢的地方菜是什么？', '您最喜欢的地方菜是什么？', '0', '0', '0', '2011-08-26 14:29:55');
INSERT INTO `cms_vote` VALUES ('2', '您最喜欢的旅游地区是哪里？', '您最喜欢的旅游地区是哪里？', '0', '0', '1', '2011-08-26 14:30:11');
INSERT INTO `cms_vote` VALUES ('5', '江苏扬州', '江苏扬州', '2', '193', '0', '2011-08-26 19:21:21');
INSERT INTO `cms_vote` VALUES ('4', '浙江杭州', '浙江杭州', '2', '140', '0', '2011-08-26 14:49:50');
INSERT INTO `cms_vote` VALUES ('16', '浙江宁波', '浙江宁波', '2', '0', '0', '2011-08-26 22:39:39');
INSERT INTO `cms_vote` VALUES ('15', '江苏苏州', '江苏苏州', '2', '35', '0', '2011-08-26 22:38:46');
INSERT INTO `cms_vote` VALUES ('27', '您最喜欢的运动是哪项呢？', '您最喜欢的运动是哪项呢？', '0', '0', '0', '2011-08-26 22:52:22');
INSERT INTO `cms_vote` VALUES ('26', '您最喜欢的男歌手是谁呢？', '您最喜欢的男歌手是谁呢？', '0', '0', '0', '2011-08-26 22:52:06');
