Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60689222D2C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 22:45:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C7916E0FB;
	Thu, 16 Jul 2020 20:45:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44DDE6E0FB;
 Thu, 16 Jul 2020 20:45:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21843286-1500050 
 for multiple; Thu, 16 Jul 2020 21:44:49 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 21:44:48 +0100
Message-Id: <20200716204448.737869-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.28.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_balancer: Race breadcrumb
 signaling against timeslicing
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

This is an attempt to chase down some preempt-to-busy races with
breadcrumb signaling on the virtual engines. By using more semaphore
spinners than available engines, we encourage very short timeslices, and
we make each batch of random duration to try and coincide the end of a
batch with the context being scheduled out.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tests/i915/gem_exec_balancer.c | 109 +++++++++++++++++++++++++++++++++
 1 file changed, 109 insertions(+)

diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
index c5c0055fc..e4d9e0464 100644
--- a/tests/i915/gem_exec_balancer.c
+++ b/tests/i915/gem_exec_balancer.c
@@ -2240,6 +2240,112 @@ static void hog(int i915)
 	gem_quiescent_gpu(i915);
 }
 
+static uint32_t sema_create(int i915, uint64_t addr, uint32_t **x)
+{
+	uint32_t handle = gem_create(i915, 4096);
+
+	*x = gem_mmap__device_coherent(i915, handle, 0, 4096, PROT_WRITE);
+	for (int n = 1; n <= 32; n++) {
+		uint32_t *cs = *x + n * 16;
+
+		*cs++ = MI_SEMAPHORE_WAIT |
+			MI_SEMAPHORE_POLL |
+			MI_SEMAPHORE_SAD_GTE_SDD |
+			(4 - 2);
+		*cs++ = n;
+		*cs++ = addr;
+		*cs++ = addr >> 32;
+
+		*cs++ = MI_BATCH_BUFFER_END;
+	}
+
+	return handle;
+}
+
+static uint32_t *sema(int i915, uint32_t ctx)
+{
+	uint32_t *ctl;
+	struct drm_i915_gem_exec_object2 batch = {
+		.handle = sema_create(i915, 64 << 20, &ctl),
+		.offset = 64 << 20,
+		.flags = EXEC_OBJECT_PINNED
+	};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&batch),
+		.buffer_count = 1,
+		.rsvd1 = gem_context_clone_with_engines(i915, ctx),
+	};
+	int64_t poll = 1;
+
+	for (int n = 1; n <= 32; n++) {
+		execbuf.batch_start_offset = 64 * n,
+		gem_execbuf(i915, &execbuf);
+		/* Force a breadcrumb to be installed on each request */
+		gem_wait(i915, batch.handle, &poll);
+	}
+
+	gem_context_destroy(i915, execbuf.rsvd1);
+
+	igt_assert(gem_bo_busy(i915, batch.handle));
+	gem_close(i915, batch.handle);
+
+	return ctl;
+}
+
+static void __waits(int i915, int timeout, uint32_t ctx, unsigned int count)
+{
+	uint32_t *semaphores[count + 1];
+
+	for (int i = 0; i <= count; i++)
+		semaphores[i] = sema(i915, ctx);
+
+	igt_until_timeout(timeout) {
+		int i = rand() % (count + 1);
+
+		if ((*semaphores[i] += rand() % 32) >= 32) {
+			munmap(semaphores[i], 4096);
+			semaphores[i] = sema(i915, ctx);
+		}
+	}
+
+	for (int i = 0; i <= count; i++) {
+		*semaphores[i] = 0xffffffff;
+		munmap(semaphores[i], 4096);
+	}
+}
+
+static void waits(int i915, int timeout)
+{
+	igt_require(gem_scheduler_has_preemption(i915));
+	igt_require(gem_scheduler_has_semaphores(i915));
+
+	for (int class = 0; class < 32; class++) {
+		struct i915_engine_class_instance *ci;
+		unsigned int count;
+		uint32_t ctx;
+
+		ci = list_engines(i915, 1u << class, &count);
+		if (!ci)
+			continue;
+
+		if (count < 2) {
+			free(ci);
+			continue;
+		}
+
+		ctx = load_balancer_create(i915, ci, count);
+
+		__waits(i915, timeout, ctx, count);
+
+		gem_context_destroy(i915, ctx);
+		igt_waitchildren();
+
+		free(ci);
+	}
+
+	gem_quiescent_gpu(i915);
+}
+
 static void nop(int i915)
 {
 	struct drm_i915_gem_exec_object2 batch = {
@@ -2729,6 +2835,9 @@ igt_main
 	igt_subtest("hog")
 		hog(i915);
 
+	igt_subtest("waits")
+		waits(i915, 5);
+
 	igt_subtest("smoke")
 		smoketest(i915, 20);
 
-- 
2.28.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
