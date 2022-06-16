Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CE554E2F0
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 16:07:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5049911A418;
	Thu, 16 Jun 2022 14:06:56 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2C8911A40C;
 Thu, 16 Jun 2022 14:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655388413; x=1686924413;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fST72w55rfVUP+QStfouf3fuhwjDccQjGMOB9M3wrzk=;
 b=KIkweWaEmAi3Q5tZGCBYgzlk1rP3DZ6jWbdE+5RU0UrjeyizzDyMTt6S
 RSeDvdY0QXl4u7RbNQp13bj0HgWS+yZDXEXn5ROR3DHEzh1EVoiyW8YOH
 eL2934qEMOL4HCzGIZG4yhY3q0BBszNDGXA0sSzctr4qm0KDjduIlQISW
 Es3Q8UjdzlbxHHheIuRxlqd4jwQO7W6Xwx8RCwYXPndSlxQCUHLVkCIpv
 tdr2P8s6svSMY1hC/XDA1fggm/kKAq9eWCqd99u3Spaq48NnxOh7U5z9G
 uUfVaR6Rz8S7qFqSEUjF/Bc6NSmUD06EZd7zm+ZPyr7xKqTquuauf4CzL A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="304699172"
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="304699172"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 07:06:45 -0700
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="727907291"
Received: from mstokes1-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.198.82])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 07:06:44 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 16 Jun 2022 15:06:31 +0100
Message-Id: <20220616140637.559194-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616140637.559194-1-tvrtko.ursulin@linux.intel.com>
References: <20220616140637.559194-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/8] libdrmfdinfo: Allow specifying custom
 engine map
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
Cc: Intel-gfx@lists.freedesktop.org
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
index 0a42370d54ce..ec2d4fd52dbe 100644
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
@@ -719,7 +730,7 @@ igt_main
 		i915 = __drm_open_driver(DRIVER_INTEL);
 
 		igt_require_gem(i915);
-		igt_require(igt_parse_drm_fdinfo(i915, &info));
+		igt_require(igt_parse_drm_fdinfo(i915, &info, NULL, 0));
 
 		ctx = intel_ctx_create_all_physical(i915);
 
diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 3f6781ac09f0..38147ee82b6c 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -2046,7 +2046,7 @@ static bool has_drm_fdinfo(const struct igt_device_card *card)
 	if (fd < 0)
 		return false;
 
-	cnt = igt_parse_drm_fdinfo(fd, &info);
+	cnt = igt_parse_drm_fdinfo(fd, &info, NULL, 0);
 
 	close(fd);
 
@@ -2082,6 +2082,13 @@ int main(int argc, char **argv)
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
 	int con_w = -1, con_h = -1;
 	char *output_path = NULL;
 	struct engines *engines;
@@ -2231,7 +2238,8 @@ int main(int argc, char **argv)
 	}
 
 	pmu_sample(engines);
-	igt_drm_clients_scan(clients, client_match);
+	igt_drm_clients_scan(clients, client_match, engine_map,
+			     ARRAY_SIZE(engine_map));
 	codename = igt_device_get_pretty_name(&card, false);
 
 	while (!stop_top) {
@@ -2263,7 +2271,9 @@ int main(int argc, char **argv)
 
 		disp_clients =
 			display_clients(igt_drm_clients_scan(clients,
-							     client_match));
+							     client_match,
+							     engine_map,
+							     ARRAY_SIZE(engine_map)));
 
 		while (!consumed) {
 			pops->open_struct(NULL);
-- 
2.34.1

