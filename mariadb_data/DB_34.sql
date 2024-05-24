/*
MySQL Data Transfer
Source Host: 34.64.36.149
Source Database: gaon
Target Host: 34.64.36.149
Target Database: gaon
Date: 2024-05-24 ¿ÀÈÄ 7:20:37
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for g5_auth
-- ----------------------------
CREATE TABLE `g5_auth` (
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `au_menu` varchar(20) NOT NULL DEFAULT '',
  `au_auth` set('r','w','d') NOT NULL DEFAULT '',
  PRIMARY KEY (`mb_id`,`au_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_autosave
-- ----------------------------
CREATE TABLE `g5_autosave` (
  `as_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL,
  `as_uid` bigint(20) unsigned NOT NULL,
  `as_subject` varchar(255) NOT NULL,
  `as_content` text NOT NULL,
  `as_datetime` datetime NOT NULL,
  PRIMARY KEY (`as_id`),
  UNIQUE KEY `as_uid` (`as_uid`),
  KEY `mb_id` (`mb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_board
-- ----------------------------
CREATE TABLE `g5_board` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `bo_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `bo_admin` varchar(255) NOT NULL DEFAULT '',
  `bo_list_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_read_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_write_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_reply_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_comment_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_upload_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_download_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_html_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_link_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_count_delete` tinyint(4) NOT NULL DEFAULT 0,
  `bo_count_modify` tinyint(4) NOT NULL DEFAULT 0,
  `bo_read_point` int(11) NOT NULL DEFAULT 0,
  `bo_write_point` int(11) NOT NULL DEFAULT 0,
  `bo_comment_point` int(11) NOT NULL DEFAULT 0,
  `bo_download_point` int(11) NOT NULL DEFAULT 0,
  `bo_use_category` tinyint(4) NOT NULL DEFAULT 0,
  `bo_category_list` text NOT NULL,
  `bo_use_sideview` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_file_content` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_secret` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_dhtml_editor` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_rss_view` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_good` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_nogood` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_name` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_signature` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_ip_view` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_list_view` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_list_file` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_list_content` tinyint(4) NOT NULL DEFAULT 0,
  `bo_table_width` int(11) NOT NULL DEFAULT 0,
  `bo_subject_len` int(11) NOT NULL DEFAULT 0,
  `bo_mobile_subject_len` int(11) NOT NULL DEFAULT 0,
  `bo_page_rows` int(11) NOT NULL DEFAULT 0,
  `bo_mobile_page_rows` int(11) NOT NULL DEFAULT 0,
  `bo_new` int(11) NOT NULL DEFAULT 0,
  `bo_hot` int(11) NOT NULL DEFAULT 0,
  `bo_image_width` int(11) NOT NULL DEFAULT 0,
  `bo_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_include_head` varchar(255) NOT NULL DEFAULT '',
  `bo_include_tail` varchar(255) NOT NULL DEFAULT '',
  `bo_content_head` text NOT NULL,
  `bo_mobile_content_head` text NOT NULL,
  `bo_content_tail` text NOT NULL,
  `bo_mobile_content_tail` text NOT NULL,
  `bo_insert_content` text NOT NULL,
  `bo_gallery_cols` int(11) NOT NULL DEFAULT 0,
  `bo_gallery_width` int(11) NOT NULL DEFAULT 0,
  `bo_gallery_height` int(11) NOT NULL DEFAULT 0,
  `bo_mobile_gallery_width` int(11) NOT NULL DEFAULT 0,
  `bo_mobile_gallery_height` int(11) NOT NULL DEFAULT 0,
  `bo_upload_size` int(11) NOT NULL DEFAULT 0,
  `bo_reply_order` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_search` tinyint(4) NOT NULL DEFAULT 0,
  `bo_order` int(11) NOT NULL DEFAULT 0,
  `bo_count_write` int(11) NOT NULL DEFAULT 0,
  `bo_count_comment` int(11) NOT NULL DEFAULT 0,
  `bo_write_min` int(11) NOT NULL DEFAULT 0,
  `bo_write_max` int(11) NOT NULL DEFAULT 0,
  `bo_comment_min` int(11) NOT NULL DEFAULT 0,
  `bo_comment_max` int(11) NOT NULL DEFAULT 0,
  `bo_notice` text NOT NULL,
  `bo_upload_count` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_email` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_cert` enum('','cert','adult','hp-cert','hp-adult') NOT NULL DEFAULT '',
  `bo_use_sns` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_captcha` tinyint(4) NOT NULL DEFAULT 0,
  `bo_sort_field` varchar(255) NOT NULL DEFAULT '',
  `bo_1_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_2_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_3_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_4_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_5_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_6_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_7_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_8_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_9_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_10_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_1` varchar(255) NOT NULL DEFAULT '',
  `bo_2` varchar(255) NOT NULL DEFAULT '',
  `bo_3` varchar(255) NOT NULL DEFAULT '',
  `bo_4` varchar(255) NOT NULL DEFAULT '',
  `bo_5` varchar(255) NOT NULL DEFAULT '',
  `bo_6` varchar(255) NOT NULL DEFAULT '',
  `bo_7` varchar(255) NOT NULL DEFAULT '',
  `bo_8` varchar(255) NOT NULL DEFAULT '',
  `bo_9` varchar(255) NOT NULL DEFAULT '',
  `bo_10` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`bo_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_board_file
-- ----------------------------
CREATE TABLE `g5_board_file` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT 0,
  `bf_no` int(11) NOT NULL DEFAULT 0,
  `bf_source` varchar(255) NOT NULL DEFAULT '',
  `bf_file` varchar(255) NOT NULL DEFAULT '',
  `bf_download` int(11) NOT NULL,
  `bf_content` text NOT NULL,
  `bf_fileurl` varchar(255) NOT NULL DEFAULT '',
  `bf_thumburl` varchar(255) NOT NULL DEFAULT '',
  `bf_storage` varchar(50) NOT NULL DEFAULT '',
  `bf_filesize` int(11) NOT NULL DEFAULT 0,
  `bf_width` int(11) NOT NULL DEFAULT 0,
  `bf_height` smallint(6) NOT NULL DEFAULT 0,
  `bf_type` tinyint(4) NOT NULL DEFAULT 0,
  `bf_datetime` datetime NOT NULL,
  PRIMARY KEY (`bo_table`,`wr_id`,`bf_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_board_good
-- ----------------------------
CREATE TABLE `g5_board_good` (
  `bg_id` int(11) NOT NULL AUTO_INCREMENT,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bg_flag` varchar(255) NOT NULL DEFAULT '',
  `bg_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`bg_id`),
  UNIQUE KEY `fkey1` (`bo_table`,`wr_id`,`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_board_new
-- ----------------------------
CREATE TABLE `g5_board_new` (
  `bn_id` int(11) NOT NULL AUTO_INCREMENT,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT 0,
  `wr_parent` int(11) NOT NULL DEFAULT 0,
  `bn_datetime` datetime DEFAULT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`bn_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_cert_history
-- ----------------------------
CREATE TABLE `g5_cert_history` (
  `cr_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `cr_company` varchar(255) NOT NULL DEFAULT '',
  `cr_method` varchar(255) NOT NULL DEFAULT '',
  `cr_ip` varchar(255) NOT NULL DEFAULT '',
  `cr_date` date NOT NULL DEFAULT curdate(),
  `cr_time` time NOT NULL DEFAULT '00:00:00',
  PRIMARY KEY (`cr_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_config
-- ----------------------------
CREATE TABLE `g5_config` (
  `cf_title` varchar(255) NOT NULL DEFAULT '',
  `cf_theme` varchar(100) NOT NULL DEFAULT '',
  `cf_admin` varchar(100) NOT NULL DEFAULT '',
  `cf_admin_email` varchar(100) NOT NULL DEFAULT '',
  `cf_admin_email_name` varchar(100) NOT NULL DEFAULT '',
  `cf_add_script` text NOT NULL,
  `cf_use_point` tinyint(4) NOT NULL DEFAULT 0,
  `cf_point_term` int(11) NOT NULL DEFAULT 0,
  `cf_use_copy_log` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_email_certify` tinyint(4) NOT NULL DEFAULT 0,
  `cf_login_point` int(11) NOT NULL DEFAULT 0,
  `cf_cut_name` tinyint(4) NOT NULL DEFAULT 0,
  `cf_nick_modify` int(11) NOT NULL DEFAULT 0,
  `cf_new_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_new_rows` int(11) NOT NULL DEFAULT 0,
  `cf_search_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_connect_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_faq_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_read_point` int(11) NOT NULL DEFAULT 0,
  `cf_write_point` int(11) NOT NULL DEFAULT 0,
  `cf_comment_point` int(11) NOT NULL DEFAULT 0,
  `cf_download_point` int(11) NOT NULL DEFAULT 0,
  `cf_write_pages` int(11) NOT NULL DEFAULT 0,
  `cf_mobile_pages` int(11) NOT NULL DEFAULT 0,
  `cf_link_target` varchar(50) NOT NULL DEFAULT '',
  `cf_bbs_rewrite` tinyint(4) NOT NULL DEFAULT 0,
  `cf_delay_sec` int(11) NOT NULL DEFAULT 0,
  `cf_filter` text NOT NULL,
  `cf_possible_ip` text NOT NULL,
  `cf_intercept_ip` text NOT NULL,
  `cf_analytics` text NOT NULL,
  `cf_add_meta` text NOT NULL,
  `cf_syndi_token` varchar(255) NOT NULL,
  `cf_syndi_except` text NOT NULL,
  `cf_member_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_use_homepage` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_homepage` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_tel` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_tel` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_hp` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_hp` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_addr` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_addr` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_signature` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_signature` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_profile` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_profile` tinyint(4) NOT NULL DEFAULT 0,
  `cf_register_level` tinyint(4) NOT NULL DEFAULT 0,
  `cf_register_point` int(11) NOT NULL DEFAULT 0,
  `cf_icon_level` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_recommend` tinyint(4) NOT NULL DEFAULT 0,
  `cf_recommend_point` int(11) NOT NULL DEFAULT 0,
  `cf_leave_day` int(11) NOT NULL DEFAULT 0,
  `cf_search_part` int(11) NOT NULL DEFAULT 0,
  `cf_email_use` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_wr_super_admin` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_wr_group_admin` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_wr_board_admin` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_wr_write` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_wr_comment_all` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_mb_super_admin` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_mb_member` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_po_super_admin` tinyint(4) NOT NULL DEFAULT 0,
  `cf_prohibit_id` text NOT NULL,
  `cf_prohibit_email` text NOT NULL,
  `cf_new_del` int(11) NOT NULL DEFAULT 0,
  `cf_memo_del` int(11) NOT NULL DEFAULT 0,
  `cf_visit_del` int(11) NOT NULL DEFAULT 0,
  `cf_popular_del` int(11) NOT NULL DEFAULT 0,
  `cf_optimize_date` date NOT NULL DEFAULT curdate(),
  `cf_use_member_icon` tinyint(4) NOT NULL DEFAULT 0,
  `cf_member_icon_size` int(11) NOT NULL DEFAULT 0,
  `cf_member_icon_width` int(11) NOT NULL DEFAULT 0,
  `cf_member_icon_height` int(11) NOT NULL DEFAULT 0,
  `cf_member_img_size` int(11) NOT NULL DEFAULT 0,
  `cf_member_img_width` int(11) NOT NULL DEFAULT 0,
  `cf_member_img_height` int(11) NOT NULL DEFAULT 0,
  `cf_login_minutes` int(11) NOT NULL DEFAULT 0,
  `cf_image_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_flash_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_movie_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_formmail_is_member` tinyint(4) NOT NULL DEFAULT 0,
  `cf_page_rows` int(11) NOT NULL DEFAULT 0,
  `cf_mobile_page_rows` int(11) NOT NULL DEFAULT 0,
  `cf_visit` varchar(255) NOT NULL DEFAULT '',
  `cf_max_po_id` int(11) NOT NULL DEFAULT 0,
  `cf_stipulation` text NOT NULL,
  `cf_privacy` text NOT NULL,
  `cf_open_modify` int(11) NOT NULL DEFAULT 0,
  `cf_memo_send_point` int(11) NOT NULL DEFAULT 0,
  `cf_mobile_new_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_search_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_connect_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_faq_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_member_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_captcha_mp3` varchar(255) NOT NULL DEFAULT '',
  `cf_editor` varchar(50) NOT NULL DEFAULT '',
  `cf_cert_use` tinyint(4) NOT NULL DEFAULT 0,
  `cf_cert_ipin` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_hp` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kcb_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kcp_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_lg_mid` varchar(100) NOT NULL DEFAULT '',
  `cf_lg_mert_key` varchar(100) NOT NULL DEFAULT '',
  `cf_cert_limit` int(11) NOT NULL DEFAULT 0,
  `cf_cert_req` tinyint(4) NOT NULL DEFAULT 0,
  `cf_sms_use` varchar(255) NOT NULL DEFAULT '',
  `cf_sms_type` varchar(10) NOT NULL DEFAULT '',
  `cf_icode_id` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_pw` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_server_ip` varchar(50) NOT NULL DEFAULT '',
  `cf_icode_server_port` varchar(50) NOT NULL DEFAULT '',
  `cf_googl_shorturl_apikey` varchar(50) NOT NULL DEFAULT '',
  `cf_social_login_use` tinyint(4) NOT NULL DEFAULT 0,
  `cf_social_servicelist` varchar(255) NOT NULL DEFAULT '',
  `cf_payco_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_payco_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_facebook_appid` varchar(100) NOT NULL,
  `cf_facebook_secret` varchar(100) NOT NULL,
  `cf_twitter_key` varchar(100) NOT NULL,
  `cf_twitter_secret` varchar(100) NOT NULL,
  `cf_google_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_google_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_naver_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_naver_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_rest_key` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_client_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_js_apikey` varchar(100) NOT NULL,
  `cf_captcha` varchar(100) NOT NULL DEFAULT '',
  `cf_recaptcha_site_key` varchar(100) NOT NULL DEFAULT '',
  `cf_recaptcha_secret_key` varchar(100) NOT NULL DEFAULT '',
  `cf_1_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_2_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_3_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_4_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_5_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_6_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_7_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_8_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_9_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_10_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_1` varchar(255) NOT NULL DEFAULT '',
  `cf_2` varchar(255) NOT NULL DEFAULT '',
  `cf_3` varchar(255) NOT NULL DEFAULT '',
  `cf_4` varchar(255) NOT NULL DEFAULT '',
  `cf_5` varchar(255) NOT NULL DEFAULT '',
  `cf_6` varchar(255) NOT NULL DEFAULT '',
  `cf_7` varchar(255) NOT NULL DEFAULT '',
  `cf_8` varchar(255) NOT NULL DEFAULT '',
  `cf_9` varchar(255) NOT NULL DEFAULT '',
  `cf_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_content
-- ----------------------------
CREATE TABLE `g5_content` (
  `co_id` int(11) NOT NULL AUTO_INCREMENT,
  `co_html` tinyint(1) NOT NULL DEFAULT 0,
  `co_subject` varchar(255) NOT NULL DEFAULT '',
  `co_content` longtext NOT NULL,
  `co_seo_title` varchar(255) NOT NULL DEFAULT '',
  `co_mobile_content` longtext NOT NULL,
  `co_skin` varchar(255) NOT NULL DEFAULT '',
  `co_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `co_tag_filter_use` tinyint(1) NOT NULL DEFAULT 0,
  `co_hit` int(11) NOT NULL DEFAULT 0,
  `co_include_head` text NOT NULL,
  `co_include_tail` text NOT NULL,
  PRIMARY KEY (`co_id`),
  KEY `co_seo_title` (`co_seo_title`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_faq
-- ----------------------------
CREATE TABLE `g5_faq` (
  `fa_id` int(11) NOT NULL AUTO_INCREMENT,
  `fm_id` int(11) NOT NULL DEFAULT 0,
  `fa_subject` text NOT NULL,
  `fa_content` text NOT NULL,
  `fa_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`fa_id`),
  KEY `fm_id` (`fm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_faq_master
-- ----------------------------
CREATE TABLE `g5_faq_master` (
  `fm_id` int(11) NOT NULL AUTO_INCREMENT,
  `fm_subject` varchar(255) NOT NULL DEFAULT '',
  `fm_head_html` text NOT NULL,
  `fm_tail_html` text NOT NULL,
  `fm_mobile_head_html` text NOT NULL,
  `fm_mobile_tail_html` text NOT NULL,
  `fm_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`fm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_group
-- ----------------------------
CREATE TABLE `g5_group` (
  `gr_id` varchar(10) NOT NULL DEFAULT '',
  `gr_subject` varchar(255) NOT NULL DEFAULT '',
  `gr_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `gr_admin` varchar(255) NOT NULL DEFAULT '',
  `gr_use_access` tinyint(4) NOT NULL DEFAULT 0,
  `gr_order` int(11) NOT NULL DEFAULT 0,
  `gr_1_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_2_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_3_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_4_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_5_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_6_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_7_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_8_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_9_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_10_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_1` varchar(255) NOT NULL DEFAULT '',
  `gr_2` varchar(255) NOT NULL DEFAULT '',
  `gr_3` varchar(255) NOT NULL DEFAULT '',
  `gr_4` varchar(255) NOT NULL DEFAULT '',
  `gr_5` varchar(255) NOT NULL DEFAULT '',
  `gr_6` varchar(255) NOT NULL DEFAULT '',
  `gr_7` varchar(255) NOT NULL DEFAULT '',
  `gr_8` varchar(255) NOT NULL DEFAULT '',
  `gr_9` varchar(255) NOT NULL DEFAULT '',
  `gr_10` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`gr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_group_member
-- ----------------------------
CREATE TABLE `g5_group_member` (
  `gm_id` int(11) NOT NULL AUTO_INCREMENT,
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `gm_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`gm_id`),
  KEY `gr_id` (`gr_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_login
-- ----------------------------
CREATE TABLE `g5_login` (
  `lo_ip` varchar(100) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `lo_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `lo_location` text NOT NULL,
  `lo_url` text NOT NULL,
  PRIMARY KEY (`lo_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_mail
-- ----------------------------
CREATE TABLE `g5_mail` (
  `ma_id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_subject` varchar(255) NOT NULL DEFAULT '',
  `ma_content` mediumtext NOT NULL,
  `ma_time` datetime NOT NULL DEFAULT current_timestamp(),
  `ma_ip` varchar(255) NOT NULL DEFAULT '',
  `ma_last_option` text NOT NULL,
  PRIMARY KEY (`ma_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_member
-- ----------------------------
CREATE TABLE `g5_member` (
  `mb_no` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `mb_password` varchar(255) NOT NULL DEFAULT '',
  `mb_password2` varchar(255) NOT NULL DEFAULT '',
  `mb_name` varchar(255) NOT NULL DEFAULT '',
  `mb_nick` varchar(255) NOT NULL DEFAULT '',
  `mb_nick_date` date NOT NULL DEFAULT '1970-01-01',
  `mb_email` varchar(255) NOT NULL DEFAULT '',
  `mb_homepage` varchar(255) NOT NULL DEFAULT '',
  `mb_level` tinyint(4) NOT NULL DEFAULT 0,
  `mb_sex` char(1) NOT NULL DEFAULT '',
  `mb_birth` varchar(255) NOT NULL DEFAULT '',
  `mb_tel` varchar(255) NOT NULL DEFAULT '',
  `mb_hp` varchar(255) NOT NULL DEFAULT '',
  `mb_certify` varchar(20) NOT NULL DEFAULT '',
  `mb_adult` tinyint(4) NOT NULL DEFAULT 0,
  `mb_dupinfo` varchar(255) NOT NULL DEFAULT '',
  `mb_zip1` char(3) NOT NULL DEFAULT '',
  `mb_zip2` char(3) NOT NULL DEFAULT '',
  `mb_addr1` varchar(255) NOT NULL DEFAULT '',
  `mb_addr2` varchar(255) NOT NULL DEFAULT '',
  `mb_addr3` varchar(255) NOT NULL DEFAULT '',
  `mb_addr_jibeon` varchar(255) NOT NULL DEFAULT '',
  `mb_signature` text NOT NULL,
  `mb_recommend` varchar(255) NOT NULL DEFAULT '',
  `mb_point` int(11) NOT NULL DEFAULT 0,
  `mb_today_login` datetime NOT NULL DEFAULT current_timestamp(),
  `mb_login_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `mb_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_leave_date` varchar(8) NOT NULL DEFAULT '',
  `mb_intercept_date` varchar(8) NOT NULL DEFAULT '',
  `mb_email_certify` datetime NOT NULL DEFAULT current_timestamp(),
  `mb_email_certify2` varchar(255) NOT NULL DEFAULT '',
  `mb_memo` text NOT NULL,
  `mb_lost_certify` varchar(255) NOT NULL,
  `mb_mailling` tinyint(4) NOT NULL DEFAULT 0,
  `mb_sms` tinyint(4) NOT NULL DEFAULT 0,
  `mb_open` tinyint(4) NOT NULL DEFAULT 0,
  `mb_open_date` date NOT NULL DEFAULT '1970-01-01',
  `mb_profile` text NOT NULL,
  `mb_memo_call` varchar(255) NOT NULL DEFAULT '',
  `mb_memo_cnt` int(11) NOT NULL DEFAULT 0,
  `mb_scrap_cnt` int(11) NOT NULL DEFAULT 0,
  `mb_1` varchar(255) NOT NULL DEFAULT '',
  `mb_2` varchar(255) NOT NULL DEFAULT '',
  `mb_3` varchar(255) NOT NULL DEFAULT '',
  `mb_4` varchar(255) NOT NULL DEFAULT '',
  `mb_5` varchar(255) NOT NULL DEFAULT '',
  `mb_6` varchar(255) NOT NULL DEFAULT '',
  `mb_7` varchar(255) NOT NULL DEFAULT '',
  `mb_8` varchar(255) NOT NULL DEFAULT '',
  `mb_9` varchar(255) NOT NULL DEFAULT '',
  `mb_10` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`mb_no`),
  UNIQUE KEY `mb_id` (`mb_id`),
  KEY `mb_today_login` (`mb_today_login`),
  KEY `mb_datetime` (`mb_datetime`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_member_social_profiles
-- ----------------------------
CREATE TABLE `g5_member_social_profiles` (
  `mp_no` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `provider` varchar(50) NOT NULL DEFAULT '',
  `object_sha` varchar(45) NOT NULL DEFAULT '',
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `profileurl` varchar(255) NOT NULL DEFAULT '',
  `photourl` varchar(255) NOT NULL DEFAULT '',
  `displayname` varchar(150) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `mp_register_day` datetime NOT NULL DEFAULT current_timestamp(),
  `mp_latest_day` datetime NOT NULL DEFAULT current_timestamp(),
  UNIQUE KEY `mp_no` (`mp_no`),
  KEY `mb_id` (`mb_id`),
  KEY `provider` (`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_memo
-- ----------------------------
CREATE TABLE `g5_memo` (
  `me_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_recv_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `me_read_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `me_memo` text NOT NULL,
  `me_send_id` int(11) NOT NULL DEFAULT 0,
  `me_type` enum('send','recv') NOT NULL DEFAULT 'recv',
  `me_send_ip` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`me_id`),
  KEY `me_recv_mb_id` (`me_recv_mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_menu
-- ----------------------------
CREATE TABLE `g5_menu` (
  `me_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_code` varchar(255) NOT NULL DEFAULT '',
  `me_name` varchar(255) NOT NULL DEFAULT '',
  `me_link` varchar(255) NOT NULL DEFAULT '',
  `me_target` varchar(255) NOT NULL DEFAULT '',
  `me_order` int(11) NOT NULL DEFAULT 0,
  `me_use` tinyint(4) NOT NULL DEFAULT 0,
  `me_mobile_use` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`me_id`)
) ENGINE=InnoDB AUTO_INCREMENT=522 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_new_win
-- ----------------------------
CREATE TABLE `g5_new_win` (
  `nw_id` int(11) NOT NULL AUTO_INCREMENT,
  `nw_device` varchar(10) NOT NULL DEFAULT 'both',
  `nw_begin_time` datetime NOT NULL DEFAULT current_timestamp(),
  `nw_end_time` datetime NOT NULL DEFAULT current_timestamp(),
  `nw_disable_hours` int(11) NOT NULL DEFAULT 0,
  `nw_left` int(11) NOT NULL DEFAULT 0,
  `nw_top` int(11) NOT NULL DEFAULT 0,
  `nw_height` int(11) NOT NULL DEFAULT 0,
  `nw_width` int(11) NOT NULL DEFAULT 0,
  `nw_subject` text NOT NULL,
  `nw_content` text NOT NULL,
  `nw_content_html` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`nw_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_point
-- ----------------------------
CREATE TABLE `g5_point` (
  `po_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `po_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `po_content` varchar(255) NOT NULL DEFAULT '',
  `po_point` int(11) NOT NULL DEFAULT 0,
  `po_use_point` int(11) NOT NULL DEFAULT 0,
  `po_expired` tinyint(4) NOT NULL DEFAULT 0,
  `po_expire_date` date NOT NULL DEFAULT curdate(),
  `po_mb_point` int(11) NOT NULL DEFAULT 0,
  `po_rel_table` varchar(20) NOT NULL DEFAULT '',
  `po_rel_id` varchar(20) NOT NULL DEFAULT '',
  `po_rel_action` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`po_id`),
  KEY `index1` (`mb_id`,`po_rel_table`,`po_rel_id`,`po_rel_action`),
  KEY `index2` (`po_expire_date`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_poll
-- ----------------------------
CREATE TABLE `g5_poll` (
  `po_id` int(11) NOT NULL AUTO_INCREMENT,
  `po_subject` varchar(255) NOT NULL DEFAULT '',
  `po_poll1` varchar(255) NOT NULL DEFAULT '',
  `po_poll2` varchar(255) NOT NULL DEFAULT '',
  `po_poll3` varchar(255) NOT NULL DEFAULT '',
  `po_poll4` varchar(255) NOT NULL DEFAULT '',
  `po_poll5` varchar(255) NOT NULL DEFAULT '',
  `po_poll6` varchar(255) NOT NULL DEFAULT '',
  `po_poll7` varchar(255) NOT NULL DEFAULT '',
  `po_poll8` varchar(255) NOT NULL DEFAULT '',
  `po_poll9` varchar(255) NOT NULL DEFAULT '',
  `po_cnt1` int(11) NOT NULL DEFAULT 0,
  `po_cnt2` int(11) NOT NULL DEFAULT 0,
  `po_cnt3` int(11) NOT NULL DEFAULT 0,
  `po_cnt4` int(11) NOT NULL DEFAULT 0,
  `po_cnt5` int(11) NOT NULL DEFAULT 0,
  `po_cnt6` int(11) NOT NULL DEFAULT 0,
  `po_cnt7` int(11) NOT NULL DEFAULT 0,
  `po_cnt8` int(11) NOT NULL DEFAULT 0,
  `po_cnt9` int(11) NOT NULL DEFAULT 0,
  `po_etc` varchar(255) NOT NULL DEFAULT '',
  `po_level` tinyint(4) NOT NULL DEFAULT 0,
  `po_point` int(11) NOT NULL DEFAULT 0,
  `po_date` date NOT NULL DEFAULT curdate(),
  `po_ips` mediumtext NOT NULL,
  `mb_ids` text NOT NULL,
  PRIMARY KEY (`po_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_poll_etc
-- ----------------------------
CREATE TABLE `g5_poll_etc` (
  `pc_id` int(11) NOT NULL DEFAULT 0,
  `po_id` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `pc_name` varchar(255) NOT NULL DEFAULT '',
  `pc_idea` varchar(255) NOT NULL DEFAULT '',
  `pc_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`pc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_popular
-- ----------------------------
CREATE TABLE `g5_popular` (
  `pp_id` int(11) NOT NULL AUTO_INCREMENT,
  `pp_word` varchar(50) NOT NULL DEFAULT '',
  `pp_date` date NOT NULL DEFAULT current_timestamp(),
  `pp_ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pp_id`),
  UNIQUE KEY `index1` (`pp_date`,`pp_word`,`pp_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_qa_config
-- ----------------------------
CREATE TABLE `g5_qa_config` (
  `qa_title` varchar(255) NOT NULL DEFAULT '',
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_use_email` tinyint(4) NOT NULL DEFAULT 0,
  `qa_req_email` tinyint(4) NOT NULL DEFAULT 0,
  `qa_use_hp` tinyint(4) NOT NULL DEFAULT 0,
  `qa_req_hp` tinyint(4) NOT NULL DEFAULT 0,
  `qa_use_sms` tinyint(4) NOT NULL DEFAULT 0,
  `qa_send_number` varchar(255) NOT NULL DEFAULT '0',
  `qa_admin_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_admin_email` varchar(255) NOT NULL DEFAULT '',
  `qa_use_editor` tinyint(4) NOT NULL DEFAULT 0,
  `qa_subject_len` int(11) NOT NULL DEFAULT 0,
  `qa_mobile_subject_len` int(11) NOT NULL DEFAULT 0,
  `qa_page_rows` int(11) NOT NULL DEFAULT 0,
  `qa_mobile_page_rows` int(11) NOT NULL DEFAULT 0,
  `qa_image_width` int(11) NOT NULL DEFAULT 0,
  `qa_upload_size` int(11) NOT NULL DEFAULT 0,
  `qa_insert_content` text NOT NULL,
  `qa_include_head` varchar(255) NOT NULL DEFAULT '',
  `qa_include_tail` varchar(255) NOT NULL DEFAULT '',
  `qa_content_head` text NOT NULL,
  `qa_content_tail` text NOT NULL,
  `qa_mobile_content_head` text NOT NULL,
  `qa_mobile_content_tail` text NOT NULL,
  `qa_1_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_2_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_3_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_4_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_5_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_qa_content
-- ----------------------------
CREATE TABLE `g5_qa_content` (
  `qa_id` int(11) NOT NULL AUTO_INCREMENT,
  `qa_num` int(11) NOT NULL DEFAULT 0,
  `qa_parent` int(11) NOT NULL DEFAULT 0,
  `qa_related` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `qa_name` varchar(255) NOT NULL DEFAULT '',
  `qa_email` varchar(255) NOT NULL DEFAULT '',
  `qa_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_type` tinyint(4) NOT NULL DEFAULT 0,
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_email_recv` tinyint(4) NOT NULL DEFAULT 0,
  `qa_sms_recv` tinyint(4) NOT NULL DEFAULT 0,
  `qa_html` tinyint(4) NOT NULL DEFAULT 0,
  `qa_subject` varchar(255) NOT NULL DEFAULT '',
  `qa_content` text NOT NULL,
  `qa_status` tinyint(4) NOT NULL DEFAULT 0,
  `qa_file1` varchar(255) NOT NULL DEFAULT '',
  `qa_source1` varchar(255) NOT NULL DEFAULT '',
  `qa_file2` varchar(255) NOT NULL DEFAULT '',
  `qa_source2` varchar(255) NOT NULL DEFAULT '',
  `qa_ip` varchar(255) NOT NULL DEFAULT '',
  `qa_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`qa_id`),
  KEY `qa_num_parent` (`qa_num`,`qa_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_scrap
-- ----------------------------
CREATE TABLE `g5_scrap` (
  `ms_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` varchar(15) NOT NULL DEFAULT '',
  `ms_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ms_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_uniqid
-- ----------------------------
CREATE TABLE `g5_uniqid` (
  `uq_id` bigint(20) unsigned NOT NULL,
  `uq_ip` varchar(255) NOT NULL,
  PRIMARY KEY (`uq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_visit
-- ----------------------------
CREATE TABLE `g5_visit` (
  `vi_id` int(11) NOT NULL AUTO_INCREMENT,
  `vi_ip` varchar(100) NOT NULL DEFAULT '',
  `vi_date` date NOT NULL DEFAULT current_timestamp(),
  `vi_time` time NOT NULL DEFAULT '00:00:00',
  `vi_referer` text NOT NULL,
  `vi_agent` varchar(200) NOT NULL DEFAULT '',
  `vi_browser` varchar(255) NOT NULL DEFAULT '',
  `vi_os` varchar(255) NOT NULL DEFAULT '',
  `vi_device` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`vi_id`),
  UNIQUE KEY `index1` (`vi_ip`,`vi_date`),
  KEY `index2` (`vi_date`)
) ENGINE=InnoDB AUTO_INCREMENT=1279 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_visit_sum
-- ----------------------------
CREATE TABLE `g5_visit_sum` (
  `vs_date` date NOT NULL DEFAULT current_timestamp(),
  `vs_count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`vs_date`),
  KEY `index1` (`vs_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_write_example
-- ----------------------------
CREATE TABLE `g5_write_example` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT 0,
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT 0,
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT 0,
  `wr_comment` int(11) NOT NULL DEFAULT 0,
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT 0,
  `wr_link2_hit` int(11) NOT NULL DEFAULT 0,
  `wr_hit` int(11) NOT NULL DEFAULT 0,
  `wr_good` int(11) NOT NULL DEFAULT 0,
  `wr_nogood` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `wr_file` tinyint(4) NOT NULL DEFAULT 0,
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_seo_title` (`wr_seo_title`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_write_free
-- ----------------------------
CREATE TABLE `g5_write_free` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT 0,
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT 0,
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT 0,
  `wr_comment` int(11) NOT NULL DEFAULT 0,
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT 0,
  `wr_link2_hit` int(11) NOT NULL DEFAULT 0,
  `wr_hit` int(11) NOT NULL DEFAULT 0,
  `wr_good` int(11) NOT NULL DEFAULT 0,
  `wr_nogood` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `wr_file` tinyint(4) NOT NULL DEFAULT 0,
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_seo_title` (`wr_seo_title`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_write_gallery
-- ----------------------------
CREATE TABLE `g5_write_gallery` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT 0,
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT 0,
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT 0,
  `wr_comment` int(11) NOT NULL DEFAULT 0,
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT 0,
  `wr_link2_hit` int(11) NOT NULL DEFAULT 0,
  `wr_hit` int(11) NOT NULL DEFAULT 0,
  `wr_good` int(11) NOT NULL DEFAULT 0,
  `wr_nogood` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `wr_file` tinyint(4) NOT NULL DEFAULT 0,
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_seo_title` (`wr_seo_title`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_write_notice
-- ----------------------------
CREATE TABLE `g5_write_notice` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT 0,
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT 0,
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT 0,
  `wr_comment` int(11) NOT NULL DEFAULT 0,
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT 0,
  `wr_link2_hit` int(11) NOT NULL DEFAULT 0,
  `wr_hit` int(11) NOT NULL DEFAULT 0,
  `wr_good` int(11) NOT NULL DEFAULT 0,
  `wr_nogood` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `wr_file` tinyint(4) NOT NULL DEFAULT 0,
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_seo_title` (`wr_seo_title`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for g5_write_qa
-- ----------------------------
CREATE TABLE `g5_write_qa` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT 0,
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT 0,
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT 0,
  `wr_comment` int(11) NOT NULL DEFAULT 0,
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT 0,
  `wr_link2_hit` int(11) NOT NULL DEFAULT 0,
  `wr_hit` int(11) NOT NULL DEFAULT 0,
  `wr_good` int(11) NOT NULL DEFAULT 0,
  `wr_nogood` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `wr_file` tinyint(4) NOT NULL DEFAULT 0,
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_seo_title` (`wr_seo_title`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `g5_autosave` VALUES ('7', 'admin', '2022030120155090', 'ì¼ììëí¬ìì¥ì¹(ì¼ìí)', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '2022-03-01 20:16:51');
INSERT INTO `g5_board` VALUES ('1', 'product', 'ì íìê°', 'ì íìê°', 'both', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1', '1', '100', '60', '30', '15', '15', '24', '100', '600', 'theme/cb_photo', 'basic', '_head.php', '_tail.php', '<p style=\"text-align:center;\" align=\"center\">\r\n   <br>\r\n</p>\r\n', '<p style=\"text-align:center;\" align=\"center\">\r\n   <br>\r\n</p>\r\n', '<p>\r\n   <br>\r\n</p>\r\n', '<p>\r\n   <br>\r\n</p>\r\n', '', '4', '202', '150', '125', '100', '2147483647', '1', '1', '0', '1', '0', '0', '0', '0', '0', '', '5', '0', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_board` VALUES ('biz', 'introduce', 'ì¬ììê°', 'ì¬ììê°', 'both', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '60', '30', '15', '15', '24', '100', '600', 'theme/cb_page', 'basic', '_head.php', '_tail.php', '<p style=\"text-align:center;\" align=\"center\"><img src=\"http://127.0.0.1/data/editor/2203/0a5f59459e90f3c0aa78bdbd723bce0f_1646118386_0712.jpg\" title=\"0a5f59459e90f3c0aa78bdbd723bce0f_1646118386_0712.jpg\" alt=\"0a5f59459e90f3c0aa78bdbd723bce0f_1646118386_0712.jpg\"><br style=\"clear:both;\"><img src=\"http://127.0.0.1/data/editor/2203/0a5f59459e90f3c0aa78bdbd723bce0f_1646118386_1125.jpg\" title=\"0a5f59459e90f3c0aa78bdbd723bce0f_1646118386_1125.jpg\" alt=\"0a5f59459e90f3c0aa78bdbd723bce0f_1646118386_1125.jpg\"><br style=\"clear:both;\"><img src=\"http://127.0.0.1/data/editor/2203/0a5f59459e90f3c0aa78bdbd723bce0f_1646118386_1724.jpg\" title=\"0a5f59459e90f3c0aa78bdbd723bce0f_1646118386_1724.jpg\" alt=\"0a5f59459e90f3c0aa78bdbd723bce0f_1646118386_1724.jpg\"><br style=\"clear:both;\">&nbsp;</p>', '<p style=\"text-align:center;\" align=\"center\"><img src=\"http://127.0.0.1/data/editor/2203/0a5f59459e90f3c0aa78bdbd723bce0f_1646118397_8721.jpg\" title=\"0a5f59459e90f3c0aa78bdbd723bce0f_1646118397_8721.jpg\" alt=\"0a5f59459e90f3c0aa78bdbd723bce0f_1646118397_8721.jpg\"><br style=\"clear:both;\"><img src=\"http://127.0.0.1/data/editor/2203/0a5f59459e90f3c0aa78bdbd723bce0f_1646118397_912.jpg\" title=\"0a5f59459e90f3c0aa78bdbd723bce0f_1646118397_912.jpg\" alt=\"0a5f59459e90f3c0aa78bdbd723bce0f_1646118397_912.jpg\"><br style=\"clear:both;\"><img src=\"http://127.0.0.1/data/editor/2203/0a5f59459e90f3c0aa78bdbd723bce0f_1646118397_9615.jpg\" title=\"0a5f59459e90f3c0aa78bdbd723bce0f_1646118397_9615.jpg\" alt=\"0a5f59459e90f3c0aa78bdbd723bce0f_1646118397_9615.jpg\"><br style=\"clear:both;\">&nbsp;</p>', '', '', '', '4', '202', '150', '125', '100', '1048576', '1', '1', '0', '3', '0', '0', '0', '0', '0', '', '2', '0', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_board` VALUES ('example', 'example', 'ìê³µì¬ë¡', 'ìê³µì¬ë¡', 'both', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '1', '1', '100', '60', '30', '15', '15', '24', '100', '600', 'theme/cb_gallery', 'basic', '_head.php', '_tail.php', '', '', '', '', '', '4', '202', '150', '125', '100', '1048576', '1', '1', '0', '3', '0', '0', '0', '0', '0', '', '2', '0', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_board` VALUES ('free', '', 'ìì ê²ìí', '', 'both', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '-1', '5', '1', '-20', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '60', '30', '15', '15', '24', '100', '835', 'theme/cb_basic', 'basic', '_head.php', '_tail.php', '', '', '', '', '', '4', '202', '150', '125', '100', '1048576', '1', '0', '0', '3', '0', '0', '0', '0', '0', '', '2', '0', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_board` VALUES ('gps', '', 'íì¬ìì¹', '', 'both', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '60', '30', '15', '15', '24', '100', '600', 'theme/cb_page', 'basic', '_head.php', '_tail.php', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '', '4', '202', '150', '125', '100', '1048576', '1', '1', '0', '0', '0', '0', '0', '0', '0', '', '2', '0', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_board` VALUES ('hello', '', 'ì¸ì¬ë§', '', 'both', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '60', '30', '15', '15', '24', '100', '600', 'theme/cb_page', 'basic', '_head.php', '_tail.php', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '', '4', '202', '150', '125', '100', '1048576', '1', '1', '0', '1', '0', '0', '0', '0', '0', '', '2', '0', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_board` VALUES ('history', '', 'íì¬ì°ì­', '', 'both', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '60', '30', '15', '15', '24', '100', '600', 'theme/cb_page', 'basic', '_head.php', '_tail.php', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '', '4', '202', '150', '125', '100', '1048576', '1', '1', '0', '0', '0', '0', '0', '0', '0', '', '2', '0', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_board` VALUES ('introduce', '', 'íì¬ìê°', 'íì¬ìê°', 'both', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '1', 'a|b', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '60', '30', '15', '15', '24', '100', '600', 'theme/cb_page', 'basic', '_head.php', '_tail.php', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '', '4', '202', '150', '125', '100', '1048576', '1', '1', '0', '0', '0', '0', '0', '0', '0', '', '2', '0', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_board` VALUES ('notice', '', 'ê³µì§ì¬í­', '', 'both', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '-1', '5', '1', '-20', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '60', '30', '15', '15', '24', '100', '835', 'theme/cb_basic', 'basic', '_head.php', '_tail.php', '', '', '', '', '', '4', '202', '150', '125', '100', '1048576', '1', '0', '0', '1', '0', '0', '0', '0', '0', '', '2', '0', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_board` VALUES ('qa', '', 'ì§ë¬¸ëµë³', '', 'both', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '-1', '5', '1', '-20', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '60', '30', '15', '15', '24', '100', '835', 'theme/cb_qna', 'basic', '_head.php', '_tail.php', '', '', '', '', '', '4', '202', '150', '125', '100', '1048576', '1', '0', '0', '1', '0', '0', '0', '0', '0', '', '2', '0', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_board` VALUES ('qna', '', 'ë¬¸ì', '', 'both', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '-1', '5', '1', '-20', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '60', '30', '15', '15', '24', '100', '835', 'theme/cb_basic', 'basic', '_head.php', '_tail.php', '', '', '', '', '', '4', '202', '150', '125', '100', '1048576', '1', '0', '0', '1', '0', '0', '0', '0', '0', '', '2', '0', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_board_file` VALUES ('1', '0', '0', '1-1.jpg', '2042551263_mSiruNCJ_77550f95088d83d08f16ca88cd1443a6d419b674.jpg', '0', '', '', '', '', '72768', '1055', '597', '2', '2024-05-24 15:30:25');
INSERT INTO `g5_board_file` VALUES ('1', '0', '1', '1-2.jpg', '2042551263_e709DFMI_90544e84e01478f3a07e45d9f6d7172b7b0f3000.jpg', '0', '', '', '', '', '168212', '1072', '846', '2', '2024-05-24 15:30:25');
INSERT INTO `g5_board_file` VALUES ('1', '8', '0', '1-1.jpg', '2130706433_nOriKMps_6ae6afb6783216a5b596b1e3a56ace579fee8f66.jpg', '0', '', '', '', '', '72768', '1055', '597', '2', '2022-03-01 18:28:39');
INSERT INTO `g5_board_file` VALUES ('1', '8', '1', '1-2.jpg', '2130706433_5pH79YnO_dcade4b7216ef3568da59d289e5377544641df94.jpg', '0', '', '', '', '', '168212', '1072', '846', '2', '2022-03-01 18:28:39');
INSERT INTO `g5_board_file` VALUES ('1', '9', '0', '2-1.jpg', '2130706433_GlantJok_25ffa6a3d795683c6c9bed309f351763839fcbed.jpg', '0', '', '', '', '', '66248', '1011', '595', '2', '2022-03-01 18:27:51');
INSERT INTO `g5_board_file` VALUES ('1', '9', '1', '2-2.jpg', '2130706433_wTxp318C_820f4f64a0eecf0f8adbf9f1c47ee6957398d007.jpg', '0', '', '', '', '', '185204', '958', '839', '2', '2022-03-01 18:27:51');
INSERT INTO `g5_board_file` VALUES ('1', '10', '0', '1-1.jpg', '2130706433_T65cY9u0_a8e9f795b896d614d50ab5d4abf964b97a2f5fbf.jpg', '0', '', '', '', '', '72768', '1055', '597', '2', '2022-03-01 18:27:10');
INSERT INTO `g5_board_file` VALUES ('1', '10', '1', '1-2.jpg', '2130706433_2Srwp1y5_7a595107e97ccb44b07a9df65faf4241f2bbeca0.jpg', '0', '', '', '', '', '168212', '1072', '846', '2', '2022-03-01 18:27:10');
INSERT INTO `g5_board_file` VALUES ('1', '11', '0', '4-1.jpg', '3232286974_FiKEOb8I_17f444e727d8fec4c6c3a92217bd8c5ba55c9700.jpg', '0', '', '', '', '', '61795', '800', '480', '2', '2022-03-01 20:12:12');
INSERT INTO `g5_board_file` VALUES ('1', '11', '1', '4-2.jpg', '3232286974_trXuoKmz_748af68e6f8b01de7e40cae822e2b8cc04f6e348.jpg', '0', '', '', '', '', '64519', '800', '239', '2', '2022-03-01 20:12:12');
INSERT INTO `g5_board_file` VALUES ('1', '12', '0', '20220301171730_0a5f59459e90f3c0aa78bdbd723bce0f_9rnz.jpg', '3232286974_68iOCVwb_eb1749f5017432e985829b590b2b7f58c3a968c0.jpg', '0', '', '', '', '', '76775', '800', '460', '2', '2022-03-01 20:13:55');
INSERT INTO `g5_board_file` VALUES ('1', '12', '1', '20220301171730_0a5f59459e90f3c0aa78bdbd723bce0f_38fw.jpg', '3232286974_0NjI4cHu_18104c1a5e938cd123b5270a21f7c3e7712b666c.jpg', '0', '', '', '', '', '174783', '800', '689', '2', '2022-03-01 20:13:55');
INSERT INTO `g5_board_file` VALUES ('1', '13', '0', '20220301171337_0a5f59459e90f3c0aa78bdbd723bce0f_85jz.jpg', '3232286974_hZR7vufP_e678c66fc8d76118525aeeda335956727133c899.jpg', '0', '', '', '', '', '96635', '800', '467', '2', '2022-03-01 20:17:54');
INSERT INTO `g5_board_file` VALUES ('1', '13', '1', '20220301171337_0a5f59459e90f3c0aa78bdbd723bce0f_dmcz.jpg', '3232286974_XZ2rRS5f_f5ae03d98614f25766b01a064b72ffaa965529e2.jpg', '0', '', '', '', '', '158851', '800', '647', '2', '2022-03-01 20:17:54');
INSERT INTO `g5_board_file` VALUES ('1', '13', '2', '20220301171338_0a5f59459e90f3c0aa78bdbd723bce0f_o3fr.jpg', '3232286974_zaCE93XK_e56a5827a35ad002e5ac781b92c49c8df05fd645.jpg', '0', '', '', '', '', '173983', '800', '594', '2', '2022-03-01 20:17:54');
INSERT INTO `g5_board_file` VALUES ('1', '13', '3', '20220301171338_0a5f59459e90f3c0aa78bdbd723bce0f_frrs.jpg', '3232286974_4CHYltmF_8e7453cb07cc10e98e7e4a5f314de641d50d040d.jpg', '0', '', '', '', '', '106455', '800', '552', '2', '2022-03-01 20:17:54');
INSERT INTO `g5_board_file` VALUES ('1', '14', '0', '7-1.jpg', '3232286974_lriLpDmw_1547def10a687ca924b8e3de631d5d020f943eb6.jpg', '0', '', '', '', '', '147290', '1224', '856', '2', '2022-03-01 20:20:20');
INSERT INTO `g5_board_file` VALUES ('1', '14', '1', '7-2.jpg', '3232286974_A5Qkrvu3_65e6491d0f3edd8d8ed64e34c89e620764a0e73c.jpg', '0', '', '', '', '', '99901', '1313', '730', '2', '2022-03-01 20:20:20');
INSERT INTO `g5_board_file` VALUES ('1', '15', '0', '20220301171845_0a5f59459e90f3c0aa78bdbd723bce0f_aenl.jpg', '3232286974_CxbVh5tv_31828d76c3e2693a1371cc2d60bd56aaa5a47085.jpg', '0', '', '', '', '', '93351', '800', '507', '2', '2022-03-01 20:21:08');
INSERT INTO `g5_board_file` VALUES ('1', '15', '1', '20220301171845_0a5f59459e90f3c0aa78bdbd723bce0f_s0in.jpg', '3232286974_NgHynFTG_011d61fab1344efae1eb523b7d8015945fd07e3b.jpg', '0', '', '', '', '', '63275', '800', '463', '2', '2022-03-01 20:21:08');
INSERT INTO `g5_board_file` VALUES ('1', '16', '0', '20220301171917_0a5f59459e90f3c0aa78bdbd723bce0f_oerc.jpg', '3232286974_8GqgwxvY_b707c87368e01b29f2813fbf1bc8dbda86e9c34d.jpg', '0', '', '', '', '', '72407', '800', '507', '2', '2022-03-01 20:21:59');
INSERT INTO `g5_board_file` VALUES ('1', '16', '1', '20220301171917_0a5f59459e90f3c0aa78bdbd723bce0f_jny1.jpg', '3232286974_dRjgh17O_246fcfbc04533038e537991a70adbfb67fc51a23.jpg', '0', '', '', '', '', '117383', '800', '598', '2', '2022-03-01 20:21:59');
INSERT INTO `g5_board_file` VALUES ('biz', '-1', '1', 'intro2.jpg', '2130706433_TBtgXrYy_7f693866979d3eb6c6da9bbbdfa439cffcddab0c.jpg', '0', '', '', '', '', '66041', '1181', '661', '2', '2022-03-01 15:43:28');
INSERT INTO `g5_board_file` VALUES ('biz', '-1', '2', 'intro3.jpg', '2130706433_ER5VKCGm_486406f9e18233214fdee1f83ca5dd683497819a.jpg', '0', '', '', '', '', '115878', '1166', '808', '2', '2022-03-01 15:43:36');
INSERT INTO `g5_board_file` VALUES ('biz', '-1', '3', 'intro4.jpg', '2130706433_ToOYCfpv_0f343f8588b71b565f83a5e20f8114070745c18d.jpg', '0', '', '', '', '', '34525', '1222', '256', '2', '2022-03-01 15:43:41');
INSERT INTO `g5_board_file` VALUES ('biz', '-1', '4', 'intro2.jpg', '2130706433_ybNjaMmX_7657d795430f0fa4a5dce1390012be8b9eed3026.jpg', '0', '', '', '', '', '66041', '1181', '661', '2', '2022-03-01 15:45:18');
INSERT INTO `g5_board_file` VALUES ('biz', '-1', '5', 'intro3.jpg', '2130706433_hpJ63mbf_ad0191710d37bacf44f4797484228240f11b0200.jpg', '0', '', '', '', '', '115878', '1166', '808', '2', '2022-03-01 15:45:22');
INSERT INTO `g5_board_file` VALUES ('biz', '-1', '6', 'intro4.jpg', '2130706433_v3lme1ZL_c371c8e3a8f41b9aa8940c6119a68ec2f6799578.jpg', '0', '', '', '', '', '34525', '1222', '256', '2', '2022-03-01 15:45:24');
INSERT INTO `g5_board_file` VALUES ('free', '2', '0', 'ê°ì¨.PNG', '3232286974_urD3BE56_94f9f361a2e90a382408dbc3c9b08823658ac0ed.PNG', '0', '', '', '', '', '27282', '358', '193', '3', '2022-03-01 22:15:15');
INSERT INTO `g5_board_file` VALUES ('free', '3', '0', 'ì¢ê·¼ë¹.PNG', '3232286974_LHMhB8O3_6c601c78e370cf42c9d5868ef123b6ae62beaf99.PNG', '0', '', '', '', '', '9379', '127', '48', '3', '2022-03-01 22:16:47');
INSERT INTO `g5_board_file` VALUES ('free', '3', '1', 'pnk4ym_vqzf-0_logo.jpg', '3232286974_724LiCWT_c8e1364c70f7704399f1f535e454c00666f3a74f.jpg', '0', '', '', '', '', '10408', '482', '259', '1', '2022-03-01 22:16:47');
INSERT INTO `g5_board_file` VALUES ('hello', '-1', '1', 'KakaoTalk_20230215_163510880.jpg', '990851331_LTco5fdM_26b572f3fdcec3e0b3a0d4ba5e92d22b20cc877e.jpg', '0', '', '', '', '', '2548408', '4032', '3024', '2', '2023-04-26 00:07:54');
INSERT INTO `g5_board_file` VALUES ('hello', '-1', '2', '3.JPG', '990851331_6yzMviqP_11bde01081c502788d6aca563e86716f5c6223af.JPG', '0', '', '', '', '', '61948', '876', '682', '2', '2023-04-26 00:08:16');
INSERT INTO `g5_board_new` VALUES ('34', 'biz', '0', '0', '2024-05-24 14:57:32', 'admin');
INSERT INTO `g5_board_new` VALUES ('35', '1', '0', '0', '2024-05-24 15:28:26', 'admin');
INSERT INTO `g5_board_new` VALUES ('36', '1', '0', '0', '2024-05-24 15:29:33', 'admin');
INSERT INTO `g5_board_new` VALUES ('37', '1', '0', '0', '2024-05-24 15:30:25', 'admin');
INSERT INTO `g5_board_new` VALUES ('38', '1', '0', '0', '2024-05-24 15:33:30', 'admin');
INSERT INTO `g5_board_new` VALUES ('39', 'example', '2', '2', '2024-05-24 15:35:48', 'admin');
INSERT INTO `g5_board_new` VALUES ('40', 'example', '3', '3', '2024-05-24 17:09:49', 'admin');
INSERT INTO `g5_config` VALUES ('ê°ì¨ëìì´ìì¤í', 'thema', 'admin', 'admin@domain.com', 'ê°ì¨ëìì´ìì¤í', '', '1', '0', '1', '0', '100', '15', '60', 'theme/basic', '15', 'theme/basic', 'theme/basic', 'theme/basic', '0', '0', '0', '0', '10', '5', '_blank', '0', '30', '18ì,18ë,18ìë¼,18ë¬,18ë¸,18ê²,18ë,ê°ë,ê°ë,ê°ë¬,ê°ì,ê°ìë¼,ê°ì¸ë¼,ê°ì¸ì´,ê°ìì´,ê°ì,ê°ì½,ê°ìí¤,ê°ìì,ê°ì¢,ê²ìê¸°,ê²ìë¼,ê´ë¬,ë¬,ëê¹,ëë¯¸ë´,ëê·ë¯¸,ëê¸°ë¯¸,ëë¯¸,ëì´¬,ëì§ë,ëì ¸ë¼,ëì§ë¤,ëì ¸ë¼,ëì§ë¤,ëì§ë,ë³ì°,ë³ì ,ë»í,ë»í,ë½í,ìë¦¬ë·,ìêº,ì¬ë°,ì¬ë°¸,ì¬í,ì½ì,ì¤í¨í¹,ì¤í½,ìë²,ìë¶ë,ìë¶ë´,ìë¶ë¦¬,ìë¶,ìë¸ë,ìí,ìí,ìí,ì¤ë°¸,ì­8,ì­ì,ì­ì°½,ì¶ì,ìë,ìë,ìë¼,ì©ì,ì,ì¨ë²,ì©ìë,ìêº,ìì,ì°ë°,ì°ë°,ì°ë²,ì°í,ì¨8,ì¨ë,ì¨ë°,ì¨ë°,ì¨ë±,ì¨ë´ì,ì¨ë¶ë,ì¨ë¶ë´,ì¨ë¶ë ,ì¨ë¶ë¦¬,ì¨ë¶,ì¨ë¸ë,ì¨ë¹ ,ì¨ë¹¨,ì¨ë½ë,ì¨í,ì¨í,ì¨í,ì¹,ìê°ë¦¬,ìê°ì´,ìì°½,ì ë,ì¡ë,ì¬ë,ì ì£¼ê¸,ì¡°ê¹,ì¡°ë¹ ,ì¡°ìì´,ì¡°ì§ë,ì¡°ì§ë¤,ì¡°ì§ë,ì¡´ë,ì¡´ë,ì¢ë¬¼,ì¢ë,ì¢,ì¢,ì¢,ì¥ë,ì¥ë¡¤,ì¥¬ë,ì§ë,ì§ë´,ì§ë¡¤,ì§ë¯¸ë,ì«ë¹±,å¸,í½í,ë»í,ë¹ í,ããã¹ã', '', '', '', '', '', '', 'theme/basic', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '1000', '2', '0', '0', '30', '10000', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'admin,administrator,ê´ë¦¬ì,ì´ìì,ì´ëë¯¼,ì£¼ì¸ì¥,webmaster,ì¹ë§ì¤í°,sysop,ìì½,ììµ,manager,ë§¤ëì ,ë©ëì ,root,ë£¨í¸,su,guest,ë°©ë¬¸ê°', '', '30', '180', '180', '180', '2024-05-24', '2', '5000', '22', '22', '50000', '60', '60', '10', 'gif|jpg|jpeg|png', 'swf', 'asx|asf|wmv|wma|mpg|mpeg|mov|avi|mp3', '1', '15', '15', 'ì¤ë:11,ì´ì :,ìµë:52,ì ì²´:1278', '0', 'í´ë¹ ííì´ì§ì ë§ë íìê°ìì½ê´ì ìë ¥í©ëë¤.', 'í´ë¹ ííì´ì§ì ë§ë ê°ì¸ì ë³´ì²ë¦¬ë°©ì¹¨ì ìë ¥í©ëë¤.', '0', '500', 'basic', 'basic', 'basic', 'basic', 'basic', 'basic', 'cheditor5', '0', '', '', '', '', '', '', '2', '0', '', '', '', '', '211.172.232.124', '7295', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'kcaptcha', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_content` VALUES ('1', '1', 'íì±íì¬ê³¼ì¥ì¹', '<p style=\"text-align:center;\"><br></p>\r\n<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301170233_0a5f59459e90f3c0aa78bdbd723bce0f_a3vt.jpg\" alt=\"1-1.jpg\" style=\"width:800px;height:453px;\"></p>\r\n<p style=\"text-align:center;\">&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301170233_0a5f59459e90f3c0aa78bdbd723bce0f_9vbs.jpg\" alt=\"1-2.jpg\" style=\"width:800px;height:632px;\"></p>\r\n', 'íì±íì¬ê³¼ì¥ì¹', '<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301170215_0a5f59459e90f3c0aa78bdbd723bce0f_ccv9.jpg\" alt=\"1-1.jpg\" style=\"width:800px;height:453px;\"></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301170216_0a5f59459e90f3c0aa78bdbd723bce0f_fg0y.jpg\" alt=\"1-2.jpg\" style=\"width:800px;height:632px;\"></p>\r\n', 'theme/basic', 'basic', '1', '0', '', '');
INSERT INTO `g5_content` VALUES ('2', '1', 'ê²½ìì°íì¥ì¹', '<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301170401_0a5f59459e90f3c0aa78bdbd723bce0f_jht3.jpg\" alt=\"2-1.jpg\" style=\"width:1px;height:1px;\"></p>\r\n<p style=\"text-align:center;\">&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301170401_0a5f59459e90f3c0aa78bdbd723bce0f_tj13.jpg\" alt=\"2-2.jpg\" style=\"width:1px;height:1px;\"></p>\r\n<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301170413_0a5f59459e90f3c0aa78bdbd723bce0f_virz.jpg\" alt=\"2-1.jpg\" style=\"width:800px;height:471px;\"></p>\r\n<p style=\"text-align:center;\">&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301170413_0a5f59459e90f3c0aa78bdbd723bce0f_93bw.jpg\" alt=\"2-2.jpg\" style=\"width:800px;height:701px;\"></p>\r\n', 'ê²½ìì°íì¥ì¹', '<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301170425_0a5f59459e90f3c0aa78bdbd723bce0f_qt15.jpg\" alt=\"1-2.jpg\" style=\"width:800px;height:632px;\"></p>\r\n<p style=\"text-align:center;\">&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301170426_0a5f59459e90f3c0aa78bdbd723bce0f_mkl5.jpg&quot;\" alt=\"2-1.jpg\" style=\"width:800px;height:471px;\"></p>\r\n', 'theme/basic', 'basic', '1', '0', '', '');
INSERT INTO `g5_content` VALUES ('3', '1', 'ë°±íí°íì°ì§', '<p><img src=\"http://34.64.36.149/data/editor/2203/20220301171624_0a5f59459e90f3c0aa78bdbd723bce0f_qjtf.jpg\" alt=\"3-1.jpg\" style=\"width:800px;height:484px;\"></p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"http://34.64.36.149/data/editor/2203/20220301171624_0a5f59459e90f3c0aa78bdbd723bce0f_hqdg.jpg\" alt=\"3-2.jpg\" style=\"width:800px;height:664px;\"></p>\r\n', 'ë°±íí°íì°ì§', '<p style=\"text-align:center;\">\r\n   <img src=\"http://34.64.36.149/data/editor/2203/20220301171633_0a5f59459e90f3c0aa78bdbd723bce0f_ica3.jpg\" alt=\"3-1.jpg\" style=\"width:800px;height:484px;\">\r\n</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\">\r\n   <img src=\"http://34.64.36.149/data/editor/2203/20220301171633_0a5f59459e90f3c0aa78bdbd723bce0f_miuq.jpg\" alt=\"3-2.jpg\" style=\"width:800px;height:664px;\">\r\n</p>\r\n', 'theme/basic', 'basic', '1', '0', '', '');
INSERT INTO `g5_content` VALUES ('4', '1', 'ì°ìì©íí°íì°ì§', '<p style=\"text-align:center;\"><br></p>\r\n<p><img src=\"http://34.64.36.149/data/editor/2203/20220301171701_0a5f59459e90f3c0aa78bdbd723bce0f_lwmb.jpg\" alt=\"4-1.jpg\" style=\"width:800px;height:480px;\"></p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"http://34.64.36.149/data/editor/2203/20220301171701_0a5f59459e90f3c0aa78bdbd723bce0f_jmwf.jpg\" alt=\"4-2.jpg\" style=\"width:800px;height:429px;\"></p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"http://34.64.36.149/data/editor/2203/20220301171701_0a5f59459e90f3c0aa78bdbd723bce0f_ndjc.jpg\" alt=\"4-3.jpg\" style=\"width:800px;height:239px;\"></p>\r\n', 'ì°ìì©íí°íì°ì§', '<p style=\"text-align:center;\">\r\n   <br>\r\n</p>\r\n<p>\r\n   <img src=\"http://34.64.36.149/data/editor/2203/20220301171712_0a5f59459e90f3c0aa78bdbd723bce0f_nxci.jpg\" alt=\"4-1.jpg\" style=\"width:800px;height:480px;\">\r\n</p>\r\n<p>&nbsp;</p>\r\n<p>\r\n   <img src=\"http://34.64.36.149/data/editor/2203/20220301171712_0a5f59459e90f3c0aa78bdbd723bce0f_7w9z.jpg\" alt=\"4-2.jpg\" style=\"width:800px;height:429px;\">\r\n</p>\r\n<p>&nbsp;</p>\r\n<p>\r\n   <img src=\"http://34.64.36.149/data/editor/2203/20220301171712_0a5f59459e90f3c0aa78bdbd723bce0f_dytm.jpg\" alt=\"4-3.jpg\" style=\"width:800px;height:239px;\">\r\n</p>\r\n', 'theme/basic', 'basic', '1', '0', '', '');
INSERT INTO `g5_content` VALUES ('5', '1', 'ì ìí(ê´ë¡í)ìì¸ì ì´ê· ê¸°', '<p style=\"text-align:center;\"><br></p>\r\n<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301171730_0a5f59459e90f3c0aa78bdbd723bce0f_9rnz.jpg\" alt=\"5-1.jpg\" style=\"width:800px;height:460px;\"></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301171730_0a5f59459e90f3c0aa78bdbd723bce0f_38fw.jpg\" alt=\"5-2.jpg\" style=\"width:800px;height:689px;\"></p>\r\n', 'ì ìíê´ë¡íìì¸ì ì´ê· ê¸°', '<p style=\"text-align:center;\">\r\n   <br>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n   <img src=\"http://34.64.36.149/data/editor/2203/20220301171740_0a5f59459e90f3c0aa78bdbd723bce0f_lf38.jpg\" alt=\"5-1.jpg\" style=\"width:800px;height:460px;\">\r\n</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\">\r\n   <img src=\"http://34.64.36.149/data/editor/2203/20220301171740_0a5f59459e90f3c0aa78bdbd723bce0f_ye44.jpg\" alt=\"5-2.jpg\" style=\"width:800px;height:689px;\">\r\n</p>\r\n', 'theme/basic', 'basic', '1', '0', '', '');
INSERT INTO `g5_content` VALUES ('6', '1', 'ì­ì°í¬ìì ìì²ë¦¬ì¥ì¹(R/0 SYSTEM)', '<p><img src=\"http://34.64.36.149/data/editor/2203/20220301171256_0a5f59459e90f3c0aa78bdbd723bce0f_0b1q.jpg\" alt=\"5-1.jpg\" style=\"width:800px;height:460px;\"></p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"http://34.64.36.149/data/editor/2203/20220301171256_0a5f59459e90f3c0aa78bdbd723bce0f_1kmt.jpg\" alt=\"5-2.jpg\" style=\"width:800px;height:689px;\"></p>\r\n', 'ì­ì°í¬ìì ìì²ë¦¬ì¥ì¹r0-system', '<p style=\"text-align:center;\">\r\n   <img src=\"http://34.64.36.149/data/editor/2203/20220301171307_0a5f59459e90f3c0aa78bdbd723bce0f_ep71.jpg\" alt=\"5-1.jpg\" style=\"width:800px;height:460px;\">\r\n</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\">\r\n   <img src=\"http://34.64.36.149/data/editor/2203/20220301171307_0a5f59459e90f3c0aa78bdbd723bce0f_pps1.jpg\" alt=\"5-2.jpg\" style=\"width:800px;height:689px;\">\r\n</p>\r\n', 'theme/basic', 'basic', '1', '0', '', '');
INSERT INTO `g5_content` VALUES ('7', '1', 'ì¼ììëí¬ìì¥ì¹(ì¼ìí)', '<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301171337_0a5f59459e90f3c0aa78bdbd723bce0f_85jz.jpg&quot;\" alt=\"6-1.jpg\" style=\"width:800px;height:467px;\"></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301171337_0a5f59459e90f3c0aa78bdbd723bce0f_dmcz.jpg\" alt=\"6-2.jpg\" style=\"width:800px;height:647px;\"></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301171338_0a5f59459e90f3c0aa78bdbd723bce0f_o3fr.jpg\" alt=\"6-3.jpg\" style=\"width:800px;height:594px;\"></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301171338_0a5f59459e90f3c0aa78bdbd723bce0f_frrs.jpg\" alt=\"6-4.jpg\" style=\"width:800px;height:552px;\"></p>\r\n', 'ì¼ììëí¬ìì¥ì¹ì¼ìí', '<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301171349_0a5f59459e90f3c0aa78bdbd723bce0f_wud1.jpg\" alt=\"6-1.jpg\" style=\"width:800px;height:467px;\"></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301171349_0a5f59459e90f3c0aa78bdbd723bce0f_r6q0.jpg\" alt=\"6-2.jpg\" style=\"width:800px;height:647px;\"></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301171350_0a5f59459e90f3c0aa78bdbd723bce0f_apdp.jpg\" alt=\"6-3.jpg\" style=\"width:800px;height:594px;\"></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301171350_0a5f59459e90f3c0aa78bdbd723bce0f_t1u5.jpg\" alt=\"6-4.jpg\" style=\"width:800px;height:552px;\"></p>\r\n', 'theme/basic', 'basic', '1', '0', '', '');
INSERT INTO `g5_content` VALUES ('8', '1', 'ì¼ììëí¬ìì¥ì¹(ííì°ëí)', '<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301171845_0a5f59459e90f3c0aa78bdbd723bce0f_aenl.jpg\" alt=\"8-1.jpg\" style=\"width:800px;height:507px;\"></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301171845_0a5f59459e90f3c0aa78bdbd723bce0f_s0in.jpg\" alt=\"8-2.jpg\" style=\"width:800px;height:463px;\"></p>\r\n', 'ì¼ììëí¬ìì¥ì¹ííì°ëí', '<p style=\"text-align:center;\">\r\n   <img src=\"http://34.64.36.149/data/editor/2203/20220301171856_0a5f59459e90f3c0aa78bdbd723bce0f_1d2i.jpg\" alt=\"8-1.jpg\" style=\"width:800px;height:507px;\">\r\n</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\">\r\n   <img src=\"http://34.64.36.149/data/editor/2203/20220301171856_0a5f59459e90f3c0aa78bdbd723bce0f_o4tu.jpg\" alt=\"8-2.jpg\" style=\"width:800px;height:463px;\">\r\n</p>\r\n', 'theme/basic', 'basic', '1', '0', '', '');
INSERT INTO `g5_content` VALUES ('9', '1', 'í±í¬ììí ìì¸ì ì´ê· ê¸°', '<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301171917_0a5f59459e90f3c0aa78bdbd723bce0f_oerc.jpg\" alt=\"9-1.jpg\" style=\"width:800px;height:507px;\"></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://34.64.36.149/data/editor/2203/20220301171917_0a5f59459e90f3c0aa78bdbd723bce0f_jny1.jpg\" alt=\"9-2.jpg\" style=\"width:800px;height:598px;\"></p>\r\n<script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', 'í±í¬ììí-ìì¸ì ì´ê· ê¸°', '<p style=\"text-align:center;\">\r\n   <img src=\"http://34.64.36.149/data/editor/2203/20220301171929_0a5f59459e90f3c0aa78bdbd723bce0f_3lfn.jpg\" alt=\"9-1.jpg\" style=\"width:800px;height:507px;\">\r\n</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\">\r\n   <img src=\"http://34.64.36.149/data/editor/2203/20220301171929_0a5f59459e90f3c0aa78bdbd723bce0f_j8sv.jpg\" alt=\"9-2.jpg\" style=\"width:800px;height:598px;\">\r\n</p>\r\n', 'theme/basic', 'basic', '1', '0', '', '');
INSERT INTO `g5_content` VALUES ('10', '1', 'ì¬ììê°', '<div style=\"text-align:justify;\" align=\"justify\"><img src=\"http://34.64.36.149/data/editor/2203/b1654ca55220e255092b8e7c576faf7d_1646144506_793.jpg\" title=\"b1654ca55220e255092b8e7c576faf7d_1646144506_793.jpg\" alt=\"b1654ca55220e255092b8e7c576faf7d_1646144506_793.jpg\"></div><div style=\"text-align:justify;\" align=\"justify\"><img src=\"http://34.64.36.149/data/editor/2203/b1654ca55220e255092b8e7c576faf7d_1646144506_8361.jpg\" title=\"b1654ca55220e255092b8e7c576faf7d_1646144506_8361.jpg\" alt=\"b1654ca55220e255092b8e7c576faf7d_1646144506_8361.jpg\"></div><div style=\"text-align:justify;\" align=\"justify\"><img src=\"http://34.64.36.149/data/editor/2203/b1654ca55220e255092b8e7c576faf7d_1646144506_8947.jpg\" title=\"b1654ca55220e255092b8e7c576faf7d_1646144506_8947.jpg\" alt=\"b1654ca55220e255092b8e7c576faf7d_1646144506_8947.jpg\"></div><div style=\"text-align:justify;\" align=\"justify\">&nbsp;</div>', 'ì¬ììê°', '<div style=\"text-align:justify;\" align=\"justify\"><img src=\"http://34.64.36.149/data/editor/2203/b1654ca55220e255092b8e7c576faf7d_1646144517_0422.jpg\" title=\"b1654ca55220e255092b8e7c576faf7d_1646144517_0422.jpg\" alt=\"b1654ca55220e255092b8e7c576faf7d_1646144517_0422.jpg\"></div><div style=\"text-align:justify;\" align=\"justify\"><img src=\"http://34.64.36.149/data/editor/2203/b1654ca55220e255092b8e7c576faf7d_1646144517_0878.jpg\" title=\"b1654ca55220e255092b8e7c576faf7d_1646144517_0878.jpg\" alt=\"b1654ca55220e255092b8e7c576faf7d_1646144517_0878.jpg\"></div><div style=\"text-align:justify;\" align=\"justify\"><img src=\"http://34.64.36.149/data/editor/2203/b1654ca55220e255092b8e7c576faf7d_1646144517_1451.jpg\" title=\"b1654ca55220e255092b8e7c576faf7d_1646144517_1451.jpg\" alt=\"b1654ca55220e255092b8e7c576faf7d_1646144517_1451.jpg\"></div><div style=\"text-align:justify;\" align=\"justify\">&nbsp;</div>', 'theme/basic', 'basic', '1', '0', '', '');
INSERT INTO `g5_content` VALUES ('11', '1', 'ì¸ì¬ë§', '<p>ì¸ì¬ë§</p>', 'ì¸ì¬ë§', '<p>ì¸ì¬ë§<br></p>', 'theme/basic', 'basic', '1', '0', '', '');
INSERT INTO `g5_content` VALUES ('12', '1', 'ê°ì¸ì ë³´ ì²ë¦¬ë°©ì¹¨', '<p align=center><b>ê°ì¸ì ë³´ ì²ë¦¬ë°©ì¹¨ì ëí ë´ì©ì ìë ¥íì­ìì¤.</b></p>', 'ê°ì¸ì ë³´-ì²ë¦¬ë°©ì¹¨', '', '', '', '0', '0', '', '');
INSERT INTO `g5_content` VALUES ('13', '1', 'ìë¹ì¤ ì´ì©ì½ê´', '<p align=center><b>ìë¹ì¤ ì´ì©ì½ê´ì ëí ë´ì©ì ìë ¥íì­ìì¤.</b></p>', 'ìë¹ì¤-ì´ì©ì½ê´', '', '', '', '0', '0', '', '');
INSERT INTO `g5_faq_master` VALUES ('1', 'ìì£¼íìë ì§ë¬¸', '', '', '', '', '0');
INSERT INTO `g5_group` VALUES ('community', 'ì»¤ë®¤ëí°', 'both', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_group` VALUES ('example', 'ìê³µì¬ë¡', 'both', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_group` VALUES ('introduce', 'ì¬ììê°', 'both', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_group` VALUES ('product', 'ì íìê°', 'both', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_login` VALUES ('121.190.219.223', 'admin', '2024-05-24 19:12:15', 'ê°ì¨ëìì´ìì¤í', '');
INSERT INTO `g5_login` VALUES ('185.191.126.213', '', '2024-05-24 19:17:11', 'ê°ì¨ëìì´ìì¤í', '/');
INSERT INTO `g5_member` VALUES ('1', 'admin', 'sha256:12000:pUMuvMdBL+0+vYC/zfTjUFyk71MJNwAu:aIIkf4cLgmQrsq6/2OjOiroViLs1Oqsi', '*103E49333DDF40DF45DC0A6259921E9B0FF6D93C', 'ìµê³ ê´ë¦¬ì', 'ìµê³ ê´ë¦¬ì', '0000-00-00', 'admin@domain.com', '', '10', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '1430', '2024-05-24 14:46:34', '121.190.219.223', '2022-08-15 01:12:04', '127.0.0.1', '', '', '2022-08-15 01:12:04', '', '', '', '1', '0', '1', '0000-00-00', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_member` VALUES ('2', 'yeshua21', 'sha256:12000:6XHX0RHr3eZ1NcyKfZFhCtu8pv1NpnT5:X9jZiaLWU6iV7k0TI/nn2/Y6aajroA+n', '', 'ìíì°', 'ìíì°', '2022-08-17', 'yblmmen@nate.com', '', '2', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '1005', '2022-08-17 08:14:35', '61.72.206.229', '2022-08-17 08:14:35', '61.72.206.229', '', '', '2022-08-17 08:14:35', '', '', '', '1', '0', '1', '2022-08-17', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_member` VALUES ('3', 'yeshua', 'sha256:12000:1fSxpbqfWMXu4tcViPfmUm2Nm7CpLIAF:Kz2eFH/EkaYthu7AhGkadw1uMlfik41w', '', 'ì´ê´ë¦¬ì', 'ì´ê´ë¦¬ì', '2024-05-24', 'yblmmen@gmail.com', '', '2', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '1000', '2024-05-24 14:43:16', '121.190.219.223', '2024-05-24 14:43:16', '121.190.219.223', '', '', '2024-05-24 14:43:16', '', '', '', '1', '0', '1', '2024-05-24', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_menu` VALUES ('503', '10', 'ABOUT', 'http://34.64.36.149/page/greeting.php', 'self', '1', '1', '1');
INSERT INTO `g5_menu` VALUES ('504', '1010', 'ì¸ì¬ë§', 'http://34.64.36.149/page/greeting.php', 'self', '1', '1', '1');
INSERT INTO `g5_menu` VALUES ('505', '1020', 'íì¬ì°í', 'http://34.64.36.149/page/history.php', 'self', '2', '1', '1');
INSERT INTO `g5_menu` VALUES ('506', '1030', 'íì¬ìê°', 'http://34.64.36.149/page/intro.php', 'self', '3', '1', '1');
INSERT INTO `g5_menu` VALUES ('507', '1040', 'íì¬ìì¹', 'http://34.64.36.149/page/map.php', 'self', '4', '1', '1');
INSERT INTO `g5_menu` VALUES ('508', '20', 'ì¬ììê°', 'http://34.64.36.149/bbs/content.php?co_id=10', 'self', '2', '1', '1');
INSERT INTO `g5_menu` VALUES ('509', '30', 'ì íìê°', 'http://34.64.36.149/bbs/content.php?co_id=1', 'self', '3', '1', '1');
INSERT INTO `g5_menu` VALUES ('510', '3010', 'íì±íì¬ê³¼ì¥ì¹', 'http://34.64.36.149/bbs/content.php?co_id=1', 'self', '0', '1', '1');
INSERT INTO `g5_menu` VALUES ('511', '3020', 'ê²½ìì°íì¥ì¹', 'http://34.64.36.149/bbs/content.php?co_id=2', 'self', '0', '1', '1');
INSERT INTO `g5_menu` VALUES ('512', '3030', 'ë°±íí°íì°ì§', 'http://34.64.36.149/bbs/content.php?co_id=3', 'self', '0', '1', '1');
INSERT INTO `g5_menu` VALUES ('513', '3040', 'ì°ìì©íí°íì°ì§', 'http://34.64.36.149/bbs/content.php?co_id=4', 'self', '0', '1', '1');
INSERT INTO `g5_menu` VALUES ('514', '3050', 'ì ìíìì¸ì ì´ê· ê¸°', 'http://34.64.36.149/bbs/content.php?co_id=5', 'self', '0', '1', '1');
INSERT INTO `g5_menu` VALUES ('515', '3060', 'ì­ì°í¬ìì ìì²ë¦¬ì¥ì¹', 'http://34.64.36.149/bbs/content.php?co_id=6', 'self', '0', '1', '1');
INSERT INTO `g5_menu` VALUES ('516', '3070', 'ì¼ììëí¬ìì¥ì¹(ì¼ì)', 'http://34.64.36.149/bbs/content.php?co_id=7', 'self', '0', '1', '1');
INSERT INTO `g5_menu` VALUES ('517', '3080', 'ì¼ììëí¬ìì¥ì¹(íí)', 'http://34.64.36.149/bbs/content.php?co_id=8', 'self', '0', '1', '1');
INSERT INTO `g5_menu` VALUES ('518', '3090', 'í±í¬ììíìì¸ì ì´ê· ê¸°', 'http://34.64.36.149/bbs/content.php?co_id=9', 'self', '0', '1', '1');
INSERT INTO `g5_menu` VALUES ('519', '40', 'HOME', 'http://34.64.36.149/', 'self', '0', '1', '1');
INSERT INTO `g5_menu` VALUES ('520', '50', '1:1ë¬¸ì', 'http://34.64.36.149/bbs/qalist.php', 'self', '6', '1', '1');
INSERT INTO `g5_menu` VALUES ('521', '60', 'ìê³µì¬ë¡', 'http://34.64.36.149/bbs/board.php?bo_table=example', 'self', '5', '1', '1');
INSERT INTO `g5_point` VALUES ('1', 'admin', '2022-08-15 01:12:26', '2022-08-15 ì²«ë¡ê·¸ì¸', '100', '1', '0', '9999-12-31', '100', '@login', 'admin', '2022-08-15');
INSERT INTO `g5_point` VALUES ('2', 'admin', '2022-03-01 17:24:06', 'ìì ê²ìí 1 ê¸ì°ê¸°', '5', '0', '0', '9999-12-31', '105', 'free', '1', 'ì°ê¸°');
INSERT INTO `g5_point` VALUES ('3', 'admin', '2022-03-01 17:24:25', 'ê³µì§ì¬í­ 1 ê¸ì°ê¸°', '5', '0', '0', '9999-12-31', '110', 'notice', '1', 'ì°ê¸°');
INSERT INTO `g5_point` VALUES ('4', 'admin', '2022-03-01 17:24:37', 'ì§ë¬¸ëµë³ 1 ê¸ì°ê¸°', '5', '0', '0', '9999-12-31', '115', 'qa', '1', 'ì°ê¸°');
INSERT INTO `g5_point` VALUES ('5', 'admin', '2022-03-01 22:15:15', 'ìì ê²ìí 2 ê¸ì°ê¸°', '5', '0', '0', '9999-12-31', '120', 'free', '2', 'ì°ê¸°');
INSERT INTO `g5_point` VALUES ('6', 'admin', '2022-03-01 22:16:47', 'ìì ê²ìí 3 ê¸ì°ê¸°', '5', '0', '0', '9999-12-31', '125', 'free', '3', 'ì°ê¸°');
INSERT INTO `g5_point` VALUES ('7', 'admin', '2022-08-16 06:06:17', '2022-08-16 ì²«ë¡ê·¸ì¸', '100', '0', '0', '9999-12-31', '225', '@login', 'admin', '2022-08-16');
INSERT INTO `g5_point` VALUES ('8', 'yeshua21', '2022-08-17 08:14:35', 'íìê°ì ì¶í', '1000', '0', '0', '9999-12-31', '1000', '@member', 'yeshua21', 'íìê°ì');
INSERT INTO `g5_point` VALUES ('9', 'yeshua21', '2022-08-17 08:15:16', 'ì§ë¬¸ëµë³ 2 ê¸ì°ê¸°', '5', '0', '0', '9999-12-31', '1005', 'qa', '2', 'ì°ê¸°');
INSERT INTO `g5_point` VALUES ('10', 'admin', '2022-08-17 08:15:37', '2022-08-17 ì²«ë¡ê·¸ì¸', '100', '0', '0', '9999-12-31', '325', '@login', 'admin', '2022-08-17');
INSERT INTO `g5_point` VALUES ('11', 'admin', '2022-08-17 08:15:47', 'ì§ë¬¸ëµë³ 2 ê¸ì½ê¸°', '-1', '0', '1', '2022-08-17', '324', 'qa', '2', 'ì½ê¸°');
INSERT INTO `g5_point` VALUES ('12', 'admin', '2022-08-17 08:15:58', 'ì§ë¬¸ëµë³ 2-3 ëê¸ì°ê¸°', '1', '0', '0', '9999-12-31', '325', 'qa', '3', 'ëê¸');
INSERT INTO `g5_point` VALUES ('13', 'admin', '2022-08-19 09:38:18', '2022-08-19 ì²«ë¡ê·¸ì¸', '100', '0', '0', '9999-12-31', '425', '@login', 'admin', '2022-08-19');
INSERT INTO `g5_point` VALUES ('14', 'admin', '2022-08-29 06:23:01', '2022-08-29 ì²«ë¡ê·¸ì¸', '100', '0', '0', '9999-12-31', '525', '@login', 'admin', '2022-08-29');
INSERT INTO `g5_point` VALUES ('15', 'admin', '2022-09-13 11:53:18', '2022-09-13 ì²«ë¡ê·¸ì¸', '100', '0', '0', '9999-12-31', '625', '@login', 'admin', '2022-09-13');
INSERT INTO `g5_point` VALUES ('16', 'admin', '2022-09-22 12:26:52', '2022-09-22 ì²«ë¡ê·¸ì¸', '100', '0', '0', '9999-12-31', '725', '@login', 'admin', '2022-09-22');
INSERT INTO `g5_point` VALUES ('17', 'admin', '2023-04-25 21:54:31', '2023-04-25 ì²«ë¡ê·¸ì¸', '100', '0', '0', '9999-12-31', '825', '@login', 'admin', '2023-04-25');
INSERT INTO `g5_point` VALUES ('18', 'admin', '2023-04-26 00:00:01', '2023-04-26 ì²«ë¡ê·¸ì¸', '100', '0', '0', '9999-12-31', '925', '@login', 'admin', '2023-04-26');
INSERT INTO `g5_point` VALUES ('19', 'admin', '2023-04-26 00:05:46', 'ë¬¸ì 0 ê¸ì°ê¸°', '5', '0', '0', '9999-12-31', '930', 'qna', '0', 'ì°ê¸°');
INSERT INTO `g5_point` VALUES ('20', 'admin', '2023-04-27 12:24:55', '2023-04-27 ì²«ë¡ê·¸ì¸', '100', '0', '0', '9999-12-31', '1030', '@login', 'admin', '2023-04-27');
INSERT INTO `g5_point` VALUES ('21', 'admin', '2023-04-30 22:57:26', '2023-04-30 ì²«ë¡ê·¸ì¸', '100', '0', '0', '9999-12-31', '1130', '@login', 'admin', '2023-04-30');
INSERT INTO `g5_point` VALUES ('22', 'admin', '2023-05-05 21:46:31', '2023-05-05 ì²«ë¡ê·¸ì¸', '100', '0', '0', '9999-12-31', '1230', '@login', 'admin', '2023-05-05');
INSERT INTO `g5_point` VALUES ('23', 'admin', '2023-05-07 14:23:37', '2023-05-07 ì²«ë¡ê·¸ì¸', '100', '0', '0', '9999-12-31', '1330', '@login', 'admin', '2023-05-07');
INSERT INTO `g5_point` VALUES ('24', 'yeshua', '2024-05-24 14:43:16', 'íìê°ì ì¶í', '1000', '0', '0', '9999-12-31', '1000', '@member', 'yeshua', 'íìê°ì');
INSERT INTO `g5_point` VALUES ('25', 'admin', '2024-05-24 14:46:34', '2024-05-24 ì²«ë¡ê·¸ì¸', '100', '0', '0', '9999-12-31', '1430', '@login', 'admin', '2024-05-24');
INSERT INTO `g5_qa_config` VALUES ('1:1ë¬¸ì', 'íì|í¬ì¸í¸', 'basic', 'basic', '1', '0', '1', '0', '0', '0', '', '', '1', '60', '30', '15', '15', '600', '1048576', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_qa_config` VALUES ('1:1ë¬¸ì', 'íì|í¬ì¸í¸', 'theme/basic', 'basic', '1', '0', '1', '0', '0', '0', '', '', '1', '60', '30', '15', '15', '600', '1048576', '', '', '', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_qa_content` VALUES ('1', '-1', '1', '1', 'admin', 'ìµê³ ê´ë¦¬ì', 'admin@domain.com', '', '0', 'íì', '0', '0', '1', 'ë¬¸ì', '<p>ë¬¸ì</p>', '0', '', '', '', '', '121.190.219.223', '2024-05-24 15:35:21', '', '', '', '', '');
INSERT INTO `g5_uniqid` VALUES ('2022030113230047', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030113590848', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030113592869', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030113593291', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030113595841', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030115430842', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030115434362', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030115454715', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116054237', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116065909', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116190124', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116193879', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116241040', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116242172', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116243798', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116244948', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116263058', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116263698', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116371754', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116431702', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116462061', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116490915', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116571341', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116575391', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116593681', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116594969', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117000712', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117062136', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117064682', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117072881', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117073943', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117085513', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117094752', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117235931', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117241208', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117241630', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117243028', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117312581', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117410678', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117450996', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117491335', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118091233', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118092625', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118261934', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118263203', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118264221', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118273762', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118282579', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118290731', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118333207', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118333631', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118361802', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118365798', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118371590', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030119592641', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030120094970', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030120104200', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030120123488', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030120140409', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030120142260', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030120155090', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030120171551', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030120172235', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030120180168', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030120204723', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030120214223', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030122144688', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030122152270', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022081606483664', '54.36.148.75');
INSERT INTO `g5_uniqid` VALUES ('2022081708150182', '61.72.206.229');
INSERT INTO `g5_uniqid` VALUES ('2022092212244340', '121.131.26.231');
INSERT INTO `g5_uniqid` VALUES ('2022092212263510', '121.131.26.231');
INSERT INTO `g5_uniqid` VALUES ('2022092212270472', '121.131.26.231');
INSERT INTO `g5_uniqid` VALUES ('2022092212274597', '121.131.26.231');
INSERT INTO `g5_uniqid` VALUES ('2023042523524085', '34.64.36.149');
INSERT INTO `g5_uniqid` VALUES ('2023042523530111', '34.64.36.149');
INSERT INTO `g5_uniqid` VALUES ('2023042523575592', '34.64.36.149');
INSERT INTO `g5_uniqid` VALUES ('2023042523584755', '34.64.36.149');
INSERT INTO `g5_uniqid` VALUES ('2023042523595126', '34.64.36.149');
INSERT INTO `g5_uniqid` VALUES ('2023042600001070', '34.64.36.149');
INSERT INTO `g5_uniqid` VALUES ('2023042600010521', '34.64.36.149');
INSERT INTO `g5_uniqid` VALUES ('2023042600011520', '34.64.36.149');
INSERT INTO `g5_uniqid` VALUES ('2023042600034082', '59.15.49.3');
INSERT INTO `g5_uniqid` VALUES ('2023042600052738', '59.15.49.3');
INSERT INTO `g5_uniqid` VALUES ('2023042600071431', '59.15.49.3');
INSERT INTO `g5_uniqid` VALUES ('2023042600083589', '59.15.49.3');
INSERT INTO `g5_uniqid` VALUES ('2023042600123915', '59.15.49.3');
INSERT INTO `g5_uniqid` VALUES ('2023050116503596', '136.243.228.197');
INSERT INTO `g5_uniqid` VALUES ('2023050116511756', '136.243.220.213');
INSERT INTO `g5_uniqid` VALUES ('2023050116515805', '136.243.220.213');
INSERT INTO `g5_uniqid` VALUES ('2023050116545936', '136.243.220.213');
INSERT INTO `g5_uniqid` VALUES ('2023050116552055', '136.243.220.213');
INSERT INTO `g5_uniqid` VALUES ('2024052414570857', '121.190.219.223');
INSERT INTO `g5_uniqid` VALUES ('2024052414571705', '121.190.219.223');
INSERT INTO `g5_uniqid` VALUES ('2024052414574409', '121.190.219.223');
INSERT INTO `g5_uniqid` VALUES ('2024052415030446', '121.190.219.223');
INSERT INTO `g5_uniqid` VALUES ('2024052415033995', '121.190.219.223');
INSERT INTO `g5_uniqid` VALUES ('2024052415141937', '121.190.219.223');
INSERT INTO `g5_uniqid` VALUES ('2024052415262309', '121.190.219.223');
INSERT INTO `g5_uniqid` VALUES ('2024052415290456', '121.190.219.223');
INSERT INTO `g5_uniqid` VALUES ('2024052415293811', '121.190.219.223');
INSERT INTO `g5_uniqid` VALUES ('2024052415304405', '121.190.219.223');
INSERT INTO `g5_uniqid` VALUES ('2024052415330430', '121.190.219.223');
INSERT INTO `g5_uniqid` VALUES ('2024052415352907', '121.190.219.223');
INSERT INTO `g5_uniqid` VALUES ('2024052417082088', '121.190.219.223');
INSERT INTO `g5_uniqid` VALUES ('2024052417085022', '121.190.219.223');
INSERT INTO `g5_uniqid` VALUES ('2024052417102057', '121.190.219.223');
INSERT INTO `g5_visit` VALUES ('1264', '127.0.0.1', '2024-01-20', '11:46:08', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1265', '59.15.205.62', '2024-01-20', '11:56:24', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Whale/3.24.223.21 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1266', '117.222.3.40', '2024-01-20', '12:02:58', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1267', '192.168.219.119', '2024-01-20', '12:09:54', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1268', '115.231.78.12', '2024-05-24', '14:49:11', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.2623.112 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1269', '198.235.24.150', '2024-05-24', '15:41:41', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1270', '34.77.126.178', '2024-05-24', '16:42:10', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1271', '27.0.238.68', '2024-05-24', '17:18:24', '', 'facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984', '', '', '');
INSERT INTO `g5_visit` VALUES ('1272', '211.231.103.91', '2024-05-24', '17:18:25', '', 'facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984', '', '', '');
INSERT INTO `g5_visit` VALUES ('1273', '118.235.4.180', '2024-05-24', '17:24:24', '', 'Mozilla/5.0 (Linux; Android 13; SM-N981N Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/114.0.5735.60 Mobile Safari/537.36 KAKAOTALK/10.7.2 (INAPP)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1274', '141.134.205.11', '2024-05-24', '18:32:12', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1275', '81.24.95.146', '2024-05-24', '18:46:17', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7', '', '', '');
INSERT INTO `g5_visit` VALUES ('1276', '27.0.238.70', '2024-05-24', '18:51:18', '', 'facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984', '', '', '');
INSERT INTO `g5_visit` VALUES ('1277', '218.38.125.165', '2024-05-24', '18:57:02', '', 'Mozilla/5.0 (Linux; Android 13; SM-N981N Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/124.0.6367.123 Mobile Safari/537.36 KAKAOTALK/10.7.2 (INAPP)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1278', '185.191.126.213', '2024-05-24', '19:17:11', '', '', '', '', '');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-25', '1');
INSERT INTO `g5_visit_sum` VALUES ('2023-04-29', '1');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-01', '2');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-21', '2');
INSERT INTO `g5_visit_sum` VALUES ('2022-03-01', '3');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-21', '4');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-02', '4');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-07', '4');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-08', '4');
INSERT INTO `g5_visit_sum` VALUES ('2023-04-25', '4');
INSERT INTO `g5_visit_sum` VALUES ('2024-01-20', '4');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-15', '5');
INSERT INTO `g5_visit_sum` VALUES ('2023-04-30', '5');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-22', '8');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-10', '8');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-18', '9');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-04', '10');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-05', '10');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-14', '10');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-20', '11');
INSERT INTO `g5_visit_sum` VALUES ('2024-05-24', '11');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-26', '12');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-06', '13');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-11', '14');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-30', '15');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-03', '16');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-20', '16');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-27', '17');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-22', '17');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-28', '18');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-16', '18');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-09', '20');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-24', '21');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-13', '21');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-19', '22');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-12', '22');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-17', '23');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-18', '24');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-31', '24');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-29', '27');
INSERT INTO `g5_visit_sum` VALUES ('2023-05-11', '33');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-15', '34');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-16', '35');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-17', '35');
INSERT INTO `g5_visit_sum` VALUES ('2023-04-28', '37');
INSERT INTO `g5_visit_sum` VALUES ('2023-05-04', '38');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-19', '39');
INSERT INTO `g5_visit_sum` VALUES ('2023-04-27', '39');
INSERT INTO `g5_visit_sum` VALUES ('2023-05-03', '41');
INSERT INTO `g5_visit_sum` VALUES ('2023-05-05', '41');
INSERT INTO `g5_visit_sum` VALUES ('2023-05-07', '43');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-23', '45');
INSERT INTO `g5_visit_sum` VALUES ('2023-05-10', '45');
INSERT INTO `g5_visit_sum` VALUES ('2023-05-06', '46');
INSERT INTO `g5_visit_sum` VALUES ('2023-04-26', '47');
INSERT INTO `g5_visit_sum` VALUES ('2023-05-08', '47');
INSERT INTO `g5_visit_sum` VALUES ('2023-05-02', '49');
INSERT INTO `g5_visit_sum` VALUES ('2023-05-01', '52');
INSERT INTO `g5_visit_sum` VALUES ('2023-05-09', '52');
INSERT INTO `g5_write_example` VALUES ('1', '-1', '', '1', '0', '0', '', '', 'html1', 'ìê³µì¬ë¡', '<p><img src=\"http://34.64.36.149/data/editor/2304/5797fba9d4bace99c6def584b33c1108_1682434922_0621.jpeg\" title=\"5797fba9d4bace99c6def584b33c1108_1682434922_0621.jpeg\"><br style=\"clear:both;\">&nbsp;</p>', 'ìê³µì¬ë¡', '', '', '0', '0', '7', '0', '0', 'admin', '', 'ìµê³ ê´ë¦¬ì', 'admin@domain.com', '', '2023-04-26 00:02:07', '0', '2023-04-26 00:02:07', '34.64.36.149', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_write_example` VALUES ('2', '-2', '', '2', '0', '0', '', '', 'html1', 'ìê³µì¬ë¡', '<p>ìê³µì¬ë¡</p>\r\n<p><img src=\"http://34.64.36.149/data/editor/2405/20240524153545_2b42973bb0217e01ba12f1f708048e12_yyjs.jpg\" alt=\"about-1.jpg\" style=\"width: 800px; height: 626px;\" /></p>', 'ìê³µì¬ë¡-1', '', '', '0', '0', '1', '0', '0', 'admin', '', 'ìµê³ ê´ë¦¬ì', 'admin@domain.com', '', '2024-05-24 15:35:48', '0', '2024-05-24 15:35:48', '121.190.219.223', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_write_example` VALUES ('3', '-3', '', '3', '0', '0', '', '', 'html1', 'ì¼ììëí¬ìì¥ì¹', '<p style=\"text-align: center;\"><img src=\"http://34.64.36.149/data/editor/2405/20240524170928_2b42973bb0217e01ba12f1f708048e12_tlck.jpg\" alt=\"8-1.jpg\" style=\"width: 800px; height: 507px;\" /></p>', 'ì¼ììëí¬ìì¥ì¹', '', '', '0', '0', '1', '0', '0', 'admin', '', 'ìµê³ ê´ë¦¬ì', 'admin@domain.com', '', '2024-05-24 17:09:49', '0', '2024-05-24 17:09:49', '121.190.219.223', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_write_free` VALUES ('1', '-1', '', '1', '0', '0', '', '', '', 'íì¤í¸', 'íì¤í¸', 'íì¤í¸', '', '', '0', '0', '3', '0', '0', 'admin', '', 'ìµê³ ê´ë¦¬ì', 'admin@domain.com', '', '2022-03-01 17:24:06', '0', '2022-03-01 17:24:06', '127.0.0.1', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_write_free` VALUES ('2', '-2', '', '2', '0', '0', '', '', '', 'ê°ì¨ëìì´ìì¤í', 'Tel 043-234-0170 Mobile 010-8641-5669\r\nE-mail songs5669@hanmail.net\r\nAddress ì¶©ì²­ë¶ë ì²­ì£¼ì ì²­ìêµ¬ ì¤ì°½ì ì¤ì ë¦¬ 8', 'ê°ì¨ëìì´ìì¤í', '', '', '0', '0', '5', '0', '0', 'admin', '', 'ìµê³ ê´ë¦¬ì', 'admin@domain.com', '', '2022-03-01 22:15:15', '1', '2022-03-01 22:15:15', '192.168.200.254', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_write_free` VALUES ('3', '-3', '', '3', '0', '0', '', '', '', 'ì¢ê·¼ë¹', 'ì¢ê·¼ë¹', 'ì¢ê·¼ë¹', '', '', '0', '0', '9', '0', '0', 'admin', '', 'ìµê³ ê´ë¦¬ì', 'admin@domain.com', '', '2022-03-01 22:16:47', '2', '2022-03-01 22:16:47', '192.168.200.254', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_write_notice` VALUES ('1', '-1', '', '1', '0', '0', '', '', '', 'ê³µì§ì¬í­ 1', 'ê³µì§ì¬í­ 1', 'ê³µì§ì¬í­-1', '', '', '0', '0', '2', '0', '0', 'admin', '', 'ìµê³ ê´ë¦¬ì', 'admin@domain.com', '', '2022-03-01 17:24:25', '0', '2022-03-01 17:24:25', '127.0.0.1', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_write_qa` VALUES ('1', '-1', '', '1', '0', '0', '', '', '', 'ì§ë¬¸ëµë³ 1', 'ì§ë¬¸ëµë³ 1', 'ì§ë¬¸ëµë³-1', '', '', '0', '0', '12', '0', '0', 'admin', '', 'ìµê³ ê´ë¦¬ì', 'admin@domain.com', '', '2022-03-01 17:24:37', '0', '2022-03-01 17:24:37', '127.0.0.1', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_write_qa` VALUES ('2', '-2', '', '2', '0', '1', '', '', '', 'ë¬¸ì íì¤í¸', 'ë¬¸ìíê¸°', 'ë¬¸ì-íì¤í¸', '', '', '0', '0', '10', '0', '0', 'yeshua21', '', 'ìíì°', 'yblmmen@nate.com', '', '2022-08-17 08:15:16', '0', '2022-08-17 08:15:58', '61.72.206.229', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_write_qa` VALUES ('3', '-2', '', '2', '1', '1', '', '', '', '', 'ëµë³ íì¤í¸', '', '', '', '0', '0', '0', '0', '0', 'admin', '', 'ìµê³ ê´ë¦¬ì', 'admin@domain.com', '', '2022-08-17 08:15:58', '0', '', '61.72.206.229', '', '', '', '', '', '', '', '', '', '', '', '');
