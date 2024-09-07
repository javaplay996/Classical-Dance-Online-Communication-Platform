/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t057`;
CREATE DATABASE IF NOT EXISTS `t057` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t057`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `addtime`, `userid`, `address`, `name`, `phone`, `isdefault`) VALUES
	(1, '2021-04-19 02:27:10', 1, '宇宙银河系金星1号', '金某', '13823888881', '是'),
	(2, '2021-04-19 02:27:10', 2, '宇宙银河系木星1号', '木某', '13823888882', '是'),
	(3, '2021-04-19 02:27:10', 3, '宇宙银河系水星1号', '水某', '13823888883', '是'),
	(4, '2021-04-19 02:27:10', 4, '宇宙银河系火星1号', '火某', '13823888884', '是'),
	(5, '2021-04-19 02:27:10', 5, '宇宙银河系土星1号', '土某', '13823888885', '是'),
	(6, '2021-04-19 02:27:10', 6, '宇宙银河系月球1号', '月某', '13823888886', '是');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'kecheng' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1705747808296 DEFAULT CHARSET=utf8mb3 COMMENT='购物车表';

DELETE FROM `cart`;
INSERT INTO `cart` (`id`, `addtime`, `tablename`, `userid`, `goodid`, `goodname`, `picture`, `buynumber`, `price`, `discountprice`) VALUES
	(1705747801397, '2024-01-20 10:50:00', 'fushi', 11, 22, '名称2', 'http://localhost:8080/springbootts2gs/upload/fushi_tupian2.jpg', 1, 99.9, 0),
	(1705747808295, '2024-01-20 10:50:07', 'kecheng', 11, 31, '课程名称1', 'http://localhost:8080/springbootts2gs/upload/kecheng_kechengtupian1.jpg', 2, 99.9, 0);

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootts2gs/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbootts2gs/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootts2gs/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discussfushi`;
CREATE TABLE IF NOT EXISTS `discussfushi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb3 COMMENT='服饰评论表';

DELETE FROM `discussfushi`;
INSERT INTO `discussfushi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(161, '2021-04-19 02:27:10', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(162, '2021-04-19 02:27:10', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(163, '2021-04-19 02:27:10', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(164, '2021-04-19 02:27:10', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(165, '2021-04-19 02:27:10', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(166, '2021-04-19 02:27:10', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `discusskecheng`;
CREATE TABLE IF NOT EXISTS `discusskecheng` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb3 COMMENT='课程评论表';

DELETE FROM `discusskecheng`;
INSERT INTO `discusskecheng` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(171, '2021-04-19 02:27:10', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(172, '2021-04-19 02:27:10', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(173, '2021-04-19 02:27:10', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(174, '2021-04-19 02:27:10', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(175, '2021-04-19 02:27:10', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(176, '2021-04-19 02:27:10', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `discussshipin`;
CREATE TABLE IF NOT EXISTS `discussshipin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb3 COMMENT='视频评论表';

