Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 336093DF924
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Aug 2021 03:06:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A90056E9A0;
	Wed,  4 Aug 2021 01:06:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2846A6E9A1;
 Wed,  4 Aug 2021 01:05:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10065"; a="274873916"
X-IronPort-AV: E=Sophos;i="5.84,293,1620716400"; d="scan'208";a="274873916"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 18:05:14 -0700
X-IronPort-AV: E=Sophos;i="5.84,293,1620716400"; d="scan'208";a="670732232"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 18:05:12 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <igt-dev@lists.freedesktop.org>
Cc: <intel-gfx@lists.freedesktop.org>
Date: Tue,  3 Aug 2021 18:23:03 -0700
Message-Id: <20210804012303.158392-4-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210804012303.158392-1-matthew.brost@intel.com>
References: <20210804012303.158392-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 3/3] i915/gem_exec_capture: Update to
 support GuC based resets
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

From: "Signed-off-by: John Harrison" <John.C.Harrison@Intel.com>

When GuC submission is enabled, GuC itself manages hang detection and
recovery. Therefore, any test that relies on being able to trigger an
engine reset in the driver will fail. Full GT resets can still be
triggered by the driver, however in that situation detecting the
specific context that caused a hang is not possible as the driver has
no information about what is actually running on the hardware at any
given time.

So update the test to cause a reset via a the hangcheck mechanism by
submitting a hanging batch and waiting. That way it is guaranteed to
be testing the correct reset code paths for the current platform,
whether that is GuC enabled or not.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 lib/igt_gt.c                  | 44 +++++++++++++++++++----------
 lib/igt_gt.h                  |  1 +
 tests/i915/gem_exec_capture.c | 52 +++++++++++++++++++++++++++++------
 3 files changed, 74 insertions(+), 23 deletions(-)

diff --git a/lib/igt_gt.c b/lib/igt_gt.c
index c049477db..ec548d501 100644
--- a/lib/igt_gt.c
+++ b/lib/igt_gt.c
@@ -56,23 +56,28 @@
  * engines.
  */
 
