DROP DATABASE IF EXISTS db_user;
CREATE DATABASE db_user;

DROP TABLE IF EXISTS db_user.register;
CREATE TABLE db_user.register (
  email    VARCHAR(255) AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  account  VARCHAR(255) UNIQUE
  COMMENT '帐号',
  password VARCHAR(255) NOT NULL
  COMMENT '密码'
)
  COMMENT '用户注册表';

DROP TABLE IF EXISTS db_user.login;
CREATE TABLE db_user.login (
  email    VARCHAR(255) AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  password VARCHAR(255) NOT NULL
  COMMENT '密码'
)
  COMMENT '用户登录表';

DROP TABLE IF EXISTS db_user.logout;
CREATE TABLE db_user.logout (
  
);


