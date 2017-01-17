DROP DATABASE IF EXISTS db_user;
CREATE DATABASE db_user;

DROP TABLE IF EXISTS db_user.user;
CREATE TABLE db_user.user (
  id        INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  email     VARCHAR(255) UNIQUE
  COMMENT '邮箱',
  account   VARCHAR(255) NOT NULL
  COMMENT '帐号',
  password  VARCHAR(255) NOT NULL
  COMMENT '密码',
  leaveWord TEXT COMMENT '留言'
)
  COMMENT '用户表';



-- 注册
INSERT INTO db_user.user VALUES (NULL, 'tester@test.com', 'tester', '123','');
-- 登录
SELECT *
FROM db_user.user
WHERE email = 'tester@test.com' AND password = '123';
-- 注销

-- 留言




