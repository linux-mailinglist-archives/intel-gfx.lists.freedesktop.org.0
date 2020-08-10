Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15571240615
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Aug 2020 14:44:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D555A89C1B;
	Mon, 10 Aug 2020 12:44:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CC0E89C19;
 Mon, 10 Aug 2020 12:44:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22084460-1500050 
 for multiple; Mon, 10 Aug 2020 13:44:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Aug 2020 13:44:15 +0100
Message-Id: <20200810124415.601096-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/perf_pmu: Emit a semaphore to measure
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

Don't assume the kernel will emit a semaphore to synchronise between two
engine, and emit the semaphore ourselves for the basis of our
measurements. The purpose of the test is to try and ascertain the
accuracy of the two sampling methods, semaphore busyness uses register
polling, whereas the engine busyness may use ktime_t of the CS events.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Ramalingam C <ramalingam.c@intel.com>
---
 tests/i915/perf_pmu.c | 94 +++++++++++++++++++++++++++++--------------
 1 file changed, 64 insertions(+), 30 deletions(-)

diff --git a/tests/i915/perf_pmu.c b/tests/i915/perf_pmu.c
index 13e1bd93e..ecd4afbd6 100644
--- a/tests/i915/perf_pmu.c
+++ b/tests/i915/perf_pmu.c
@@ -650,6 +650,7 @@ no_sema(int gem_fd, const struct intel_execution_engine2 *e, unsigned int flags)
 #define MI_SEMAPHORE_WAIT	MI_INSTR(0x1c, 2) /* GEN8+ */
 #define   MI_SEMAPHORE_POLL		(1<<15)
 #define   MI_SEMAPHORE_SAD_GTE_SDD	(1<<12)
