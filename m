Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C613D6D9959
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 16:15:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4390210EBEC;
	Thu,  6 Apr 2023 14:15:54 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3879810EBD0;
 Thu,  6 Apr 2023 14:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680790549; x=1712326549;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5qIeePTwe3OLG4OBYwEyEk8zegSvo2ngMLwaZMxHokc=;
 b=luxUtiuwg4gbKIEMGZYp813pNoGlMNld0rV99qqjQK6te/4ffyZ48OD8
 cpj397VpVG+GEq3sQm3Pp1lvTAfg91aZO3374yHKKbGcwfwpQ8Lloz722
 sjmBr2Vp4796jMMxKD9xybz8oDQYFq0HPnzhA9R8cTXzWyJOr5O+n/Nin
 H0ENiihDKTUst6T0T12qaE0dwFogQUcWnlokfaJdS0jkTInIIiNBJOyaw
 OejFQoXd1ArG0P85bvvrRpiEWWkSfJQ47nLMzSQwMK+NDr2NVxby8Tway
 QbYN2m34D9FmA1aALmcx4PiZCIzy6kS0+UGCvLP/S0DB0Isy3TU+hzDtD g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="331380120"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="331380120"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 07:15:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="689684842"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="689684842"
Received: from pjkenny-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.218.83])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 07:15:47 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Thu,  6 Apr 2023 15:15:32 +0100
Message-Id: <20230406141538.3414368-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230406141538.3414368-1-tvrtko.ursulin@linux.intel.com>
References: <20230406141538.3414368-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/8] lib: Allow specifying custom engine
 map
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Instead of hard coding the engine names, allow a map of names to indices
to either be passed in or it gets auto-detected (less efficient) while
parsing.
---
 lib/igt_drm_clients.c   | 18 +++++++++++++---
 lib/igt_drm_clients.h   |  3 ++-
 lib/igt_drm_fdinfo.c    | 48 +++++++++++++++++++++++++++--------------
 lib/igt_drm_fdinfo.h    | 15 ++++++++++---
 tests/i915/drm_fdinfo.c | 19 ++++++++++++----
 tools/intel_gpu_top.c   | 16 +++++++++++---
 6 files changed, 89 insertions(+), 30 deletions(-)

diff --git a/lib/igt_drm_clients.c b/lib/igt_drm_clients.c
index 45de2d0f1cc5..eabd43773f2d 100644
--- a/lib/igt_drm_clients.c
+++ b/lib/igt_drm_clients.c
@@ -302,14 +302,26 @@ static bool is_drm_fd(int fd_dir, const char *name)
  * igt_drm_clients_scan:
  * @clients: Previously initialised clients object
  * @filter_client: Callback for client filtering
+ * @name_map: Array of engine name strings
+ * @map_entries: Number of items in the @name_map array
  *
  * Scan all open file descriptors from all processes in order to find all DRM
  * clients and manage our internal list.
+ *
+ * If @name_map is provided each found engine in the fdinfo struct must
+ * correspond to one of the provided names. In this case the index of the engine
+ * stats tracked in struct igt_drm_client will be tracked under the same index
+ * as the engine name provided.
+ *
+ * If @name_map is not provided engine names will be auto-detected (this is
+ * less performant) and indices will correspond with auto-detected names as
+ * listed int clients->engine_class[].
  */
 struct igt_drm_clients *
 igt_drm_clients_scan(struct igt_drm_clients *clients,
 		     bool (*filter_client)(const struct igt_drm_clients *,
-					   const struct drm_client_fdinfo *))
+					   const struct drm_client_fdinfo *),
+		     const char **name_map, unsigned int map_entries)
 {
 	struct dirent *proc_dent;
 	struct igt_drm_client *c;
@@ -385,8 +397,8 @@ igt_drm_clients_scan(struct igt_drm_clients *clients,
 				continue;
 
 			if (!__igt_parse_drm_fdinfo(dirfd(fdinfo_dir),
-						    fdinfo_dent->d_name,
-						    &info))
+						    fdinfo_dent->d_name, &info,
+						    name_map, map_entries))
 				continue;
 
 			if (filter_client && !filter_client(clients, &info))
