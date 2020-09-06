DROP DATABASE  IF EXISTS `travel`;
CREATE DATABASE IF  NOT EXISTS  `travel` DEFAULT  CHARACTER SET 'utf8';
USE `travel`

DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(10) unsigned PRIMARY KEY AUTO_INCREMENT COMMENT '用户id,主键自增',
  `username` varchar(60) NOT NULL COMMENT '用户名',
  `password` varchar(60) NOT NULL COMMENT '密码',
  `email` varchar(60) NOT NULL COMMENT '邮箱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_details`;
CREATE TABLE `t_details` (
  `id` int(10) unsigned PRIMARY KEY AUTO_INCREMENT COMMENT '用户详情表id,主键且自增',
  `avatar` varchar(50) NOT NULL DEFAULT 'unnamed.jpg' COMMENT '用户头像',
  `birthday` date  COMMENT '生日',
  `gender` int(1) NOT NULL DEFAULT 2 COMMENT '文章正文',
  `motto` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `user_create_time` datetime  NOT NULL COMMENT '创建日期',
  `user_id` int(10) NOT NULL COMMENT '外键,用户id',
  `scenic_id` int(10) NOT NULL COMMENT '外键,景点id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_province`;
CREATE TABLE `t_province` (
  `id` smallint(5) PRIMARY KEY AUTO_INCREMENT COMMENT '省份id,主键且自增',
  `province_name` varchar(30) NOT NULL COMMENT '省份名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_town`;
CREATE TABLE `t_town` (
  `id` smallint(5) PRIMARY KEY AUTO_INCREMENT COMMENT '市id,主键且自增',
  `town_name` varchar(30) NOT NULL COMMENT '市名称',
  `province_id` int(10) NOT NULL COMMENT '外键,省id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_scenic`;
CREATE TABLE `t_scenic` (
  `id` smallint(5) PRIMARY KEY AUTO_INCREMENT COMMENT '景点id,主键且自增',
  `scenic_name` varchar(30) NOT NULL COMMENT '景点名称',
  `town_id` int(10) NOT NULL COMMENT '外键,市id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;