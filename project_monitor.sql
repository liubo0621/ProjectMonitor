/*
Navicat MySQL Data Transfer

Source Server         : ProjectMonitor
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : project_monitor

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-12-20 17:17:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for client_msg
-- ----------------------------
DROP TABLE IF EXISTS `client_msg`;
CREATE TABLE `client_msg` (
  `pk_cli_id` int(11) NOT NULL AUTO_INCREMENT,
  `cli_port` int(11) DEFAULT NULL,
  `cli_log_path` varchar(255) DEFAULT NULL,
  `for_ser_id` int(11) DEFAULT NULL,
  `record_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_cli_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of client_msg
-- ----------------------------
INSERT INTO `client_msg` VALUES ('98', '53777', '\\\\192.168.1.104\\logs\\client.log', '517', '2016-12-20 17:02:34');
INSERT INTO `client_msg` VALUES ('99', '54686', '\\\\192.168.1.104\\logs\\client.log', '538', '2016-12-20 17:14:09');

-- ----------------------------
-- Table structure for command_msg
-- ----------------------------
DROP TABLE IF EXISTS `command_msg`;
CREATE TABLE `command_msg` (
  `pk_com_id` int(11) NOT NULL AUTO_INCREMENT,
  `command` varchar(255) DEFAULT NULL,
  `ser_ip` varchar(255) DEFAULT NULL,
  `client_port` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `record_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_com_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of command_msg
-- ----------------------------
INSERT INTO `command_msg` VALUES ('23', 'PROcess:START', '192.168.1.109', '57729', '18', '2016-09-22 15:53:49');
INSERT INTO `command_msg` VALUES ('24', 'PROcess:RESTART', '192.168.1.109', '57817', '18', '2016-09-22 15:55:50');
INSERT INTO `command_msg` VALUES ('25', 'PROcess:RESTART', '192.168.1.109', '58636', '18', '2016-09-22 16:02:14');

-- ----------------------------
-- Table structure for cpu_msg
-- ----------------------------
DROP TABLE IF EXISTS `cpu_msg`;
CREATE TABLE `cpu_msg` (
  `pk_cpu_id` int(11) NOT NULL AUTO_INCREMENT,
  `cpu_mhz` int(11) DEFAULT NULL,
  `cpu_vendor` varchar(255) DEFAULT NULL,
  `cpu_model` varchar(255) DEFAULT NULL,
  `cpu_chache_size` int(11) DEFAULT NULL,
  `cpu_user_used` double DEFAULT NULL,
  `cpu_system_used` double DEFAULT NULL,
  `cpu_wait` double DEFAULT NULL,
  `cpu_idle` double DEFAULT NULL,
  `for_ser_id` int(11) DEFAULT NULL,
  `record_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_cpu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2044 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cpu_msg
-- ----------------------------
INSERT INTO `cpu_msg` VALUES ('1936', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0', '0.031936127744510975', '0', '0.9680638722554891', '512', '2016-12-20 17:02:32');
INSERT INTO `cpu_msg` VALUES ('1937', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.03006012024048096', '0', '0', '0.969939879759519', '512', '2016-12-20 17:02:32');
INSERT INTO `cpu_msg` VALUES ('1938', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0', '0', '0', '1', '512', '2016-12-20 17:02:32');
INSERT INTO `cpu_msg` VALUES ('1939', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.031936127744510975', '0.031936127744510975', '0', '0.936127744510978', '512', '2016-12-20 17:02:32');
INSERT INTO `cpu_msg` VALUES ('1940', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.19597989949748743', '0.29396984924623115', '0', '0.5100502512562815', '513', '2016-12-20 17:02:32');
INSERT INTO `cpu_msg` VALUES ('1941', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.27478042659974905', '0.3136762860727729', '0', '0.411543287327478', '513', '2016-12-20 17:02:32');
INSERT INTO `cpu_msg` VALUES ('1942', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.4321608040201005', '0.23492462311557788', '0', '0.33291457286432163', '513', '2016-12-20 17:02:33');
INSERT INTO `cpu_msg` VALUES ('1943', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.3136762860727729', '0.3337515683814304', '0', '0.35257214554579674', '513', '2016-12-20 17:02:33');
INSERT INTO `cpu_msg` VALUES ('1944', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.3', '0.33404255319148934', '0', '0.3659574468085106', '514', '2016-12-20 17:02:33');
INSERT INTO `cpu_msg` VALUES ('1945', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.3006396588486141', '0.43283582089552236', '0', '0.26652452025586354', '514', '2016-12-20 17:02:33');
INSERT INTO `cpu_msg` VALUES ('1946', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.19829424307036247', '0.3347547974413646', '0', '0.4669509594882729', '514', '2016-12-20 17:02:33');
INSERT INTO `cpu_msg` VALUES ('1947', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.2670940170940171', '0.3995726495726496', '0', '0.3333333333333333', '514', '2016-12-20 17:02:33');
INSERT INTO `cpu_msg` VALUES ('1948', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.1821705426356589', '0.4844961240310077', '0', '0.3333333333333333', '515', '2016-12-20 17:02:33');
INSERT INTO `cpu_msg` VALUES ('1949', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.2713178294573643', '0.45542635658914726', '0', '0.27325581395348836', '515', '2016-12-20 17:02:33');
INSERT INTO `cpu_msg` VALUES ('1950', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.30426356589147285', '0.4844961240310077', '0', '0.21124031007751937', '515', '2016-12-20 17:02:34');
INSERT INTO `cpu_msg` VALUES ('1951', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.3023255813953488', '0.45542635658914726', '0', '0.24224806201550386', '515', '2016-12-20 17:02:34');
INSERT INTO `cpu_msg` VALUES ('1952', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.156312625250501', '0.342685370741483', '0', '0.501002004008016', '516', '2016-12-20 17:02:34');
INSERT INTO `cpu_msg` VALUES ('1953', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.34468937875751504', '0.374749498997996', '0', '0.280561122244489', '516', '2016-12-20 17:02:34');
INSERT INTO `cpu_msg` VALUES ('1954', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.280561122244489', '0.46893787575150303', '0', '0.250501002004008', '516', '2016-12-20 17:02:34');
INSERT INTO `cpu_msg` VALUES ('1955', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.218', '0.468', '0', '0.314', '516', '2016-12-20 17:02:34');
INSERT INTO `cpu_msg` VALUES ('1956', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.2329059829059829', '0.36752136752136755', '0', '0.3995726495726496', '517', '2016-12-20 17:02:35');
INSERT INTO `cpu_msg` VALUES ('1957', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.3006396588486141', '0.43283582089552236', '0', '0.26652452025586354', '517', '2016-12-20 17:02:35');
INSERT INTO `cpu_msg` VALUES ('1958', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.16631130063965885', '0.5671641791044776', '0', '0.26652452025586354', '517', '2016-12-20 17:02:35');
INSERT INTO `cpu_msg` VALUES ('1959', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.20085470085470086', '0.4337606837606838', '0', '0.36538461538461536', '517', '2016-12-20 17:02:35');
INSERT INTO `cpu_msg` VALUES ('1960', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.03', '0.032', '0', '0.938', '518', '2016-12-20 17:13:55');
INSERT INTO `cpu_msg` VALUES ('1961', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0', '0.094', '0', '0.906', '518', '2016-12-20 17:13:55');
INSERT INTO `cpu_msg` VALUES ('1962', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.094', '0.032', '0', '0.874', '518', '2016-12-20 17:13:55');
INSERT INTO `cpu_msg` VALUES ('1963', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0', '0', '0', '1', '518', '2016-12-20 17:13:55');
INSERT INTO `cpu_msg` VALUES ('1964', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.3333333333333333', '0.3333333333333333', '0', '0.3333333333333333', '519', '2016-12-20 17:13:55');
INSERT INTO `cpu_msg` VALUES ('1965', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.3579638752052545', '0.3070607553366174', '0', '0.33497536945812806', '519', '2016-12-20 17:13:55');
INSERT INTO `cpu_msg` VALUES ('1966', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.25573770491803277', '0.4360655737704918', '0', '0.3081967213114754', '519', '2016-12-20 17:13:55');
INSERT INTO `cpu_msg` VALUES ('1967', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.22988505747126436', '0.2824302134646962', '0', '0.4876847290640394', '519', '2016-12-20 17:13:56');
INSERT INTO `cpu_msg` VALUES ('1968', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.14928909952606634', '0.518957345971564', '0', '0.33175355450236965', '520', '2016-12-20 17:13:56');
INSERT INTO `cpu_msg` VALUES ('1969', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.11137440758293839', '0.2962085308056872', '0', '0.5924170616113744', '520', '2016-12-20 17:13:56');
INSERT INTO `cpu_msg` VALUES ('1970', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.29691211401425177', '0.37054631828978624', '0', '0.332541567695962', '520', '2016-12-20 17:13:56');
INSERT INTO `cpu_msg` VALUES ('1971', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.26004728132387706', '0.2222222222222222', '0', '0.5177304964539007', '520', '2016-12-20 17:13:56');
INSERT INTO `cpu_msg` VALUES ('1972', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.1368653421633554', '0.4481236203090508', '0', '0.41501103752759383', '521', '2016-12-20 17:13:57');
INSERT INTO `cpu_msg` VALUES ('1973', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.07048458149779736', '0.44933920704845814', '0', '0.4801762114537445', '521', '2016-12-20 17:13:57');
INSERT INTO `cpu_msg` VALUES ('1974', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.20704845814977973', '0.5506607929515418', '0', '0.2422907488986784', '521', '2016-12-20 17:13:57');
INSERT INTO `cpu_msg` VALUES ('1975', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.2411504424778761', '0.2411504424778761', '0', '0.5176991150442478', '521', '2016-12-20 17:13:57');
INSERT INTO `cpu_msg` VALUES ('1976', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.24282560706401765', '0.3443708609271523', '0', '0.41280353200883', '522', '2016-12-20 17:13:58');
INSERT INTO `cpu_msg` VALUES ('1977', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.10176991150442478', '0.4823008849557522', '0', '0.415929203539823', '522', '2016-12-20 17:13:58');
INSERT INTO `cpu_msg` VALUES ('1978', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.17256637168141592', '0.4491150442477876', '0', '0.37831858407079644', '522', '2016-12-20 17:13:58');
INSERT INTO `cpu_msg` VALUES ('1979', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.20704845814977973', '0.5176211453744494', '0', '0.2753303964757709', '522', '2016-12-20 17:13:58');
INSERT INTO `cpu_msg` VALUES ('1980', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.2847380410022779', '0.357630979498861', '0', '0.357630979498861', '523', '2016-12-20 17:13:58');
INSERT INTO `cpu_msg` VALUES ('1981', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.14383561643835616', '0.3926940639269406', '0', '0.4634703196347032', '523', '2016-12-20 17:13:58');
INSERT INTO `cpu_msg` VALUES ('1982', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.2146118721461187', '0.3926940639269406', '0', '0.3926940639269406', '523', '2016-12-20 17:13:58');
INSERT INTO `cpu_msg` VALUES ('1983', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.10730593607305935', '0.4634703196347032', '0', '0.4292237442922374', '523', '2016-12-20 17:13:58');
INSERT INTO `cpu_msg` VALUES ('1984', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.2411504424778761', '0.4491150442477876', '0', '0.30973451327433627', '524', '2016-12-20 17:13:59');
INSERT INTO `cpu_msg` VALUES ('1985', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.24061810154525387', '0.27593818984547464', '0', '0.48344370860927155', '524', '2016-12-20 17:13:59');
INSERT INTO `cpu_msg` VALUES ('1986', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.13716814159292035', '0.5862831858407079', '0', '0.27654867256637167', '524', '2016-12-20 17:13:59');
INSERT INTO `cpu_msg` VALUES ('1987', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.30973451327433627', '0.3805309734513274', '0', '0.30973451327433627', '524', '2016-12-20 17:13:59');
INSERT INTO `cpu_msg` VALUES ('1988', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.17848970251716248', '0.5354691075514875', '0', '0.28604118993135014', '525', '2016-12-20 17:14:00');
INSERT INTO `cpu_msg` VALUES ('1989', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.14383561643835616', '0.4634703196347032', '0', '0.3926940639269406', '525', '2016-12-20 17:14:00');
INSERT INTO `cpu_msg` VALUES ('1990', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.17995444191343962', '0.2847380410022779', '0', '0.5353075170842825', '525', '2016-12-20 17:14:00');
INSERT INTO `cpu_msg` VALUES ('1991', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.18036529680365296', '0.5342465753424658', '0', '0.2853881278538813', '525', '2016-12-20 17:14:00');
INSERT INTO `cpu_msg` VALUES ('1992', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.16631130063965885', '0.5991471215351812', '0', '0.2345415778251599', '526', '2016-12-20 17:14:00');
INSERT INTO `cpu_msg` VALUES ('1993', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.06623931623931624', '0.4337606837606838', '0', '0.5', '526', '2016-12-20 17:14:00');
INSERT INTO `cpu_msg` VALUES ('1994', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.16631130063965885', '0.4349680170575693', '0', '0.39872068230277186', '526', '2016-12-20 17:14:01');
INSERT INTO `cpu_msg` VALUES ('1995', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.09829059829059829', '0.6004273504273504', '0', '0.30128205128205127', '526', '2016-12-20 17:14:01');
INSERT INTO `cpu_msg` VALUES ('1996', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.188', '0.438', '0', '0.374', '527', '2016-12-20 17:14:01');
INSERT INTO `cpu_msg` VALUES ('1997', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.18762475049900199', '0.530938123752495', '0', '0.281437125748503', '527', '2016-12-20 17:14:01');
INSERT INTO `cpu_msg` VALUES ('1998', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.250501002004008', '0.342685370741483', '0', '0.40681362725450904', '527', '2016-12-20 17:14:01');
INSERT INTO `cpu_msg` VALUES ('1999', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.21956087824351297', '0.530938123752495', '0', '0.249500998003992', '527', '2016-12-20 17:14:01');
INSERT INTO `cpu_msg` VALUES ('2000', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.22274881516587677', '0.25829383886255924', '0', '0.518957345971564', '528', '2016-12-20 17:14:02');
INSERT INTO `cpu_msg` VALUES ('2001', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.03571428571428571', '0.5571428571428572', '0', '0.40714285714285714', '528', '2016-12-20 17:14:02');
INSERT INTO `cpu_msg` VALUES ('2002', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.22037914691943128', '0.3341232227488152', '0', '0.44549763033175355', '528', '2016-12-20 17:14:02');
INSERT INTO `cpu_msg` VALUES ('2003', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.14726840855106887', '0.332541567695962', '0', '0.5201900237529691', '528', '2016-12-20 17:14:02');
INSERT INTO `cpu_msg` VALUES ('2004', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.10352422907488987', '0.5859030837004405', '0', '0.31057268722466963', '529', '2016-12-20 17:14:03');
INSERT INTO `cpu_msg` VALUES ('2005', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.17362637362637362', '0.34505494505494505', '0', '0.48131868131868133', '529', '2016-12-20 17:14:03');
INSERT INTO `cpu_msg` VALUES ('2006', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.20704845814977973', '0.41409691629955947', '0', '0.3788546255506608', '529', '2016-12-20 17:14:03');
INSERT INTO `cpu_msg` VALUES ('2007', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.07048458149779736', '0.48237885462555063', '0', '0.44713656387665196', '529', '2016-12-20 17:14:03');
INSERT INTO `cpu_msg` VALUES ('2008', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.13247863247863248', '0.5683760683760684', '0', '0.29914529914529914', '530', '2016-12-20 17:14:03');
INSERT INTO `cpu_msg` VALUES ('2009', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.13219616204690832', '0.36673773987206826', '0', '0.5010660980810234', '530', '2016-12-20 17:14:03');
INSERT INTO `cpu_msg` VALUES ('2010', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.3333333333333333', '0.4337606837606838', '0', '0.2329059829059829', '530', '2016-12-20 17:14:03');
INSERT INTO `cpu_msg` VALUES ('2011', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.13247863247863248', '0.36752136752136755', '0', '0.5', '530', '2016-12-20 17:14:04');
INSERT INTO `cpu_msg` VALUES ('2012', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.24282560706401765', '0.3090507726269316', '0', '0.4481236203090508', '531', '2016-12-20 17:14:04');
INSERT INTO `cpu_msg` VALUES ('2013', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.2079646017699115', '0.37831858407079644', '0', '0.413716814159292', '531', '2016-12-20 17:14:04');
INSERT INTO `cpu_msg` VALUES ('2014', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.31125827814569534', '0.41280353200883', '0', '0.27593818984547464', '531', '2016-12-20 17:14:04');
INSERT INTO `cpu_msg` VALUES ('2015', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.10352422907488987', '0.48237885462555063', '0', '0.41409691629955947', '531', '2016-12-20 17:14:04');
INSERT INTO `cpu_msg` VALUES ('2016', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.1780821917808219', '0.4292237442922374', '0', '0.3926940639269406', '532', '2016-12-20 17:14:05');
INSERT INTO `cpu_msg` VALUES ('2017', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.1415525114155251', '0.3584474885844749', '0', '0.5', '532', '2016-12-20 17:14:05');
INSERT INTO `cpu_msg` VALUES ('2018', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.2853881278538813', '0.4292237442922374', '0', '0.2853881278538813', '532', '2016-12-20 17:14:05');
INSERT INTO `cpu_msg` VALUES ('2019', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.14187643020594964', '0.39359267734553777', '0', '0.4645308924485126', '532', '2016-12-20 17:14:05');
INSERT INTO `cpu_msg` VALUES ('2020', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.2151029748283753', '0.32036613272311215', '0', '0.4645308924485126', '533', '2016-12-20 17:14:05');
INSERT INTO `cpu_msg` VALUES ('2021', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.14383561643835616', '0.4634703196347032', '0', '0.3926940639269406', '533', '2016-12-20 17:14:06');
INSERT INTO `cpu_msg` VALUES ('2022', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.17848970251716248', '0.4988558352402746', '0', '0.32265446224256294', '533', '2016-12-20 17:14:06');
INSERT INTO `cpu_msg` VALUES ('2023', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.2151029748283753', '0.32036613272311215', '0', '0.4645308924485126', '533', '2016-12-20 17:14:06');
INSERT INTO `cpu_msg` VALUES ('2024', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.1776765375854214', '0.4646924829157175', '0', '0.357630979498861', '534', '2016-12-20 17:14:06');
INSERT INTO `cpu_msg` VALUES ('2025', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.17848970251716248', '0.2494279176201373', '0', '0.5720823798627003', '534', '2016-12-20 17:14:06');
INSERT INTO `cpu_msg` VALUES ('2026', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.2511415525114155', '0.3926940639269406', '0', '0.3561643835616438', '534', '2016-12-20 17:14:06');
INSERT INTO `cpu_msg` VALUES ('2027', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.14383561643835616', '0.3219178082191781', '0', '0.5342465753424658', '534', '2016-12-20 17:14:07');
INSERT INTO `cpu_msg` VALUES ('2028', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.21330275229357798', '0.536697247706422', '0', '0.25', '535', '2016-12-20 17:14:07');
INSERT INTO `cpu_msg` VALUES ('2029', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.17848970251716248', '0.32265446224256294', '0', '0.4988558352402746', '535', '2016-12-20 17:14:07');
INSERT INTO `cpu_msg` VALUES ('2030', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.17848970251716248', '0.5720823798627003', '0', '0.2494279176201373', '535', '2016-12-20 17:14:07');
INSERT INTO `cpu_msg` VALUES ('2031', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.1415525114155251', '0.3219178082191781', '0', '0.5365296803652968', '535', '2016-12-20 17:14:07');
INSERT INTO `cpu_msg` VALUES ('2032', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.10375275938189846', '0.48344370860927155', '0', '0.41280353200883', '536', '2016-12-20 17:14:08');
INSERT INTO `cpu_msg` VALUES ('2033', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.13876651982378854', '0.3788546255506608', '0', '0.48237885462555063', '536', '2016-12-20 17:14:08');
INSERT INTO `cpu_msg` VALUES ('2034', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.3090507726269316', '0.37969094922737306', '0', '0.31125827814569534', '536', '2016-12-20 17:14:08');
INSERT INTO `cpu_msg` VALUES ('2035', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.1390728476821192', '0.3090507726269316', '0', '0.5518763796909493', '536', '2016-12-20 17:14:08');
INSERT INTO `cpu_msg` VALUES ('2036', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.20704845814977973', '0.44713656387665196', '0', '0.3458149779735683', '537', '2016-12-20 17:14:08');
INSERT INTO `cpu_msg` VALUES ('2037', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.13716814159292035', '0.30973451327433627', '0', '0.5530973451327433', '537', '2016-12-20 17:14:08');
INSERT INTO `cpu_msg` VALUES ('2038', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.2422907488986784', '0.31057268722466963', '0', '0.44713656387665196', '537', '2016-12-20 17:14:09');
INSERT INTO `cpu_msg` VALUES ('2039', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.27593818984547464', '0.41501103752759383', '0', '0.3090507726269316', '537', '2016-12-20 17:14:09');
INSERT INTO `cpu_msg` VALUES ('2040', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.10398230088495575', '0.413716814159292', '0', '0.4823008849557522', '538', '2016-12-20 17:14:09');
INSERT INTO `cpu_msg` VALUES ('2041', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.24061810154525387', '0.48344370860927155', '0', '0.27593818984547464', '538', '2016-12-20 17:14:09');
INSERT INTO `cpu_msg` VALUES ('2042', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.20575221238938052', '0.30973451327433627', '0', '0.48451327433628316', '538', '2016-12-20 17:14:09');
INSERT INTO `cpu_msg` VALUES ('2043', '2400', 'Intel', 'Core(TM) i5-6200U CPU @ 2.30GHz', '-1', '0.27593818984547464', '0.3443708609271523', '0', '0.37969094922737306', '538', '2016-12-20 17:14:09');

-- ----------------------------
-- Table structure for dict
-- ----------------------------
DROP TABLE IF EXISTS `dict`;
CREATE TABLE `dict` (
  `pk_dict_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`pk_dict_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dict
-- ----------------------------
INSERT INTO `dict` VALUES ('1', '16', 'command_todo');
INSERT INTO `dict` VALUES ('2', '17', 'commamd_doing');
INSERT INTO `dict` VALUES ('3', '18', 'commamd_done');
INSERT INTO `dict` VALUES ('4', '19', 'commamd_exception');
INSERT INTO `dict` VALUES ('5', '1', 'task_doing');
INSERT INTO `dict` VALUES ('8', '2', 'task_done');
INSERT INTO `dict` VALUES ('9', '3', 'task_exception');
INSERT INTO `dict` VALUES ('10', '4', 'task_overtime');
INSERT INTO `dict` VALUES ('11', '256', 'project_running');
INSERT INTO `dict` VALUES ('12', '257', 'project_stop');
INSERT INTO `dict` VALUES ('13', '4096', 'server_running');
INSERT INTO `dict` VALUES ('14', '4097', 'server_stop');

-- ----------------------------
-- Table structure for exception_msg
-- ----------------------------
DROP TABLE IF EXISTS `exception_msg`;
CREATE TABLE `exception_msg` (
  `pk_exc_id` int(11) NOT NULL AUTO_INCREMENT,
  `exc_msg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `for_pro_id` int(11) DEFAULT NULL,
  `for_ser_id` int(11) DEFAULT NULL,
  `record_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_exc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of exception_msg
-- ----------------------------
INSERT INTO `exception_msg` VALUES ('1', 'java.lang.ArithmeticException: / by zero', '532', '538', '2016-12-20 17:14:09');

-- ----------------------------
-- Table structure for physical_memory_msg
-- ----------------------------
DROP TABLE IF EXISTS `physical_memory_msg`;
CREATE TABLE `physical_memory_msg` (
  `pk_phy_id` int(11) NOT NULL AUTO_INCREMENT,
  `phy_name` varchar(255) DEFAULT NULL,
  `phy_sys_type_name` varchar(255) DEFAULT NULL,
  `phy_type_name` varchar(255) DEFAULT NULL,
  `phy_memory` int(11) DEFAULT NULL,
  `phy_memory_free` int(11) DEFAULT NULL,
  `phy_memory_used` int(11) DEFAULT NULL,
  `phy_memory_avail` int(11) DEFAULT NULL,
  `phy_use_percent` double DEFAULT NULL,
  `for_ser_id` int(11) DEFAULT NULL,
  `record_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_phy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1131 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of physical_memory_msg
-- ----------------------------
INSERT INTO `physical_memory_msg` VALUES ('1050', 'C:\\\\', 'NTFS', 'local', '244381692', '192459944', '51921748', '192459944', '0.22', '512', '2016-12-20 17:02:32');
INSERT INTO `physical_memory_msg` VALUES ('1051', 'D:\\\\', 'NTFS', 'local', '104857596', '65050436', '39807160', '65050436', '0.38', '512', '2016-12-20 17:02:32');
INSERT INTO `physical_memory_msg` VALUES ('1052', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '512', '2016-12-20 17:02:32');
INSERT INTO `physical_memory_msg` VALUES ('1053', 'C:\\\\', 'NTFS', 'local', '244381692', '192459940', '51921752', '192459940', '0.22', '513', '2016-12-20 17:02:33');
INSERT INTO `physical_memory_msg` VALUES ('1054', 'D:\\\\', 'NTFS', 'local', '104857596', '65050428', '39807168', '65050428', '0.38', '513', '2016-12-20 17:02:33');
INSERT INTO `physical_memory_msg` VALUES ('1055', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '513', '2016-12-20 17:02:33');
INSERT INTO `physical_memory_msg` VALUES ('1056', 'C:\\\\', 'NTFS', 'local', '244381692', '192459940', '51921752', '192459940', '0.22', '514', '2016-12-20 17:02:33');
INSERT INTO `physical_memory_msg` VALUES ('1057', 'D:\\\\', 'NTFS', 'local', '104857596', '65050404', '39807192', '65050404', '0.38', '514', '2016-12-20 17:02:33');
INSERT INTO `physical_memory_msg` VALUES ('1058', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '514', '2016-12-20 17:02:33');
INSERT INTO `physical_memory_msg` VALUES ('1059', 'C:\\\\', 'NTFS', 'local', '244381692', '192459940', '51921752', '192459940', '0.22', '515', '2016-12-20 17:02:34');
INSERT INTO `physical_memory_msg` VALUES ('1060', 'D:\\\\', 'NTFS', 'local', '104857596', '65050404', '39807192', '65050404', '0.38', '515', '2016-12-20 17:02:34');
INSERT INTO `physical_memory_msg` VALUES ('1061', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '515', '2016-12-20 17:02:34');
INSERT INTO `physical_memory_msg` VALUES ('1062', 'C:\\\\', 'NTFS', 'local', '244381692', '192459940', '51921752', '192459940', '0.22', '516', '2016-12-20 17:02:34');
INSERT INTO `physical_memory_msg` VALUES ('1063', 'D:\\\\', 'NTFS', 'local', '104857596', '65050404', '39807192', '65050404', '0.38', '516', '2016-12-20 17:02:34');
INSERT INTO `physical_memory_msg` VALUES ('1064', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '516', '2016-12-20 17:02:34');
INSERT INTO `physical_memory_msg` VALUES ('1065', 'C:\\\\', 'NTFS', 'local', '244381692', '192459940', '51921752', '192459940', '0.22', '517', '2016-12-20 17:02:35');
INSERT INTO `physical_memory_msg` VALUES ('1066', 'D:\\\\', 'NTFS', 'local', '104857596', '65050364', '39807232', '65050364', '0.38', '517', '2016-12-20 17:02:35');
INSERT INTO `physical_memory_msg` VALUES ('1067', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '517', '2016-12-20 17:02:35');
INSERT INTO `physical_memory_msg` VALUES ('1068', 'C:\\\\', 'NTFS', 'local', '244381692', '192446764', '51934928', '192446764', '0.22', '518', '2016-12-20 17:13:55');
INSERT INTO `physical_memory_msg` VALUES ('1069', 'D:\\\\', 'NTFS', 'local', '104857596', '65050388', '39807208', '65050388', '0.38', '518', '2016-12-20 17:13:55');
INSERT INTO `physical_memory_msg` VALUES ('1070', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '518', '2016-12-20 17:13:55');
INSERT INTO `physical_memory_msg` VALUES ('1071', 'C:\\\\', 'NTFS', 'local', '244381692', '192446764', '51934928', '192446764', '0.22', '519', '2016-12-20 17:13:56');
INSERT INTO `physical_memory_msg` VALUES ('1072', 'D:\\\\', 'NTFS', 'local', '104857596', '65050380', '39807216', '65050380', '0.38', '519', '2016-12-20 17:13:56');
INSERT INTO `physical_memory_msg` VALUES ('1073', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '519', '2016-12-20 17:13:56');
INSERT INTO `physical_memory_msg` VALUES ('1074', 'C:\\\\', 'NTFS', 'local', '244381692', '192446764', '51934928', '192446764', '0.22', '520', '2016-12-20 17:13:56');
INSERT INTO `physical_memory_msg` VALUES ('1075', 'D:\\\\', 'NTFS', 'local', '104857596', '65050368', '39807228', '65050368', '0.38', '520', '2016-12-20 17:13:56');
INSERT INTO `physical_memory_msg` VALUES ('1076', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '520', '2016-12-20 17:13:57');
INSERT INTO `physical_memory_msg` VALUES ('1077', 'C:\\\\', 'NTFS', 'local', '244381692', '192446764', '51934928', '192446764', '0.22', '521', '2016-12-20 17:13:57');
INSERT INTO `physical_memory_msg` VALUES ('1078', 'D:\\\\', 'NTFS', 'local', '104857596', '65050356', '39807240', '65050356', '0.38', '521', '2016-12-20 17:13:57');
INSERT INTO `physical_memory_msg` VALUES ('1079', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '521', '2016-12-20 17:13:57');
INSERT INTO `physical_memory_msg` VALUES ('1080', 'C:\\\\', 'NTFS', 'local', '244381692', '192446764', '51934928', '192446764', '0.22', '522', '2016-12-20 17:13:58');
INSERT INTO `physical_memory_msg` VALUES ('1081', 'D:\\\\', 'NTFS', 'local', '104857596', '65050356', '39807240', '65050356', '0.38', '522', '2016-12-20 17:13:58');
INSERT INTO `physical_memory_msg` VALUES ('1082', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '522', '2016-12-20 17:13:58');
INSERT INTO `physical_memory_msg` VALUES ('1083', 'C:\\\\', 'NTFS', 'local', '244381692', '192446764', '51934928', '192446764', '0.22', '523', '2016-12-20 17:13:58');
INSERT INTO `physical_memory_msg` VALUES ('1084', 'D:\\\\', 'NTFS', 'local', '104857596', '65050332', '39807264', '65050332', '0.38', '523', '2016-12-20 17:13:59');
INSERT INTO `physical_memory_msg` VALUES ('1085', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '523', '2016-12-20 17:13:59');
INSERT INTO `physical_memory_msg` VALUES ('1086', 'C:\\\\', 'NTFS', 'local', '244381692', '192446764', '51934928', '192446764', '0.22', '524', '2016-12-20 17:13:59');
INSERT INTO `physical_memory_msg` VALUES ('1087', 'D:\\\\', 'NTFS', 'local', '104857596', '65050332', '39807264', '65050332', '0.38', '524', '2016-12-20 17:13:59');
INSERT INTO `physical_memory_msg` VALUES ('1088', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '524', '2016-12-20 17:13:59');
INSERT INTO `physical_memory_msg` VALUES ('1089', 'C:\\\\', 'NTFS', 'local', '244381692', '192446764', '51934928', '192446764', '0.22', '525', '2016-12-20 17:14:00');
INSERT INTO `physical_memory_msg` VALUES ('1090', 'D:\\\\', 'NTFS', 'local', '104857596', '65050328', '39807268', '65050328', '0.38', '525', '2016-12-20 17:14:00');
INSERT INTO `physical_memory_msg` VALUES ('1091', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '525', '2016-12-20 17:14:00');
INSERT INTO `physical_memory_msg` VALUES ('1092', 'C:\\\\', 'NTFS', 'local', '244381692', '192446764', '51934928', '192446764', '0.22', '526', '2016-12-20 17:14:01');
INSERT INTO `physical_memory_msg` VALUES ('1093', 'D:\\\\', 'NTFS', 'local', '104857596', '65050328', '39807268', '65050328', '0.38', '526', '2016-12-20 17:14:01');
INSERT INTO `physical_memory_msg` VALUES ('1094', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '526', '2016-12-20 17:14:01');
INSERT INTO `physical_memory_msg` VALUES ('1095', 'C:\\\\', 'NTFS', 'local', '244381692', '192446764', '51934928', '192446764', '0.22', '527', '2016-12-20 17:14:01');
INSERT INTO `physical_memory_msg` VALUES ('1096', 'D:\\\\', 'NTFS', 'local', '104857596', '65050268', '39807328', '65050268', '0.38', '527', '2016-12-20 17:14:01');
INSERT INTO `physical_memory_msg` VALUES ('1097', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '527', '2016-12-20 17:14:02');
INSERT INTO `physical_memory_msg` VALUES ('1098', 'C:\\\\', 'NTFS', 'local', '244381692', '192446764', '51934928', '192446764', '0.22', '528', '2016-12-20 17:14:02');
INSERT INTO `physical_memory_msg` VALUES ('1099', 'D:\\\\', 'NTFS', 'local', '104857596', '65050268', '39807328', '65050268', '0.38', '528', '2016-12-20 17:14:02');
INSERT INTO `physical_memory_msg` VALUES ('1100', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '528', '2016-12-20 17:14:02');
INSERT INTO `physical_memory_msg` VALUES ('1101', 'C:\\\\', 'NTFS', 'local', '244381692', '192446764', '51934928', '192446764', '0.22', '529', '2016-12-20 17:14:03');
INSERT INTO `physical_memory_msg` VALUES ('1102', 'D:\\\\', 'NTFS', 'local', '104857596', '65050220', '39807376', '65050220', '0.38', '529', '2016-12-20 17:14:03');
INSERT INTO `physical_memory_msg` VALUES ('1103', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '529', '2016-12-20 17:14:03');
INSERT INTO `physical_memory_msg` VALUES ('1104', 'C:\\\\', 'NTFS', 'local', '244381692', '192446764', '51934928', '192446764', '0.22', '530', '2016-12-20 17:14:04');
INSERT INTO `physical_memory_msg` VALUES ('1105', 'D:\\\\', 'NTFS', 'local', '104857596', '65050220', '39807376', '65050220', '0.38', '530', '2016-12-20 17:14:04');
INSERT INTO `physical_memory_msg` VALUES ('1106', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '530', '2016-12-20 17:14:04');
INSERT INTO `physical_memory_msg` VALUES ('1107', 'C:\\\\', 'NTFS', 'local', '244381692', '192446764', '51934928', '192446764', '0.22', '531', '2016-12-20 17:14:04');
INSERT INTO `physical_memory_msg` VALUES ('1108', 'D:\\\\', 'NTFS', 'local', '104857596', '65050220', '39807376', '65050220', '0.38', '531', '2016-12-20 17:14:04');
INSERT INTO `physical_memory_msg` VALUES ('1109', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '531', '2016-12-20 17:14:04');
INSERT INTO `physical_memory_msg` VALUES ('1110', 'C:\\\\', 'NTFS', 'local', '244381692', '192446764', '51934928', '192446764', '0.22', '532', '2016-12-20 17:14:05');
INSERT INTO `physical_memory_msg` VALUES ('1111', 'D:\\\\', 'NTFS', 'local', '104857596', '65050220', '39807376', '65050220', '0.38', '532', '2016-12-20 17:14:05');
INSERT INTO `physical_memory_msg` VALUES ('1112', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '532', '2016-12-20 17:14:05');
INSERT INTO `physical_memory_msg` VALUES ('1113', 'C:\\\\', 'NTFS', 'local', '244381692', '192446764', '51934928', '192446764', '0.22', '533', '2016-12-20 17:14:06');
INSERT INTO `physical_memory_msg` VALUES ('1114', 'D:\\\\', 'NTFS', 'local', '104857596', '65050220', '39807376', '65050220', '0.38', '533', '2016-12-20 17:14:06');
INSERT INTO `physical_memory_msg` VALUES ('1115', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '533', '2016-12-20 17:14:06');
INSERT INTO `physical_memory_msg` VALUES ('1116', 'C:\\\\', 'NTFS', 'local', '244381692', '192446764', '51934928', '192446764', '0.22', '534', '2016-12-20 17:14:07');
INSERT INTO `physical_memory_msg` VALUES ('1117', 'D:\\\\', 'NTFS', 'local', '104857596', '65050220', '39807376', '65050220', '0.38', '534', '2016-12-20 17:14:07');
INSERT INTO `physical_memory_msg` VALUES ('1118', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '534', '2016-12-20 17:14:07');
INSERT INTO `physical_memory_msg` VALUES ('1119', 'C:\\\\', 'NTFS', 'local', '244381692', '192446764', '51934928', '192446764', '0.22', '535', '2016-12-20 17:14:07');
INSERT INTO `physical_memory_msg` VALUES ('1120', 'D:\\\\', 'NTFS', 'local', '104857596', '65050220', '39807376', '65050220', '0.38', '535', '2016-12-20 17:14:07');
INSERT INTO `physical_memory_msg` VALUES ('1121', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '535', '2016-12-20 17:14:07');
INSERT INTO `physical_memory_msg` VALUES ('1122', 'C:\\\\', 'NTFS', 'local', '244381692', '192446764', '51934928', '192446764', '0.22', '536', '2016-12-20 17:14:08');
INSERT INTO `physical_memory_msg` VALUES ('1123', 'D:\\\\', 'NTFS', 'local', '104857596', '65050220', '39807376', '65050220', '0.38', '536', '2016-12-20 17:14:08');
INSERT INTO `physical_memory_msg` VALUES ('1124', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '536', '2016-12-20 17:14:08');
INSERT INTO `physical_memory_msg` VALUES ('1125', 'C:\\\\', 'NTFS', 'local', '244381692', '192446764', '51934928', '192446764', '0.22', '537', '2016-12-20 17:14:09');
INSERT INTO `physical_memory_msg` VALUES ('1126', 'D:\\\\', 'NTFS', 'local', '104857596', '65050220', '39807376', '65050220', '0.38', '537', '2016-12-20 17:14:09');
INSERT INTO `physical_memory_msg` VALUES ('1127', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '537', '2016-12-20 17:14:09');
INSERT INTO `physical_memory_msg` VALUES ('1128', 'C:\\\\', 'NTFS', 'local', '244381692', '192446764', '51934928', '192446764', '0.22', '538', '2016-12-20 17:14:10');
INSERT INTO `physical_memory_msg` VALUES ('1129', 'D:\\\\', 'NTFS', 'local', '104857596', '65050220', '39807376', '65050220', '0.38', '538', '2016-12-20 17:14:10');
INSERT INTO `physical_memory_msg` VALUES ('1130', 'F:\\\\', 'NTFS', 'local', '137839612', '137638304', '201308', '137638304', '0.01', '538', '2016-12-20 17:14:10');

-- ----------------------------
-- Table structure for project_msg
-- ----------------------------
DROP TABLE IF EXISTS `project_msg`;
CREATE TABLE `project_msg` (
  `pk_pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pro_thread_num` int(11) DEFAULT NULL,
  `pro_cpu_rate` double DEFAULT NULL,
  `pro_memory` int(11) DEFAULT NULL,
  `pro_run_time` varchar(255) DEFAULT NULL,
  `pro_task_done_num` int(11) DEFAULT NULL,
  `pro_status` int(11) DEFAULT NULL,
  `for_ser_id` int(11) DEFAULT NULL,
  `for_cli_id` int(11) DEFAULT NULL,
  `record_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=533 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of project_msg
-- ----------------------------
INSERT INTO `project_msg` VALUES ('506', '无线采集', '0', '0', '0', 'P0Y0M0DT0H0M0S 0', '20', '256', '512', '98', '2016-12-20 17:02:32');
INSERT INTO `project_msg` VALUES ('507', '无线采集', '0', '0', '0', 'P0Y0M0DT0H0M0S 0', '20', '256', '513', '98', '2016-12-20 17:02:32');
INSERT INTO `project_msg` VALUES ('508', '无线采集', '0', '0', '0', 'P0Y0M0DT0H0M0S 0', '21', '256', '514', '98', '2016-12-20 17:02:33');
INSERT INTO `project_msg` VALUES ('509', '无线采集', '0', '0', '0', 'P0Y0M0DT0H0M0S 0', '21', '256', '515', '98', '2016-12-20 17:02:33');
INSERT INTO `project_msg` VALUES ('510', '无线采集', '0', '0', '0', 'P0Y0M0DT0H0M0S 0', '22', '256', '516', '98', '2016-12-20 17:02:34');
INSERT INTO `project_msg` VALUES ('511', '无线采集', '0', '0', '0', 'P0Y0M0DT0H0M0S 0', '22', '256', '517', '98', '2016-12-20 17:02:34');
INSERT INTO `project_msg` VALUES ('512', '无线采集', '0', '0.4982636267552469', '21012', 'P0Y0M0DT0H0M13S 13', '20', '256', '518', '99', '2016-12-20 17:13:54');
INSERT INTO `project_msg` VALUES ('513', '无线采集', '0', '0', '21012', 'P0Y0M0DT0H0M14S 14', '20', '256', '519', '99', '2016-12-20 17:13:55');
INSERT INTO `project_msg` VALUES ('514', '无线采集', '0', '0.48006982833866746', '21012', 'P0Y0M0DT0H0M15S 15', '21', '256', '520', '99', '2016-12-20 17:13:56');
INSERT INTO `project_msg` VALUES ('515', '无线采集', '0', '0', '21012', 'P0Y0M0DT0H0M15S 15', '21', '256', '521', '99', '2016-12-20 17:13:57');
INSERT INTO `project_msg` VALUES ('516', '无线采集', '0', '0.4647887323943662', '21012', 'P0Y0M0DT0H0M16S 16', '22', '256', '522', '99', '2016-12-20 17:13:57');
INSERT INTO `project_msg` VALUES ('517', '无线采集', '0', '0', '21012', 'P0Y0M0DT0H0M16S 16', '22', '256', '523', '99', '2016-12-20 17:13:58');
INSERT INTO `project_msg` VALUES ('518', '无线采集', '0', '0.4506349856616141', '21012', 'P0Y0M0DT0H0M16S 16', '23', '256', '524', '99', '2016-12-20 17:13:59');
INSERT INTO `project_msg` VALUES ('519', '无线采集', '0', '0', '21012', 'P0Y0M0DT0H0M17S 17', '23', '256', '525', '99', '2016-12-20 17:14:00');
INSERT INTO `project_msg` VALUES ('520', '无线采集', '0', '0.4376948073479674', '21012', 'P0Y0M0DT0H0M17S 17', '24', '256', '526', '99', '2016-12-20 17:14:00');
INSERT INTO `project_msg` VALUES ('521', '无线采集', '0', '0', '21012', 'P0Y0M0DT0H0M18S 18', '24', '256', '527', '99', '2016-12-20 17:14:01');
INSERT INTO `project_msg` VALUES ('522', '无线采集', '0', '0.42460113226968604', '21012', 'P0Y0M0DT0H0M18S 18', '25', '256', '528', '99', '2016-12-20 17:14:02');
INSERT INTO `project_msg` VALUES ('523', '无线采集', '0', '0', '21012', 'P0Y0M0DT0H0M19S 19', '25', '256', '529', '99', '2016-12-20 17:14:02');
INSERT INTO `project_msg` VALUES ('524', '无线采集', '0', '0.41270635317658827', '21012', 'P0Y0M0DT0H0M19S 19', '26', '256', '530', '99', '2016-12-20 17:14:03');
INSERT INTO `project_msg` VALUES ('525', '无线采集', '0', '0', '21012', 'P0Y0M0DT0H0M20S 20', '26', '256', '531', '99', '2016-12-20 17:14:04');
INSERT INTO `project_msg` VALUES ('526', '无线采集', '0', '0.4013377926421405', '21012', 'P0Y0M0DT0H0M20S 20', '27', '256', '532', '99', '2016-12-20 17:14:05');
INSERT INTO `project_msg` VALUES ('527', '无线采集', '0', '0', '21012', 'P0Y0M0DT0H0M20S 20', '27', '256', '533', '99', '2016-12-20 17:14:05');
INSERT INTO `project_msg` VALUES ('528', '无线采集', '0', '0.3909257833323461', '21012', 'P0Y0M0DT0H0M21S 21', '28', '256', '534', '99', '2016-12-20 17:14:06');
INSERT INTO `project_msg` VALUES ('529', '无线采集', '0', '0', '21012', 'P0Y0M0DT0H0M21S 21', '28', '256', '535', '99', '2016-12-20 17:14:07');
INSERT INTO `project_msg` VALUES ('530', '无线采集', '0', '0.38090840884169214', '21012', 'P0Y0M0DT0H0M22S 22', '29', '256', '536', '99', '2016-12-20 17:14:08');
INSERT INTO `project_msg` VALUES ('531', '无线采集', '0', '0', '21012', 'P0Y0M0DT0H0M22S 22', '29', '256', '537', '99', '2016-12-20 17:14:08');
INSERT INTO `project_msg` VALUES ('532', '无线采集', '0', '0.37099494097807756', '21012', 'P0Y0M0DT0H0M23S 23', '30', '256', '538', '99', '2016-12-20 17:14:09');

-- ----------------------------
-- Table structure for server_msg
-- ----------------------------
DROP TABLE IF EXISTS `server_msg`;
CREATE TABLE `server_msg` (
  `pk_ser_id` int(11) NOT NULL AUTO_INCREMENT,
  `ser_ip` varchar(255) DEFAULT NULL,
  `ser_mac` varchar(255) DEFAULT NULL,
  `ser_system` varchar(255) DEFAULT NULL,
  `ser_memory` int(11) DEFAULT NULL,
  `ser_memory_used` int(11) DEFAULT NULL,
  `ser_memory_free` int(11) DEFAULT NULL,
  `ser_swap` int(11) DEFAULT NULL,
  `ser_swap_used` int(11) DEFAULT NULL,
  `ser_status` int(11) DEFAULT NULL,
  `ser_swap_free` int(11) DEFAULT NULL,
  `record_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_ser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=539 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of server_msg
-- ----------------------------
INSERT INTO `server_msg` VALUES ('512', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5001512', '3267392', '9579624', '7811460', '4096', '1768164', '2016-12-20 17:02:32');
INSERT INTO `server_msg` VALUES ('513', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5013752', '3255152', '9579624', '7817908', '4096', '1761716', '2016-12-20 17:02:32');
INSERT INTO `server_msg` VALUES ('514', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5014200', '3254704', '9579624', '7816276', '4096', '1763348', '2016-12-20 17:02:33');
INSERT INTO `server_msg` VALUES ('515', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5017944', '3250960', '9579624', '7819216', '4096', '1760408', '2016-12-20 17:02:33');
INSERT INTO `server_msg` VALUES ('516', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5019512', '3249392', '9579624', '7820332', '4096', '1759292', '2016-12-20 17:02:34');
INSERT INTO `server_msg` VALUES ('517', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5019888', '3249016', '9579624', '7819832', '4096', '1759792', '2016-12-20 17:02:34');
INSERT INTO `server_msg` VALUES ('518', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5014080', '3254824', '9579624', '7851256', '4096', '1728368', '2016-12-20 17:13:54');
INSERT INTO `server_msg` VALUES ('519', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5022664', '3246240', '9579624', '7854812', '4096', '1724812', '2016-12-20 17:13:55');
INSERT INTO `server_msg` VALUES ('520', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5024308', '3244596', '9579624', '7856612', '4096', '1723012', '2016-12-20 17:13:56');
INSERT INTO `server_msg` VALUES ('521', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5024804', '3244100', '9579624', '7856884', '4096', '1722740', '2016-12-20 17:13:57');
INSERT INTO `server_msg` VALUES ('522', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5027432', '3241472', '9579624', '7857932', '4096', '1721692', '2016-12-20 17:13:57');
INSERT INTO `server_msg` VALUES ('523', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5028052', '3240852', '9579624', '7855520', '4096', '1724104', '2016-12-20 17:13:58');
INSERT INTO `server_msg` VALUES ('524', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5030044', '3238860', '9579624', '7858520', '4096', '1721104', '2016-12-20 17:13:59');
INSERT INTO `server_msg` VALUES ('525', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5029740', '3239164', '9579624', '7856348', '4096', '1723276', '2016-12-20 17:13:59');
INSERT INTO `server_msg` VALUES ('526', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5032024', '3236880', '9579624', '7857940', '4096', '1721684', '2016-12-20 17:14:00');
INSERT INTO `server_msg` VALUES ('527', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5032436', '3236468', '9579624', '7857604', '4096', '1722020', '2016-12-20 17:14:01');
INSERT INTO `server_msg` VALUES ('528', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5032476', '3236428', '9579624', '7856732', '4096', '1722892', '2016-12-20 17:14:02');
INSERT INTO `server_msg` VALUES ('529', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5030804', '3238100', '9579624', '7854332', '4096', '1725292', '2016-12-20 17:14:02');
INSERT INTO `server_msg` VALUES ('530', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5032032', '3236872', '9579624', '7852312', '4096', '1727312', '2016-12-20 17:14:03');
INSERT INTO `server_msg` VALUES ('531', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5031284', '3237620', '9579624', '7851908', '4096', '1727716', '2016-12-20 17:14:04');
INSERT INTO `server_msg` VALUES ('532', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5032572', '3236332', '9579624', '7853028', '4096', '1726596', '2016-12-20 17:14:04');
INSERT INTO `server_msg` VALUES ('533', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5031736', '3237168', '9579624', '7851364', '4096', '1728260', '2016-12-20 17:14:05');
INSERT INTO `server_msg` VALUES ('534', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5032164', '3236740', '9579624', '7853204', '4096', '1726420', '2016-12-20 17:14:06');
INSERT INTO `server_msg` VALUES ('535', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5032556', '3236348', '9579624', '7852876', '4096', '1726748', '2016-12-20 17:14:07');
INSERT INTO `server_msg` VALUES ('536', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5033044', '3235860', '9579624', '7854952', '4096', '1724672', '2016-12-20 17:14:08');
INSERT INTO `server_msg` VALUES ('537', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5033272', '3235632', '9579624', '7855432', '4096', '1724192', '2016-12-20 17:14:08');
INSERT INTO `server_msg` VALUES ('538', '192.168.1.104', 'AC-2B-6E-C1-DC-5C', 'windows 8', '8268904', '5033164', '3235740', '9579624', '7853216', '4096', '1726408', '2016-12-20 17:14:09');

-- ----------------------------
-- Table structure for thread_msg
-- ----------------------------
DROP TABLE IF EXISTS `thread_msg`;
CREATE TABLE `thread_msg` (
  `pk_thr_id` int(11) NOT NULL AUTO_INCREMENT,
  `thr_thread_id` int(11) DEFAULT NULL,
  `thr_task_id` int(11) DEFAULT NULL,
  `thr_task_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thr_task_status` int(11) DEFAULT NULL,
  `for_pro_id` int(11) DEFAULT NULL,
  `for_ser_id` int(11) DEFAULT NULL,
  `record_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_thr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of thread_msg
-- ----------------------------
INSERT INTO `thread_msg` VALUES ('230', '1', '1', '测试1', '1', '514', '520', '2016-12-20 17:13:56');
INSERT INTO `thread_msg` VALUES ('231', '1', '1', '测试1', '2', '515', '521', '2016-12-20 17:13:57');
INSERT INTO `thread_msg` VALUES ('232', '1', '2', '测试2', '1', '516', '522', '2016-12-20 17:13:57');
INSERT INTO `thread_msg` VALUES ('233', '1', '2', '测试2', '2', '517', '523', '2016-12-20 17:13:58');
INSERT INTO `thread_msg` VALUES ('234', '1', '3', '测试3', '1', '518', '524', '2016-12-20 17:13:59');
INSERT INTO `thread_msg` VALUES ('235', '1', '3', '测试3', '2', '519', '525', '2016-12-20 17:14:00');
INSERT INTO `thread_msg` VALUES ('236', '1', '4', '测试4', '1', '520', '526', '2016-12-20 17:14:00');
INSERT INTO `thread_msg` VALUES ('237', '1', '4', '测试4', '2', '521', '527', '2016-12-20 17:14:01');
INSERT INTO `thread_msg` VALUES ('238', '1', '5', '测试5', '1', '522', '528', '2016-12-20 17:14:02');
INSERT INTO `thread_msg` VALUES ('239', '1', '5', '测试5', '2', '523', '529', '2016-12-20 17:14:03');
INSERT INTO `thread_msg` VALUES ('240', '1', '6', '测试6', '1', '524', '530', '2016-12-20 17:14:03');
INSERT INTO `thread_msg` VALUES ('241', '1', '6', '测试6', '2', '525', '531', '2016-12-20 17:14:04');
INSERT INTO `thread_msg` VALUES ('242', '1', '7', '测试7', '1', '526', '532', '2016-12-20 17:14:05');
INSERT INTO `thread_msg` VALUES ('243', '1', '7', '测试7', '2', '527', '533', '2016-12-20 17:14:05');
INSERT INTO `thread_msg` VALUES ('244', '1', '8', '测试8', '1', '528', '534', '2016-12-20 17:14:06');
INSERT INTO `thread_msg` VALUES ('245', '1', '8', '测试8', '2', '529', '535', '2016-12-20 17:14:07');
INSERT INTO `thread_msg` VALUES ('246', '1', '9', '测试9', '1', '530', '536', '2016-12-20 17:14:08');
INSERT INTO `thread_msg` VALUES ('247', '1', '9', '测试9', '2', '531', '537', '2016-12-20 17:14:08');
INSERT INTO `thread_msg` VALUES ('248', '1', '10', '测试异常10', '1', '532', '538', '2016-12-20 17:14:09');
