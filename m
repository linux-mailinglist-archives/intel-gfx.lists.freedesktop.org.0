Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA96BA281A9
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 03:17:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3993710E719;
	Wed,  5 Feb 2025 02:16:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l6FsRy84";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98A4E10E717;
 Wed,  5 Feb 2025 02:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738721685; x=1770257685;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h8nfBdK4jDVlj5/P4Urcm2UDsBbRbcl/QXUU9PYiiVs=;
 b=l6FsRy84UWorWjQTai3Gt+glRjrd4hyBVvGRxx8+Qxg4rq9ZGobgJ9j/
 KFEm3O/9bSje0CVUyWaPL/phGPfM2+7Sgi3VTTGiefKK0qCwf/YT8P8Hh
 29wnTPOx3pJiAUg5Tgt60qMvqmk+uHJ6xwPQcK9lE3/9K6CqRxRHAniA6
 J4bDzPZ4cK+S+3VAgeE0AKGkqaadIAP37UYSRoRY/r7tMoj2Ogh6lvrYo
 /K/7gSFCRtXSG/Mh7bdxoJMRYN/uoVnQX2HMlcmVqMIKmHwaeOk0q2fZd
 X4spZwt8ZlHw9K7kx41p/ErO9zcsRBqxr6JR+QC3j2aqYhwdTWURtj5tL w==;
X-CSE-ConnectionGUID: gxXJtTdNSIeQZR11J8XT5w==
X-CSE-MsgGUID: WQCaP8I2TzSSJyW48z4QoQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39160212"
X-IronPort-AV: E=Sophos;i="6.13,260,1732608000"; d="scan'208";a="39160212"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 18:14:45 -0800
X-CSE-ConnectionGUID: VAVxJaopQxGNFq/us286cA==
X-CSE-MsgGUID: CH68mxamQAu1RQLbEcFHYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111643370"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by orviesa008.jf.intel.com with ESMTP; 04 Feb 2025 18:14:44 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Subject: [PATCH i-g-t v8 1/3] lib/igt_core: Add tolerance and measured_usleep
 utils
Date: Tue,  4 Feb 2025 18:10:54 -0800
Message-Id: <20250205021056.1539902-2-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250205021056.1539902-1-vinay.belgaumkar@intel.com>
References: <20250205021056.1539902-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Add these redundant utils to core lib. Also fix the bug in
measured_usleep, it was returning nsec slept not usec.

v2: Updated perf_pmu and some failing tests. They were expecting
nanosec instead of usec.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 lib/igt_core.c                         | 20 +++++++
 lib/igt_core.h                         | 20 +++++++
 tests/intel/drm_fdinfo.c               | 68 ++++++---------------
 tests/intel/gem_exec_nop.c             |  6 --
 tests/intel/gem_spin_batch.c           |  6 --
 tests/intel/i915_pm_rc6_residency.c    | 42 +++----------
 tests/intel/perf_pmu.c                 | 81 ++++++++------------------
 tests/intel/sysfs_heartbeat_interval.c | 19 +-----
 tests/intel/xe_pm_residency.c          | 29 +--------
 9 files changed, 94 insertions(+), 197 deletions(-)

diff --git a/lib/igt_core.c b/lib/igt_core.c
index 407f7b551..b95db1b25 100644
--- a/lib/igt_core.c
+++ b/lib/igt_core.c
@@ -3553,3 +3553,23 @@ void igt_emit_ignore_dmesg_regex(const char *ignore_dmesg_regex)
 	g_regex_unref(re);
 	igt_kmsg(KMSG_INFO "%s%s\n", mark_ignore_dmesg, ignore_dmesg_regex);
 }
+
+/**
+ * @igt_measured_usleep: Helper to model accurate sleep time for tests
+ * @usec: usec to sleep
+ * Return: usec slept
+ */
+unsigned int igt_measured_usleep(unsigned int usec)
+{
+	struct timespec ts = { };
+	unsigned int slept_usec;
+
+	slept_usec = igt_nsec_elapsed(&ts) / NSEC_PER_USEC;
+	igt_assert(slept_usec == 0);
+	do {
+		usleep(usec - slept_usec);
+		slept_usec = igt_nsec_elapsed(&ts) / NSEC_PER_USEC;
+	} while (slept_usec < usec);
+
+	return igt_nsec_elapsed(&ts) / NSEC_PER_USEC;
+}
diff --git a/lib/igt_core.h b/lib/igt_core.h
index f0ba1a381..0f2af950b 100644
--- a/lib/igt_core.h
+++ b/lib/igt_core.h
@@ -1524,9 +1524,11 @@ void igt_kmsg(const char *format, ...);
 #if __WORDSIZE == 64
 #define MSEC_PER_SEC (1000ul)
 #define USEC_PER_MSEC (1000ul)
+#define NSEC_PER_USEC (1000ul)
 #else
 #define MSEC_PER_SEC (1000ull)
 #define USEC_PER_MSEC (1000ull)
+#define NSEC_PER_USEC (1000ull)
 #endif
 
 #define USEC_PER_SEC (1000u * MSEC_PER_SEC)
@@ -1536,6 +1538,23 @@ void igt_kmsg(const char *format, ...);
 
 #define for_if(expr__) if (!(expr__)) {} else
 
