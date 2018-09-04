SET NAMES UTF8;
DROP DATABASE IF EXISTS myMovie;
CREATE DATABASE myMovie CHARSET UTF8;
USE myMovie;
#网站基本信息表
CREATE TABLE myMovie_site_info(
  site_name VARCHAR(16),
  logo VARCHAR(64),
  admin_email VARCHAR(64),
  icp VARCHAR(32),
  copyright VARCHAR(64)
);
INSERT INTO myMovie_site_info
VALUES('我的电影网','img/logo.png','admin@myMovie.com','京ICP证090856788号','版权所有@2010-2018 我的电影网');

#导航表
CREATE TABLE myMovie_navbar_item(
  nid INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(16),
  url VARCHAR(128),
  title VARCHAR(32),
  parent INT #设置二级菜单
);
INSERT INTO myMovie_navbar_item VALUES
(NULL,'首页','/index.html','跳转到网站首页',NULL),
(NULL,'影讯','/movie_details.html','最新最热的电影资讯',1),
(NULL,'院线','/cinema.html','查看周围院线动态',1),
(NULL,'订票','/order.html','在线订票',NULL);

#轮播广告条目表
CREATE TABLE myMovie_carousel_item(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(32),
  pic VARCHAR(128),
  href VARCHAR(128),
  seq_recommended INT
);
INSERT INTO myMovie_carousel_item VALUES
(NULL,'战狼2','img/pic1.jpg','/movie_details.html?lid=1',0),
(NULL,'摔跤吧爸爸','img/pic2.jpg','/movie_details.html?lid=2',1),
(NULL,'FAN','img/pic3.jpg','/movie_details.html?lid=3',2),
(NULL,'神偷奶爸','img/pic4.jpg','/movie_details.html?lid=4',3),
(NULL,'我不是神药','img/pic5.jpg','/movie_details.html?lid=5',4);
#slider
CREATE TABLE myMovie_slider_item(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  pic VARCHAR(128),
  href VARCHAR(128),
  fname VARCHAR(64),
  fdate VARCHAR(32),
  cinema VARCHAR(64)
);
INSERT INTO myMovie_slider_item VALUES
(NULL,'img/slider-1.jpg','/movie_details.html?lid=1','西红市首富','2018年8月18','UME'),
(NULL,'img/slider-2.jpg','/movie_details.html?lid=2','西红市首富','2018年9月18','保利万和'),
(NULL,'img/slider-3.jpg','/movie_details.html?lid=3','西红市首富','2018年10月18','大地影院'),
(NULL,'img/slider-4.jpg','/movie_details.html?lid=4','西红市首富','2018年11月18','华谊兄弟'),
(NULL,'img/slider-5.jpg','/movie_details.html?lid=5','西红市首富','2018年8月28','国泰影院'),
(NULL,'img/slider-6.jpg','/movie_details.html?lid=6','我不是神药','2018年8月28','国泰影院');
CREATE TABLE movie_details(
  did INT PRIMARY KEY AUTO_INCREMENT,
  pic VARCHAR(128),
  fname VARCHAR(64),
  fdate VARCHAR(32),
  cinema VARCHAR(64)
);
INSERT INTO movie_details VALUES
(NULL,'img/slider-1.jpg','西红市首富','2018年8月18','UME'),
(NULL,'img/slider-1.jpg','西红市首富','2018年8月18','UME'),
(NULL,'img/slider-1.jpg','西红市首富','2018年8月18','UME'),
(NULL,'img/slider-1.jpg','西红市首富','2018年8月18','UME'),
(NULL,'img/slider-1.jpg','西红市首富','2018年8月18','UME');

CREATE TABLE movie_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  phone VARCHAR(11),
  avatar VARCHAR(123),
  user_name VARCHAR(32),
  gender INT(11)
);
INSERT INTO movie_user VALUES
(NULL,'Tom','123456','12546987632','','李文华','男'),
(NULL,'Jerry','123456','12546987632','','东东','男'),
(NULL,'Sam','123456','12546987632','','涛涛','男');
