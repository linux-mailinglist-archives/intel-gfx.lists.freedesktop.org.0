Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7EC1DB950
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 18:30:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E79456E871;
	Wed, 20 May 2020 16:30:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1F3F6E871;
 Wed, 20 May 2020 16:30:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21243470-1500050 
 for multiple; Wed, 20 May 2020 17:29:47 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 17:29:46 +0100
Message-Id: <20200520162946.2602017-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.27.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_schedule: Verify
 timeslicing between submit-fence
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use a spinner to create a fence, and then use that as to synchronise
another batch to cancel the spinner.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tests/i915/gem_exec_schedule.c | 121 +++++++++++++++++++++++++++++++--
 1 file changed, 116 insertions(+), 5 deletions(-)

diff --git a/tests/i915/gem_exec_schedule.c b/tests/i915/gem_exec_schedule.c
index 62e387cc1..0a7deb5a1 100644
--- a/tests/i915/gem_exec_schedule.c
+++ b/tests/i915/gem_exec_schedule.c
@@ -65,6 +65,11 @@
 
 IGT_TEST_DESCRIPTION("Check that we can control the order of execution");
 
+static unsigned int offset_in_page(void *addr)
+{
+	return (uintptr_t)addr & 4095;
+}
+
 static inline
 uint32_t __sync_read_u32(int fd, uint32_t handle, uint64_t offset)
 {
@@ -670,6 +675,110 @@ static void lateslice(int i915, unsigned int engine)
 	igt_spin_free(i915, spin[1]);
 }
 
+static void cancel_spinner(int i915,
+			   uint32_t ctx, unsigned int engine,
+			   igt_spin_t *spin)
+{
+	struct drm_i915_gem_exec_object2 obj = {
+		.handle = gem_create(i915, 4096),
+	};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+		.flags = engine | I915_EXEC_FENCE_SUBMIT,
+		.rsvd1 = ctx, /* same vm */
+		.rsvd2 = spin->out_fence,
+	};
+	uint32_t *map, *cs;
+
+	map = gem_mmap__device_coherent(i915, obj.handle, 0, 4096, PROT_WRITE);
+	cs = map;
+
+	*cs++ = MI_STORE_DWORD_IMM;
+	*cs++ = spin->obj[IGT_SPIN_BATCH].offset +
+		offset_in_page(spin->condition);
+	*cs++ = spin->obj[IGT_SPIN_BATCH].offset >> 32;
+	*cs++ = MI_BATCH_BUFFER_END;
+
+	*cs++ = MI_BATCH_BUFFER_END;
+	munmap(map, 4096);
+
+	gem_execbuf(i915, &execbuf);
+	gem_close(i915, obj.handle);
+}
+
+static void submit_slice(int i915,
+			 const struct intel_execution_engine2 *e,
+			 unsigned int flags)
+#define EARLY_SUBMIT 0x1
+#define LATE_SUBMIT 0x2
+{
+	I915_DEFINE_CONTEXT_PARAM_ENGINES(engines , 1) = {};
+	const struct intel_execution_engine2 *cancel;
+	struct drm_i915_gem_context_param param = {
+		.ctx_id = gem_context_create(i915),
+		.param = I915_CONTEXT_PARAM_ENGINES,
+		.value = to_user_pointer(&engines),
+		.size = sizeof(engines),
+	};
+
+	/*
+	 * When using a submit fence, we do not want to block concurrent work,
+	 * especially when that work is coperating with the spinner.
+	 */
+
+	igt_require(gem_scheduler_has_semaphores(i915));
+	igt_require(gem_scheduler_has_preemption(i915));
+	igt_require(intel_gen(intel_get_drm_devid(i915)) >= 8);
+
+	__for_each_physical_engine(i915, cancel) {
+		igt_spin_t *bg, *spin;
+		int timeline = -1;
+		int fence = -1;
+
+		if (!gem_class_can_store_dword(i915, cancel->class))
+			continue;
+
+		igt_debug("Testing cancellation from %s\n", e->name);
+
+		bg = igt_spin_new(i915, .engine = e->flags);
+
+		if (flags & LATE_SUBMIT) {
+			timeline = sw_sync_timeline_create();
+			fence = sw_sync_timeline_create_fence(timeline, 1);
+		}
+
+		engines.engines[0].engine_class = e->class;
+		engines.engines[0].engine_instance = e->instance;
+		gem_context_set_param(i915, &param);
+		spin = igt_spin_new(i915, .ctx = param.ctx_id,
+				    .fence = fence,
+				    .flags =
+				    IGT_SPIN_POLL_RUN |
+				    (flags & LATE_SUBMIT ? IGT_SPIN_FENCE_IN : 0) |
+				    IGT_SPIN_FENCE_OUT);
+		if (fence != -1)
+			close(fence);
+
+		if (flags & EARLY_SUBMIT)
+			igt_spin_busywait_until_started(spin);
+
+		engines.engines[0].engine_class = cancel->class;
+		engines.engines[0].engine_instance = cancel->instance;
+		gem_context_set_param(i915, &param);
+		cancel_spinner(i915, param.ctx_id, 0, spin);
+
+		if (timeline != -1)
+			close(timeline);
+
+		gem_sync(i915, spin->handle);
+		igt_spin_free(i915, spin);
+		igt_spin_free(i915, bg);
+	}
+
+	gem_context_destroy(i915, param.ctx_id);
+}
+
 static uint32_t __batch_create(int i915, uint32_t offset)
 {
 	const uint32_t bbe = MI_BATCH_BUFFER_END;
@@ -812,11 +921,6 @@ static void semaphore_codependency(int i915)
 	}
 }
 
-static unsigned int offset_in_page(void *addr)
-{
-	return (uintptr_t)addr & 4095;
-}
-
 static void semaphore_resolve(int i915)
 {
 	const struct intel_execution_engine2 *e;
@@ -2454,6 +2558,13 @@ igt_main
 		test_each_engine("lateslice", fd, e)
 			lateslice(fd, e->flags);
 
+		test_each_engine("submit-early-slice", fd, e)
+			submit_slice(fd, e, EARLY_SUBMIT);
+		test_each_engine("submit-golden-slice", fd, e)
+			submit_slice(fd, e, 0);
+		test_each_engine("submit-late-slice", fd, e)
+			submit_slice(fd, e, LATE_SUBMIT);
+
 		igt_subtest("semaphore-user")
 			semaphore_userlock(fd);
 		igt_subtest("semaphore-codependency")
-- 
2.27.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
