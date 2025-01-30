Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93AFCA236BB
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 22:34:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A50410E9F3;
	Thu, 30 Jan 2025 21:34:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nGA6NEdT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A2D110E9D8;
 Thu, 30 Jan 2025 21:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738272852; x=1769808852;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yfm7lhWkn/4CXBMLNBXX8ByFLXl4ccXO/DIHJIk61zQ=;
 b=nGA6NEdTeTEcpL7QLVSluSaMvWrOgAiD0J8YfcfhQRuVUfLwqfBVZIin
 oDXZYQGDi3w69SRUFu7L+nuXo/AqJmUgyR6FBXNqqMjSs6a108eYPTBrz
 /6k2fKnjhG51jUHdfPUIGg0nBVojFrJuyL0fY9Ghohyrx22Cp11YorLBI
 n94M+rIt52kj3RqJAIpVCxcOqm6PldbDk5BUpVGgULAG9NsX3n1emN1iZ
 D2Iwb1mcNrig8pZNYmp+gTi5vKTPJZU802BqjbEUJp5Qow/2iVbCv+cj3
 hRMnt18pJMRYYsikGreZ4/ma7YSHyb/SRxHt12M35Ui/Zyzkl51CKG0jo w==;
X-CSE-ConnectionGUID: 4keWZJDxRGuUlnh6g4vYVQ==
X-CSE-MsgGUID: 5Njk67FvRPm9fRdF7lW1zA==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="38083290"
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="38083290"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 13:34:11 -0800
X-CSE-ConnectionGUID: 1wSRkvoiT3a37B+A26CmDg==
X-CSE-MsgGUID: /a91y3XPQ3CgffmH87AJJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="109352116"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by fmviesa007.fm.intel.com with ESMTP; 30 Jan 2025 13:34:10 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Subject: [PATCH i-g-t v7 1/3] lib/igt_core: Add tolerance and measured_usleep
 utils
Date: Thu, 30 Jan 2025 13:30:26 -0800
Message-Id: <20250130213028.3852086-2-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250130213028.3852086-1-vinay.belgaumkar@intel.com>
References: <20250130213028.3852086-1-vinay.belgaumkar@intel.com>
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

The only test which now uses the local version of measured_usleep
is perf_pmu. Patch for that will be sent separately since it
also needs some test changes.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 lib/igt_core.c                         | 20 ++++++++++
 lib/igt_core.h                         | 20 ++++++++++
 tests/intel/drm_fdinfo.c               | 55 +++++---------------------
 tests/intel/gem_exec_nop.c             |  6 ---
 tests/intel/gem_spin_batch.c           |  6 ---
 tests/intel/i915_pm_rc6_residency.c    | 42 ++++----------------
 tests/intel/perf_pmu.c                 | 15 +------
 tests/intel/sysfs_heartbeat_interval.c | 17 +-------
 tests/intel/xe_pm_residency.c          | 29 ++------------
 9 files changed, 62 insertions(+), 148 deletions(-)

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
index b66ac9e1b..6a3d92008 100644
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
+	slept = igt_measured_usleep(batch_duration_ns / 1000);
 	if (flags & TEST_TRAILING_IDLE)
 		end_spin(spin_fd, spin, flags);
 	val = read_engine_time(gem_fd, e->class) - val;
