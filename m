Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 403674446AD
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 18:07:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAB0B73C75;
	Wed,  3 Nov 2021 17:07:35 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA0E973C66;
 Wed,  3 Nov 2021 17:07:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="231501450"
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="231501450"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 10:04:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="449892063"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga006.jf.intel.com with ESMTP; 03 Nov 2021 10:04:51 -0700
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Wed,  3 Nov 2021 10:04:49 -0700
Message-Id: <20211103170449.1614314-9-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211103170449.1614314-1-John.C.Harrison@Intel.com>
References: <20211103170449.1614314-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 i-g-t 8/8] tests/i915/gem_exec_capture:
 Update to support GuC based resets
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
Cc: Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

When GuC submission is enabled, GuC itself manages hang detection and
recovery. Therefore, any test that relies on being able to trigger an
engine reset in the driver will fail. Full GT resets can still be
triggered by the driver. However, in that situation detecting the
specific context that caused a hang is not possible as the driver has
no information about what is actually running on the hardware at any
given time. Plus of course, there was no context that caused the hang
because the hang was triggered manually, so it's basically a bogus
mechanism in the first place!

Update the capture test to cause a reset via a the hangcheck mechanism
by submitting a hanging batch and waiting. That way it is guaranteed to
be testing the correct reset code paths for the current platform,
whether that is GuC enabled or not.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 tests/i915/gem_exec_capture.c | 65 ++++++++++++++++++++++++++++-------
 1 file changed, 53 insertions(+), 12 deletions(-)

diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
index e924d0a30..143d97ad4 100644
--- a/tests/i915/gem_exec_capture.c
+++ b/tests/i915/gem_exec_capture.c
@@ -23,6 +23,7 @@
 
 #include <sys/poll.h>
 #include <zlib.h>
+#include <sched.h>
 
 #include "i915/gem.h"
 #include "i915/gem_create.h"
@@ -31,6 +32,8 @@
 #include "igt_rand.h"
 #include "igt_sysfs.h"
 
