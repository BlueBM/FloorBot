CREATE TABLE `users` (
    `user_id` varchar(32) NOT NULL,
    `username` VARCHAR(32) NOT NULL DEFAULT 'UNKNOWN',
    `last_daily_timestamp` timestamp(3) NULL DEFAULT NULL,
    `num_dailies` int(11) NOT NULL DEFAULT 0,
    `num_dailies_missed` int(11) NOT NULL DEFAULT 0,
    `cur_dailies_missed` int(11) NOT NULL DEFAULT 0,
    `last_streak_fix` timestamp(3) NULL DEFAULT NULL,
    `boar_streak` int(11) NOT NULL DEFAULT 0,
    `highest_streak` int(11) NOT NULL DEFAULT 0,
    `total_boars` bigint(20) NOT NULL DEFAULT 0,
    `highest_boars` int(11) NOT NULL DEFAULT 0,
    `total_bucks` bigint(20) NOT NULL DEFAULT 0,
    `highest_bucks` bigint(20) NOT NULL DEFAULT 0,
    `unique_boars` int(11) NOT NULL DEFAULT 0,
    `highest_unique_boars` int(11) NOT NULL DEFAULT 0,
    `num_skyblock` int(11) NOT NULL DEFAULT 0,
    `num_non_researcher` int(11) NOT NULL DEFAULT 0,
    `favorite_boar_id` varchar(64) DEFAULT NULL,
    `last_boar_id` varchar(64) DEFAULT NULL,
    `first_joined_timestamp` timestamp(3) NOT NULL DEFAULT current_timestamp(3),
    `blessings` bigint(20) NOT NULL DEFAULT 0,
    `highest_blessings` bigint(20) NOT NULL DEFAULT 0,
    `streak_bless` int(11) NOT NULL DEFAULT 0,
    `highest_streak_bless` int(11) NOT NULL DEFAULT 0,
    `quest_bless` int(11) NOT NULL DEFAULT 0,
    `highest_quest_bless` int(11) NOT NULL DEFAULT 0,
    `unique_bless` int(11) NOT NULL DEFAULT 0,
    `highest_unique_bless` int(11) NOT NULL DEFAULT 0,
    `other_bless` int(11) NOT NULL DEFAULT 0,
    `highest_other_bless` int(11) NOT NULL DEFAULT 0,
    `notifications_on` tinyint(1) NOT NULL DEFAULT 0,
    `notification_channel` varchar(32) DEFAULT NULL,
    `unban_timestamp` timestamp(3) NULL DEFAULT NULL,
    `wipe_timestamp` timestamp(3) NULL DEFAULT NULL,
    `powerup_attempts` int(11) NOT NULL DEFAULT 0,
    `powerup_wins` int(11) NOT NULL DEFAULT 0,
    `powerup_perfects` int(11) NOT NULL DEFAULT 0,
    `powerup_fastest_time` int(11) NOT NULL DEFAULT 120000,
    `gift_last_sent` timestamp(3) NULL DEFAULT NULL,
    `gifts_opened` int(11) NOT NULL DEFAULT 0,
    `gift_fastest` int(11) NOT NULL DEFAULT 120000,
    `gift_handicap` int(11) NOT NULL DEFAULT 0,
    `gift_handicap_weight` int(11) NOT NULL DEFAULT 0,
    `gift_best_bucks` int(11) NOT NULL DEFAULT 0,
    `gift_best_rarity` varchar(64) DEFAULT NULL,
    `miracles_active` int(11) NOT NULL DEFAULT 0,
    `highest_miracles_active` int(11) NOT NULL DEFAULT 0,
    `miracle_rolls` int(11) NOT NULL DEFAULT 0,
    `miracle_best_bucks` int(11) NOT NULL DEFAULT 0,
    `miracle_best_rarity` varchar(64) DEFAULT NULL,
    `last_changed_timestamp` timestamp(3) NOT NULL DEFAULT current_timestamp(3),
    `filter_bits` int(11) NOT NULL DEFAULT 1,
    `sort_value` int(11) NOT NULL DEFAULT 0,
    `streak_frozen` tinyint(1) NOT NULL DEFAULT 0,
    `advent_bits` int(11) NOT NULL DEFAULT 0,
    `advent_year` int(11) NOT NULL DEFAULT year(utc_timestamp()),
    PRIMARY KEY (`user_id`),
    KEY `USERNAME` (`username`)
);