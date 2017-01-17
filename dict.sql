DROP DATABASE IF EXISTS db_dict;
CREATE DATABASE db_dict;

DROP TABLE IF EXISTS db_dict.dict;
CREATE TABLE db_dict.dict (
  EnglishId       VARCHAR(255) NOT NULL
  COMMENT '英文',
  ChineseId       VARCHAR(255) NOT NULL
  COMMENT '汉语',
  phonetic_symbol VARCHAR(255) NOT NULL
  COMMENT '音标'
)
  COMMENT 'dict表';

DROP TABLE IF EXISTS db_dict.English;
CREATE TABLE db_dict.English (
  id      INT PRIMARY KEY AUTO_INCREMENT
  COMMENT 'PK',
  English VARCHAR(255) NOT NULL PRIMARY KEY
  COMMENT '英文'
)COMMENT '英文表';

DROP TABLE IF EXISTS db_dict.Chinese;
CREATE TABLE db_dict.Chinese (
  id      INT PRIMARY KEY AUTO_INCREMENT
  COMMENT 'PK',
  Chinese VARCHAR(255) NOT NULL
  COMMENT '汉语'
)
  COMMENT 'Chinese表';

ALTER TABLE db_dict.dict
  ADD CONSTRAINT
  fk_dict_EnglishId -- alias 别名\ [ˈeɪliəs]
FOREIGN KEY (EnglishId)
REFERENCES db_dict.English (id);

ALTER TABLE db_dict.dict
  ADD CONSTRAINT
  fk_dict_ChineseId -- alias 别名\ [ˈeɪliəs]
FOREIGN KEY (ChineseId)
REFERENCES db_dict.Chinese (id);