+#define MAX_RESET_TIME	600
+
 IGT_TEST_DESCRIPTION("Check that we capture the user specified objects on a hang");
 
 struct offset {
@@ -213,7 +216,29 @@ static void configure_hangs(int fd, const struct intel_execution_engine2 *e, int
 	gem_engine_property_printf(fd, e->name, "heartbeat_interval_ms", "%d", 500);
 
 	/* Allow engine based resets and disable banning */
-	igt_allow_hang(fd, ctxt_id, HANG_ALLOW_CAPTURE);
+	igt_allow_hang(fd, ctxt_id, HANG_ALLOW_CAPTURE | HANG_WANT_ENGINE_RESET);
+}
+
+static bool fence_busy(int fence)
+{
+	return poll(&(struct pollfd){fence, POLLIN}, 1, 0) == 0;
+}
+
+static void wait_to_die(int fence_out)
+{
+	struct timeval before, after, delta;
+
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
 }
 
 static void __capture1(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
@@ -230,7 +255,7 @@ static void __capture1(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
 	struct drm_i915_gem_execbuffer2 execbuf;
 	uint32_t *batch, *seqno;
 	struct offset offset;
-	int i;
+	int i, fence_out;
 
 	configure_hangs(fd, e, ctx->id);
 
@@ -315,18 +340,25 @@ static void __capture1(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
 	execbuf.flags = e->flags;
 	if (gen > 3 && gen < 6)
 		execbuf.flags |= I915_EXEC_SECURE;
+	execbuf.flags |= I915_EXEC_FENCE_OUT;
 	execbuf.rsvd1 = ctx->id;
+	execbuf.rsvd2 = ~0UL;
 
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
+	wait_to_die(fence_out);
+
 	/* Check that only the buffer we marked is reported in the error */
-	igt_force_gpu_reset(fd);
 	memset(&offset, 0, sizeof(offset));
 	offset.addr = obj[CAPTURE].offset;
 	igt_assert_eq(check_error_state(dir, &offset, 1, target_size, false), 1);
@@ -373,7 +405,8 @@ static int cmp(const void *A, const void *B)
 static struct offset *
 __captureN(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
 	   const struct intel_execution_engine2 *e,
-	   unsigned int size, int count, unsigned int flags)
+	   unsigned int size, int count,
+	   unsigned int flags, int *_fence_out)
 #define INCREMENTAL 0x1
 #define ASYNC 0x2
 {
@@ -383,7 +416,7 @@ __captureN(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
 	struct drm_i915_gem_execbuffer2 execbuf;
 	uint32_t *batch, *seqno;
 	struct offset *offsets;
-	int i;
+	int i, fence_out;
 
 	configure_hangs(fd, e, ctx->id);
 
@@ -491,10 +524,17 @@ __captureN(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
 	execbuf.flags = e->flags;
 	if (gen > 3 && gen < 6)
 		execbuf.flags |= I915_EXEC_SECURE;
+	execbuf.flags |= I915_EXEC_FENCE_OUT;
 	execbuf.rsvd1 = ctx->id;
+	execbuf.rsvd2 = ~0UL;
 
 	igt_assert(!READ_ONCE(*seqno));
-	gem_execbuf(fd, &execbuf);
+	gem_execbuf_wr(fd, &execbuf);
+
+	fence_out = execbuf.rsvd2 >> 32;
+	igt_assert(fence_out >= 0);
+	if (_fence_out)
+		*_fence_out = fence_out;
 
 	/* Wait for the request to start */
 	while (READ_ONCE(*seqno) != 0xc0ffee)
@@ -502,7 +542,7 @@ __captureN(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
 	munmap(seqno, 4096);
 
 	if (!(flags & ASYNC)) {
-		igt_force_gpu_reset(fd);
+		wait_to_die(fence_out);
 		gem_sync(fd, obj[count + 1].handle);
 	}
 
@@ -554,7 +594,7 @@ static void many(int fd, int dir, uint64_t size, unsigned int flags)
 	intel_require_memory(count, size, CHECK_RAM);
 	ahnd = get_reloc_ahnd(fd, ctx->id);
 
-	offsets = __captureN(fd, dir, ahnd, ctx, e, size, count, flags);
+	offsets = __captureN(fd, dir, ahnd, ctx, e, size, count, flags, NULL);
 
 	blobs = check_error_state(dir, offsets, count, size, !!(flags & INCREMENTAL));
 	igt_info("Captured %lu %"PRId64"-blobs out of a total of %lu\n",
@@ -607,6 +647,7 @@ static void prioinv(int fd, int dir, const intel_ctx_t *ctx,
 	igt_assert(pipe(link) == 0);
 	igt_fork(child, 1) {
 		const intel_ctx_t *ctx2;
+		int fence_out;
 		fd = gem_reopen_driver(fd);
 		igt_debug("Submitting large capture [%ld x %dMiB objects]\n",
 			  count, (int)(size >> 20));
@@ -618,11 +659,11 @@ static void prioinv(int fd, int dir, const intel_ctx_t *ctx,
 		/* Reopen the allocator in the new process. */
 		ahnd = get_reloc_ahnd(fd, ctx2->id);
 
-		free(__captureN(fd, dir, ahnd, ctx2, e, size, count, ASYNC));
+		free(__captureN(fd, dir, ahnd, ctx2, e, size, count, ASYNC, &fence_out));
 		put_ahnd(ahnd);
 
 		write(link[1], &fd, sizeof(fd)); /* wake the parent up */
-		igt_force_gpu_reset(fd);
+		wait_to_die(fence_out);
 		write(link[1], &fd, sizeof(fd)); /* wake the parent up */
 	}
 	read(link[0], &dummy, sizeof(dummy));
@@ -713,7 +754,7 @@ igt_main
 		gem_require_mmap_wc(fd);
 		igt_require(has_capture(fd));
 		ctx = intel_ctx_create_all_physical(fd);
-		igt_allow_hang(fd, ctx->id, HANG_ALLOW_CAPTURE);
+		igt_allow_hang(fd, ctx->id, HANG_ALLOW_CAPTURE | HANG_WANT_ENGINE_RESET);
 
 		dir = igt_sysfs_open(fd);
 		igt_require(igt_sysfs_set(dir, "error", "Begone!"));
-- 
2.25.1

