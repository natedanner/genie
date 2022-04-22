/*
 *
 *  Copyright 2022 Netflix, Inc.
 *
 *     Licensed under the Apache License, Version 2.0 (the "License");
 *     you may not use this file except in compliance with the License.
 *     You may obtain a copy of the License at
 *
 *         http://www.apache.org/licenses/LICENSE-2.0
 *
 *     Unless required by applicable law or agreed to in writing, software
 *     distributed under the License is distributed on an "AS IS" BASIS,
 *     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *     See the License for the specific language governing permissions and
 *     limitations under the License.
 *
 */

ALTER TABLE `jobs`
  ADD COLUMN `cpu_used`               INT(11) DEFAULT NULL,
  ADD COLUMN `requested_images`       TEXT    DEFAULT NULL,
  ADD COLUMN `images_used`            TEXT    DEFAULT NULL,
  ADD COLUMN `requested_gpu`          INT(11) DEFAULT NULL,
  ADD COLUMN `gpu_used`               INT(11) DEFAULT NULL,
  ADD COLUMN `requested_disk_mb`      INT(11) DEFAULT NULL,
  ADD COLUMN `disk_mb_used`           INT(11) DEFAULT NULL,
  ADD COLUMN `requested_network_mbps` INT(11) DEFAULT NULL,
  ADD COLUMN `network_mbps_used`      INT(11) DEFAULT NULL,
  DROP COLUMN `check_delay`,
  DROP COLUMN `v4`,
  MODIFY COLUMN `requested_memory` BIGINT(20) DEFAULT NULL,
  MODIFY COLUMN `memory_used` BIGINT(20) DEFAULT NULL;

ALTER TABLE `commands`
  DROP COLUMN `check_delay`,
  ADD COLUMN `cpu`          INT(11)    DEFAULT NULL,
  ADD COLUMN `gpu`          INT(11)    DEFAULT NULL,
  ADD COLUMN `disk_mb`      BIGINT(20) DEFAULT NULL,
  ADD COLUMN `network_mbps` BIGINT(20) DEFAULT NULL,
  ADD COLUMN `images`       TEXT       DEFAULT NULL,
  MODIFY COLUMN `memory` BIGINT(20) DEFAULT NULL;