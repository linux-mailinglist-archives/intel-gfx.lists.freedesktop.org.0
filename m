Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 788351D2E56
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 13:30:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39BEC6E329;
	Thu, 14 May 2020 11:30:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12BAE6E329;
 Thu, 14 May 2020 11:30:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21198317-1500050 
 for multiple; Thu, 14 May 2020 12:29:42 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 May 2020 12:29:41 +0100
Message-Id: <20200514112941.1018421-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_balancer: Force timeslicing
 of the virtual request
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

Investigate the impact of timeslicing on the virtal request, both with
independent and dependent workloads.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tests/i915/gem_exec_balancer.c | 101 +++++++++++++++++++++++++++++++++
 1 file changed, 101 insertions(+)

diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
index d4944e3f1..607f1dc38 100644
--- a/tests/i915/gem_exec_balancer.c
+++ b/tests/i915/gem_exec_balancer.c
@@ -1531,6 +1531,104 @@ static void full(int i915, unsigned int flags)
 	gem_quiescent_gpu(i915);
 }
 
+static void sliced(int i915)
+{
+	/*
+	 * Let's investigate what happens when the virtual request is
+	 * timesliced away.
+	 *
+	 * If the engine is busy with independent work, we want the virtual
+	 * request to hop over to an idle engine (within its balancing set).
+	 * However, if the work is dependent upon the virtual request,
+	 * we most certainly do not want to reschedule that work ahead of
+	 * the virtual request. [If we did, we should still have the saving
+	 * grace of being able to move the virual request to another engine
+	 * and so run both in parallel.] If we do neither, and get stuck
+	 * on the dependent work and never run the virtual request, we hang.
+	 */
+
+	igt_require(gem_scheduler_has_preemption(i915));
+	igt_require(gem_scheduler_has_semaphores(i915));
+
+	for (int class = 0; class < 32; class++) {
+		struct i915_engine_class_instance *ci;
+		int64_t timeout = NSEC_PER_SEC;
+		igt_spin_t *virtual, **load;
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
+		load = calloc(count, sizeof(*load));
+		igt_assert(load);
+
+		ctx = load_balancer_create(i915, ci, count);
+
+		/* Independent load */
+		virtual = igt_spin_new(i915, ctx,
+				       .flags = IGT_SPIN_POLL_RUN);
+		igt_spin_busywait_until_started(virtual);
+		for (int i = 0; i < count; i++) {
+			load[i] = igt_spin_new(i915, ctx,
+					       .engine = i + 1,
+					       .flags = IGT_SPIN_POLL_RUN);
+			igt_spin_busywait_until_started(load[i]);
+		}
+		/*
+		 * As we waited until all requests started, and we
+		 * oversubscribed the engines, we know that we must have
+		 * forced the virtual request to be timesliced away.
+		 *
+		 * We then expect for it to receive a timeslice on congested
+		 * engines, so that the spinned completes quickly.
+		 */
+		igt_spin_end(virtual);
+		igt_assert_eq(gem_wait(i915, virtual->handle, &timeout), 0);
+
+		for (int i = 0; i < count; i++)
+			igt_spin_free(i915, load[i]);
+		igt_spin_free(i915, virtual);
+
+		/* Dependent load */
+		virtual = igt_spin_new(i915, ctx, .engine = 0,
+				       .flags = (IGT_SPIN_FENCE_OUT |
+						 IGT_SPIN_POLL_RUN));
+		for (int i = 0; i < count; i++) {
+			load[i] = igt_spin_new(i915, ctx,
+					       .engine = i + 1,
+					       .fence = virtual->out_fence,
+					       .flags = IGT_SPIN_FENCE_IN);
+			/*
+			 * We could wait until load[i] starts, but we do not
+			 * want to mandate that the scheduler must evict
+			 * the virtual request, as load[i] depends on
+			 * the virtual request.
+			 */
+		}
+
+		/* Wait long enough for the virtual timeslice [ms] to expire */
+		igt_spin_busywait_until_started(virtual);
+		usleep(250 * 1000); /* 250ms */
+
+		igt_spin_end(virtual);
+		igt_assert_eq(sync_fence_wait(virtual->out_fence, 1000), 0);
+		igt_assert_eq(sync_fence_status(virtual->out_fence), 1);
+
+		gem_context_destroy(i915, ctx);
+		free(load);
+		free(ci);
+	}
+
+	gem_quiescent_gpu(i915);
+}
+
 static void nop(int i915)
 {
 	struct drm_i915_gem_exec_object2 batch = {
@@ -2014,6 +2112,9 @@ igt_main
 	igt_subtest("semaphore")
 		semaphore(i915);
 
+	igt_subtest("sliced")
+		sliced(i915);
+
 	igt_subtest("smoke")
 		smoketest(i915, 20);
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