+#define __assert_within_epsilon(x, ref, tol_up, tol_down, debug_data) \
+	igt_assert_f((double)(x) <= (1.0 + (tol_up)) * (double)(ref) && \
+		     (double)(x) >= (1.0 - (tol_down)) * (double)(ref), \
+		     "'%s' != '%s' (%f not within +%.1f%%/-%.1f%% tolerance of %f)\n%s\n",\
+		     #x, #ref, (double)(x), \
+		     (tol_up) * 100.0, (tol_down) * 100.0, \
+		     (double)(ref), debug_data)
+
+#define assert_within_epsilon(x, ref, tolerance) \
+	__assert_within_epsilon(x, ref, tolerance, tolerance, "\0")
+
+#define assert_within_epsilon_up_down(x, ref, tol_up, tol_down) \
+	__assert_within_epsilon(x, ref, tol_up, tol_down, "\0")
+
+#define assert_within_epsilon_debug(x, ref, tolerance, debug_data) \
+	__assert_within_epsilon(x, ref, tolerance, tolerance, debug_data)
+
 /**
  * igt_pci_system_init:
  * IGT wrapper around pci_system_init()
@@ -1578,4 +1597,5 @@ void igt_pci_system_cleanup(void);
 
 void igt_emit_ignore_dmesg_regex(const char *ignore_dmesg_regex);
 
+unsigned int igt_measured_usleep(unsigned int usec);
 #endif /* IGT_CORE_H */
diff --git a/tests/intel/drm_fdinfo.c b/tests/intel/drm_fdinfo.c
index b66ac9e1b..3c1f0a739 100644
--- a/tests/intel/drm_fdinfo.c
+++ b/tests/intel/drm_fdinfo.c
@@ -106,23 +106,6 @@ static const char *engine_map[] = {
 	"compute",
 };
 
-#define __assert_within_epsilon(x, ref, tol_up, tol_down) \
-	do { \
-		igt_assert_f((double)(x) <= (1.0 + (tol_up)) * (double)(ref) && \
-			     (double)(x) >= (1.0 - (tol_down)) * (double)(ref), \
-			     "'%s' != '%s' (%f not within +%.1f%%/-%.1f%% tolerance of %f)\n",\
-			     #x, #ref, (double)(x), \
-			     (tol_up) * 100.0, (tol_down) * 100.0, \
-			     (double)(ref)); \
-		igt_debug("%f within +%.1f%%/-%.1f%% tolerance of %f\n",\
-			  (double)(x), \
-			  (tol_up) * 100.0, (tol_down) * 100.0, \
-			  (double)(ref)); \
-	} while (0)
-
-#define assert_within_epsilon(x, ref, tolerance) \
-	__assert_within_epsilon(x, ref, tolerance, tolerance)
-
 static void basics(int i915, unsigned int num_classes)
 {
 	struct drm_client_fdinfo info = { };
@@ -137,26 +120,6 @@ static void basics(int i915, unsigned int num_classes)
 	igt_assert_eq(info.num_engines, num_classes);
 }
 
-/*
- * Helper for cases where we assert on time spent sleeping (directly or
- * indirectly), so make it more robust by ensuring the system sleep time
- * is within test tolerance to start with.
- */
-static unsigned int measured_usleep(unsigned int usec)
-{
-	struct timespec ts = { };
-	unsigned int slept;
-
-	slept = igt_nsec_elapsed(&ts);
-	igt_assert(slept == 0);
-	do {
-		usleep(usec - slept);
-		slept = igt_nsec_elapsed(&ts) / 1000;
-	} while (slept < usec);
-
-	return igt_nsec_elapsed(&ts);
-}
-
 #define TEST_BUSY (1)
 #define FLAG_SYNC (2)
 #define TEST_TRAILING_IDLE (4)