diff --git a/lib/igt_drm_clients.h b/lib/igt_drm_clients.h
index 969793d5b51e..bced19adb055 100644
--- a/lib/igt_drm_clients.h
+++ b/lib/igt_drm_clients.h
@@ -76,7 +76,8 @@ void igt_drm_clients_free(struct igt_drm_clients *clients);
 struct igt_drm_clients *
 igt_drm_clients_scan(struct igt_drm_clients *clients,
 		     bool (*filter_client)(const struct igt_drm_clients *,
-					   const struct drm_client_fdinfo *));
+					   const struct drm_client_fdinfo *),
+		     const char **name_map, unsigned int map_entries);
 
 struct igt_drm_clients *
 igt_drm_clients_sort(struct igt_drm_clients *clients,
diff --git a/lib/igt_drm_fdinfo.c b/lib/igt_drm_fdinfo.c
index 250d9e8917f2..68c89ad2c17e 100644
--- a/lib/igt_drm_fdinfo.c
+++ b/lib/igt_drm_fdinfo.c
@@ -22,6 +22,7 @@
  *
  */
 
+#include <assert.h>
 #include <ctype.h>
 #include <sys/types.h>
 #include <sys/stat.h>
@@ -53,14 +54,10 @@ static size_t read_fdinfo(char *buf, const size_t sz, int at, const char *name)
 }
 
 static int parse_engine(char *line, struct drm_client_fdinfo *info,
-			size_t prefix_len, uint64_t *val)
+			size_t prefix_len,
+			const char **name_map, unsigned int map_entries,
+			uint64_t *val)
 {
-	static const char *e2class[] = {
-		"render",
-		"copy",
-		"video",
-		"video-enhance",
-	};
 	ssize_t name_len;
 	char *name, *p;
 	int found = -1;
@@ -76,10 +73,26 @@ static int parse_engine(char *line, struct drm_client_fdinfo *info,
 
 	name = line + prefix_len;
 
-	for (i = 0; i < ARRAY_SIZE(e2class); i++) {
-		if (!strncmp(name, e2class[i], name_len)) {
-			found = i;
-			break;
+	if (name_map) {
+		for (i = 0; i < map_entries; i++) {
+			if (!strncmp(name, name_map[i], name_len)) {
+				found = i;
+				break;
+			}
+		}
+	} else {
+		for (i = 0; i < info->num_engines; i++) {
+			if (!strncmp(name, info->names[i], name_len)) {
+				found = i;
+				break;
+			}
+		}
+
+		if (found < 0) {
+			assert((info->num_engines + 1) < ARRAY_SIZE(info->names));
+			assert((strlen(name) + 1) < sizeof(info->names[0]));
+			strncpy(info->names[info->num_engines], name, name_len);
+			found = info->num_engines;
 		}
 	}
 
@@ -112,7 +125,8 @@ static const char *find_kv(const char *buf, const char *key, size_t keylen)
 }
 
 unsigned int
-__igt_parse_drm_fdinfo(int dir, const char *fd, struct drm_client_fdinfo *info)
+__igt_parse_drm_fdinfo(int dir, const char *fd, struct drm_client_fdinfo *info,
+		       const char **name_map, unsigned int map_entries)
 {
 	char buf[4096], *_buf = buf;
 	char *l, *ctx = NULL;
@@ -142,7 +156,7 @@ __igt_parse_drm_fdinfo(int dir, const char *fd, struct drm_client_fdinfo *info)
 		} else if (!strncmp(l, "drm-engine-", 11) &&
 			   strncmp(l, "drm-engine-capacity-", 20)) {
 			idx = parse_engine(l, info, strlen("drm-engine-"),
-					   &val);
+					   name_map, map_entries, &val);
 			if (idx >= 0) {
 				if (!info->capacity[idx])
 					info->capacity[idx] = 1;
@@ -152,7 +166,7 @@ __igt_parse_drm_fdinfo(int dir, const char *fd, struct drm_client_fdinfo *info)
 		} else if (!strncmp(l, "drm-engine-capacity-", 20)) {
 			idx = parse_engine(l, info,
 					   strlen("drm-engine-capacity-"),
-					   &val);
+					   name_map, map_entries, &val);
 			if (idx >= 0) {
 				info->capacity[idx] = val;
 				num_capacity++;
@@ -166,7 +180,9 @@ __igt_parse_drm_fdinfo(int dir, const char *fd, struct drm_client_fdinfo *info)
 	return good + info->num_engines + num_capacity;
 }
 
-unsigned int igt_parse_drm_fdinfo(int drm_fd, struct drm_client_fdinfo *info)
+unsigned int
+igt_parse_drm_fdinfo(int drm_fd, struct drm_client_fdinfo *info,
+		     const char **name_map, unsigned int map_entries)
 {
 	unsigned int res;
 	char fd[64];
@@ -180,7 +196,7 @@ unsigned int igt_parse_drm_fdinfo(int drm_fd, struct drm_client_fdinfo *info)
 	if (dir < 0)
 		return false;
 
-	res = __igt_parse_drm_fdinfo(dir, fd, info);
+	res = __igt_parse_drm_fdinfo(dir, fd, info, name_map, map_entries);
 
 	close(dir);
 
diff --git a/lib/igt_drm_fdinfo.h b/lib/igt_drm_fdinfo.h
index 8759471615bd..fa4982f4030e 100644
--- a/lib/igt_drm_fdinfo.h
+++ b/lib/igt_drm_fdinfo.h
@@ -39,6 +39,7 @@ struct drm_client_fdinfo {
 
 	unsigned int num_engines;
 	unsigned int capacity[DRM_CLIENT_FDINFO_MAX_ENGINES];
+	char names[DRM_CLIENT_FDINFO_MAX_ENGINES][256];
 	uint64_t busy[DRM_CLIENT_FDINFO_MAX_ENGINES];
 };
 
@@ -47,11 +48,15 @@ struct drm_client_fdinfo {
  *
  * @drm_fd: DRM file descriptor
  * @info: Structure to populate with read data. Must be zeroed.
+ * @name_map: Optional array of strings representing engine names
+ * @map_entries: Number of strings in the names array
  *
  * Returns the number of valid drm fdinfo keys found or zero if not all
  * mandatory keys were present or no engines found.
  */
-unsigned int igt_parse_drm_fdinfo(int drm_fd, struct drm_client_fdinfo *info);
+unsigned int
+igt_parse_drm_fdinfo(int drm_fd, struct drm_client_fdinfo *info,
+		     const char **name_map, unsigned int map_entries);
 
 /**
  * __igt_parse_drm_fdinfo: Parses the drm fdinfo file
@@ -59,11 +64,15 @@ unsigned int igt_parse_drm_fdinfo(int drm_fd, struct drm_client_fdinfo *info);
  * @dir: File descriptor pointing to /proc/pid/fdinfo directory
  * @fd: String representation of the file descriptor number to parse.
  * @info: Structure to populate with read data. Must be zeroed.
+ * @name_map: Optional array of strings representing engine names
+ * @map_entries: Number of strings in the names array
  *
  * Returns the number of valid drm fdinfo keys found or zero if not all
  * mandatory keys were present or no engines found.
  */
-unsigned int __igt_parse_drm_fdinfo(int dir, const char *fd,
-				    struct drm_client_fdinfo *info);
+unsigned int
+__igt_parse_drm_fdinfo(int dir, const char *fd,
+		       struct drm_client_fdinfo *info,
+		       const char **name_map, unsigned int map_entries);
 
 #endif /* IGT_DRM_FDINFO_H */
diff --git a/tests/i915/drm_fdinfo.c b/tests/i915/drm_fdinfo.c
index 65b8b8307c66..2f300d492853 100644
--- a/tests/i915/drm_fdinfo.c
+++ b/tests/i915/drm_fdinfo.c
@@ -35,6 +35,14 @@ IGT_TEST_DESCRIPTION("Test the i915 drm fdinfo data");
 const double tolerance = 0.05f;
 const unsigned long batch_duration_ns = 500e6;
 
+static const char *engine_map[] = {
+	"render",
+	"copy",
+	"video",
+	"video-enhance",
+	"compute",
+};
+
 #define __assert_within_epsilon(x, ref, tol_up, tol_down) \
 	igt_assert_f((double)(x) <= (1.0 + (tol_up)) * (double)(ref) && \
 		     (double)(x) >= (1.0 - (tol_down)) * (double)(ref), \
@@ -51,7 +59,8 @@ static void basics(int i915, unsigned int num_classes)
 	struct drm_client_fdinfo info = { };
 	unsigned int ret;
 
-	ret = igt_parse_drm_fdinfo(i915, &info);
+	ret = igt_parse_drm_fdinfo(i915, &info, engine_map,
+				   ARRAY_SIZE(engine_map));
 	igt_assert(ret);
 
 	igt_assert(!strcmp(info.driver, "i915"));
@@ -182,7 +191,8 @@ static uint64_t read_busy(int i915, unsigned int class)
 {
 	struct drm_client_fdinfo info = { };
 
-	igt_assert(igt_parse_drm_fdinfo(i915, &info));
+	igt_assert(igt_parse_drm_fdinfo(i915, &info, engine_map,
+					ARRAY_SIZE(engine_map)));
 
 	return info.busy[class];
 }
@@ -268,7 +278,8 @@ static void read_busy_all(int i915, uint64_t *val)
 {
 	struct drm_client_fdinfo info = { };
 
-	igt_assert(igt_parse_drm_fdinfo(i915, &info));
+	igt_assert(igt_parse_drm_fdinfo(i915, &info, engine_map,
+					ARRAY_SIZE(engine_map)));
 
 	memcpy(val, info.busy, sizeof(info.busy));
 }
@@ -728,7 +739,7 @@ igt_main
 		i915 = __drm_open_driver(DRIVER_INTEL);
 
 		igt_require_gem(i915);
-		igt_require(igt_parse_drm_fdinfo(i915, &info));
+		igt_require(igt_parse_drm_fdinfo(i915, &info, NULL, 0));
 
 		ctx = intel_ctx_create_all_physical(i915);
 
diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 6e9738204206..4276632eea8d 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -2129,7 +2129,7 @@ static bool has_drm_fdinfo(const struct igt_device_card *card)
 	if (fd < 0)
 		return false;
 
-	cnt = igt_parse_drm_fdinfo(fd, &info);
+	cnt = igt_parse_drm_fdinfo(fd, &info, NULL, 0);
 
 	close(fd);
 
@@ -2193,6 +2193,13 @@ int main(int argc, char **argv)
 {
 	unsigned int period_us = DEFAULT_PERIOD_MS * 1000;
 	struct igt_drm_clients *clients = NULL;
+	static const char *engine_map[] = {
+		"render",
+		"copy",
+		"video",
+		"video-enhance",
+		"compute",
+	};
 	bool physical_engines = false;
 	int con_w = -1, con_h = -1;
 	char *output_path = NULL;
@@ -2356,7 +2363,8 @@ int main(int argc, char **argv)
 	}
 
 	pmu_sample(engines);
-	igt_drm_clients_scan(clients, client_match);
+	igt_drm_clients_scan(clients, client_match, engine_map,
+			     ARRAY_SIZE(engine_map));
 	gettime(&ts);
 	codename = igt_device_get_pretty_name(&card, false);
 
@@ -2390,7 +2398,9 @@ int main(int argc, char **argv)
 
 		disp_clients =
 			display_clients(igt_drm_clients_scan(clients,
-							     client_match));
+							     client_match,
+							     engine_map,
+							     ARRAY_SIZE(engine_map)));
 		scan_us = elapsed_us(&ts, period_us);
 
 		if (stop_top)
-- 
2.37.2

