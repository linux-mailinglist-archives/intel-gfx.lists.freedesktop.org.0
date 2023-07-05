Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B58A748947
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 18:32:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 546CE10E3AB;
	Wed,  5 Jul 2023 16:32:09 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC34610E3A0;
 Wed,  5 Jul 2023 16:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688574726; x=1720110726;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nSgPL3n7oU+1ZG879wd+WPrZCySOJnyAjkZn+GdwgLc=;
 b=D+i5Ss0/Ri5KC3CdNTPk5OEtWf5K9FYVCClVqcEzsOMsAkORYMIda37B
 ac1spxAaN+NRfeDYKPQc1MrL7d4pt9fBpOvwiomSf5+jDfVqQIm/6s8b2
 qfhv5yKQTfvDVjJWaaiPdkcQ7wuFT0qU3/JqA/EhPxXepLKA7G0pF/9j4
 RU85QdfG2+trhNbaF3ujsttF5buTRMOwgKs0+f+33f5uSHjA/Dm5ivoHC
 iK3Sja89uNXrOFWnr+vsY2A2pMAojTD5ZyHDWVfuDLUjnmXR/e4bDjxXR
 zpRmwyD8H0kR6a536TE7mOQUG7qjE+XAXi3tbjl1GTZCARW7zLJlTuT58 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="362255322"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="362255322"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 09:31:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="754412969"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="754412969"
Received: from jputsman-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.200.219])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 09:31:14 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jul 2023 17:31:03 +0100
Message-Id: <20230705163105.3804677-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230705163105.3804677-1-tvrtko.ursulin@linux.intel.com>
References: <20230705163105.3804677-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/3] lib/igt_drm_fdinfo: Parse memory usage
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Rob Clark <robdclark@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Add parsing and memory storage for the memory usage related fdinfo stats.

Uses the same approach as the engine utilization code by either auto-
discovering different memory regions, or allowing for the caller to pass
in a map with predefined index to name relationship.

Co-developed-by: Rob Clark <robdclark@chromium.org>
Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 lib/igt_drm_clients.c   |   3 +-
 lib/igt_drm_fdinfo.c    | 142 ++++++++++++++++++++++++++++++++++++++--
 lib/igt_drm_fdinfo.h    |  24 ++++++-
 tests/i915/drm_fdinfo.c |   8 +--
 tools/intel_gpu_top.c   |   2 +-
 5 files changed, 165 insertions(+), 14 deletions(-)

diff --git a/lib/igt_drm_clients.c b/lib/igt_drm_clients.c
index f0294ba81c42..fdea42752a81 100644
--- a/lib/igt_drm_clients.c
+++ b/lib/igt_drm_clients.c
@@ -491,7 +491,8 @@ igt_drm_clients_scan(struct igt_drm_clients *clients,
 
 			if (!__igt_parse_drm_fdinfo(dirfd(fdinfo_dir),
 						    fdinfo_dent->d_name, &info,
-						    name_map, map_entries))
+						    name_map, map_entries,
+						    NULL, 0))
 				continue;
 
 			if (filter_client && !filter_client(clients, &info))
diff --git a/lib/igt_drm_fdinfo.c b/lib/igt_drm_fdinfo.c
index b5f8a8679a71..d08632dfb690 100644
--- a/lib/igt_drm_fdinfo.c
+++ b/lib/igt_drm_fdinfo.c
@@ -124,13 +124,81 @@ static const char *find_kv(const char *buf, const char *key, size_t keylen)
 	return *p ? p : NULL;
 }
 
