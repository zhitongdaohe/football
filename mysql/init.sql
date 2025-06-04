# 联赛
drop table football_league;
CREATE TABLE `football_league` (
  `id` bigint auto_increment NOT NULL COMMENT 'id',
  `name_cn` varchar(20) NOT NULL DEFAULT '' COMMENT '中文名',
  `name_en` varchar(20) NOT NULL DEFAULT '' COMMENT '英文名',
  `logo` varchar(100) NOT NULL DEFAULT '' COMMENT 'logo',
  `description` varchar(1024) NOT NULL DEFAULT '' COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '联赛';

insert into football_league(id, name_cn, name_en, description) values(1, "西甲", "spanish_a", "西班牙足球甲级联赛（英文简称“LaLiga”，中文简称“西甲”）");
insert into football_league(id, name_cn, name_en, description) values(2, "英超", "england_a", "英格兰足球超级联赛（Premier League，简称“英超”）");
insert into football_league(id, name_cn, name_en, description) values(3, "德甲", "germany_a", "德国足球甲级联赛（Bundesliga，简称德甲）");
insert into football_league(id, name_cn, name_en, description) values(4, "意甲", "france_a", "意大利足球甲级联赛（Serie A，简称”意甲“）");
insert into football_league(id, name_cn, name_en, description) values(5, "法甲", "italy_a", "法国足球甲级联赛（Ligue 1），简称“法甲  ");


# 足球队
drop table football_team;
CREATE TABLE `football_team` (
  `id` bigint auto_increment NOT NULL COMMENT 'id',
  `league_id` bigint NOT NULL DEFAULT '0' COMMENT '所属联赛',
  `name_cn` varchar(20) NOT NULL DEFAULT '' COMMENT '中文名',
  `name_en` varchar(20) NOT NULL DEFAULT '' COMMENT '英文名',
  `logo` varchar(100) NOT NULL DEFAULT '' COMMENT 'logo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '足球队';

# 西甲
insert into football_team(league_id, name_cn, name_en) values(1, "皇家马德里", "Real Madrid");
insert into football_team(league_id, name_cn, name_en) values(1, "巴塞罗那", "Barcelona");
insert into football_team(league_id, name_cn, name_en) values(1, "马德里竞技", "Atletico Madrid");

# 英超
insert into football_team(league_id, name_cn, name_en) values(2, "利物浦", "Liverpool");
insert into football_team(league_id, name_cn, name_en) values(2, "曼联", "Manchester United");
insert into football_team(league_id, name_cn, name_en) values(2, "曼城", "Manchester City");
insert into football_team(league_id, name_cn, name_en) values(2, "切尔西", "Chelsea");
insert into football_team(league_id, name_cn, name_en) values(2, "阿森纳", "Arsenal");
insert into football_team(league_id, name_cn, name_en) values(2, "托特纳姆热刺", "Tottenham Hotspur");

# 德甲
insert into football_team(league_id, name_cn, name_en) values(3, "拜仁慕尼黑", "Bayern Munich");
insert into football_team(league_id, name_cn, name_en) values(3, "多特蒙德", "Dortmund");
insert into football_team(league_id, name_cn, name_en) values(3, "勒沃库森", "Leverkusen");

# 意甲七姐妹
insert into football_team(league_id, name_cn, name_en) values(4, "尤文图斯", "Juventus");
insert into football_team(league_id, name_cn, name_en) values(4, "国际米兰", "International Milan");
insert into football_team(league_id, name_cn, name_en) values(4, "AC米兰", "AC Milan");
insert into football_team(league_id, name_cn, name_en) values(4, "那不勒斯", "Napoli");
insert into football_team(league_id, name_cn, name_en) values(4, "佛罗伦萨", "ACF Fiorentina");
insert into football_team(league_id, name_cn, name_en) values(4, "帕尔马", "Parma");
insert into football_team(league_id, name_cn, name_en) values(4, "桑普多利亚", "Sampdoria");
insert into football_team(league_id, name_cn, name_en) values(4, "罗马", "Roma");
insert into football_team(league_id, name_cn, name_en) values(4, "拉齐奥", "Lazio");

# 意甲七姐妹
insert into football_team(league_id, name_cn, name_en) values(5, "巴黎圣日耳曼", "Paris Saint-Germain");
insert into football_team(league_id, name_cn, name_en) values(5, "里昂", "Lyon");
insert into football_team(league_id, name_cn, name_en) values(5, "马赛", "Marseille");
insert into football_team(league_id, name_cn, name_en) values(5, "摩纳哥", "AS Monaco FC");
insert into football_team(league_id, name_cn, name_en) values(5, "里尔", "Lille OSC");


select * from football_league;
select * from football_team;