@@ -258,7 +221,7 @@ single(int gem_fd, const intel_ctx_t *ctx,
 		igt_assert(!gem_bo_busy(spin_fd, spin->handle));
 
 		val = read_engine_time(gem_fd, e->class);
-		slept = measured_usleep(batch_duration_ns / 1000);
+		slept = igt_measured_usleep(batch_duration_ns / 1000);
 		val = read_engine_time(gem_fd, e->class) - val;
 
 		assert_within_epsilon(slept - val, slept, tolerance);
@@ -320,7 +283,7 @@ busy_check_all(int gem_fd, const intel_ctx_t *ctx,
 	spin = igt_sync_spin(gem_fd, ahnd, ctx, e);
 
 	read_engine_time_all(gem_fd, tval[0]);
-	slept = measured_usleep(batch_duration_ns / 1000);
+	slept = igt_measured_usleep(batch_duration_ns / 1000);
 	if (flags & TEST_TRAILING_IDLE)
 		end_spin(gem_fd, spin, flags);
 	read_engine_time_all(gem_fd, tval[1]);
@@ -395,7 +358,7 @@ most_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
 	usleep(__igt_sync_spin_wait(gem_fd, spin) * num_engines / 1e3);
 
 	read_engine_time_all(gem_fd, tval[0]);
-	slept = measured_usleep(batch_duration_ns / 1000);
+	slept = igt_measured_usleep(batch_duration_ns / 1000);
 	if (flags & TEST_TRAILING_IDLE)
 		end_spin(gem_fd, spin, flags);
 	read_engine_time_all(gem_fd, tval[1]);
@@ -450,7 +413,7 @@ all_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
 	usleep(__igt_sync_spin_wait(gem_fd, spin) * num_engines / 1e3);
 
 	read_engine_time_all(gem_fd, tval[0]);
-	slept = measured_usleep(batch_duration_ns / 1000);
+	slept = igt_measured_usleep(batch_duration_ns / 1000);
 	if (flags & TEST_TRAILING_IDLE)
 		end_spin(gem_fd, spin, flags);
 	read_engine_time_all(gem_fd, tval[1]);
@@ -596,7 +559,7 @@ virtual(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
 				spin = NULL;
 
 			val = read_engine_time(i915, class);
-			slept = measured_usleep(batch_duration_ns / 1000);
+			slept = igt_measured_usleep(batch_duration_ns / 1000);
 			if (flags & TEST_TRAILING_IDLE)
 				end_spin(i915, spin, flags);
 			val = read_engine_time(i915, class) - val;
@@ -615,7 +578,7 @@ virtual(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
 				igt_assert(!gem_bo_busy(i915, spin->handle));
 
 				val = read_engine_time(i915, class);
-				slept = measured_usleep(batch_duration_ns /
+				slept = igt_measured_usleep(batch_duration_ns /
 							1000);
 				val = read_engine_time(i915, class) - val;
 
@@ -705,7 +668,7 @@ virtual_all(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
 		usleep(__igt_sync_spin_wait(i915, spin) * count / 1e3);
 
 		val = read_engine_time(i915, class);
-		slept = measured_usleep(batch_duration_ns / 1000);
+		slept = igt_measured_usleep(batch_duration_ns / 1000);
 		if (flags & TEST_TRAILING_IDLE)
 			end_spin(i915, spin, flags);
 		val = read_engine_time(i915, class) - val;
@@ -723,7 +686,7 @@ virtual_all(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
 			igt_assert(!gem_bo_busy(i915, spin->handle));
 
 			val = read_engine_time(i915, class);
-			slept = measured_usleep(batch_duration_ns /
+			slept = igt_measured_usleep(batch_duration_ns /
 						1000);
 			val = read_engine_time(i915, class) - val;
 
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
index 7942d46d3..d4489d0f7 100644
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
+	slept = igt_measured_usleep(duration_ns / 1000);
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
+		slept = igt_measured_usleep(duration_ns / 1000);
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
+	slept = igt_measured_usleep(duration_ns / 1000);
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
+		slept = igt_measured_usleep(duration_ns / 1000);
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
index 5d0467c02..87de062cb 100644
--- a/tests/intel/perf_pmu.c
+++ b/tests/intel/perf_pmu.c
@@ -284,19 +284,6 @@ static uint64_t pmu_read_multi(int fd, unsigned int num, uint64_t *val)
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
 /*
  * Helper for cases where we assert on time spent sleeping (directly or
  * indirectly), so make it more robust by ensuring the system sleep time
@@ -1772,7 +1759,7 @@ test_frequency(int gem_fd, unsigned int gt)
 	 * On thermally throttled devices we cannot be sure maximum frequency
 	 * can be reached so use larger tolerance downards.
 	 */
-	__assert_within_epsilon(max[0], max_freq, tolerance, 0.15f, no_debug_data);
+	assert_within_epsilon_up_down(max[0], max_freq, tolerance, 0.15f);
 }
 
 static void
diff --git a/tests/intel/sysfs_heartbeat_interval.c b/tests/intel/sysfs_heartbeat_interval.c
index 486a1514d..56fb1b499 100644
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