+static int parse_region(char *line, struct drm_client_fdinfo *info,
+			size_t prefix_len,
+			const char **region_map, unsigned int region_entries,
+			uint64_t *val)
+{
+	char *name, *p, *unit = NULL;
+	ssize_t name_len;
+	int found = -1;
+	unsigned int i;
+
+	p = index(line, ':');
+	if (!p || p == line)
+		return -1;
+
+	name_len = p - line - prefix_len;
+	if (name_len < 1)
+		return -1;
+
+	name = line + prefix_len;
+
+	if (region_map) {
+		for (i = 0; i < region_entries; i++) {
+			if (!strncmp(name, region_map[i], name_len)) {
+				found = i;
+				break;
+			}
+		}
+	} else {
+		for (i = 0; i < info->num_regions; i++) {
+			if (!strncmp(name, info->region_names[i], name_len)) {
+				found = i;
+				break;
+			}
+		}
+
+		if (found < 0) {
+			assert((info->num_regions + 1) < ARRAY_SIZE(info->region_names));
+			assert((strlen(name) + 1) < sizeof(info->region_names[0]));
+			strncpy(info->region_names[info->num_regions], name, name_len);
+			found = info->num_regions;
+		}
+	}
+
+	if (found < 0)
+		goto out;
+
+	while (*++p && isspace(*p));
+	*val = strtoull(p, NULL, 10);
+
+	p = index(p, ' ');
+	if (!p)
+		goto out;
+
+	unit = ++p;
+	if (!strcmp(unit, "KiB")) {
+		*val *= 1024;
+	} else if (!strcmp(unit, "MiB")) {
+		*val *= 1024 * 1024;
+	} else if (!strcmp(unit, "GiB")) {
+		*val *= 1024 * 1024 * 1024;
+	}
+
+out:
+	return found;
+}
+
 unsigned int
 __igt_parse_drm_fdinfo(int dir, const char *fd, struct drm_client_fdinfo *info,
-		       const char **name_map, unsigned int map_entries)
+		       const char **name_map, unsigned int map_entries,
+		       const char **region_map, unsigned int region_entries)
 {
+	bool regions_found[DRM_CLIENT_FDINFO_MAX_REGIONS] = { };
+	unsigned int good = 0, num_capacity = 0;
 	char buf[4096], *_buf = buf;
 	char *l, *ctx = NULL;
-	unsigned int good = 0, num_capacity = 0;
 	size_t count;
 
 	count = read_fdinfo(buf, sizeof(buf), dir, fd);
@@ -173,18 +241,79 @@ __igt_parse_drm_fdinfo(int dir, const char *fd, struct drm_client_fdinfo *info,
 				info->capacity[idx] = val;
 				num_capacity++;
 			}
+		} else if (!strncmp(l, "drm-total-", 10)) {
+			idx = parse_region(l, info, strlen("drm-total-"),
+					   region_map, region_entries, &val);
+			if (idx >= 0) {
+				info->region_mem[idx].total = val;
+				if (!regions_found[idx]) {
+					info->num_regions++;
+					regions_found[idx] = true;
+					if (idx > info->last_region_index)
+						info->last_region_index = idx;
+				}
+			}
+		} else if (!strncmp(l, "drm-shared-", 11)) {
+			idx = parse_region(l, info, strlen("drm-shared-"),
+					   region_map, region_entries, &val);
+			if (idx >= 0) {
+				info->region_mem[idx].shared = val;
+				if (!regions_found[idx]) {
+					info->num_regions++;
+					regions_found[idx] = true;
+					if (idx > info->last_region_index)
+						info->last_region_index = idx;
+				}
+			}
+		} else if (!strncmp(l, "drm-resident-", 13)) {
+			idx = parse_region(l, info, strlen("drm-resident-"),
+					   region_map, region_entries, &val);
+			if (idx >= 0) {
+				info->region_mem[idx].resident = val;
+				if (!regions_found[idx]) {
+					info->num_regions++;
+					regions_found[idx] = true;
+					if (idx > info->last_region_index)
+						info->last_region_index = idx;
+				}
+			}
+		} else if (!strncmp(l, "drm-purgeable-", 14)) {
+			idx = parse_region(l, info, strlen("drm-purgeable-"),
+					   region_map, region_entries, &val);
+			if (idx >= 0) {
+				info->region_mem[idx].purgeable = val;
+				if (!regions_found[idx]) {
+					info->num_regions++;
+					regions_found[idx] = true;
+					if (idx > info->last_region_index)
+						info->last_region_index = idx;
+				}
+			}
+		} else if (!strncmp(l, "drm-active-", 11)) {
+			idx = parse_region(l, info, strlen("drm-active-"),
+					   region_map, region_entries, &val);
+			if (idx >= 0) {
+				info->region_mem[idx].active = val;
+				if (!regions_found[idx]) {
+					info->num_regions++;
+					regions_found[idx] = true;
+					if (idx > info->last_region_index)
+						info->last_region_index = idx;
+				}
+			}
 		}
 	}
 
-	if (good < 2 || !info->num_engines)
+	if (good < 2 || (!info->num_engines && !info->num_regions))
 		return 0; /* fdinfo format not as expected */
 
