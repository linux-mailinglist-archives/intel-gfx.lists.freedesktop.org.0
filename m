Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5D81DCAF1
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 12:23:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67A4D6E10E;
	Thu, 21 May 2020 10:23:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67A876E10E;
 Thu, 21 May 2020 10:22:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21245848-1500050 
 for multiple; Thu, 21 May 2020 11:22:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 May 2020 11:22:48 +0100
Message-Id: <20200521102248.3157266-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.27.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_balancer: Exercise stalls
 of bonded pairs
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

Broadwell doesn't allow preemption and so a request must complete within
a hangcheck period or be declared hung. A bonded request may be
submitted before it's master is ready to run, and if preemption is
disabled there is a danger that wait may be charged against the bond,
rather than the culprit that is causing the master to hang.

This test tries to stall the master by blocking it with a high priority
spinner (or a queue of them) and verifies that we do not accidentally
reset the bonds.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tests/i915/gem_exec_balancer.c | 108 +++++++++++++++++++++++++++++++--
 1 file changed, 104 insertions(+), 4 deletions(-)

diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
index 573d09545..19543088f 100644
--- a/tests/i915/gem_exec_balancer.c
+++ b/tests/i915/gem_exec_balancer.c
@@ -1154,6 +1154,95 @@ static void bonded_semaphore(int i915)
 	gem_context_destroy(i915, ctx);
 }
 
+static void __bonded_nohang(int i915, uint32_t ctx,
+			    const struct i915_engine_class_instance *siblings,
+			    unsigned int count,
+			    unsigned int flags)
+#define NOHANG 0x1
+{
+	struct drm_i915_gem_exec_object2 batch = {
+		.handle = batch_create(i915),
+	};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&batch),
+		.buffer_count = 1,
+		.rsvd1 = ctx,
+	};
+	igt_spin_t *time, *spin;
+	uint32_t load;
+
+	load = gem_context_create(i915);
+	gem_context_set_priority(i915, load, 1023);
+	set_load_balancer(i915, load, siblings, count, NULL);
+
+	spin = igt_spin_new(i915, load, .engine = 1);
+
+	/* Master on engine 1, stuck behind a spinner */
+	execbuf.flags = 1 | I915_EXEC_FENCE_OUT;
+	gem_execbuf_wr(i915, &execbuf);
+
+	/* Bond on engine 2, engine clear bond can be submitted immediately */
+	execbuf.rsvd2 >>= 32;
+	execbuf.flags = 2 | I915_EXEC_FENCE_SUBMIT | I915_EXEC_FENCE_OUT;
+	gem_execbuf_wr(i915, &execbuf);
+
+	igt_debugfs_dump(i915, "i915_engine_info");
+
+	/* The master will remain blocked until the spinner is reset */
+	time = igt_spin_new(i915); /* rcs0 */
+	while (gem_bo_busy(i915, time->handle)) {
+		igt_spin_t *next;
+
+		if (flags & NOHANG) {
+			/* Keep replacing spin, so that it doesn't hang */
+			next = igt_spin_new(i915, load, .engine = 1);
+			igt_spin_free(i915, spin);
+			spin = next;
+		}
+
+		if (!gem_bo_busy(i915, batch.handle))
+			break;
+	}
+	igt_spin_free(i915, time);
+	igt_spin_free(i915, spin);
+
+	/* Check the bonded pair completed were not declared hung */
+	igt_assert_eq(sync_fence_status(execbuf.rsvd2 & 0xffffffff), 1);
+	igt_assert_eq(sync_fence_status(execbuf.rsvd2 >> 32), 1);
+
+	close(execbuf.rsvd2);
+	close(execbuf.rsvd2 >> 32);
+
+	gem_context_destroy(i915, load);
+	gem_close(i915, batch.handle);
+}
+
+static void bonded_nohang(int i915, unsigned int flags)
+{
+	uint32_t ctx;
+
+	/*
+	 * We try and trick ourselves into declaring a bonded request as
+	 * hung by preventing the master from running [after submission].
+	 */
+
+	igt_require(gem_scheduler_has_semaphores(i915));
+
+	ctx = gem_context_create(i915);
+
+	for (int class = 1; class < 32; class++) {
+		struct i915_engine_class_instance *siblings;
+		unsigned int count;
+
+		siblings = list_engines(i915, 1u << class, &count);
+		if (count > 1)
+			__bonded_nohang(i915, ctx, siblings, count, flags);
+		free(siblings);
+	}
+
+	gem_context_destroy(i915, ctx);
+}
+
 static void indices(int i915)
 {
 	I915_DEFINE_CONTEXT_PARAM_ENGINES(engines, I915_EXEC_RING_MASK + 1);
@@ -2199,11 +2288,22 @@ igt_main
 		igt_stop_hang_detector();
 	}
 
-	igt_subtest("hang") {
-		igt_hang_t hang = igt_allow_hang(i915, 0, 0);
+	igt_subtest_group {
+		igt_hang_t  hang;
+
+		igt_fixture
+			hang = igt_allow_hang(i915, 0, 0);
+
+		igt_subtest("bonded-false-hang")
+			bonded_nohang(i915, NOHANG);
+
+		igt_subtest("bonded-true-hang")
+			bonded_nohang(i915, 0);
 
-		hangme(i915);
+		igt_fixture
+			igt_disallow_hang(i915, hang);
 
-		igt_disallow_hang(i915, hang);
+		igt_subtest("hang")
+			hangme(i915);
 	}
 }
-- 
2.27.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
