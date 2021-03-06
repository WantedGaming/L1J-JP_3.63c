-- ----------------------------
-- Table structure for `skills`
-- ----------------------------
DROP TABLE IF EXISTS `skills`;
CREATE TABLE `skills` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `skill_level` int(10) NOT NULL DEFAULT '0',
  `skill_number` int(10) NOT NULL DEFAULT '0',
  `consume_mp` int(10) unsigned NOT NULL DEFAULT '0',
  `consume_hp` int(10) unsigned NOT NULL DEFAULT '0',
  `consume_item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `consume_amount` int(10) unsigned NOT NULL DEFAULT '0',
  `reuse_delay` int(10) unsigned NOT NULL DEFAULT '0',
  `buff_duration` int(10) unsigned NOT NULL DEFAULT '0',
  `target` varchar(255) DEFAULT NULL,
  `target_to` int(10) NOT NULL DEFAULT '0',
  `damage_value` double(10,1) unsigned NOT NULL DEFAULT '0.0',
  `damage_dice` int(10) unsigned NOT NULL DEFAULT '0',
  `damage_dice_count` int(10) unsigned NOT NULL DEFAULT '0',
  `probability_value` int(10) unsigned NOT NULL DEFAULT '0',
  `probability_dice` int(10) unsigned NOT NULL DEFAULT '0',
  `probability_max` int(10) NOT NULL DEFAULT '-1',
  `attr` int(10) unsigned NOT NULL DEFAULT '0',
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  `lawful` int(10) NOT NULL DEFAULT '0',
  `ranged` int(10) NOT NULL DEFAULT '0',
  `area` int(10) NOT NULL DEFAULT '0',
  `through` int(10) NOT NULL DEFAULT '0',
  `skill_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name_id` varchar(255) DEFAULT NULL,
  `action_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cast_gfx` int(10) NOT NULL DEFAULT '-1',
  `cast_gfx2` int(10) NOT NULL DEFAULT '-1',
  `sys_msg_id_happen` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_msg_id_stop` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_msg_id_fail` int(10) unsigned NOT NULL DEFAULT '0',
  `can_cast_with_invis` tinyint(1) NOT NULL DEFAULT '0',
  `ignores_counter_magic` tinyint(1) NOT NULL DEFAULT '0',
  `is_buff` tinyint(1) NOT NULL DEFAULT '0',
  `impl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