-	return good + info->num_engines + num_capacity;
+	return good + info->num_engines + num_capacity + info->num_regions;
 }
 
 unsigned int
 igt_parse_drm_fdinfo(int drm_fd, struct drm_client_fdinfo *info,
-		     const char **name_map, unsigned int map_entries)
+		     const char **name_map, unsigned int map_entries,
+		     const char **region_map, unsigned int region_entries)
 {
 	unsigned int res;
 	char fd[64];
@@ -198,7 +327,8 @@ igt_parse_drm_fdinfo(int drm_fd, struct drm_client_fdinfo *info,
 	if (dir < 0)
 		return false;
 
-	res = __igt_parse_drm_fdinfo(dir, fd, info, name_map, map_entries);
+	res = __igt_parse_drm_fdinfo(dir, fd, info, name_map, map_entries,
+				     region_map, region_entries);
 
 	close(dir);
 
diff --git a/lib/igt_drm_fdinfo.h b/lib/igt_drm_fdinfo.h
index 6284e05e868a..1999c4f2b857 100644
--- a/lib/igt_drm_fdinfo.h
+++ b/lib/igt_drm_fdinfo.h
@@ -30,8 +30,17 @@
 #include <stdint.h>
 #include <stdbool.h>
 
+#define DRM_CLIENT_FDINFO_MAX_REGIONS 16
 #define DRM_CLIENT_FDINFO_MAX_ENGINES 16
 
+struct drm_client_meminfo {
+	uint64_t total;
+	uint64_t shared;
+	uint64_t resident;
+	uint64_t purgeable;
+	uint64_t active;
+};
+
 struct drm_client_fdinfo {
 	char driver[128];
 	char pdev[128];
@@ -42,6 +51,11 @@ struct drm_client_fdinfo {
 	unsigned int capacity[DRM_CLIENT_FDINFO_MAX_ENGINES];
 	char names[DRM_CLIENT_FDINFO_MAX_ENGINES][256];
 	uint64_t busy[DRM_CLIENT_FDINFO_MAX_ENGINES];
+
+	unsigned int num_regions;
+	unsigned int last_region_index;
+	char region_names[DRM_CLIENT_FDINFO_MAX_REGIONS][256];
+	struct drm_client_meminfo region_mem[DRM_CLIENT_FDINFO_MAX_REGIONS];
 };
 
 /**
@@ -51,13 +65,16 @@ struct drm_client_fdinfo {
  * @info: Structure to populate with read data. Must be zeroed.
  * @name_map: Optional array of strings representing engine names
  * @map_entries: Number of strings in the names array
+ * @region_map: Optional array of strings representing memory regions
+ * @region_entries: Number of strings in the region map
  *
  * Returns the number of valid drm fdinfo keys found or zero if not all
  * mandatory keys were present or no engines found.
  */
 unsigned int
 igt_parse_drm_fdinfo(int drm_fd, struct drm_client_fdinfo *info,
-		     const char **name_map, unsigned int map_entries);
+		     const char **name_map, unsigned int map_entries,
+		     const char **region_map, unsigned int region_entries);
 
 /**
  * __igt_parse_drm_fdinfo: Parses the drm fdinfo file
@@ -67,6 +84,8 @@ igt_parse_drm_fdinfo(int drm_fd, struct drm_client_fdinfo *info,
  * @info: Structure to populate with read data. Must be zeroed.
  * @name_map: Optional array of strings representing engine names
  * @map_entries: Number of strings in the names array
+ * @region_map: Optional array of strings representing memory regions
+ * @region_entries: Number of strings in the region map
  *
  * Returns the number of valid drm fdinfo keys found or zero if not all
  * mandatory keys were present or no engines found.
@@ -74,6 +93,7 @@ igt_parse_drm_fdinfo(int drm_fd, struct drm_client_fdinfo *info,
 unsigned int
 __igt_parse_drm_fdinfo(int dir, const char *fd,
 		       struct drm_client_fdinfo *info,
-		       const char **name_map, unsigned int map_entries);
+		       const char **name_map, unsigned int map_entries,
+		       const char **region_map, unsigned int region_entries);
 
 #endif /* IGT_DRM_FDINFO_H */
diff --git a/tests/i915/drm_fdinfo.c b/tests/i915/drm_fdinfo.c
index c0e0ba1905f1..01526c0e19de 100644
--- a/tests/i915/drm_fdinfo.c
+++ b/tests/i915/drm_fdinfo.c
@@ -104,7 +104,7 @@ static void basics(int i915, unsigned int num_classes)
 	unsigned int ret;
 
 	ret = igt_parse_drm_fdinfo(i915, &info, engine_map,
-				   ARRAY_SIZE(engine_map));
+				   ARRAY_SIZE(engine_map), NULL, 0);
 	igt_assert(ret);
 
 	igt_assert(!strcmp(info.driver, "i915"));
@@ -236,7 +236,7 @@ static uint64_t read_busy(int i915, unsigned int class)
 	struct drm_client_fdinfo info = { };
 
 	igt_assert(igt_parse_drm_fdinfo(i915, &info, engine_map,
-					ARRAY_SIZE(engine_map)));
+					ARRAY_SIZE(engine_map), NULL, 0));
 
 	return info.busy[class];
 }
@@ -326,7 +326,7 @@ static void read_busy_all(int i915, uint64_t *val)
 	struct drm_client_fdinfo info = { };
 
 	igt_assert(igt_parse_drm_fdinfo(i915, &info, engine_map,
-					ARRAY_SIZE(engine_map)));
+					ARRAY_SIZE(engine_map), NULL, 0));
 
 	memcpy(val, info.busy, sizeof(info.busy));
 }
@@ -797,7 +797,7 @@ igt_main
 		i915 = __drm_open_driver(DRIVER_INTEL);
 
 		igt_require_gem(i915);
-		igt_require(igt_parse_drm_fdinfo(i915, &info, NULL, 0));
+		igt_require(igt_parse_drm_fdinfo(i915, &info, NULL, 0, NULL, 0));
 
 		ctx = intel_ctx_create_all_physical(i915);
 
diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index cef1d3c7fa9f..87e9681e53b4 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -2307,7 +2307,7 @@ static bool has_drm_fdinfo(const struct igt_device_card *card)
 	if (fd < 0)
 		return false;
 
-	cnt = igt_parse_drm_fdinfo(fd, &info, NULL, 0);
+	cnt = igt_parse_drm_fdinfo(fd, &info, NULL, 0, NULL, 0);
 
 	close(fd);
 
-- 
2.39.2