+static int reset_query_once = -1;
+
 static bool has_gpu_reset(int fd)
 {
-	static int once = -1;
-	if (once < 0) {
-		struct drm_i915_getparam gp;
-		int val = 0;
-
-		memset(&gp, 0, sizeof(gp));
-		gp.param = 35; /* HAS_GPU_RESET */
-		gp.value = &val;
-
-		if (ioctl(fd, DRM_IOCTL_I915_GETPARAM, &gp))
-			once = intel_gen(intel_get_drm_devid(fd)) >= 5;
-		else
-			once = val > 0;
+	if (reset_query_once < 0) {
+		reset_query_once = gem_gpu_reset_type(fd);
+
+		/* Very old kernels did not support the query */
+		if (reset_query_once == -1)
+			reset_query_once =
+			      (intel_gen(intel_get_drm_devid(fd)) >= 5) ? 1 : 0;
 	}
-	return once;
+
+	return reset_query_once > 0;
+}
+
+static bool has_engine_reset(int fd)
+{
+	if (reset_query_once < 0)
+		has_gpu_reset(fd);
+
+	return reset_query_once > 1;
 }
 
 static void eat_error_state(int dev)
@@ -176,7 +181,11 @@ igt_hang_t igt_allow_hang(int fd, unsigned ctx, unsigned flags)
 		igt_skip("hang injection disabled by user [IGT_HANG=0]\n");
 	gem_context_require_bannable(fd);
 
-	allow_reset = 1;
+	if (flags & HANG_WANT_ENGINE_RESET)
+		allow_reset = 2;
+	else
+		allow_reset = 1;
+
 	if ((flags & HANG_ALLOW_CAPTURE) == 0) {
 		param.param = I915_CONTEXT_PARAM_NO_ERROR_CAPTURE;
 		param.value = 1;
@@ -187,11 +196,16 @@ igt_hang_t igt_allow_hang(int fd, unsigned ctx, unsigned flags)
 		__gem_context_set_param(fd, &param);
 		allow_reset = INT_MAX; /* any reset method */
 	}
+
 	igt_require(igt_params_set(fd, "reset", "%d", allow_reset));
+	reset_query_once = -1;  /* Re-query after changing param */
 
 	if (!igt_check_boolean_env_var("IGT_HANG_WITHOUT_RESET", false))
 		igt_require(has_gpu_reset(fd));
 
+	if (flags & HANG_WANT_ENGINE_RESET)
+		igt_require(has_engine_reset(fd));
+
 	ban = context_get_ban(fd, ctx);
 	if ((flags & HANG_ALLOW_BAN) == 0)
 		context_set_ban(fd, ctx, 0);
diff --git a/lib/igt_gt.h b/lib/igt_gt.h
index d87fae2d3..d806c4b80 100644
--- a/lib/igt_gt.h
+++ b/lib/igt_gt.h
@@ -48,6 +48,7 @@ void igt_disallow_hang(int fd, igt_hang_t arg);
 igt_hang_t igt_hang_ctx(int fd, uint32_t ctx, int ring, unsigned flags);
 #define HANG_ALLOW_BAN 1
 #define HANG_ALLOW_CAPTURE 2
+#define HANG_WANT_ENGINE_RESET 4
 
 igt_hang_t igt_hang_ring(int fd, int ring);
 void igt_post_hang_ring(int fd, igt_hang_t arg);
diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
index f59cb09da..6ae4208ce 100644
--- a/tests/i915/gem_exec_capture.c
+++ b/tests/i915/gem_exec_capture.c
@@ -23,6 +23,7 @@
 
 #include <sys/poll.h>
 #include <zlib.h>
+#include <sched.h>
 
 #include "i915/gem.h"
 #include "i915/gem_create.h"
@@ -31,8 +32,16 @@
 #include "igt_rand.h"
 #include "igt_sysfs.h"
 
+#define MAX_RESET_TIME	120
+
 IGT_TEST_DESCRIPTION("Check that we capture the user specified objects on a hang");
 
+static void configure_engine(int fd, const char *name)
+{
+	gem_engine_property_printf(fd, name, "preempt_timeout_ms", "%d", 250);
+	gem_engine_property_printf(fd, name, "heartbeat_interval_ms", "%d", 500);
+}
+
 static void check_error_state(int dir, struct drm_i915_gem_exec_object2 *obj)
 {
 	char *error, *str;
@@ -61,8 +70,13 @@ static void check_error_state(int dir, struct drm_i915_gem_exec_object2 *obj)
 	igt_assert(found);
 }
 
+static bool fence_busy(int fence)
+{
+	return poll(&(struct pollfd){fence, POLLIN}, 1, 0) == 0;
+}
+
 static void __capture1(int fd, int dir, const intel_ctx_t *ctx,
-		       unsigned ring, uint32_t target)
+		       unsigned ring, uint32_t target, const char *name)
 {
 	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct drm_i915_gem_exec_object2 obj[4];
@@ -74,6 +88,10 @@ static void __capture1(int fd, int dir, const intel_ctx_t *ctx,
 	struct drm_i915_gem_execbuffer2 execbuf;
 	uint32_t *batch, *seqno;
 	int i;
+	int fence_out;
+	struct timeval before, after, delta;
+
+	configure_engine(fd, name);
 
 	memset(obj, 0, sizeof(obj));
 	obj[SCRATCH].handle = gem_create(fd, 4096);
@@ -149,18 +167,34 @@ static void __capture1(int fd, int dir, const intel_ctx_t *ctx,
 	execbuf.flags = ring;
 	if (gen > 3 && gen < 6)
 		execbuf.flags |= I915_EXEC_SECURE;
+	execbuf.flags |= I915_EXEC_FENCE_OUT;
+	execbuf.rsvd2 = ~0UL;
 	execbuf.rsvd1 = ctx->id;
 
 	igt_assert(!READ_ONCE(*seqno));
-	gem_execbuf(fd, &execbuf);
+	gem_execbuf_wr(fd, &execbuf);
+
+	fence_out = execbuf.rsvd2 >> 32;
+	igt_assert(fence_out >= 0);
 
 	/* Wait for the request to start */
 	while (READ_ONCE(*seqno) != 0xc0ffee)
 		igt_assert(gem_bo_busy(fd, obj[SCRATCH].handle));
 	munmap(seqno, 4096);
 
+	/* Wait for a reset to occur */
+	gettimeofday(&before, NULL);
+	while (fence_busy(fence_out)) {
+		gettimeofday(&after, NULL);
+		timersub(&after, &before, &delta);
+		igt_assert(delta.tv_sec < MAX_RESET_TIME);
+		sched_yield();
+	}
+	gettimeofday(&after, NULL);
+	timersub(&after, &before, &delta);
+	igt_info("Target died after %ld.%06lds\n", delta.tv_sec, delta.tv_usec);
+
 	/* Check that only the buffer we marked is reported in the error */
-	igt_force_gpu_reset(fd);
 	check_error_state(dir, &obj[CAPTURE]);
 
 	gem_sync(fd, obj[BATCH].handle);
@@ -170,12 +204,13 @@ static void __capture1(int fd, int dir, const intel_ctx_t *ctx,
 	gem_close(fd, obj[SCRATCH].handle);
 }
 
-static void capture(int fd, int dir, const intel_ctx_t *ctx, unsigned ring)
+static void capture(int fd, int dir, const intel_ctx_t *ctx,
+		    const struct intel_execution_engine2 *e)
 {
 	uint32_t handle;
 
 	handle = gem_create(fd, 4096);
-	__capture1(fd, dir, ctx, ring, handle);
+	__capture1(fd, dir, ctx, e->flags, handle, e->name);
 	gem_close(fd, handle);
 }
 
@@ -577,7 +612,7 @@ static void userptr(int fd, int dir)
 	igt_assert(posix_memalign(&ptr, 4096, 4096) == 0);
 	igt_require(__gem_userptr(fd, ptr, 4096, 0, 0, &handle) == 0);
 
-	__capture1(fd, dir, intel_ctx_0(fd), 0, handle);
+	__capture1(fd, dir, intel_ctx_0(fd), 0, handle, "bcs0");
 
 	gem_close(fd, handle);
 	free(ptr);
@@ -626,7 +661,8 @@ igt_main
 		gem_require_mmap_wc(fd);
 		igt_require(has_capture(fd));
 		ctx = intel_ctx_create_all_physical(fd);
-		igt_allow_hang(fd, ctx->id, HANG_ALLOW_CAPTURE);
+		igt_allow_hang(fd, 0, HANG_ALLOW_CAPTURE |
+			       HANG_WANT_ENGINE_RESET);
 
 		dir = igt_sysfs_open(fd);
 		igt_require(igt_sysfs_set(dir, "error", "Begone!"));
@@ -634,7 +670,7 @@ igt_main
 	}
 
 	test_each_engine("capture", fd, ctx, e)
-		capture(fd, dir, ctx, e->flags);
+		capture(fd, dir, ctx, e);
 
 	igt_subtest_f("many-4K-zero") {
 		igt_require(gem_can_store_dword(fd, 0));
-- 
2.28.0

