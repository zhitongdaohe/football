# 欧冠决赛历史
CREATE TABLE `football_uefa_champions_league_final_history` (
  `id` bigint auto_increment NOT NULL COMMENT 'id',
  `season` varchar(20) NOT NULL DEFAULT '' COMMENT '赛季',
  `champion` varchar(100) NOT NULL DEFAULT '' COMMENT '冠军',
  `runner_up` varchar(100) NOT NULL DEFAULT '' COMMENT '亚军',
  `score` varchar(100) NOT NULL DEFAULT '' COMMENT '比分',
  `host_city` varchar(100) NOT NULL DEFAULT '' COMMENT '举办地',
  `ext_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '其他信息',
  PRIMARY KEY (`id`),
  UNIQUE KEY uk_season(`season`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '欧冠决赛历史';


# 
#CREATE TABLE `football_uefa_champions_league_history` (
#  `id` bigint auto_increment NOT NULL COMMENT 'id',
#  `season` varchar(20) NOT NULL DEFAULT '' COMMENT '赛季',
#  `champion` varchar(100) NOT NULL DEFAULT '' COMMENT '冠军',
#  `champion_scored` int(10) NOT NULL DEFAULT '0' COMMENT '冠军进球数量',
#  `runner_up` varchar(100) NOT NULL DEFAULT '' COMMENT '亚军',
#  `runner_up_scored` int(10) NOT NULL DEFAULT '0' COMMENT '亚军进球数量',
#  `best_shooter` varchar(100) NOT NULL DEFAULT '' COMMENT '赛季最佳射手',
#  `best_shooter_scored` int(10) NOT NULL DEFAULT '0' COMMENT '赛季最佳射手进球数量',
#  `host_city` varchar(100) NOT NULL DEFAULT '' COMMENT '举办地',
#  `ext_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '其他信息',
#  PRIMARY KEY (`id`),
#  UNIQUE KEY uk_season(`season`)
#) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '欧冠历史';
