+#define   MI_SEMAPHORE_SAD_NEQ_SDD      (5 << 12)
 
 static void
 sema_wait(int gem_fd, const struct intel_execution_engine2 *e,
@@ -751,10 +752,39 @@ sema_wait(int gem_fd, const struct intel_execution_engine2 *e,
 	assert_within_epsilon(val[1] - val[0], slept, tolerance);
 }
 
+static uint32_t
+create_sema(int gem_fd, struct drm_i915_gem_relocation_entry *reloc)
+{
+	uint32_t cs[] = {
+		/* Reset our semaphore wait */
+		MI_STORE_DWORD_IMM,
+		0,
+		0,
+		1,
+
+		/* Wait until the semaphore value is set to 0 [by caller] */
+		MI_SEMAPHORE_WAIT | MI_SEMAPHORE_POLL | MI_SEMAPHORE_SAD_NEQ_SDD,
+		1,
+		0,
+		0,
+
+		MI_BATCH_BUFFER_END
+	};
+	uint32_t handle = gem_create(gem_fd, 4096);
+
+	memset(reloc, 0, 2 * sizeof(*reloc));
+	reloc[0].target_handle = handle;
+	reloc[0].offset = 64 + 1 * sizeof(uint32_t);
+	reloc[1].target_handle = handle;
+	reloc[1].offset = 64 + 6 * sizeof(uint32_t);
+
+	gem_write(gem_fd, handle, 64, cs, sizeof(cs));
+	return handle;
+}
+
 static void
 __sema_busy(int gem_fd, int pmu,
 	    const struct intel_execution_engine2 *e,
-	    const struct intel_execution_engine2 *signal,
 	    int sema_pct,
 	    int busy_pct)
 {
@@ -764,39 +794,54 @@ __sema_busy(int gem_fd, int pmu,
 	};
 	uint64_t total, sema, busy;
 	uint64_t start[2], val[2];
-	igt_spin_t *spin[2];
+	struct drm_i915_gem_relocation_entry reloc[2];
+	struct drm_i915_gem_exec_object2 obj = {
+		.handle = create_sema(gem_fd, reloc),
+		.relocation_count = 2,
+		.relocs_ptr = to_user_pointer(reloc),
+	};
+	struct drm_i915_gem_execbuffer2 eb = {
+		.batch_start_offset = 64,
+		.buffer_count = 1,
+		.buffers_ptr = to_user_pointer(&obj),
+		.flags = e->flags,
+	};
+	igt_spin_t *spin;
+	uint32_t *map;
 
 	/* Time spent being busy includes time waiting on semaphores */
 	igt_assert(busy_pct >= sema_pct);
 
 	gem_quiescent_gpu(gem_fd);
 
-	spin[0] = igt_spin_new(gem_fd,
-			       .engine = signal->flags,
-			       .flags = IGT_SPIN_FENCE_OUT | IGT_SPIN_POLL_RUN);
-	spin[1] = igt_spin_new(gem_fd,
-			       .engine = e->flags,
-			       .fence = spin[0]->out_fence,
-			       .flags = IGT_SPIN_FENCE_IN);
+	map = gem_mmap__wc(gem_fd, obj.handle, 0, 4096, PROT_WRITE);
+	gem_execbuf(gem_fd, &eb);
+	spin = igt_spin_new(gem_fd, .engine = e->flags);
 
-	igt_spin_busywait_until_started(spin[0]);
+	/* Wait until the batch is executed and the semaphore is busy-waiting */
+	while (!READ_ONCE(*map) && gem_bo_busy(gem_fd, obj.handle))
+		;
+	igt_assert(gem_bo_busy(gem_fd, obj.handle));
+	gem_close(gem_fd, obj.handle);
 
 	total = pmu_read_multi(pmu, 2, start);
 
 	sema = measured_usleep(batch_duration_ns * sema_pct / 100 / 1000);
-	igt_spin_end(spin[0]);
+	*map = 0; __sync_synchronize();
 	busy = measured_usleep(batch_duration_ns * (busy_pct - sema_pct) / 100 / 1000);
-	igt_spin_end(spin[1]);
+	igt_spin_end(spin);
 	measured_usleep(batch_duration_ns * (100 - busy_pct) / 100 / 1000);
 
 	total = pmu_read_multi(pmu, 2, val) - total;
+	igt_spin_free(gem_fd, spin);
+	munmap(map, 4096);
 
 	busy += sema;
 	val[SEMA] -= start[SEMA];
 	val[BUSY] -= start[BUSY];
 
-	igt_info("%s<-%s, target: {%.1f%% [%d], %.1f%% [%d]}, measured: {%.1f%%, %.1f%%}\n",
-		 e->name, signal->name,
+	igt_info("%s, target: {%.1f%% [%d], %.1f%% [%d]}, measured: {%.1f%%, %.1f%%}\n",
+		 e->name,
 		 sema * 100. / total, sema_pct,
 		 busy * 100. / total, busy_pct,
 		 val[SEMA] * 100. / total,
@@ -809,8 +854,6 @@ __sema_busy(int gem_fd, int pmu,
 		     val[SEMA] * 1e-3, val[SEMA] * 100. / total,
 		     val[BUSY] * 1e-3, val[BUSY] * 100. / total);
 
-	igt_spin_free(gem_fd, spin[1]);
-	igt_spin_free(gem_fd, spin[0]);
 }
 
 static void
@@ -818,25 +861,16 @@ sema_busy(int gem_fd,
 	  const struct intel_execution_engine2 *e,
 	  unsigned int flags)
 {
-	const struct intel_execution_engine2 *signal;
 	int fd;
 
-	igt_require(gem_scheduler_has_semaphores(gem_fd));
-	igt_require(gem_scheduler_has_preemption(gem_fd));
+	igt_require(intel_gen(intel_get_drm_devid(gem_fd)) >= 8);
 
-	fd = open_group(gem_fd,
-			I915_PMU_ENGINE_SEMA(e->class, e->instance), -1);
+	fd = open_group(gem_fd, I915_PMU_ENGINE_SEMA(e->class, e->instance), -1);
 	open_group(gem_fd, I915_PMU_ENGINE_BUSY(e->class, e->instance), fd);
 
-	__for_each_physical_engine(gem_fd, signal) {
-		if (e->class == signal->class &&
-		    e->instance == signal->instance)
-			continue;
-
-		__sema_busy(gem_fd, fd, e, signal, 50, 100);
-		__sema_busy(gem_fd, fd, e, signal, 25, 50);
-		__sema_busy(gem_fd, fd, e, signal, 75, 75);
-	}
+	__sema_busy(gem_fd, fd, e, 50, 100);
+	__sema_busy(gem_fd, fd, e, 25, 50);
+	__sema_busy(gem_fd, fd, e, 75, 75);
 
 	close(fd);
 }
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