DELETE FROM `discussshipin`;
INSERT INTO `discussshipin` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(181, '2021-04-19 02:27:10', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(182, '2021-04-19 02:27:10', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(183, '2021-04-19 02:27:10', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(184, '2021-04-19 02:27:10', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(185, '2021-04-19 02:27:10', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(186, '2021-04-19 02:27:10', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `discusswudaojiaoliu`;
CREATE TABLE IF NOT EXISTS `discusswudaojiaoliu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb3 COMMENT='舞蹈交流评论表';

DELETE FROM `discusswudaojiaoliu`;
INSERT INTO `discusswudaojiaoliu` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(191, '2021-04-19 02:27:10', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(192, '2021-04-19 02:27:10', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(193, '2021-04-19 02:27:10', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(194, '2021-04-19 02:27:10', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(195, '2021-04-19 02:27:10', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(196, '2021-04-19 02:27:10', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint DEFAULT NULL COMMENT '父节点id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1705747822322 DEFAULT CHARSET=utf8mb3 COMMENT='论坛交流';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `addtime`, `title`, `content`, `parentid`, `userid`, `username`, `isdone`) VALUES
	(101, '2021-04-19 02:27:10', '帖子标题1', '帖子内容1', 1, 1, '用户名1', '开放'),
	(102, '2021-04-19 02:27:10', '帖子标题2', '帖子内容2', 2, 2, '用户名2', '开放'),
	(103, '2021-04-19 02:27:10', '帖子标题3', '帖子内容3', 3, 3, '用户名3', '开放'),
	(104, '2021-04-19 02:27:10', '帖子标题4', '帖子内容4', 4, 4, '用户名4', '开放'),
	(105, '2021-04-19 02:27:10', '帖子标题5', '帖子内容5', 5, 5, '用户名5', '开放'),
	(106, '2021-04-19 02:27:10', '帖子标题6', '帖子内容6', 6, 6, '用户名6', '开放'),
	(1705747822321, '2024-01-20 10:50:21', NULL, '6', 103, 11, '会员用户1', NULL);

DROP TABLE IF EXISTS `fushi`;
CREATE TABLE IF NOT EXISTS `fushi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `xiangxicanshu` longtext COMMENT '详细参数',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='服饰';

DELETE FROM `fushi`;
INSERT INTO `fushi` (`id`, `addtime`, `shangpinbianhao`, `mingcheng`, `tupian`, `leixing`, `xiangxicanshu`, `thumbsupnum`, `crazilynum`, `clicknum`, `price`) VALUES
	(21, '2021-04-19 02:27:10', '商品编号1', '名称1', 'http://localhost:8080/springbootts2gs/upload/fushi_tupian1.jpg', '类型1', '详细参数1', 1, 1, 3, 99.9),
	(22, '2021-04-19 02:27:10', '商品编号2', '名称2', 'http://localhost:8080/springbootts2gs/upload/fushi_tupian2.jpg', '类型2', '详细参数2', 2, 2, 4, 99.9),
	(23, '2021-04-19 02:27:10', '商品编号3', '名称3', 'http://localhost:8080/springbootts2gs/upload/fushi_tupian3.jpg', '类型3', '详细参数3', 3, 3, 3, 99.9),
	(24, '2021-04-19 02:27:10', '商品编号4', '名称4', 'http://localhost:8080/springbootts2gs/upload/fushi_tupian4.jpg', '类型4', '详细参数4', 4, 4, 4, 99.9),
	(25, '2021-04-19 02:27:10', '商品编号5', '名称5', 'http://localhost:8080/springbootts2gs/upload/fushi_tupian5.jpg', '类型5', '详细参数5', 5, 5, 5, 99.9),
	(26, '2021-04-19 02:27:10', '商品编号6', '名称6', 'http://localhost:8080/springbootts2gs/upload/fushi_tupian6.jpg', '类型6', '详细参数6', 6, 6, 6, 99.9);

DROP TABLE IF EXISTS `fushileixing`;
CREATE TABLE IF NOT EXISTS `fushileixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='服饰类型';

DELETE FROM `fushileixing`;
INSERT INTO `fushileixing` (`id`, `addtime`, `leixing`) VALUES
	(61, '2021-04-19 02:27:10', '类型1'),
	(62, '2021-04-19 02:27:10', '类型2'),
	(63, '2021-04-19 02:27:10', '类型3'),
	(64, '2021-04-19 02:27:10', '类型4'),
	(65, '2021-04-19 02:27:10', '类型5'),
	(66, '2021-04-19 02:27:10', '类型6');

DROP TABLE IF EXISTS `huiyuanyonghu`;
CREATE TABLE IF NOT EXISTS `huiyuanyonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='会员用户';

DELETE FROM `huiyuanyonghu`;
INSERT INTO `huiyuanyonghu` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `youxiang`, `shenfenzheng`, `zhaopian`, `money`) VALUES
	(11, '2021-04-19 02:27:10', '会员用户1', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', '440300199101010001', 'http://localhost:8080/springbootts2gs/upload/huiyuanyonghu_zhaopian1.jpg', 100),
	(12, '2021-04-19 02:27:10', '会员用户2', '123456', '姓名2', '男', '13823888882', '773890002@qq.com', '440300199202020002', 'http://localhost:8080/springbootts2gs/upload/huiyuanyonghu_zhaopian2.jpg', 100),
	(13, '2021-04-19 02:27:10', '会员用户3', '123456', '姓名3', '男', '13823888883', '773890003@qq.com', '440300199303030003', 'http://localhost:8080/springbootts2gs/upload/huiyuanyonghu_zhaopian3.jpg', 100),
	(14, '2021-04-19 02:27:10', '会员用户4', '123456', '姓名4', '男', '13823888884', '773890004@qq.com', '440300199404040004', 'http://localhost:8080/springbootts2gs/upload/huiyuanyonghu_zhaopian4.jpg', 100),
	(15, '2021-04-19 02:27:10', '会员用户5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', '440300199505050005', 'http://localhost:8080/springbootts2gs/upload/huiyuanyonghu_zhaopian5.jpg', 100),
	(16, '2021-04-19 02:27:10', '会员用户6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', '440300199606060006', 'http://localhost:8080/springbootts2gs/upload/huiyuanyonghu_zhaopian6.jpg', 100);

DROP TABLE IF EXISTS `kecheng`;
CREATE TABLE IF NOT EXISTS `kecheng` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `shangkeshijian` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `shangkedidian` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `kechengxiangqing` longtext COMMENT '课程详情',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='课程';

DELETE FROM `kecheng`;
INSERT INTO `kecheng` (`id`, `addtime`, `kechengbianhao`, `kechengmingcheng`, `kechengtupian`, `kechengleixing`, `shangkeshijian`, `shangkedidian`, `kechengxiangqing`, `thumbsupnum`, `crazilynum`, `clicknum`, `price`) VALUES
	(31, '2021-04-19 02:27:10', '课程编号1', '课程名称1', 'http://localhost:8080/springbootts2gs/upload/kecheng_kechengtupian1.jpg', '课程类型1', '上课时间1', '上课地点1', '课程详情1', 1, 1, 4, 99.9),
	(32, '2021-04-19 02:27:10', '课程编号2', '课程名称2', 'http://localhost:8080/springbootts2gs/upload/kecheng_kechengtupian2.jpg', '课程类型2', '上课时间2', '上课地点2', '课程详情2', 2, 2, 3, 99.9),
	(33, '2021-04-19 02:27:10', '课程编号3', '课程名称3', 'http://localhost:8080/springbootts2gs/upload/kecheng_kechengtupian3.jpg', '课程类型3', '上课时间3', '上课地点3', '课程详情3', 3, 3, 3, 99.9),
	(34, '2021-04-19 02:27:10', '课程编号4', '课程名称4', 'http://localhost:8080/springbootts2gs/upload/kecheng_kechengtupian4.jpg', '课程类型4', '上课时间4', '上课地点4', '课程详情4', 4, 4, 4, 99.9),
	(35, '2021-04-19 02:27:10', '课程编号5', '课程名称5', 'http://localhost:8080/springbootts2gs/upload/kecheng_kechengtupian5.jpg', '课程类型5', '上课时间5', '上课地点5', '课程详情5', 5, 5, 6, 99.9),
	(36, '2021-04-19 02:27:10', '课程编号6', '课程名称6', 'http://localhost:8080/springbootts2gs/upload/kecheng_kechengtupian6.jpg', '课程类型6', '上课时间6', '上课地点6', '课程详情6', 6, 6, 6, 99.9);

DROP TABLE IF EXISTS `kechengleixing`;
CREATE TABLE IF NOT EXISTS `kechengleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3 COMMENT='课程类型';

DELETE FROM `kechengleixing`;
INSERT INTO `kechengleixing` (`id`, `addtime`, `leixing`) VALUES
	(81, '2021-04-19 02:27:10', '类型1'),
	(82, '2021-04-19 02:27:10', '类型2'),
	(83, '2021-04-19 02:27:10', '类型3'),
	(84, '2021-04-19 02:27:10', '类型4'),
	(85, '2021-04-19 02:27:10', '类型5'),
	(86, '2021-04-19 02:27:10', '类型6');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb3 COMMENT='舞蹈资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(151, '2021-04-19 02:27:10', '标题1', '简介1', 'http://localhost:8080/springbootts2gs/upload/news_picture1.jpg', '内容1'),
	(152, '2021-04-19 02:27:10', '标题2', '简介2', 'http://localhost:8080/springbootts2gs/upload/news_picture2.jpg', '内容2'),
	(153, '2021-04-19 02:27:10', '标题3', '简介3', 'http://localhost:8080/springbootts2gs/upload/news_picture3.jpg', '内容3'),
	(154, '2021-04-19 02:27:10', '标题4', '简介4', 'http://localhost:8080/springbootts2gs/upload/news_picture4.jpg', '内容4'),
	(155, '2021-04-19 02:27:10', '标题5', '简介5', 'http://localhost:8080/springbootts2gs/upload/news_picture5.jpg', '内容5'),
	(156, '2021-04-19 02:27:10', '标题6', '简介6', 'http://localhost:8080/springbootts2gs/upload/news_picture6.jpg', '内容6');

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'kecheng' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='订单';

DELETE FROM `orders`;

DROP TABLE IF EXISTS `shipin`;
CREATE TABLE IF NOT EXISTS `shipin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipinbianhao` varchar(200) DEFAULT NULL COMMENT '视频编号',
  `shipinmingcheng` varchar(200) NOT NULL COMMENT '视频名称',
  `shipinfenlei` varchar(200) NOT NULL COMMENT '视频分类',
  `shipinfengmian` varchar(200) DEFAULT NULL COMMENT '视频封面',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `shipinjieshao` longtext COMMENT '视频介绍',
  `faburiqi` datetime DEFAULT NULL COMMENT '发布日期',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shipinbianhao` (`shipinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='视频';

DELETE FROM `shipin`;
INSERT INTO `shipin` (`id`, `addtime`, `shipinbianhao`, `shipinmingcheng`, `shipinfenlei`, `shipinfengmian`, `shipin`, `shipinjieshao`, `faburiqi`, `thumbsupnum`, `crazilynum`, `clicknum`) VALUES
	(41, '2021-04-19 02:27:10', '视频编号1', '视频名称1', '视频分类1', 'http://localhost:8080/springbootts2gs/upload/shipin_shipinfengmian1.jpg', '', '视频介绍1', '2021-04-19 10:27:10', 1, 1, 2),
	(42, '2021-04-19 02:27:10', '视频编号2', '视频名称2', '视频分类2', 'http://localhost:8080/springbootts2gs/upload/shipin_shipinfengmian2.jpg', '', '视频介绍2', '2021-04-19 10:27:10', 2, 2, 2),
	(43, '2021-04-19 02:27:10', '视频编号3', '视频名称3', '视频分类3', 'http://localhost:8080/springbootts2gs/upload/shipin_shipinfengmian3.jpg', '', '视频介绍3', '2021-04-19 10:27:10', 3, 3, 3),
	(44, '2021-04-19 02:27:10', '视频编号4', '视频名称4', '视频分类4', 'http://localhost:8080/springbootts2gs/upload/shipin_shipinfengmian4.jpg', '', '视频介绍4', '2021-04-19 10:27:10', 4, 4, 5),
	(45, '2021-04-19 02:27:10', '视频编号5', '视频名称5', '视频分类5', 'http://localhost:8080/springbootts2gs/upload/shipin_shipinfengmian5.jpg', '', '视频介绍5', '2021-04-19 10:27:10', 5, 5, 5),
	(46, '2021-04-19 02:27:10', '视频编号6', '视频名称6', '视频分类6', 'http://localhost:8080/springbootts2gs/upload/shipin_shipinfengmian6.jpg', '', '视频介绍6', '2021-04-19 10:27:10', 6, 6, 6);

DROP TABLE IF EXISTS `shipinfenlei`;
CREATE TABLE IF NOT EXISTS `shipinfenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='视频分类';

DELETE FROM `shipinfenlei`;
INSERT INTO `shipinfenlei` (`id`, `addtime`, `fenlei`) VALUES
	(71, '2021-04-19 02:27:10', '分类1'),
	(72, '2021-04-19 02:27:10', '分类2'),
	(73, '2021-04-19 02:27:10', '分类3'),
	(74, '2021-04-19 02:27:10', '分类4'),
	(75, '2021-04-19 02:27:10', '分类5'),
	(76, '2021-04-19 02:27:10', '分类6');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1705747802332 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1705747802331, '2024-01-20 10:50:01', 11, 22, 'fushi', '名称2', 'http://localhost:8080/springbootts2gs/upload/fushi_tupian2.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', '5vjtc4bs9am3wu4da72tab19k7mbucwo', '2021-04-19 02:41:05', '2024-01-20 11:48:29'),
	(2, 11, '会员用户1', 'huiyuanyonghu', '会员用户', 'ky68tfvg2pweo08yfbouo2ngvbf5x6bw', '2024-01-20 10:16:34', '2024-01-20 11:49:59');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-19 02:27:10');

DROP TABLE IF EXISTS `wudaojiaoliu`;
CREATE TABLE IF NOT EXISTS `wudaojiaoliu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `shipinmingcheng` varchar(200) DEFAULT NULL COMMENT '视频名称',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `paishedidian` varchar(200) DEFAULT NULL COMMENT '拍摄地点',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='舞蹈交流';

DELETE FROM `wudaojiaoliu`;
INSERT INTO `wudaojiaoliu` (`id`, `addtime`, `biaoti`, `shipinmingcheng`, `fengmian`, `shipin`, `fabushijian`, `paishedidian`, `zhanghao`, `xingming`, `gengxinshijian`, `sfsh`, `shhf`, `thumbsupnum`, `crazilynum`, `clicknum`) VALUES
	(51, '2021-04-19 02:27:10', '标题1', '视频名称1', 'http://localhost:8080/springbootts2gs/upload/wudaojiaoliu_fengmian1.jpg', '', '2021-04-19 10:27:10', '拍摄地点1', '账号1', '姓名1', '2021-04-19 10:27:10', '是', '', 1, 1, 1),
	(52, '2021-04-19 02:27:10', '标题2', '视频名称2', 'http://localhost:8080/springbootts2gs/upload/wudaojiaoliu_fengmian2.jpg', '', '2021-04-19 10:27:10', '拍摄地点2', '账号2', '姓名2', '2021-04-19 10:27:10', '是', '', 2, 2, 2),
	(53, '2021-04-19 02:27:10', '标题3', '视频名称3', 'http://localhost:8080/springbootts2gs/upload/wudaojiaoliu_fengmian3.jpg', '', '2021-04-19 10:27:10', '拍摄地点3', '账号3', '姓名3', '2021-04-19 10:27:10', '是', '', 3, 3, 3),
	(54, '2021-04-19 02:27:10', '标题4', '视频名称4', 'http://localhost:8080/springbootts2gs/upload/wudaojiaoliu_fengmian4.jpg', '', '2021-04-19 10:27:10', '拍摄地点4', '账号4', '姓名4', '2021-04-19 10:27:10', '是', '', 4, 4, 4),
	(55, '2021-04-19 02:27:10', '标题5', '视频名称5', 'http://localhost:8080/springbootts2gs/upload/wudaojiaoliu_fengmian5.jpg', '', '2021-04-19 10:27:10', '拍摄地点5', '账号5', '姓名5', '2021-04-19 10:27:10', '是', '', 5, 5, 5),
	(56, '2021-04-19 02:27:10', '标题6', '视频名称6', 'http://localhost:8080/springbootts2gs/upload/wudaojiaoliu_fengmian6.jpg', '', '2021-04-19 10:27:10', '拍摄地点6', '账号6', '姓名6', '2021-04-19 10:27:10', '是', '', 6, 6, 6);

DROP TABLE IF EXISTS `zaixianzhaosheng`;
CREATE TABLE IF NOT EXISTS `zaixianzhaosheng` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3 COMMENT='在线招生';

DELETE FROM `zaixianzhaosheng`;
INSERT INTO `zaixianzhaosheng` (`id`, `addtime`, `kechengmingcheng`, `kechengtupian`, `kechengleixing`, `zhanghao`, `xingming`, `sfsh`, `shhf`) VALUES
	(91, '2021-04-19 02:27:10', '课程名称1', 'http://localhost:8080/springbootts2gs/upload/zaixianzhaosheng_kechengtupian1.jpg', '课程类型1', '账号1', '姓名1', '是', ''),
	(92, '2021-04-19 02:27:10', '课程名称2', 'http://localhost:8080/springbootts2gs/upload/zaixianzhaosheng_kechengtupian2.jpg', '课程类型2', '账号2', '姓名2', '是', ''),
	(93, '2021-04-19 02:27:10', '课程名称3', 'http://localhost:8080/springbootts2gs/upload/zaixianzhaosheng_kechengtupian3.jpg', '课程类型3', '账号3', '姓名3', '是', ''),
	(94, '2021-04-19 02:27:10', '课程名称4', 'http://localhost:8080/springbootts2gs/upload/zaixianzhaosheng_kechengtupian4.jpg', '课程类型4', '账号4', '姓名4', '是', ''),
	(95, '2021-04-19 02:27:10', '课程名称5', 'http://localhost:8080/springbootts2gs/upload/zaixianzhaosheng_kechengtupian5.jpg', '课程类型5', '账号5', '姓名5', '是', ''),
	(96, '2021-04-19 02:27:10', '课程名称6', 'http://localhost:8080/springbootts2gs/upload/zaixianzhaosheng_kechengtupian6.jpg', '课程类型6', '账号6', '姓名6', '是', '');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
