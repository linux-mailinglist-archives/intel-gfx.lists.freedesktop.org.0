Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D93E4446AC
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 18:07:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A158B73C73;
	Wed,  3 Nov 2021 17:07:32 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D435D73C63;
 Wed,  3 Nov 2021 17:07:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="231501439"
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="231501439"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 10:04:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="449892040"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga006.jf.intel.com with ESMTP; 03 Nov 2021 10:04:50 -0700
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Wed,  3 Nov 2021 10:04:45 -0700
Message-Id: <20211103170449.1614314-5-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211103170449.1614314-1-John.C.Harrison@Intel.com>
References: <20211103170449.1614314-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 i-g-t 4/8] tests/i915/gem_exec_capture: Use
 contexts and engines properly
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

Some of the capture tests were using explicit contexts, some not. Some
were poking the per engine pre-emption timeout, some not. This would
lead to sporadic failures due to random timeouts, contexts being
banned depending upon how many subtests were run and/or how many
engines a given platform has, and other such failures.

So, update all tests to be conistent.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 tests/i915/gem_exec_capture.c | 79 +++++++++++++++++++++++++----------
 1 file changed, 57 insertions(+), 22 deletions(-)

diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
index c85c198f7..11c348d3b 100644
--- a/tests/i915/gem_exec_capture.c
+++ b/tests/i915/gem_exec_capture.c
@@ -204,8 +204,19 @@ static int check_error_state(int dir, struct offset *obj_offsets, int obj_count,
 	return blobs;
 }
 
