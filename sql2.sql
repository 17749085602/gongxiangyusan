DROP TABLE IF EXISTS `member_user`;
CREATE TABLE `member_user`(
	   `member_user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员用户ID',
`full_name` varchar(64) comment '姓名',
`gender` varchar(64) comment '性别',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (member_user_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '会员用户';

DROP TABLE IF EXISTS `borrow_and_return_umbrella_points`;
CREATE TABLE `borrow_and_return_umbrella_points`(
	   `borrow_and_return_umbrella_points_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '借还伞点ID',
`service_name` varchar(64) comment '服务名称',
`customer_service_hotline` varchar(64) comment '客服热线',
`corporate_name` varchar(64) comment '公司名称',
`service_fee` int(11) DEFAULT 0 comment '服务费用',
`service_cover` varchar(255) comment '服务封面',
`service_introduction` text comment '服务介绍',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`qrcode_img` varchar(255) DEFAULT '' NOT NULL comment '二维码图片',
`qrcode_title` varchar(64) DEFAULT '' NOT NULL comment '二维码标题',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (borrow_and_return_umbrella_points_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '借还伞点';
insert into `borrow_and_return_umbrella_points` values (1,'服务名称1','客服热线1','公司名称1',5,'/upload/image_1644486112958.jpg','服务介绍1','0','点此播放','二维码标题1','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `borrow_and_return_umbrella_points` values (2,'服务名称2','客服热线2','公司名称2',10,'/upload/image_1644486112959.jpg','服务介绍2','0','点此播放','二维码标题2','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `borrow_and_return_umbrella_points` values (3,'服务名称3','客服热线3','公司名称3',15,'/upload/image_1644486112958.jpg','服务介绍3','0','点此播放','二维码标题3','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `borrow_and_return_umbrella_points` values (4,'服务名称4','客服热线4','公司名称4',20,'/upload/image_1644486112958.jpg','服务介绍4','0','点此播放','二维码标题4','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `borrow_and_return_umbrella_points` values (5,'服务名称5','客服热线5','公司名称5',25,'/upload/image_1644486112948.jpg','服务介绍5','0','点此播放','二维码标题5','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `borrow_and_return_umbrella_points` values (6,'服务名称6','客服热线6','公司名称6',30,'/upload/image_1644486112944.jpg','服务介绍6','0','点此播放','二维码标题6','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `borrow_and_return_umbrella_points` values (7,'服务名称7','客服热线7','公司名称7',35,'/upload/image_1644486112952.jpg','服务介绍7','0','点此播放','二维码标题7','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `borrow_and_return_umbrella_points` values (8,'服务名称8','客服热线8','公司名称8',40,'/upload/image_1644486112949.jpg','服务介绍8','0','点此播放','二维码标题8','2022-09-02 08:56:56','2022-09-02 08:56:56');

DROP TABLE IF EXISTS `umbrella_borrowing_order`;
CREATE TABLE `umbrella_borrowing_order`(
	   `umbrella_borrowing_order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '借伞订单ID',
`order_number` varchar(64) comment '订单编号',
`user` int(11) DEFAULT 0 comment '用户',
`service_fee` int(11) DEFAULT 0 comment '服务费用',
`lease_date` date comment '租借日期',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (umbrella_borrowing_order_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '借伞订单';
insert into `umbrella_borrowing_order` values (1,'订单编号1',0,5,'2022-9-2','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `umbrella_borrowing_order` values (2,'订单编号2',0,10,'2022-9-2','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `umbrella_borrowing_order` values (3,'订单编号3',0,15,'2022-9-2','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `umbrella_borrowing_order` values (4,'订单编号4',0,20,'2022-9-2','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `umbrella_borrowing_order` values (5,'订单编号5',0,25,'2022-9-2','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `umbrella_borrowing_order` values (6,'订单编号6',0,30,'2022-9-2','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `umbrella_borrowing_order` values (7,'订单编号7',0,35,'2022-9-2','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `umbrella_borrowing_order` values (8,'订单编号8',0,40,'2022-9-2','0','2022-09-02 08:56:56','2022-09-02 08:56:56');

DROP TABLE IF EXISTS `umbrella_return_order`;
CREATE TABLE `umbrella_return_order`(
	   `umbrella_return_order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '还伞订单ID',
`order_number` varchar(64) comment '订单编号',
`user` int(11) DEFAULT 0 comment '用户',
`service_fee` int(11) DEFAULT 0 comment '服务费用',
`return_date_` date comment '归还日期',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (umbrella_return_order_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '还伞订单';
insert into `umbrella_return_order` values (1,'订单编号1',0,5,'2022-9-2','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `umbrella_return_order` values (2,'订单编号2',0,10,'2022-9-2','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `umbrella_return_order` values (3,'订单编号3',0,15,'2022-9-2','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `umbrella_return_order` values (4,'订单编号4',0,20,'2022-9-2','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `umbrella_return_order` values (5,'订单编号5',0,25,'2022-9-2','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `umbrella_return_order` values (6,'订单编号6',0,30,'2022-9-2','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `umbrella_return_order` values (7,'订单编号7',0,35,'2022-9-2','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `umbrella_return_order` values (8,'订单编号8',0,40,'2022-9-2','0','2022-09-02 08:56:56','2022-09-02 08:56:56');

DROP TABLE IF EXISTS `user_balance`;
CREATE TABLE `user_balance`(
	   `user_balance_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户余额ID',
`user` int(11) DEFAULT 0 comment '用户',
`balance` int(11) DEFAULT 0 comment '余额',
`remarks` varchar(64) comment '备注',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (user_balance_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '用户余额';
insert into `user_balance` values (1,0,5,'备注1','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `user_balance` values (2,0,10,'备注2','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `user_balance` values (3,0,15,'备注3','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `user_balance` values (4,0,20,'备注4','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `user_balance` values (5,0,25,'备注5','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `user_balance` values (6,0,30,'备注6','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `user_balance` values (7,0,35,'备注7','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `user_balance` values (8,0,40,'备注8','0','2022-09-02 08:56:56','2022-09-02 08:56:56');

DROP TABLE IF EXISTS `recharge_order`;
CREATE TABLE `recharge_order`(
	   `recharge_order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '充值订单ID',
`user` int(11) DEFAULT 0 comment '用户',
`order_number` varchar(64) comment '订单编号',
`recharge_limit` int(11) DEFAULT 0 comment '充值额度',
`recharge_date` date comment '充值日期',
`pay_state` varchar(16) DEFAULT '未支付' NOT NULL comment '支付状态',
`pay_type` varchar(16) DEFAULT '' comment '支付类型: 微信、支付宝、网银',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (recharge_order_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '充值订单';
insert into `recharge_order` values (1,0,'订单编号1',5,'2022-9-2','未支付','支付宝','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `recharge_order` values (2,0,'订单编号2',10,'2022-9-2','未支付','支付宝','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `recharge_order` values (3,0,'订单编号3',15,'2022-9-2','未支付','支付宝','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `recharge_order` values (4,0,'订单编号4',20,'2022-9-2','未支付','支付宝','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `recharge_order` values (5,0,'订单编号5',25,'2022-9-2','未支付','支付宝','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `recharge_order` values (6,0,'订单编号6',30,'2022-9-2','未支付','支付宝','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `recharge_order` values (7,0,'订单编号7',35,'2022-9-2','未支付','支付宝','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `recharge_order` values (8,0,'订单编号8',40,'2022-9-2','未支付','支付宝','0','2022-09-02 08:56:56','2022-09-02 08:56:56');

DROP TABLE IF EXISTS `urban_weather`;
CREATE TABLE `urban_weather`(
	   `urban_weather_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '城市天气ID',
`date` date comment '日期',
`city_name` varchar(64) comment '城市名称',
`temperature` varchar(64) comment '温度',
`weather_details` varchar(64) comment '天气详情',
`remarks` varchar(64) comment '备注',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (urban_weather_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '城市天气';
insert into `urban_weather` values (1,'2022-9-2','城市名称1','温度1','天气详情1','备注1','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `urban_weather` values (2,'2022-9-2','城市名称2','温度2','天气详情2','备注2','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `urban_weather` values (3,'2022-9-2','城市名称3','温度3','天气详情3','备注3','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `urban_weather` values (4,'2022-9-2','城市名称4','温度4','天气详情4','备注4','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `urban_weather` values (5,'2022-9-2','城市名称5','温度5','天气详情5','备注5','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `urban_weather` values (6,'2022-9-2','城市名称6','温度6','天气详情6','备注6','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `urban_weather` values (7,'2022-9-2','城市名称7','温度7','天气详情7','备注7','0','2022-09-02 08:56:56','2022-09-02 08:56:56');
insert into `urban_weather` values (8,'2022-9-2','城市名称8','温度8','天气详情8','备注8','0','2022-09-02 08:56:56','2022-09-02 08:56:56');

DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `token_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) DEFAULT NULL COMMENT '临时访问牌',
  `info` text,
  `maxage` int(2) NOT NULL DEFAULT '2' COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='临时访问牌';
insert into `access_token` values ('57','5accf85cb6a7f06f0aa2968deadaec1b',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('58','46ff1d4d07714f046ba07b34bffe0af9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('59','ed9d6cba9826fda1beafcd9326be7a86',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('60','c99763c1833ea0785d9e2b81da3fd28f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('61','33fbfaccd6d1cb9143e4129bd919d4b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('62','493e13da5f293ba67a56a0fe3e1fa6cf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('63','c4b48e9e2160db09c703041a8fee0a1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('64','d13cdaefd3823c360c959a02a262f71d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('65','6c6ff426fd77ea5a2025ce5ed2e42c8a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('66','80930065a61ffcdd5cbb75f60932973c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('67','94114763cf2e3b020495d8a27096d4ef',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('68','761052c551c97c9317bc3aa475c85b84',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('69','7c44ef14131a0ba7c16aa16cef104065',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('70','96380f3d9542c80d04bdade1cf7635a5',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('71','bfdc7acfcbf5763fda81945b60961222',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('72','170a598e51ae8ae2badde20a42fe171d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('73','c82c357488c75926a92d8a9608d4b367',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('74','4d35290c023f407a820f37dbbb1ceb09',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('75','8d19162776682b695c0f62f3c7a92fec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('76','a7ea2cdc9a2be179e19200e593ad5a69',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('77','c79a554f9832adc01f19682c5d576bc4',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('78','1c7d95001fa09951a679841c8100ad1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('79','776da1bcdd01ddb3cbf0a37fa13fc5b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('80','d336e88e57c329d0166931292c1fac41',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('81','37a40f526a6c82fc6110b512802d35bf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('82','691ad331771f4109206d58aeee572371',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('83','9942e458886219960d3344b4a6a6fbec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('84','e9939a8b7ccf9f548f0bbb5664981f96',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('85','f5b27912060d1909bef61fab9d96faae',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('86','7c5888682f1d449eb1b62f0054a79fbf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('87','00dfdc6ac21c4a9da80fd71c990764d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('88','3cce592bc72840ab932ce96d85a194da',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('89','43fdaa989a644ad683ef4b4d488e8629',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('90','d6a3cecadacff0dbd6b43b25372cc2a2',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('91','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('92','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('93','26c553bd2ee2ab6605d18dfd310d85f9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('94','3fd52f81236ed2c37ff91a6696d4e47a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('95','893332e9ee67d60d8312b3700c58a359',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('96','b7844068ade535b2e517df4a40948703',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('97','179b37a5e1893c3af6b946bd5a1c8625',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('98','3a47b8a040a83ebbc9194cb255dc668c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('99','afa60196afb77dcc2b520ed13a817560',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('100','7fc6d9b324f8c0a3a1784d04ef132692',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id：[0,8388607]',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：[0,125]用于文章和html的title标签中',
  `type` varchar(64) NOT NULL DEFAULT '0' COMMENT '文章分类：[0,1000]用来搜索指定类型的文章',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数：[0,1000000000]访问这篇文章的人次',
  `praise_len` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source` varchar(255) DEFAULT NULL COMMENT '来源：[0,255]文章的出处',
  `url` varchar(255) DEFAULT NULL COMMENT '来源地址：[0,255]用于跳转到发布该文章的网站',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签：[0,255]用于标注文章所属相关内容，多个标签用空格隔开',
  `content` longtext COMMENT '正文：文章的主体内容',
  `img` varchar(255) DEFAULT NULL COMMENT '封面图',
  `description` text COMMENT '文章描述',
  PRIMARY KEY (`article_id`,`title`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章：用于内容管理系统的文章';
DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID：[0,10000]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]决定分类显示的先后顺序',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称：[2,16]',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该分类的作用',
  `icon` text COMMENT '分类图标：',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址：[0,255]如果该分类是跳转到其他网站的情况下，就在该URL上设置',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章频道：用于汇总浏览文章，在不同频道下展示不同文章。';

DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `collect_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '收藏ID：',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏人ID：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `title` varchar(255) DEFAULT NULL COMMENT '标题：',
  `img` varchar(255) DEFAULT NULL COMMENT '封面：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`collect_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='收藏：';
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论人ID：',
  `reply_to_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '回复评论ID：空为0',
  `content` longtext COMMENT '内容：',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论：';
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '公告id：',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：',
  `content` longtext COMMENT '正文：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='公告：';
insert into `notice` values ('1','公告标题1','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ");
insert into `notice` values ('2','公告标题2','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ");
insert into `notice` values ('3','公告标题3','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ");
insert into `notice` values ('4','公告标题4','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ");
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `praise_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '点赞状态:1为点赞，0已取消',
  PRIMARY KEY (`praise_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='点赞：';
insert into `praise` values ('2','1',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('25','5',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('26','5',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('27','5',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('44','2',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('50','2',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('54','2',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('57','0',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','10','1');
insert into `praise` values ('86','0',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','6','1');
insert into `praise` values ('101','7',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('108','2',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','8','1');
insert into `praise` values ('221','0',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','2','1');
DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides` (
  `slides_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '轮播图ID：',
  `title` varchar(64) DEFAULT NULL COMMENT '标题：',
  `content` varchar(255) DEFAULT NULL COMMENT '内容：',
  `url` varchar(255) DEFAULT NULL COMMENT '链接：',
  `img` varchar(255) DEFAULT NULL COMMENT '轮播图：',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`slides_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='轮播图：';
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) DEFAULT '0' COMMENT '父级ID',
  `dir` varchar(255) DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
insert into `upload` values ('1','movie.mp4','/upload/movie.mp4','',null,'0',null,'video');
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账户：用于保存用户登录信息';
insert into `user` values ('1','1','管理员',"2022-04-30 12:03:25.000 ",null,'0','admin','admin','bfd59291e825b5f2bbf1eb76569f8fe7','','0','/api/upload/avatar.jpg',"2022-05-19 07:32:09.000 ");
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `register` smallint(1) unsigned DEFAULT '0' COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户组：用于用户前端身份和鉴权';
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits` (
  `hits_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
insert into `user_group` values ('1','100','管理员',null,'','','0',null,"2022-09-02 00:56:56.000 ","2022-09-02 00:56:56.000 ");
insert into `user_group` values ('2','100','游客',null,'','','0','0',"2022-09-02 00:56:56.000 ","2022-09-02 00:56:56.000 ");
insert into `user_group` values ('3','100','会员用户',null,'member_user','member_user_id','0','3',"2022-09-02 00:56:56.000 ","2022-09-02 00:56:56.000 ");
insert into `slides` values ('1','轮播图1','内容1','/article/details?article=1','/upload/image_1646619472756.jpg','283',"2022-09-02 00:56:56.000 ","2022-09-02 00:56:56.000 ");
insert into `slides` values ('2','轮播图2','内容2','/article/details?article=2','/upload/image_1646619472756.jpg','60',"2022-09-02 00:56:56.000 ","2022-09-02 00:56:56.000 ");
insert into `slides` values ('3','轮播图3','内容3','/article/details?article=3','/upload/image_1646619472756.jpg','529',"2022-09-02 00:56:56.000 ","2022-09-02 00:56:56.000 ");
insert into `article` values ('1','强化共享单车消杀 确保市民放心骑行','自行车','45','0',"2022-09-02 00:56:56.000 ","2022-09-02 00:56:56.000 ",null,null,null,'<p>近日，随着呼和浩特出现新发病例，传播风险进一步加大，防疫工作备受市民关注。市民李先生表示，“随着我们防疫经验的成熟，目前并不是很担心。关于日常出行，现在比较倾向于自驾或者使用共享单车，特殊时期来说接触人比较少，无论是对自己还是对其他的人来说，都是多一重保护。”</p><p><img src="http://n.sinaimg.cn/sinakd20118/321/w640h481/20220217/09a3-cd03cdd0a0e5b298a97f442aee11c04f.jpg"></p><p><br></p><p>通达商场作为呼市大型商贸物流集散中心，人员密度高，流动性强，出行需求比较旺盛，因此也是车辆保障和防疫消杀的重要区域。孙海全负责通达商场周边哈啰车辆的保障工作，“这边离着火车站比较近，人员流动比较密集，日常我们除了做好单车秩序的规范摆放，区域还要我们做到早中晚车辆消杀。为了做好防疫工作，我们这几天只要在摆放的时候就会做一次消毒，尽量保障市民出行需求。”同样负责通达商场周边秩序保障工作的还有哈啰运维王立国，“一天走上1-2万步是正常的，一开始我们也尝试过用大的消杀工具来执行防疫消杀要求，但是实际操作下来，虽然这种小的喷壶看似不起眼，但是随身携带的灵活性能够让我们随时随地开展消杀工作。一天算下来区域内循环车辆消杀最少能够确保3-4次。在我看来，多消杀一次多保障一次市民出行安全。”</p><p>据悉，为应对呼市零星散发病例，满足市民出行需求，哈啰出行将强化路面共享单车消杀工作，保障市民出行，运维负责人赵建波说，“哈啰一直执行的是‘三要一精准’消杀工作标准，即每辆车消毒时间要不低于5秒；车把、车座等骑行密切接触部位要二次喷洒消杀；办公场所密集、大型生活区等出行需求高的区域要进行重点、高频消杀；利用哈啰大脑对骑行数据进行科学管理，实现每一个骑行订单都精准追溯，以便精准防控。”</p>','/upload/image_1645155297810.jpg','2022年05月23日 12:51 新浪网');
insert into `article` values ('2','贵阳：共享电动单车 即将重出江湖','自行车','914','0',"2022-09-02 00:56:56.000 ","2022-09-02 00:56:56.000 ",null,null,null,'<p class="ql-align-center"><img src="https://n.sinaimg.cn/sinakd20220210s/495/w300h195/20220210/0405-c785d409f87f1af9fa28130d763617f9.jpg"><strong>一名共享电动单车管理人员在工作（资料图）</strong></p><p><br></p><p class="ql-align-center"><img src="https://n.sinaimg.cn/sinakd20220210s/500/w300h200/20220210/395b-9e59ddc567f328a5bc313ab384baf3cf.jpg"></p><p>便捷的共享电动单车解决了不少市民短途出行“最后一公里”的难题，但由于种种原因，不少市民都明显感觉到家附近的共享电动单车减少了。贵阳市融媒问政平台也接到很多市民留言，询问共享电动单车何时能恢复运营。</p><p><br></p><p>对此，贵阳市交通委员会回应，共享电动单车相关管理方案已编制完成，预计今年上半年开展投放工作。</p><p>市民提问：自共享电动单车取缔以来，市民没有短途代步工具，很多人出行都不方便，请问什么时候恢复共享电动单车？</p><p>贵阳市交通委员会答复：市民朋友您好，2018年以来，共享电动单车进入贵阳市场后，其电动助力性有效克服了贵阳市道路坡多且陡的骑行难题，为市民解决了“最后一公里”的出行困难。</p><p>与其他行业在发展初期出现的问题一样，共享电动单车在给市民带来便利的同时，也存在管理不完善、企业主体作用发挥不充分、行停秩序不规范等问题，存在一定的安全隐患。</p><p>为了规范共享电动单车的管理，按照市委、市政府工作安排，目前贵阳市交通委员会已完成相关管理工作方案初稿的编制，预计2022年上半年开展共享电动单车的投放工作，同时将按照工作方案的要求做好管理工作。</p><p>贵阳日报融媒体记者 杨萱</p>','/upload/image_1645155626142.jpg','2022年05月23日 12:51 新浪网');
insert into `article` values ('3','绕地球1296圈！看扬城共享单车大数据','自行车','906','0',"2022-09-02 00:56:56.000 ","2022-09-02 00:56:56.000 ",null,null,null,'<p>目前，市区共有大哈、美团两家共享单车企业在运营。记者昨从这两家公司了解到，2021年，在市区注册的单车用户达186万人左右（包含在两家公司都注册的用户），全年单车骑行1523万人次，年度骑行总里程5184万公里。</p><p class="ql-align-center"><img src="https://n.sinaimg.cn/sinakd20220212s/762/w489h273/20220212/6cab-123e0baa969c95e3ac22c2a381e038c4.png"></p><p><strong>■市区单车注册用户186万，全年骑行5184万公里</strong></p><p>大哈出行扬州地区负责人陈先生介绍，2021年，大哈单车在扬注册用户达106万人，年度累计为市民、游客服务986万人次，年度骑行总里程3464万公里。美团扬州地区负责人丁先生介绍，单车在扬注册用户达80万人，年度累计为市民、游客服务537万人次，年度骑行总里程1720万公里。</p><p>汇总计算，2021年市区单车共骑行1523万人次，骑行总里程5184万公里，相当于绕地球1296圈，平均单次骑行里程3公里。</p><p>后台数据显示，相对于江都区与邗江区，广陵区骑行流量最高，占全年度订单量的百分之四十左右，热点点位为：瘦西湖景区周边、平山堂路、盐阜路、东关古渡等。年度骑行高峰期为5月份，骑行高峰为上午7点到8点、晚6点到9点。</p><p>大哈单日内单辆单车最多骑行为6人次，最长骑行时间120分钟，年度骑行最多用户为潘姓男用户，32岁，累计骑行600次。美团年度骑行最多的一名客户共骑行264次，总骑行时长2876分钟。</p><p><strong>■运行管理越来越好，三大“顽疾”仍需下猛药</strong></p><p>记者从市城管局了解到，2020年11月，该局与大哈、美团两家单车企业签约后，大哈单车在市区投放单车10000辆，美团单车在市区投放5000辆。去年5月，两家运营企业增投人力骑行的共享单车5000辆，其中大哈单车3400辆、美团单车1600辆。目前，两家单车企业在市区共施划电子围栏4992个，其中主城区4502个、江都区417个、生态科技新城73个。</p><p>通过一年多时间的运营，市区共享单车行业健康发展，市容秩序可圈可点，基本实现“三赢”的目标——一是丰富了市民出行方式，二是创新了市容管理模式，三是压实了运营公司主体责任。</p><p><br></p><p>去年，市城管局共开展了1次实地检查、2次季度考评和4次安全大检查，发现市区单车运行还存在不少问题，主要表现在：路面运维管理不够到位，技术手段应用不到位，电子围栏运行质效有待进一步提升；路面运维成为薄弱点，潮汐点位疏导能力差；车身保洁工作质效较差，车体小广告清理不及时、不彻底；头盔丢失较多，补充更换不够及时；车辆损坏较多，且损坏车辆回收不够及时，往往是用户扫码才发现是坏车，影响了用户满意度。</p><p>&nbsp;“车身小广告、头盔缺失或破损、乱停乱放这3类行为，依旧是存在于单车管理的三大顽疾，需要单车企业和主管部门共施猛药。”城管部门一位负责人表示。</p><p><strong>■单车骑行5184万公里，可减排约90吨污染物</strong></p><p>单车出行，既可健身，又能节能减排。环保专家介绍，有关研究表明，一辆车每开100公里，所排放的污染物大约为一氧化碳152克、碳氢化合物18克、氮氧化物3克，总计排放的污染物约173克。假设一辆车一天行驶20公里，那么这辆车每天至少要向空气里排放35克污染物。可想而知，如果我们都能少开一天车的话，会给空气质量减轻多大的压力。扬城市民去年单车骑行4584万公里，相当于减少了约90吨污染物的排放量。</p><p>记者 姜传刚&nbsp;&nbsp;</p>','/upload/image_1645155496813.jpg','2022年05月23日 12:51 新浪网');
insert into `article` values ('4','贵阳：共享电动单车 即将重出江湖','自行车','232','0',"2022-09-02 00:56:56.000 ","2022-09-02 00:56:56.000 ",null,null,null,'<p class="ql-align-center"><img src="https://n.sinaimg.cn/sinakd20220210s/495/w300h195/20220210/0405-c785d409f87f1af9fa28130d763617f9.jpg"><strong>一名共享电动单车管理人员在工作（资料图）</strong></p><p><br></p><p class="ql-align-center"><img src="https://n.sinaimg.cn/sinakd20220210s/500/w300h200/20220210/395b-9e59ddc567f328a5bc313ab384baf3cf.jpg"></p><p>便捷的共享电动单车解决了不少市民短途出行“最后一公里”的难题，但由于种种原因，不少市民都明显感觉到家附近的共享电动单车减少了。贵阳市融媒问政平台也接到很多市民留言，询问共享电动单车何时能恢复运营。</p><p><br></p><p>对此，贵阳市交通委员会回应，共享电动单车相关管理方案已编制完成，预计今年上半年开展投放工作。</p><p>市民提问：自共享电动单车取缔以来，市民没有短途代步工具，很多人出行都不方便，请问什么时候恢复共享电动单车？</p><p>贵阳市交通委员会答复：市民朋友您好，2018年以来，共享电动单车进入贵阳市场后，其电动助力性有效克服了贵阳市道路坡多且陡的骑行难题，为市民解决了“最后一公里”的出行困难。</p><p>与其他行业在发展初期出现的问题一样，共享电动单车在给市民带来便利的同时，也存在管理不完善、企业主体作用发挥不充分、行停秩序不规范等问题，存在一定的安全隐患。</p><p>为了规范共享电动单车的管理，按照市委、市政府工作安排，目前贵阳市交通委员会已完成相关管理工作方案初稿的编制，预计2022年上半年开展共享电动单车的投放工作，同时将按照工作方案的要求做好管理工作。</p><p>贵阳日报融媒体记者 杨萱</p>','/upload/image_1645155626142.jpg','2022年05月23日 12:51 新浪网');
insert into `article` values ('5','强化共享单车消杀 确保市民放心骑行','自行车','971','0',"2022-09-02 00:56:56.000 ","2022-09-02 00:56:56.000 ",null,null,null,'<p>近日，随着呼和浩特出现新发病例，传播风险进一步加大，防疫工作备受市民关注。市民李先生表示，“随着我们防疫经验的成熟，目前并不是很担心。关于日常出行，现在比较倾向于自驾或者使用共享单车，特殊时期来说接触人比较少，无论是对自己还是对其他的人来说，都是多一重保护。”</p><p><img src="http://n.sinaimg.cn/sinakd20118/321/w640h481/20220217/09a3-cd03cdd0a0e5b298a97f442aee11c04f.jpg"></p><p><br></p><p>通达商场作为呼市大型商贸物流集散中心，人员密度高，流动性强，出行需求比较旺盛，因此也是车辆保障和防疫消杀的重要区域。孙海全负责通达商场周边哈啰车辆的保障工作，“这边离着火车站比较近，人员流动比较密集，日常我们除了做好单车秩序的规范摆放，区域还要我们做到早中晚车辆消杀。为了做好防疫工作，我们这几天只要在摆放的时候就会做一次消毒，尽量保障市民出行需求。”同样负责通达商场周边秩序保障工作的还有哈啰运维王立国，“一天走上1-2万步是正常的，一开始我们也尝试过用大的消杀工具来执行防疫消杀要求，但是实际操作下来，虽然这种小的喷壶看似不起眼，但是随身携带的灵活性能够让我们随时随地开展消杀工作。一天算下来区域内循环车辆消杀最少能够确保3-4次。在我看来，多消杀一次多保障一次市民出行安全。”</p><p>据悉，为应对呼市零星散发病例，满足市民出行需求，哈啰出行将强化路面共享单车消杀工作，保障市民出行，运维负责人赵建波说，“哈啰一直执行的是‘三要一精准’消杀工作标准，即每辆车消毒时间要不低于5秒；车把、车座等骑行密切接触部位要二次喷洒消杀；办公场所密集、大型生活区等出行需求高的区域要进行重点、高频消杀；利用哈啰大脑对骑行数据进行科学管理，实现每一个骑行订单都精准追溯，以便精准防控。”</p>','/upload/image_1645155297810.jpg','2022年05月23日 12:51 新浪网');
insert into `article_type` values ('1','100','自行车','0',null,null,null,"2022-09-02 00:56:56.000 ","2022-09-02 00:56:56.000 ");