@@ -239,7 +202,7 @@ single(int gem_fd, const intel_ctx_t *ctx,
 		spin = NULL;
 
 	val = read_engine_time(gem_fd, e->class);
-	slept = measured_usleep(batch_duration_ns / 1000);
+	slept = igt_measured_usleep(batch_duration_ns / 1000) * NSEC_PER_USEC;
 	if (flags & TEST_TRAILING_IDLE)
 		end_spin(spin_fd, spin, flags);
 	val = read_engine_time(gem_fd, e->class) - val;
@@ -258,7 +221,7 @@ single(int gem_fd, const intel_ctx_t *ctx,
 		igt_assert(!gem_bo_busy(spin_fd, spin->handle));
 
 		val = read_engine_time(gem_fd, e->class);
-		slept = measured_usleep(batch_duration_ns / 1000);
+		slept = igt_measured_usleep(batch_duration_ns / 1000) * NSEC_PER_USEC;
 		val = read_engine_time(gem_fd, e->class) - val;
 
 		assert_within_epsilon(slept - val, slept, tolerance);
@@ -320,7 +283,7 @@ busy_check_all(int gem_fd, const intel_ctx_t *ctx,
 	spin = igt_sync_spin(gem_fd, ahnd, ctx, e);
 
 	read_engine_time_all(gem_fd, tval[0]);
-	slept = measured_usleep(batch_duration_ns / 1000);
+	slept = igt_measured_usleep(batch_duration_ns / 1000) * NSEC_PER_USEC;
 	if (flags & TEST_TRAILING_IDLE)
 		end_spin(gem_fd, spin, flags);
 	read_engine_time_all(gem_fd, tval[1]);
@@ -335,7 +298,8 @@ busy_check_all(int gem_fd, const intel_ctx_t *ctx,
 	log_busy(num_classes, val);
 
 	for (i = 0; i < num_classes; i++)
-		assert_within_epsilon(i == e->class ? val[i] : slept - val[i], slept, tolerance);
+		assert_within_epsilon(i == e->class ? val[i] : slept - val[i],
+				      slept, tolerance);
 
 	gem_quiescent_gpu(gem_fd);
 }
@@ -395,7 +359,7 @@ most_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
 	usleep(__igt_sync_spin_wait(gem_fd, spin) * num_engines / 1e3);
 
 	read_engine_time_all(gem_fd, tval[0]);
-	slept = measured_usleep(batch_duration_ns / 1000);
+	slept = igt_measured_usleep(batch_duration_ns / 1000) * NSEC_PER_USEC;
 	if (flags & TEST_TRAILING_IDLE)
 		end_spin(gem_fd, spin, flags);
 	read_engine_time_all(gem_fd, tval[1]);
@@ -412,7 +376,8 @@ most_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
 	for (i = 0; i < num_classes; i++) {
 		double target = slept * busy_class[i] ?: slept;
 
-		assert_within_epsilon(busy_class[i] ? val[i] : slept - val[i], target, tolerance);
+		assert_within_epsilon(busy_class[i] ? val[i] : slept - val[i],
+				      target, tolerance);
 	}
 	gem_quiescent_gpu(gem_fd);
 }
@@ -450,7 +415,7 @@ all_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
 	usleep(__igt_sync_spin_wait(gem_fd, spin) * num_engines / 1e3);
 
 	read_engine_time_all(gem_fd, tval[0]);
-	slept = measured_usleep(batch_duration_ns / 1000);
+	slept = igt_measured_usleep(batch_duration_ns / 1000) * NSEC_PER_USEC;
 	if (flags & TEST_TRAILING_IDLE)
 		end_spin(gem_fd, spin, flags);
 	read_engine_time_all(gem_fd, tval[1]);
@@ -467,7 +432,8 @@ all_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
 	for (i = 0; i < num_classes; i++) {
 		double target = slept * busy_class[i] ?: slept;
 
-		assert_within_epsilon(busy_class[i] ? val[i] : slept - val[i], target, tolerance);
+		assert_within_epsilon(busy_class[i] ? val[i] : slept - val[i],
+				      target, tolerance);
 	}
 	gem_quiescent_gpu(gem_fd);
 }
@@ -596,7 +562,7 @@ virtual(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
 				spin = NULL;
 
 			val = read_engine_time(i915, class);
-			slept = measured_usleep(batch_duration_ns / 1000);
+			slept = igt_measured_usleep(batch_duration_ns / 1000) * NSEC_PER_USEC;
 			if (flags & TEST_TRAILING_IDLE)
 				end_spin(i915, spin, flags);
 			val = read_engine_time(i915, class) - val;
@@ -615,8 +581,8 @@ virtual(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
 				igt_assert(!gem_bo_busy(i915, spin->handle));
 
 				val = read_engine_time(i915, class);
-				slept = measured_usleep(batch_duration_ns /
-							1000);
+				slept = igt_measured_usleep(batch_duration_ns /
+							1000) * NSEC_PER_USEC;
 				val = read_engine_time(i915, class) - val;
 
 				assert_within_epsilon(slept - val, slept, tolerance);
@@ -705,7 +671,7 @@ virtual_all(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
 		usleep(__igt_sync_spin_wait(i915, spin) * count / 1e3);
 
 		val = read_engine_time(i915, class);
-		slept = measured_usleep(batch_duration_ns / 1000);
+		slept = igt_measured_usleep(batch_duration_ns / 1000) * NSEC_PER_USEC;
 		if (flags & TEST_TRAILING_IDLE)
 			end_spin(i915, spin, flags);
 		val = read_engine_time(i915, class) - val;
@@ -723,8 +689,8 @@ virtual_all(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
 			igt_assert(!gem_bo_busy(i915, spin->handle));
 
 			val = read_engine_time(i915, class);
-			slept = measured_usleep(batch_duration_ns /
-						1000);
+			slept = igt_measured_usleep(batch_duration_ns /
+						1000) * NSEC_PER_USEC;
 			val = read_engine_time(i915, class) - val;
 
 			assert_within_epsilon(slept - val, slept, tolerance);
diff --git a/tests/intel/gem_exec_nop.c b/tests/intel/gem_exec_nop.c
index 652f8deff..74593c085 100644
--- a/tests/intel/gem_exec_nop.c
+++ b/tests/intel/gem_exec_nop.c
@@ -434,12 +434,6 @@ stable_nop_on_ring(int fd, uint32_t handle, const intel_ctx_t *ctx,
 	return n;
 }
 
-#define assert_within_epsilon(x, ref, tolerance) \
-        igt_assert_f((x) <= (1.0 + tolerance) * ref && \
-                     (x) >= (1.0 - tolerance) * ref, \
-                     "'%s' != '%s' (%f not within %f%% tolerance of %f)\n",\
-                     #x, #ref, x, tolerance * 100.0, ref)
-
 static void headless(int fd, uint32_t handle, const intel_ctx_t *ctx,
 		     const struct intel_execution_engine2 *e)
 {
diff --git a/tests/intel/gem_spin_batch.c b/tests/intel/gem_spin_batch.c
index 85408a4c0..dee892411 100644
--- a/tests/intel/gem_spin_batch.c
+++ b/tests/intel/gem_spin_batch.c
@@ -51,12 +51,6 @@
 
 #define MAX_ERROR 5 /* % */
 
-#define assert_within_epsilon(x, ref, tolerance) \
-	igt_assert_f(100 * x <= (100 + tolerance) * ref && \
-		     100 * x >= (100 - tolerance) * ref, \
-		     "'%s' != '%s' (%lld not within %d%% tolerance of %lld)\n",\
-		     #x, #ref, (long long)x, tolerance, (long long)ref)
-
 static void spin(int fd, const intel_ctx_t *ctx_id,
 		 unsigned int engine,
 		 unsigned int flags,
diff --git a/tests/intel/i915_pm_rc6_residency.c b/tests/intel/i915_pm_rc6_residency.c
index 7942d46d3..c9128481d 100644
--- a/tests/intel/i915_pm_rc6_residency.c
+++ b/tests/intel/i915_pm_rc6_residency.c
@@ -234,17 +234,6 @@ static uint64_t pmu_read_single(int fd)
 	return __pmu_read_single(fd, NULL);
 }
 
-#define __assert_within_epsilon(x, ref, tol_up, tol_down, debug_data) \
-	igt_assert_f((double)(x) <= (1.0 + (tol_up)) * (double)(ref) && \
-		     (double)(x) >= (1.0 - (tol_down)) * (double)(ref), \
-		     "'%s' != '%s' (%f not within +%.1f%%/-%.1f%% tolerance of %f)\n %s\n",\
-		     #x, #ref, (double)(x), \
-		     (tol_up) * 100.0, (tol_down) * 100.0, \
-		     (double)(ref), debug_data)
-
-#define assert_within_epsilon(x, ref, tolerance, debug_data) \
-	__assert_within_epsilon(x, ref, tolerance, tolerance, debug_data)
-
 static char *get_drpc(int i915, int gt_id)
 {
 	int gt_dir;
@@ -275,21 +264,6 @@ static bool __pmu_wait_for_rc6(int fd)
 	return false;
 }
 
-static unsigned int measured_usleep(unsigned int usec)
-{
-	struct timespec ts = { };
-	unsigned int slept;
-
-	slept = igt_nsec_elapsed(&ts);
-	igt_assert(slept == 0);
-	do {
-		usleep(usec - slept);
-		slept = igt_nsec_elapsed(&ts) / 1000;
-	} while (slept < usec);
-
-	return igt_nsec_elapsed(&ts);
-}
-
 static uint32_t batch_create(int fd)
 {
 	const uint32_t bbe = MI_BATCH_BUFFER_END;
@@ -416,7 +390,7 @@ static void rc6_idle(int i915, uint32_t ctx_id, uint64_t flags, unsigned int gt)
 	/* While idle check full RC6. */
 	igt_power_get_energy(&gpu, &sample[0]);
 	rc6 = -__pmu_read_single(fd, &ts[0]);
-	slept = measured_usleep(duration_ns / 1000);
+	slept = igt_measured_usleep(duration_ns / 1000) * NSEC_PER_USEC;
 	rc6 += __pmu_read_single(fd, &ts[1]);
 	igt_debug("slept=%lu perf=%"PRIu64", rc6=%"PRIu64"\n",
 		  slept, ts[1] - ts[0], rc6);
@@ -431,7 +405,7 @@ static void rc6_idle(int i915, uint32_t ctx_id, uint64_t flags, unsigned int gt)
 	}
 	drpc = get_drpc(i915, gt);
 
-	assert_within_epsilon(rc6, ts[1] - ts[0], 5, drpc);
+	assert_within_epsilon_debug(rc6, ts[1] - ts[0], 5, drpc);
 
 	done = mmap(0, 4096, PROT_WRITE, MAP_SHARED | MAP_ANON, -1, 0);
 
@@ -443,7 +417,7 @@ static void rc6_idle(int i915, uint32_t ctx_id, uint64_t flags, unsigned int gt)
 		igt_power_get_energy(&gpu, &sample[0]);
 		cycles = -READ_ONCE(done[1]);
 		rc6 = -__pmu_read_single(fd, &ts[0]);
-		slept = measured_usleep(duration_ns / 1000);
+		slept = igt_measured_usleep(duration_ns / 1000) * NSEC_PER_USEC;
 		rc6 += __pmu_read_single(fd, &ts[1]);
 		cycles += READ_ONCE(done[1]);
 		igt_debug("%s: slept=%lu perf=%"PRIu64", cycles=%lu, rc6=%"PRIu64"\n",
@@ -469,7 +443,7 @@ static void rc6_idle(int i915, uint32_t ctx_id, uint64_t flags, unsigned int gt)
 		/* While very nearly idle, expect full RC6 */
 		drpc = get_drpc(i915, gt);
 
-		assert_within_epsilon(rc6, ts[1] - ts[0], tolerance, drpc);
+		assert_within_epsilon_debug(rc6, ts[1] - ts[0], tolerance, drpc);
 
 		free(drpc);
 		drpc = NULL;
@@ -512,7 +486,7 @@ static void rc6_fence(int i915, unsigned int gt)
 	/* While idle check full RC6. */
 	igt_power_get_energy(&gpu, &sample[0]);
 	rc6 = -__pmu_read_single(fd, &ts[0]);
-	slept = measured_usleep(duration_ns / 1000);
+	slept = igt_measured_usleep(duration_ns / 1000) * NSEC_PER_USEC;
 	rc6 += __pmu_read_single(fd, &ts[1]);
 	igt_debug("slept=%lu perf=%"PRIu64", rc6=%"PRIu64"\n",
 		  slept, ts[1] - ts[0], rc6);
@@ -527,7 +501,7 @@ static void rc6_fence(int i915, unsigned int gt)
 	}
 	drpc = get_drpc(i915, gt);
 
-	assert_within_epsilon(rc6, ts[1] - ts[0], 5, drpc);
+	assert_within_epsilon_debug(rc6, ts[1] - ts[0], 5, drpc);
 
 	/* Submit but delay execution, we should be idle and conserving power */
 	ctx = intel_ctx_create_for_gt(i915, gt);
@@ -549,7 +523,7 @@ static void rc6_fence(int i915, unsigned int gt)
 
 		igt_power_get_energy(&gpu, &sample[0]);
 		rc6 = -__pmu_read_single(fd, &ts[0]);
-		slept = measured_usleep(duration_ns / 1000);
+		slept = igt_measured_usleep(duration_ns / 1000) * NSEC_PER_USEC;
 		rc6 += __pmu_read_single(fd, &ts[1]);
 		igt_debug("%s: slept=%lu perf=%"PRIu64", rc6=%"PRIu64"\n",
 			  e->name, slept, ts[1] - ts[0], rc6);
@@ -570,7 +544,7 @@ static void rc6_fence(int i915, unsigned int gt)
 
 		drpc = get_drpc(i915, gt);
 
-		assert_within_epsilon(rc6, ts[1] - ts[0], tolerance, drpc);
+		assert_within_epsilon_debug(rc6, ts[1] - ts[0], tolerance, drpc);
 		gem_quiescent_gpu(i915);
 
 		free(drpc);
diff --git a/tests/intel/perf_pmu.c b/tests/intel/perf_pmu.c
index 5d0467c02..c6ccd9ccb 100644
--- a/tests/intel/perf_pmu.c
+++ b/tests/intel/perf_pmu.c
@@ -284,39 +284,6 @@ static uint64_t pmu_read_multi(int fd, unsigned int num, uint64_t *val)
 	return buf[1];
 }
 
-#define __assert_within_epsilon(x, ref, tol_up, tol_down, debug_data) \
-	igt_assert_f((double)(x) <= (1.0 + (tol_up)) * (double)(ref) && \
-		     (double)(x) >= (1.0 - (tol_down)) * (double)(ref), \
-		     "'%s' != '%s' (%f not within +%.1f%%/-%.1f%% tolerance of %f)\n%s\n",\
-		     #x, #ref, (double)(x), \
-		     (tol_up) * 100.0, (tol_down) * 100.0, \
-		     (double)(ref), debug_data)
-
-#define assert_within_epsilon(x, ref, tolerance) \
-	__assert_within_epsilon(x, ref, tolerance, tolerance, no_debug_data)
-
-#define assert_within_epsilon_debug(x, ref, tolerance, debug_data) \
-	__assert_within_epsilon(x, ref, tolerance, tolerance, debug_data)
-/*
- * Helper for cases where we assert on time spent sleeping (directly or
- * indirectly), so make it more robust by ensuring the system sleep time
- * is within test tolerance to start with.
- */
-static unsigned int measured_usleep(unsigned int usec)
-{
-	struct timespec ts = { };
-	unsigned int slept;
-
-	slept = igt_nsec_elapsed(&ts);
-	igt_assert(slept == 0);
-	do {
-		usleep(usec - slept);
-		slept = igt_nsec_elapsed(&ts) / 1000;
-	} while (slept < usec);
-
-	return igt_nsec_elapsed(&ts);
-}
-
 #define TEST_BUSY (1)
 #define FLAG_SYNC (2)
 #define TEST_TRAILING_IDLE (4)
@@ -377,7 +344,7 @@ single(int gem_fd, const intel_ctx_t *ctx,
 		spin = NULL;
 
 	val = pmu_read_single(fd);
-	slept = measured_usleep(batch_duration_ns / 1000);
+	slept = igt_measured_usleep(batch_duration_ns / 1000) * NSEC_PER_USEC;
 	if (flags & TEST_TRAILING_IDLE)
 		end_spin(gem_fd, spin, flags);
 	val = pmu_read_single(fd) - val;
@@ -395,7 +362,7 @@ single(int gem_fd, const intel_ctx_t *ctx,
 		igt_assert(!gem_bo_busy(gem_fd, spin->handle));
 
 		val = pmu_read_single(fd);
-		slept = measured_usleep(batch_duration_ns / 1000);
+		slept = igt_measured_usleep(batch_duration_ns / 1000) * NSEC_PER_USEC;
 		val = pmu_read_single(fd) - val;
 
 		assert_within_epsilon(val, 0, tolerance);
@@ -429,7 +396,7 @@ busy_start(int gem_fd, const intel_ctx_t *ctx,
 	fd = open_pmu(gem_fd, I915_PMU_ENGINE_BUSY(e->class, e->instance));
 
 	val = __pmu_read_single(fd, &ts[0]);
-	slept = measured_usleep(batch_duration_ns / 1000);
+	slept = igt_measured_usleep(batch_duration_ns / 1000) * NSEC_PER_USEC;
 	val = __pmu_read_single(fd, &ts[1]) - val;
 	igt_debug("slept=%lu perf=%"PRIu64"\n", slept, ts[1] - ts[0]);
 
@@ -485,7 +452,7 @@ busy_double_start(int gem_fd, const intel_ctx_t *ctx,
 	fd = open_pmu(gem_fd, I915_PMU_ENGINE_BUSY(e->class, e->instance));
 
 	val = __pmu_read_single(fd, &ts[0]);
-	slept = measured_usleep(batch_duration_ns / 1000);
+	slept = igt_measured_usleep(batch_duration_ns / 1000) * NSEC_PER_USEC;
 	val = __pmu_read_single(fd, &ts[1]) - val;
 	igt_debug("slept=%lu perf=%"PRIu64"\n", slept, ts[1] - ts[0]);
 
@@ -565,7 +532,7 @@ busy_check_all(int gem_fd, const intel_ctx_t *ctx,
 
 	spin = igt_sync_spin(gem_fd, ahnd, ctx, e);
 	pmu_read_multi(fd[0], num_engines, tval[0]);
-	slept = measured_usleep(batch_duration_ns / 1000);
+	slept = igt_measured_usleep(batch_duration_ns / 1000) * NSEC_PER_USEC;
 	if (flags & TEST_TRAILING_IDLE)
 		end_spin(gem_fd, spin, flags);
 	pmu_read_multi(fd[0], num_engines, tval[1]);
@@ -640,7 +607,7 @@ most_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
 	usleep(__igt_sync_spin_wait(gem_fd, spin) * num_engines / 1e3);
 
 	pmu_read_multi(fd[0], num_engines, tval[0]);
-	slept = measured_usleep(batch_duration_ns / 1000);
+	slept = igt_measured_usleep(batch_duration_ns / 1000) * NSEC_PER_USEC;
 	if (flags & TEST_TRAILING_IDLE)
 		end_spin(gem_fd, spin, flags);
 	pmu_read_multi(fd[0], num_engines, tval[1]);
@@ -698,7 +665,7 @@ all_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
 	usleep(__igt_sync_spin_wait(gem_fd, spin) * num_engines / 1e3);
 
 	pmu_read_multi(fd[0], num_engines, tval[0]);
-	slept = measured_usleep(batch_duration_ns / 1000);
+	slept = igt_measured_usleep(batch_duration_ns / 1000) * NSEC_PER_USEC;
 	if (flags & TEST_TRAILING_IDLE)
 		end_spin(gem_fd, spin, flags);
 	pmu_read_multi(fd[0], num_engines, tval[1]);
@@ -741,7 +708,7 @@ no_sema(int gem_fd, const intel_ctx_t *ctx,
 		spin = NULL;
 
 	pmu_read_multi(fd[0], 2, val[0]);
-	measured_usleep(batch_duration_ns / 1000);
+	igt_measured_usleep(batch_duration_ns / 1000);
 	if (flags & TEST_TRAILING_IDLE)
 		end_spin(gem_fd, spin, flags);
 	pmu_read_multi(fd[0], 2, val[1]);
@@ -854,7 +821,7 @@ sema_wait(int gem_fd, const intel_ctx_t *ctx,
 		     "sampling failed to start withing 10ms\n");
 
 	val[0] = __pmu_read_single(fd, &ts[0]);
-	slept = measured_usleep(batch_duration_ns / 1000);
+	slept = igt_measured_usleep(batch_duration_ns / 1000) * NSEC_PER_USEC;
 	if (flags & TEST_TRAILING_IDLE)
 		obj_ptr[0] = 1;
 	val[1] = __pmu_read_single(fd, &ts[1]);
@@ -975,11 +942,11 @@ __sema_busy(int gem_fd, uint64_t ahnd, int pmu, const intel_ctx_t *ctx,
 
 	total = pmu_read_multi(pmu, 2, start);
 
-	sema = measured_usleep(batch_duration_ns * sema_pct / 100 / 1000);
+	sema = igt_measured_usleep(batch_duration_ns * sema_pct / 100 / 1000);
 	*map = 2; __sync_synchronize();
-	busy = measured_usleep(batch_duration_ns * (busy_pct - sema_pct) / 100 / 1000);
+	busy = igt_measured_usleep(batch_duration_ns * (busy_pct - sema_pct) / 100 / 1000);
 	igt_spin_end(spin);
-	measured_usleep(batch_duration_ns * (100 - busy_pct) / 100 / 1000);
+	igt_measured_usleep(batch_duration_ns * (100 - busy_pct) / 100 / 1000);
 
 	total = pmu_read_multi(pmu, 2, val) - total;
 	igt_spin_free(gem_fd, spin);
@@ -1044,7 +1011,7 @@ static void test_awake(int i915, const intel_ctx_t *ctx)
 		igt_spin_new(i915, .ahnd = ahnd, .ctx = ctx, .engine = e->flags);
 
 		val = pmu_read_single(fd);
-		slept = measured_usleep(batch_duration_ns / 1000);
+		slept = igt_measured_usleep(batch_duration_ns / 1000) * NSEC_PER_USEC;
 		val = pmu_read_single(fd) - val;
 
 		gem_quiescent_gpu(i915);
@@ -1056,7 +1023,7 @@ static void test_awake(int i915, const intel_ctx_t *ctx)
 		igt_spin_new(i915, .ahnd = ahnd, .ctx = ctx, .engine = e->flags);
 
 	val = pmu_read_single(fd);
-	slept = measured_usleep(batch_duration_ns / 1000);
+	slept = igt_measured_usleep(batch_duration_ns / 1000) * NSEC_PER_USEC;
 	val = pmu_read_single(fd) - val;
 
 	gem_quiescent_gpu(i915);
@@ -1297,13 +1264,13 @@ multi_client(int gem_fd, const intel_ctx_t *ctx,
 	spin = igt_sync_spin(gem_fd, ahnd, ctx, e);
 
 	val[0] = val[1] = __pmu_read_single(fd[0], &ts[0]);
-	slept[1] = measured_usleep(batch_duration_ns / 1000);
+	slept[1] = igt_measured_usleep(batch_duration_ns / 1000) * NSEC_PER_USEC;
 	val[1] = __pmu_read_single(fd[1], &ts[1]) - val[1];
 	perf_slept[1] = ts[1] - ts[0];
 	igt_debug("slept=%lu perf=%"PRIu64"\n", slept[1], perf_slept[1]);
 	close(fd[1]);
 
-	slept[0] = measured_usleep(batch_duration_ns / 1000) + slept[1];
+	slept[0] = (igt_measured_usleep(batch_duration_ns / 1000) * NSEC_PER_USEC) + slept[1];
 	val[0] = __pmu_read_single(fd[0], &ts[1]) - val[0];
 	perf_slept[0] = ts[1] - ts[0];
 	igt_debug("slept=%lu perf=%"PRIu64"\n", slept[0], perf_slept[0]);
@@ -1710,7 +1677,7 @@ test_frequency(int gem_fd, unsigned int gt)
 	spin = spin_sync_gt(gem_fd, ahnd, gt, &ctx);
 
 	slept = pmu_read_multi(fd[0], 2, start);
-	measured_usleep(batch_duration_ns / 1000);
+	igt_measured_usleep(batch_duration_ns / 1000);
 	slept = pmu_read_multi(fd[0], 2, val) - slept;
 
 	min[0] = 1e9*(val[0] - start[0]) / slept;
@@ -1740,7 +1707,7 @@ test_frequency(int gem_fd, unsigned int gt)
 	spin = spin_sync_gt(gem_fd, ahnd, gt, &ctx);
 
 	slept = pmu_read_multi(fd[0], 2, start);
-	measured_usleep(batch_duration_ns / 1000);
+	igt_measured_usleep(batch_duration_ns / 1000);
 	slept = pmu_read_multi(fd[0], 2, val) - slept;
 
 	max[0] = 1e9*(val[0] - start[0]) / slept;
@@ -1772,7 +1739,7 @@ test_frequency(int gem_fd, unsigned int gt)
 	 * On thermally throttled devices we cannot be sure maximum frequency
 	 * can be reached so use larger tolerance downards.
 	 */
-	__assert_within_epsilon(max[0], max_freq, tolerance, 0.15f, no_debug_data);
+	assert_within_epsilon_up_down(max[0], max_freq, tolerance, 0.15f);
 }
 
 static void
@@ -1795,10 +1762,10 @@ test_frequency_idle(int gem_fd, unsigned int gt)
 	fd[1] = open_group(gem_fd, __I915_PMU_ACTUAL_FREQUENCY(gt), fd[0]);
 
 	gem_quiescent_gpu(gem_fd); /* Be idle! */
-	measured_usleep(2000); /* Wait for timers to cease */
+	igt_measured_usleep(2000); /* Wait for timers to cease */
 
 	slept = pmu_read_multi(fd[0], 2, start);
-	measured_usleep(batch_duration_ns / 1000);
+	igt_measured_usleep(batch_duration_ns / 1000);
 	slept = pmu_read_multi(fd[0], 2, val) - slept;
 
 	close(fd[0]);
@@ -1922,7 +1889,7 @@ test_rc6(int gem_fd, unsigned int gt, unsigned int num_gt, unsigned int flags)
 
 	/* While idle check full RC6. */
 	ts[0] = pmu_read_multi(fd[0], pmus, prev);
-	slept = measured_usleep(duration_ns / 1000);
+	slept = igt_measured_usleep(duration_ns / 1000) * NSEC_PER_USEC;
 	ts[1] = pmu_read_multi(fd[0], pmus, idle);
 
 	for (gt_ = 0; gt_ < pmus; gt_++) {
@@ -1962,7 +1929,7 @@ test_rc6(int gem_fd, unsigned int gt, unsigned int num_gt, unsigned int flags)
 		      "failed to enter c6 \n%s\n", drpc = get_drpc(gem_fd, test_idx));
 
 	ts[0] = pmu_read_multi(fd[0], pmus, prev);
-	slept = measured_usleep(duration_ns / 1000);
+	slept = igt_measured_usleep(duration_ns / 1000) * NSEC_PER_USEC;
 	ts[1] = pmu_read_multi(fd[0], pmus, idle);
 
 	for (gt_ = 0; gt_ < pmus; gt_++) {
@@ -1987,7 +1954,7 @@ test_rc6(int gem_fd, unsigned int gt, unsigned int num_gt, unsigned int flags)
 	usleep(1e3); /* wait for the rc6 cycle counter to stop ticking */
 
 	ts[0] = pmu_read_multi(fd[0], pmus, prev);
-	slept = measured_usleep(duration_ns / 1000);
+	slept = igt_measured_usleep(duration_ns / 1000) * NSEC_PER_USEC;
 	ts[1] = pmu_read_multi(fd[0], pmus, busy);
 
 	for (gt_ = 0; gt_ < num_gt; gt_++) {
diff --git a/tests/intel/sysfs_heartbeat_interval.c b/tests/intel/sysfs_heartbeat_interval.c
index 486a1514d..b4ca4769f 100644
--- a/tests/intel/sysfs_heartbeat_interval.c
+++ b/tests/intel/sysfs_heartbeat_interval.c
@@ -307,21 +307,6 @@ static void test_nopreempt(int i915, int engine)
 	set_heartbeat(engine, saved);
 }
 
-static unsigned int measured_usleep(unsigned int usec)
-{
-	struct timespec ts = { };
-	unsigned int slept;
-
-	slept = igt_nsec_elapsed(&ts);
-	igt_assert(slept == 0);
-	do {
-		usleep(usec - slept);
-		slept = igt_nsec_elapsed(&ts) / 1000;
-	} while (slept < usec);
-
-	return igt_nsec_elapsed(&ts);
-}
-
 static void client(int i915, int engine, int *ctl, int duration, int expect)
 {
 	unsigned int class, inst;
@@ -352,7 +337,7 @@ static void client(int i915, int engine, int *ctl, int duration, int expect)
 			continue;
 		}
 
-		elapsed = measured_usleep(duration * 1000);
+		elapsed = igt_measured_usleep(duration * 1000);
 		igt_spin_end(spin);
 
 		sync_fence_wait(spin->out_fence, -1);
@@ -361,7 +346,7 @@ static void client(int i915, int engine, int *ctl, int duration, int expect)
 
 		igt_assert_f(sync_fence_status(spin->out_fence) == expect,
 			     "%s client: elapsed: %.3fms, expected %d, got %d\n",
-			     expect < 0 ? "Bad" : "Good", elapsed * 1e-6,
+			     expect < 0 ? "Bad" : "Good", elapsed * 1e-3,
 			     expect, sync_fence_status(spin->out_fence));
 		igt_spin_free(i915, spin);
 		count++;
diff --git a/tests/intel/xe_pm_residency.c b/tests/intel/xe_pm_residency.c
index f9e96d608..3432077cc 100644
--- a/tests/intel/xe_pm_residency.c
+++ b/tests/intel/xe_pm_residency.c
@@ -32,14 +32,6 @@
 const double tolerance = 0.1;
 int fw_handle = -1;
 
-#define assert_within_epsilon(x, ref, tol) \
-	igt_assert_f((double)(x) <= (1.0 + (tol)) * (double)(ref) && \
-		     (double)(x) >= (1.0 - (tol)) * (double)(ref), \
-		     "'%s' != '%s' (%f not within +%.1f%%/-%.1f%% tolerance of %f)\n",\
-		     #x, #ref, (double)(x), \
-		     (tol) * 100.0, (tol) * 100.0, \
-		     (double)(ref))
-
 enum test_type {
 	TEST_S2IDLE,
 	TEST_IDLE,
@@ -177,21 +169,6 @@ static void exec_load(int fd, struct drm_xe_engine_class_instance *hwe, unsigned
 	xe_vm_destroy(fd, vm);
 }
 
-static unsigned int measured_usleep(unsigned int usec)
-{
-	struct timespec ts = { };
-	unsigned int slept;
-
-	slept = igt_nsec_elapsed(&ts);
-	igt_assert(slept == 0);
-	do {
-		usleep(usec - slept);
-		slept = igt_nsec_elapsed(&ts) / 1000;
-	} while (slept < usec);
-
-	return igt_nsec_elapsed(&ts) / 1000;
-}
-
 static unsigned long read_idle_residency(int fd, int gt)
 {
 	unsigned long residency = 0;
@@ -224,7 +201,7 @@ static void test_idle_residency(int fd, int gt, enum test_type flag)
 
 	if (flag == TEST_IDLE) {
 		residency_start = read_idle_residency(fd, gt);
-		elapsed_ms = measured_usleep(SLEEP_DURATION * USEC_PER_SEC) / 1000;
+		elapsed_ms = igt_measured_usleep(SLEEP_DURATION * USEC_PER_SEC) / 1000;
 		residency_end = read_idle_residency(fd, gt);
 	}
 
@@ -260,7 +237,7 @@ static void idle_residency_on_exec(int fd, struct drm_xe_engine_class_instance *
 
 	start = READ_ONCE(done[1]);
 	residency_start = read_idle_residency(fd, hwe->gt_id);
-	elapsed_ms = measured_usleep(SLEEP_DURATION * USEC_PER_SEC) / 1000;
+	elapsed_ms = igt_measured_usleep(SLEEP_DURATION * USEC_PER_SEC) / 1000;
 	residency_end = read_idle_residency(fd, hwe->gt_id);
 	end = READ_ONCE(done[1]);
 	*done = 1;
@@ -281,7 +258,7 @@ static void measure_power(struct igt_power *gpu, double *power)
 	struct power_sample power_sample[2];
 
 	igt_power_get_energy(gpu, &power_sample[0]);
-	measured_usleep(SLEEP_DURATION * USEC_PER_SEC);
+	igt_measured_usleep(SLEEP_DURATION * USEC_PER_SEC);
 	igt_power_get_energy(gpu, &power_sample[1]);
 	*power = igt_power_get_mW(gpu, &power_sample[0], &power_sample[1]);
 }
-- 
2.38.1

