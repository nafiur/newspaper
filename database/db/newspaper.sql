/*
 Navicat Premium Data Transfer

 Source Server         : Laragoan
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : newspaper

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 12/05/2024 17:16:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache
-- ----------------------------

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cancelled_at` int NULL DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job_batches
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED NULL DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` VALUES (3, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2024_05_12_041843_create_permission_tables', 2);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_roles_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id` ASC) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('0e6UcYSyeq6hq1nDWwa1sOOpNPP5vVMosUednB9X', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRW05TDgzTTA1RnhkQjJRS0NnMGtJaWtSRVJhTjl1eWdYSUplSndkYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498126);
INSERT INTO `sessions` VALUES ('15Hbh5J1y9WlxGduiXNAAbq4zPy2yfZXNB5X3sAr', 23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibE1WSFM2UmhTVUFRbUJHejZia2dMSTR2WUlxM3Q4anJOc2k5V1RYayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly9uZXdzcGFwZXIudGVzdC9hZG1pbi9zaXRlLXNldHRpbmdzL2luZm8iO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyMzt9', 1715505631);
INSERT INTO `sessions` VALUES ('28JLsUaW6nUnYIFj96TLoxvt6pRL6qPLpILmSGUE', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGFUeVFHQTlLMWpOSjhid2FKMUZKTGM3dW5OZzh6ZkxMd2dnc2Y3SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715505624);
INSERT INTO `sessions` VALUES ('2Ek6ERpCCWU9UK0VPf83ApCIz7Gk1R1qgGUA37Yd', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVE9oWGJPSkdJWlcweElFUDlad095aHd1cEY0eU1BQ1hBYzhzeGNiUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715497738);
INSERT INTO `sessions` VALUES ('3bDfQsKTuGCNK2dT0GPBMysl1fcWNdcdQFJex9Gj', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmtHemFCeThpTG9lWmRXT05vTVlLNVlrenYzcWJFZGZFbjlSNnlodCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715500838);
INSERT INTO `sessions` VALUES ('3bf5CWxvjt3hCfuhzbTzIdmhQjSccJZf1w9KY0jq', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmdIM0EzMTVSWlVDdWFmZUt2UjdmVmlLdGhwV3NtOFRJZ0lNcjZRWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715502153);
INSERT INTO `sessions` VALUES ('3pvEHl5j03qPjzJUJsRfi87YNeDsKKNrMXDCkvVE', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkdDeGxVYlRzMGw2V2VDck9JakR0c05Ec2NFeDZUa0tqcndqZW5NVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715499084);
INSERT INTO `sessions` VALUES ('42AigwoeOgC8T08YtckxUDfgSbu2OE7ZxMAYHTyS', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnlPdnlFZFZRN3F4eTZjQUxtTGlvMjd2eDlSWUV6ZnpOamhrZ1VVUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715496773);
INSERT INTO `sessions` VALUES ('4HcTpNjV6V8jbHdUClsx4Glsc8EEViZCBd566TfD', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmE4ejNWSkgwMnZOZmxQekJ5ekMzcWVlejl3cEhlRmpCZ1FWazZmSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498896);
INSERT INTO `sessions` VALUES ('5fYKdKwYwbNe3gMTw8yBdRcbFucKzQxAK0EfwQMn', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTRiRU5zMVJuNzVuZWdRMGZqR3BIcndxVlZYcFAybjJrOEJVdE1yTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498530);
INSERT INTO `sessions` VALUES ('67lPa99XccwbQ75oE52Wqv6nRb1Krnrso6QUTsnP', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzBNdmx0aHZyZU1OMXhwT3hyaTQyUFcwVFdQSWZPeHllYThQYU1YUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498393);
INSERT INTO `sessions` VALUES ('6kRlQ7QNcOTVJCRVklCy8RSjlk2oDT6kX9gxXUQu', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSE82bkdQbWxLUVExbjB5ZFIzejdUT0g5aktISjAzVEw0N3UwZ25lMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715499281);
INSERT INTO `sessions` VALUES ('6rBRQEf4n1skqujBI2ZU7uxIFaP4Qy1fJNrcLTVT', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYzhBOE1SczBzSmIzemdMUVpsQmxQNEdsQkZwbFp6aWVFQzdjVjJOYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715505249);
INSERT INTO `sessions` VALUES ('7H8cNvmEce1CCNdVjP3PZpZBAhF2Y9o18OYy0DT0', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0RvaG92emlFZTVyNU04Tm5MaFQycHVVN1VoMVpBYzNHak0zbnU2YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715502879);
INSERT INTO `sessions` VALUES ('8rQt3BlD1GEdatpHSJ8S5XBfz7hW3b09vZOMPHam', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibmd4MnlTVUhHVVFPV2pmelZmVDBYZ1NmN2JWTFhaQ3FyOE9jRk1hSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715497652);
INSERT INTO `sessions` VALUES ('9Q8bETZLFwEVgeR6fquTovf599zYFEVGQ0jc7PUR', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTlBWllXRGFUbGRVbFV2dVpNU053enhYMmFTSGFRcUNMSGhnV0dHNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498108);
INSERT INTO `sessions` VALUES ('ad8bV45leOenlpzyWLT4xrA1pSqD45Wq4GgLdczv', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNjl6Wms2R211ZjlIVlNXOHBCcjBLZHI2S1hGczh2aFFLaFJFcVp5RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715504657);
INSERT INTO `sessions` VALUES ('AHJdcmRePlgwkMUFVa3bAb6HBRJzcJXdT8TfkBHT', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2s1RWVHbTdHeWliaUlwY08yUEM4R05SWWpNY0NpVGFwamt3NmtqdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715499117);
INSERT INTO `sessions` VALUES ('ali9DKGIwDkJ5uL5bqm2FeaCXMKJH7Xd7b3Nk6KF', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYm9oYTg5UUZJbXZjZG4zaUlrb2tiNUZHVVNraHVkZXhKaGRSUlp6UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715503301);
INSERT INTO `sessions` VALUES ('am9fvPBZNJEf1tDJDN1pZe7Mq3WKR2VATlwWb3Jg', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMlpuZTZkMzlzUlVGOUFqQzVnbGl6bzZmSGs3Vk1tdlU0cXN5Um05NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715499765);
INSERT INTO `sessions` VALUES ('AZbDuyg02Fk8u94KbPQHhvzD4FT6iuj7qEjDTJ0m', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWNOR2dMTjNXT0x1ampYWWh5TEN0aHJhb0JkRmFBUnlveDdSVUpGSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498534);
INSERT INTO `sessions` VALUES ('b90tZlWXww8OTnWvHRVkaElIhd9ajntZdErJOR0l', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibFdGT0F1dTN6dzE1dTVweHBXcnhPYzY3Qk9XekVlRzFMRE5NdnFPdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498563);
INSERT INTO `sessions` VALUES ('BAs6pGx5qbLldFaFc8yxVxU2p29JPd1Sx4LNpP4c', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkg3ZE9TSXNiTW4xMzRKQnVhSzluWEVpdTQ5YW82eEJWMHRhbGlLYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715499186);
INSERT INTO `sessions` VALUES ('BdTcVtpPfIXztZQbSoG7ZNXsshYh9jP8eNqm6zSN', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRjM5ckttenBkbkQxSFA3REs2UVRoR3hpbDJtUTgwaTNmZXk3S1U1MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715500793);
INSERT INTO `sessions` VALUES ('BLiZ0bpPLvrqLZMI8WLZBLUJxm1JIKsXjhx1GL50', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGhpUm5qTUNvVkdZMjVzaDN1N0REV0pPY29xcXdseTMzMHkzRTM5ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715504650);
INSERT INTO `sessions` VALUES ('bmnMm6cpX49jVFVCaDHZRJaMEiPvI3wWtpCJd3z3', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUJrZXVoR2hWeU5BQ0pWY2p4bk55SEdUSGQ0eG9JWndma2ZOcW94YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715505057);
INSERT INTO `sessions` VALUES ('bs9Vr428V7qVBiq0VPtpvkHpCa67ifxR2FimXWcA', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDZodkhDemVMa29nSnJ2Tk9NbWZwZXlXQ3FWMDlrbGpyWm5lWTNQZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498480);
INSERT INTO `sessions` VALUES ('ChGyWiS0qPktwauNyAWyRWlPE16e2PLaiPfGF6eS', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2dld2oyQWZtNE1OeUNqRXVuODdTRFVnVWlKUUhqSWhmVDN5OGJKaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715504653);
INSERT INTO `sessions` VALUES ('cKqrtWWLDxjlwnSzopRpn8KNVc60mjzBivJgAwoF', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWk3bkY0RExldkJhbGFiVjBYeWV3ODFzdkhzT2xPdW82MmMwUE9XOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715499064);
INSERT INTO `sessions` VALUES ('cNA2GQmJXLcghbNhwx6sDzEZIejUFipI4fj9YKGF', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkJRVUZNQkVBazl6TmFQM0dScEFDWW85a3RrSnphb25iNDFaa0N6dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715505265);
INSERT INTO `sessions` VALUES ('CqDeZPF9WTCJyDv06QNegjtfoNKkDXNUc5O8ditt', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVU1hTkVqZmRzTHE2SG91NUpvMjJreDV5QUFJQzAzaVNuTk11Nml6SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715504635);
INSERT INTO `sessions` VALUES ('cto3H4BjtGWlUrZ2WTHOYfRxQNLl08kiIoPfd2ql', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaGx3ZkZMcnpYTko0MG1OeW5YVW9zYVdieWZKWktEZDE2bG5OODY2eiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715499769);
INSERT INTO `sessions` VALUES ('Dooq8fegmm4gVjxeA3iKKe0UTi4A0Uf7rMfxu28d', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWk9RT21QWG5adXVHZ2ZGTlVyRHR2aWQ1eGlDT0psWjJvS3hDckNMTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715503559);
INSERT INTO `sessions` VALUES ('dp6FLotNw3BfYPzpXFWuTP147OBCEyr74Db19Uvx', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmdRUnlCeERidWNDa1lQTk5KRHA0Um5XNEhSM2lMQ2kzS0dWQ0tUVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498493);
INSERT INTO `sessions` VALUES ('dyP7NbLOr9PHo32d4NX1k81JqobxIgFdlAKLxaiG', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibFRFamh5d09YRVdhUjRkYWxkcGo2cTI5SnlLWjhlem5XeFpkMzdTTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498506);
INSERT INTO `sessions` VALUES ('Eg0diixq8Gdqxk07qcr2lMyw6moheHja5BnAIWDY', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiODBtWWxGNjFiM3V5OEdMWTBvcGVzWUlHNHpKM3YwRmk4QlEyUnRpeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715497914);
INSERT INTO `sessions` VALUES ('f6wvRl7Hx3T1l6PgIMgqmRyfJBF6BcVHrmR1lUOq', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNkFYUVMwOEhxOW14d0t0cjc1OHAyS2pWYjRCZmRkbVBEN3VCbXNPSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715499145);
INSERT INTO `sessions` VALUES ('fmwccr194Lob8RYMOhQ3AfmS0bmVVSH233GfqVW6', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWFpbmtiU1J3aTVnRXFvNThod2lMQ2E0dGUxWjBTamtoaWM2T3FKUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715496511);
INSERT INTO `sessions` VALUES ('FMzdHYEAkljOco6pAwza9VMWOlqK6Ow9Z2t5AQ4O', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjNtQVBNYXZyVExqTkhrQ00wczN2bjNPZmlYUFFrR3RzcVlqSDBXZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715499746);
INSERT INTO `sessions` VALUES ('FsUwOcqm08fHSgDLylJPmzoJmBTi6z04I3RCRam9', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibnFjUXBvSkhqTFdOZHpHZExscEJ0VUh6QUhvNzhyUjdraFdqU3JTZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498448);
INSERT INTO `sessions` VALUES ('FvABM20znWOeBUfGR3xodsNuoFWBNrjkCHCLlXVe', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaTRjZTFWV2tnUURranVuWGkycmduWE11bDVKN0hWamNnQTdRamhpZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715497808);
INSERT INTO `sessions` VALUES ('g122sfBEdjMnB07SSAvJnLHsrZJ2zcQsKaORU2gu', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEVIM2ZjaW1IZ3dmcVBWN0t5bGQ0cUVncVlVUlhaWFFyRklBOVB3aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715504836);
INSERT INTO `sessions` VALUES ('GHTgXlKaCIzs4sXMpc0TMstVZy70rnmnE7acqOZW', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlhVY2ozUTNnVUg0TmN2ZWZ4MXY4NkhnV1pOMkxsTWNyYnh5M1JPRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715501807);
INSERT INTO `sessions` VALUES ('GRfnYzqJCQr9byot7fLiqC4sGfroPyrSwZ47IAYe', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0dJVUFPVWlZNEEzU2V1RmtsdGlUNmRkWkgyYlhMb0FGWWI5dExNRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715505003);
INSERT INTO `sessions` VALUES ('gvw4XQKWGGPinyhgNQNNrob76GWsFAtv89eAGhNV', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDgzT01Mc3VuYmJhWjE2RVJFU2FibkxjNHdMaEZzOWxha05iUzBvRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498793);
INSERT INTO `sessions` VALUES ('GxWv6s9FxpXQ0VidYqNwiMUzz66VZ21nvhW5iM0S', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNm1nVDlWRXkzTEFUdlNKWTZuNklZMXEwcUJXaDk2cXBHSXR5eElnMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498903);
INSERT INTO `sessions` VALUES ('HfSU92fBb5OkbjV7GXY0rqA3qJwqJ4otVqxUQMLw', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSFExWEp3c3RWNzZjdUduaHZkUktRWW5ZRGlIWTUyZXlreDkyNVI5NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715500788);
INSERT INTO `sessions` VALUES ('hNfv5VV2w0mZuwiCu0Q0ZTlhmKHNXFAHOVNXqOQf', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMlhLQmR3Z094R0dtSUl3VzVETG9ZRlI5dEt0WVY5bDJqUHJHR2tSViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498555);
INSERT INTO `sessions` VALUES ('HT135Iq4HaIGfs0BsiYCECTsjkR3XqOfYEyiO5tX', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzV2WlJoQUZsSGo5azMyTlVLdUVhZnNpUllGTExhWjNLSmVQUWxnNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715496768);
INSERT INTO `sessions` VALUES ('hYx3t7DDJV22UldwQgdwz7Aj7mhaZCFVJBwoNkic', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2lZOVpNbTRWQVE1dkt4TmptRUprUFVoR3FUS2hDTDk2MUk0cjVzYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715504897);
INSERT INTO `sessions` VALUES ('ia4QPxMYha08OeOIQ7UrNpMmzGsgf6CHKD9pfpU4', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmNQM3Jod1pCTG1ZOGJlUHIwWEZNMXhQZ0l2V2kwRkxERFRzQTE3bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715500747);
INSERT INTO `sessions` VALUES ('icJQBV17D6a1Ky0LWwt5BsbaTuYogHwIxBqtoefA', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRURNS1F2MTNqS1JITTIzcVRqQUpLdlN0YXpyeVFWYWV6TzRMWmxJNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715499328);
INSERT INTO `sessions` VALUES ('ifI9qb2fY6vFABlKbNH52u3kaxErD6i6KK2o7GLc', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3phTURFYlp3MlNqQjYxOG5lQWpLSmVSVjY0Sk5wejlOTjlTajBTUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715505261);
INSERT INTO `sessions` VALUES ('iHL2VviCZsgpuCDZoWfJiZItV2aRy5m5OiR13jT0', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRlFMREd3dVFzaWFHUm9mOVZHU09CZGQ0U05tU2RVYmZZZFFPWDlTcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498547);
INSERT INTO `sessions` VALUES ('ISZBdObj7HNFa7XayVyqHFGNdW0va2PaYD8kna0u', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzJXcDgyeUJkejNxblhqQWMwdU94NDBiQ1E3b25STHhkblhjQTlCdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715505560);
INSERT INTO `sessions` VALUES ('Iy3Rt3WpiipoYQqueqbBpplQVGaIj87V8lP72zXY', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWp4T29RRlo4NmpqSWpxQWRFZE94d1ZPZmd3SzJoOUFtb1hNWU9vUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498228);
INSERT INTO `sessions` VALUES ('J5Kp8B2OHCfTr53p8XbA36G8CCYzN6UBuRBJrsnM', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNzRNbTBjcUFkZ0tCcnJDVEVIaFhKOW1hZk5RUFZaYmU0U1VWcUFrcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715505612);
INSERT INTO `sessions` VALUES ('jJJRFWksN33dKzkyTDD8Xqq7EpNkkXByOUcJbDV5', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDZhZXJETG52WVlta1JzaGtjeHpTVERVU09PSzdNNXFFMGVWY3F2ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715505246);
INSERT INTO `sessions` VALUES ('jn4NpgMBqePRorOZdtc3CIS4vwMQwTRcyZMxrVEw', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTB0TVhUYU5YRlUwdE9rNHR3VTlMelNYdUU1V20weVdlb0l3a1JEaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715499275);
INSERT INTO `sessions` VALUES ('JsEkQad6gInfscqGPhNABOuKO0poYuFN94BrayzT', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0pxQjlFeG9pY3E3MVllMzlwZmZ2YVpNVzlOemVrd3NTc3hFczBjeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715505557);
INSERT INTO `sessions` VALUES ('JWLWKqi1ntiNmsGhKlYgbtZET2kSCuSRbm7RgoFN', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkVhZjJLQzRlWm1KTDd1ZnEzT2JyOFVCVnRoTHBjbVFYeDZkVTZrcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715505533);
INSERT INTO `sessions` VALUES ('kCxxW3TR3NZeBsjNPZUgVZUB5uCbAvUdZxlA6NcQ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNzJMeTg1WmRKaDVSR2YyNDlLVmpoT1RobndZOVd0eGRaVGsxaXJsVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715500853);
INSERT INTO `sessions` VALUES ('kdcRAgYaQpcQ0whmSVwzlDwO5ljindDpQTVPpW2a', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnRFN3dEanBLUFFsek1SVjdVa1VTd05RUm9SU3BDSW1OWFFzekhGYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498524);
INSERT INTO `sessions` VALUES ('KsfTbZDAK1Un7eTcxnP6GktiOfsTLA62cJMZ9ayN', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDl3am9aTENUMG1QbWhnYzNYT0Rsc01qVHU3dGw2NHFDRjhQNTlMNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715500767);
INSERT INTO `sessions` VALUES ('Kt3ksw3xjPLofQWTgGMhhE5myBtfFEJMCmzDpHMM', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibnplTkJxWGxETlBnZk4wbHVQR0llems0OFdmSm9TQ1pmSXdacUM5NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715497935);
INSERT INTO `sessions` VALUES ('L4WS7cyp1nzYBrkF2HFUKbDvNak0rwy08m0f0Voi', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTUxZYmZ0S3RYSnk0NzVuWWVpVnVHNnZjWDVBQ1Q5RGVGdnZYSmpGVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715497782);
INSERT INTO `sessions` VALUES ('LE2t7rxpVEs5szeUrLVuBfLVpnYzlaIldTXZFtVa', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDBwbllLNVdodFNXTEM0bmhnMlQxSll1dGs4OVBxMUhGYllvZWNoVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498502);
INSERT INTO `sessions` VALUES ('LQc5y3prvBUmfNZoVMrovlFbyntrKwCHAQXoL5op', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzRZZXRXbDZneHptSGlzNFZJQ3dSUDJiMTlaNlpkWGltcXp2a1k0dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715500855);
INSERT INTO `sessions` VALUES ('M2zlFxroE08llqIlJqijW87Fdhb226FtOtdPX9Ae', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFRGQWUxcEF4V2g3bGwySGRIN3VlUkdmVnVTUTZNaUU1NW1qeHF3VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715505550);
INSERT INTO `sessions` VALUES ('Mo2yxly3rHLF1IBHQ4q1WfhdftThu8yLZE1FF3UL', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0lVR1BidXIyR0xLdkFNSE5SdVZlRlBpdVFKV3J0VGc4WXZ6RE1saSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715503650);
INSERT INTO `sessions` VALUES ('mqWm30ZQ5QUJn0VbNvquktiCxd82eso2fPcPmYHN', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjJMQlBBdU1FdzhWaDRhZFRvSlA2ZWxqUU9wYTRjYzBTNlhCdEdaZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715504691);
INSERT INTO `sessions` VALUES ('mRULMm976cmOPQ9HFt6sQ88TTdmzrhisd4MBaPVX', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUZDYXBNdFE0dXRsUVNVcHlUWW9PWUxRZTFLU3kwdjVlQURPaGw1YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498509);
INSERT INTO `sessions` VALUES ('mUhEjfOsLXT2AmRHSGzRDfcG8uIk8WSQEE0iTplN', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSDNMVWVzNEg3VEZwbnMxeEdXbkxOQ2hITzVTZnRrM3BWNHlZZ0tndiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715504842);
INSERT INTO `sessions` VALUES ('NTqwInhOcEeaiJFvRMDcwKFxL6ir2baAOaZ2EyJS', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUJoUjZnaXdrcXJZbXZ6RXB0SUFlSEFXOUJBUEpoVjZIOVpWQk8wTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715499080);
INSERT INTO `sessions` VALUES ('o6JPGYqTgXRo8OhBHpK5w1sYnvy7OYsn51f59Y8L', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFlwbmQ4SGJOVXFVQ2RsbVVKTEpyc3Y4OXZFOGU4SUkwYUg2RE9IdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715499181);
INSERT INTO `sessions` VALUES ('opudM5ytTvkCXPkR0DMyuoTK73O5noSvilwBg7H8', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZHNLV1A2a0FKeWpIVlpsN2p1SEZlM1FyMUdEQVMzQ0dIbHVCb2c3TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715497928);
INSERT INTO `sessions` VALUES ('oR4JeD14RkJWYXpRK9f5d78rx4cKBsEvQLNPGb5B', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGZGM2dkQzRBTG9lQTdKdEFPb1VZY2E0RXJUSWdqMHNlYlk5TUtTViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715504912);
INSERT INTO `sessions` VALUES ('oTsMp4fPVjsn0ycCacrBP896EGjlOTaq5Q4g0IAg', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXNrNGY3NEFVUDRWd01pN3dQNTQ4NDdaa1ZNdzAzRGhKRlV0WTY2YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498865);
INSERT INTO `sessions` VALUES ('OwLFkaMS8bOtsfC8GRy9BWPA6SREp98In93Of6Ft', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzBxQzZNdlJZNjV2c2FTeDRxUDNQYXB3QnVzNXplT2FyTzFsTDNiMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715499104);
INSERT INTO `sessions` VALUES ('pBB7AZSxQZnxwUrQjSylJ9cIULHpXIbYvlCPjuG4', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTVqY1c4TTVYQUs5R3hqTXpMQ3ZFQTF6RlZ0bEwxakdaTkVJbGtveiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498890);
INSERT INTO `sessions` VALUES ('pBc6VgXkmD9gG4rKUr25PkLbuZACuhc3ufBzo97z', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiODZoMlYwcFRLV0NQQUlxb0VKY21zOTk0Qk1xc2ZWMll6QW13eGV3cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715505536);
INSERT INTO `sessions` VALUES ('pcaWmNzqXMO8YXWcQpj561cpxPl2CzLXaWuCIUhy', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUpCZTFLTEVYWUdLNmpSdkhSa2hzd29rWExSTUlWSnVKazZNbldGSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715505274);
INSERT INTO `sessions` VALUES ('PTxJGphKr8377tvoax9w40uKShHkcpS3RA3zzUZk', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNEZCeHN3OEJsUERuWmF6MUFUSExXMTFRTVM4dEw3V2NZamREVUo1USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715503290);
INSERT INTO `sessions` VALUES ('pZK3I0Czzxrgh7VlXVLUDriB3LSA13I5tf045MZF', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXZucmJ1UFF1UFF2T2RlNXN0RHVVSWhIMG8yNFlMS0prQWc1TGNBRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715505257);
INSERT INTO `sessions` VALUES ('QJjxyhhcPF93WiE8wu2auozQFkczFbwbZUQHgM21', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFEzeW5uWmxyUmIyOUdCeFQ4dHd1Slk1cjI0VU5mV0t2eFZvVTdMTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715500801);
INSERT INTO `sessions` VALUES ('Qk9nL86OMOlPSTCaStra0fEUCygWHwX5tawIh13U', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRUFKR1o4eEVNZXNoZXc2bzVVeTFvOGp2TzdtbFV2cEFsYVJvdDBEUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498423);
INSERT INTO `sessions` VALUES ('QRvE2JWCKqbHfc1v1AgjL4Jxv6LvuiK3xYEBcLYa', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0t4WENOWEFuOHlkY0JPYVpDQ2VoeFQyV1RZQ2dlZFRnMk9KWXdBRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498122);
INSERT INTO `sessions` VALUES ('RfUK5wjxofRRO1rjjbLC0JcSqfyAA2VTRCTH4S4R', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXZHQWF4a1pjZURkVExwWnNPdUFoU2RpVDZmN0RxUmtaNEJEY1IwViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498788);
INSERT INTO `sessions` VALUES ('s9Yn7DxYDXRHeLjbPeskPtcAL6oMDxAA8RodLyY0', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2trbHA0cGE0eEFxNWhhdnZNSEdHYVVTcGxLbjJRQjVYUDdaWkZFUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715499724);
INSERT INTO `sessions` VALUES ('syCsl1sC7i378MYzbyb3t28ZXP0qq4CnNsQySzZF', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTlhGUTFiOWZEdGhxQmpxZHVROFVqNllWa3dSRkY5OVhGbUVOdjY3TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715499337);
INSERT INTO `sessions` VALUES ('TdkIMBUHXPDj2p49qEwdELug82Tr5OFWNEXWvxaD', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2NYMFFadWthdEF4cjFYOHFBOEtBZklmQVBqb25RQUFTRWoycTRSNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498250);
INSERT INTO `sessions` VALUES ('TgVJjQwIhIJDIh6sMETi3dELDJ5Qzt9lzAYUjl5K', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEhkZ052QUxzZkRyRVhPbEJXcEFrbTV6Z1dKUFB4WlRZVEFjYjFSZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715505234);
INSERT INTO `sessions` VALUES ('u4GHzDDBHl80031kN16Ol4qMhr8uDKIragdXQOBg', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibmt4V0RaTlBNYVhuZWhyS1dYaHlYbnlTb25FQjk2WE1iTllGdUY1ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498862);
INSERT INTO `sessions` VALUES ('uiA0g04lHgNQiV1I9xSAx38wLMuLn4R3ZSkha1kA', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidEp6Rkk2ZHU0S0JZVkFKM3d6SWVYemg3NDUzUW96RGcxQ1dkdU44SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498231);
INSERT INTO `sessions` VALUES ('uKcOQBMWh4t6XIB9HD5OCuYk4VIDjhCQnYhOylze', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiakZyWVNyNXMwbEkzNGhjV0pVS1lBbWVHeGRsSFFLUXZkZmV5NHJmVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498427);
INSERT INTO `sessions` VALUES ('UUylziSA3ZboG56M5bz3W2vbvlITutc8R530pwMF', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUpGdGF3YTFmZWdTT0VTQ0Jvd05hNTdxUFh2Q1RnclBORzExMG01biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715497787);
INSERT INTO `sessions` VALUES ('VjTYU72ZvlsakMhqUn01eAGWgHInX2VifSiKCQAa', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ05KZzhEcDNjVWlNb3VRRERBNERhbU05Z1BrazhqczlQcjhURkh0WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715499075);
INSERT INTO `sessions` VALUES ('VptcAwcskEp92pEwhYIvs6fVtco2hGvUcrPRaCaw', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2lkcTlkUENFWUpSeFVISFdFVE9YdmpOeUNTRHJ6ZWRROGI0NHhaTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715502172);
INSERT INTO `sessions` VALUES ('vRiKseQzwzomHRbsDOY3vaQkL9HFwkEUoXYjJseh', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDcyeHdhbkhpMkpGdFhkM2tOYjM5dFJkV0FEZHVDY1VrY0ZtVnJoZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715505290);
INSERT INTO `sessions` VALUES ('vu1oIkyC2aXCAunJyqd0Ogbwz0jeNYKp86JOBOFG', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlo0RmNwbXY4V1FUOFRhelMyVmpkMmxmNmZ1eU1hM1BuamJabUFPTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498868);
INSERT INTO `sessions` VALUES ('vuE8bRHGrFghx8PieanVk6WfUqXLemlCQGM6B6Yy', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidndmVml5MGtLWDZIeXBzZGNXb2UzbXJyR0NrZ2lHZXFxb3N5T2xCWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715500681);
INSERT INTO `sessions` VALUES ('VWgjlhAWEot2JFbhMSDBrBUX697xrmHLytmKOq5T', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmw4NXF2dllyT3hnUzdRcGtvOTBzVU1CdEFMN3FtZldiV3Z2M25iTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498115);
INSERT INTO `sessions` VALUES ('xBuk7eNuSZ5jg9B1hJzMMHH0krWIL1HWubrKi8iB', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTRqOXUza3VJTldlelNDV2lMVkxKcEFwRDV4b2pCa0MyNVNYYmJ4diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498906);
INSERT INTO `sessions` VALUES ('XLtGYThnR4D5qM9zKG0zszATwE8oS2O0P9eGC579', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib21lWm5tUktQWVkwZG53Z2NJTG5GZDBtNXI2Y0t1dU12cHVITGhvVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715498260);
INSERT INTO `sessions` VALUES ('Y3CeIDDFsBBNwH8kaoeCmGeOWSuY42qc3uyGNAlL', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWJBQUJxQnRLdWJXQlBoZW1nM1YydURLZGFYUW84d2F6QklIQlF3UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715503287);
INSERT INTO `sessions` VALUES ('YNqx09u4QNSxUmZgDxJ113bZMMuUABy8jw1uXzLx', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGhwSld3ZFFPc0JCWWFHeW9kOHFwVEtsVkZsbWFPMVFYcEpScjVzTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715505253);
INSERT INTO `sessions` VALUES ('ZTCewH89keLeGzcgD0SFcZJThQdD4iS8N4Fe0G2g', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieW9WYXN0VTlnMklLNEhzNW05SWdzRTc5OE5LaWdMRHNtbkNpVHFsSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715505610);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (21, 'Alika Horn', 'vaboxik@mailinator.com', NULL, '$2y$12$7eoh3CYMTr5tF224ugsVU.8GvCEV4Sekhb45/.qbEh2eBp6w0Dika', NULL, '2024-05-12 05:40:48', '2024-05-12 05:40:48');
INSERT INTO `users` VALUES (22, 'Ariel Alston', 'maguhut@mailinator.com', NULL, '$2y$12$n0Q0PLsl5zfm8wsVl27IYe.anH/KwQ/ffxPcRgJFrBmpeA8C9Vboy', NULL, '2024-05-12 05:42:50', '2024-05-12 05:42:50');
INSERT INTO `users` VALUES (23, 'Kaseem Jennings', 'xonane@mailinator.com', NULL, '$2y$12$v8BmUK/PDzZsNCGEgKvZv.VxEwLsJ0qP0KRaB5IhlM6ext5OLI5ny', NULL, '2024-05-12 05:48:25', '2024-05-12 05:48:25');

SET FOREIGN_KEY_CHECKS = 1;