+static void configure_hangs(int fd, const struct intel_execution_engine2 *e, int ctxt_id)
+{
+	/* Ensure fast hang detection */
+	gem_engine_property_printf(fd, e->name, "preempt_timeout_ms", "%d", 250);
+	gem_engine_property_printf(fd, e->name, "heartbeat_interval_ms", "%d", 500);
+
+	/* Allow engine based resets and disable banning */
+	igt_allow_hang(fd, ctxt_id, HANG_ALLOW_CAPTURE);
+}
+
 static void __capture1(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
-		       unsigned ring, uint32_t target, uint64_t target_size)
+		       const struct intel_execution_engine2 *e,
+		       uint32_t target, uint64_t target_size)
 {
 	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	struct drm_i915_gem_exec_object2 obj[4];
@@ -219,6 +230,8 @@ static void __capture1(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
 	struct offset offset;
 	int i;
 
+	configure_hangs(fd, e, ctx->id);
+
 	memset(obj, 0, sizeof(obj));
 	obj[SCRATCH].handle = gem_create(fd, 4096);
 	obj[SCRATCH].flags = EXEC_OBJECT_WRITE;
@@ -297,7 +310,7 @@ static void __capture1(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
 	memset(&execbuf, 0, sizeof(execbuf));
 	execbuf.buffers_ptr = (uintptr_t)obj;
 	execbuf.buffer_count = ARRAY_SIZE(obj);
-	execbuf.flags = ring;
+	execbuf.flags = e->flags;
 	if (gen > 3 && gen < 6)
 		execbuf.flags |= I915_EXEC_SECURE;
 	execbuf.rsvd1 = ctx->id;
@@ -326,7 +339,8 @@ static void __capture1(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
 	gem_close(fd, obj[SCRATCH].handle);
 }
 
-static void capture(int fd, int dir, const intel_ctx_t *ctx, unsigned ring)
+static void capture(int fd, int dir, const intel_ctx_t *ctx,
+		    const struct intel_execution_engine2 *e)
 {
 	uint32_t handle;
 	uint64_t ahnd;
@@ -335,7 +349,7 @@ static void capture(int fd, int dir, const intel_ctx_t *ctx, unsigned ring)
 	handle = gem_create(fd, obj_size);
 	ahnd = get_reloc_ahnd(fd, ctx->id);
 
-	__capture1(fd, dir, ahnd, ctx, ring, handle, obj_size);
+	__capture1(fd, dir, ahnd, ctx, e, handle, obj_size);
 
 	gem_close(fd, handle);
 	put_ahnd(ahnd);
@@ -355,9 +369,9 @@ static int cmp(const void *A, const void *B)
 }
 
 static struct offset *
-__captureN(int fd, int dir, uint64_t ahnd, unsigned ring,
-	      unsigned int size, int count,
-	      unsigned int flags)
+__captureN(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
+	   const struct intel_execution_engine2 *e,
+	   unsigned int size, int count, unsigned int flags)
 #define INCREMENTAL 0x1
 #define ASYNC 0x2
 {
@@ -369,6 +383,8 @@ __captureN(int fd, int dir, uint64_t ahnd, unsigned ring,
 	struct offset *offsets;
 	int i;
 
+	configure_hangs(fd, e, ctx->id);
+
 	offsets = calloc(count, sizeof(*offsets));
 	igt_assert(offsets);
 
@@ -470,9 +486,10 @@ __captureN(int fd, int dir, uint64_t ahnd, unsigned ring,
 	memset(&execbuf, 0, sizeof(execbuf));
 	execbuf.buffers_ptr = (uintptr_t)obj;
 	execbuf.buffer_count = count + 2;
-	execbuf.flags = ring;
+	execbuf.flags = e->flags;
 	if (gen > 3 && gen < 6)
 		execbuf.flags |= I915_EXEC_SECURE;
+	execbuf.rsvd1 = ctx->id;
 
 	igt_assert(!READ_ONCE(*seqno));
 	gem_execbuf(fd, &execbuf);
@@ -503,12 +520,27 @@ __captureN(int fd, int dir, uint64_t ahnd, unsigned ring,
 	return offsets;
 }
 
+#define find_first_available_engine(fd, ctx, e) \
+	do { \
+		ctx = intel_ctx_create_all_physical(fd); \
+		igt_assert(ctx); \
+		for_each_ctx_engine(fd, ctx, e) \
+			for_each_if(gem_class_can_store_dword(fd, e->class)) \
+				break; \
+		igt_assert(e); \
+		configure_hangs(fd, e, ctx->id); \
+	} while(0)
+
 static void many(int fd, int dir, uint64_t size, unsigned int flags)
 {
+	const struct intel_execution_engine2 *e;
+	const intel_ctx_t *ctx;
 	uint64_t ram, gtt, ahnd;
 	unsigned long count, blobs;
 	struct offset *offsets;
 
+	find_first_available_engine(fd, ctx, e);
+
 	gtt = gem_aperture_size(fd) / size;
 	ram = (intel_get_avail_ram_mb() << 20) / size;
 	igt_debug("Available objects in GTT:%"PRIu64", RAM:%"PRIu64"\n",
@@ -518,9 +550,9 @@ static void many(int fd, int dir, uint64_t size, unsigned int flags)
 	igt_require(count > 1);
 
 	intel_require_memory(count, size, CHECK_RAM);
-	ahnd = get_reloc_ahnd(fd, 0);
+	ahnd = get_reloc_ahnd(fd, ctx->id);
 
-	offsets = __captureN(fd, dir, ahnd, 0, size, count, flags);
+	offsets = __captureN(fd, dir, ahnd, ctx, e, size, count, flags);
 
 	blobs = check_error_state(dir, offsets, count, size, !!(flags & INCREMENTAL));
 	igt_info("Captured %lu %"PRId64"-blobs out of a total of %lu\n",
@@ -531,7 +563,7 @@ static void many(int fd, int dir, uint64_t size, unsigned int flags)
 }
 
 static void prioinv(int fd, int dir, const intel_ctx_t *ctx,
-		    unsigned ring, const char *name)
+		    const struct intel_execution_engine2 *e)
 {
 	const uint32_t bbe = MI_BATCH_BUFFER_END;
 	struct drm_i915_gem_exec_object2 obj = {
@@ -540,7 +572,7 @@ static void prioinv(int fd, int dir, const intel_ctx_t *ctx,
 	struct drm_i915_gem_execbuffer2 execbuf = {
 		.buffers_ptr = to_user_pointer(&obj),
 		.buffer_count = 1,
-		.flags = ring,
+		.flags = e->flags,
 		.rsvd1 = ctx->id,
 	};
 	int64_t timeout = NSEC_PER_SEC; /* 1s, feeling generous, blame debug */
@@ -555,10 +587,6 @@ static void prioinv(int fd, int dir, const intel_ctx_t *ctx,
 	igt_require(igt_params_set(fd, "reset", "%u", -1)); /* engine resets! */
 	igt_require(gem_gpu_reset_type(fd) > 1);
 
-	/* Needs to be fast enough for the hangcheck to return within 1s */
-	igt_require(gem_engine_property_printf(fd, name, "preempt_timeout_ms", "%d", 0) > 0);
-	gem_engine_property_printf(fd, name, "preempt_timeout_ms", "%d", 500);
-
 	gtt = gem_aperture_size(fd) / size;
 	ram = (intel_get_avail_ram_mb() << 20) / size;
 	igt_debug("Available objects in GTT:%"PRIu64", RAM:%"PRIu64"\n",
@@ -576,15 +604,19 @@ static void prioinv(int fd, int dir, const intel_ctx_t *ctx,
 
 	igt_assert(pipe(link) == 0);
 	igt_fork(child, 1) {
+		const intel_ctx_t *ctx2;
 		fd = gem_reopen_driver(fd);
 		igt_debug("Submitting large capture [%ld x %dMiB objects]\n",
 			  count, (int)(size >> 20));
 
+		ctx2 = intel_ctx_create_all_physical(fd);
+		igt_assert(ctx2);
+
 		intel_allocator_init();
 		/* Reopen the allocator in the new process. */
-		ahnd = get_reloc_ahnd(fd, 0);
+		ahnd = get_reloc_ahnd(fd, ctx2->id);
 
-		free(__captureN(fd, dir, ahnd, ring, size, count, ASYNC));
+		free(__captureN(fd, dir, ahnd, ctx2, e, size, count, ASYNC));
 		put_ahnd(ahnd);
 
 		write(link[1], &fd, sizeof(fd)); /* wake the parent up */
@@ -615,18 +647,21 @@ static void prioinv(int fd, int dir, const intel_ctx_t *ctx,
 
 static void userptr(int fd, int dir)
 {
-	const intel_ctx_t *ctx = intel_ctx_0(fd);
+	const struct intel_execution_engine2 *e;
+	const intel_ctx_t *ctx;
 	uint32_t handle;
 	uint64_t ahnd;
 	void *ptr;
 	int obj_size = 4096;
 
+	find_first_available_engine(fd, ctx, e);
+
 	igt_assert(posix_memalign(&ptr, obj_size, obj_size) == 0);
 	memset(ptr, 0, obj_size);
 	igt_require(__gem_userptr(fd, ptr, obj_size, 0, 0, &handle) == 0);
 	ahnd = get_reloc_ahnd(fd, ctx->id);
 
-	__capture1(fd, dir, ahnd, intel_ctx_0(fd), 0, handle, obj_size);
+	__capture1(fd, dir, ahnd, ctx, e, handle, obj_size);
 
 	gem_close(fd, handle);
 	put_ahnd(ahnd);
@@ -684,7 +719,7 @@ igt_main
 	}
 
 	test_each_engine("capture", fd, ctx, e)
-		capture(fd, dir, ctx, e->flags);
+		capture(fd, dir, ctx, e);
 
 	igt_subtest_f("many-4K-zero") {
 		igt_require(gem_can_store_dword(fd, 0));
@@ -719,7 +754,7 @@ igt_main
 	}
 
 	test_each_engine("pi", fd, ctx, e)
-		prioinv(fd, dir, ctx, e->flags, e->name);
+		prioinv(fd, dir, ctx, e);
 
 	igt_fixture {
 		close(dir);
-- 
2.25.1

