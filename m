Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 464BF1E41A5
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 14:11:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A354A6E2E4;
	Wed, 27 May 2020 12:11:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D83696E2E4
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 12:11:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21308829-1500050 
 for multiple; Wed, 27 May 2020 13:11:43 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 May 2020 13:11:42 +0100
Message-Id: <20200527121142.643469-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.27.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_balancer: Randomise bonded
 submission
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Randomly submit a paired spinner and its cancellation as a bonded
(submit fence) pair. Apply congestion to the engine with more bonded
pairs to see if the execution order fails. If we prevent a cancellation
from running, then the spinner will remain spinning forever.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_balancer.c | 96 ++++++++++++++++++++++++++++++++++
 1 file changed, 96 insertions(+)

diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
index 80ae82416..6d82e439b 100644
--- a/tests/i915/gem_exec_balancer.c
+++ b/tests/i915/gem_exec_balancer.c
@@ -1154,6 +1154,99 @@ static void bonded_semaphore(int i915)
 	gem_context_destroy(i915, ctx);
 }
 
+static void __bonded_dual(int i915,
+			  const struct i915_engine_class_instance *siblings,
+			  unsigned int count)
+{
+	struct drm_i915_gem_exec_object2 batch = {};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&batch),
+		.buffer_count = 1,
+	};
+	uint32_t A, B;
+
+	A = gem_context_create(i915);
+	set_load_balancer(i915, A, siblings, count, NULL);
+
+	B = gem_context_create(i915);
+	set_load_balancer(i915, B, siblings, count, NULL);
+
+	igt_until_timeout(5) {
+		unsigned int master = rand() % count + 1;
+		int timeline, fence;
+		igt_spin_t *a, *b;
+
+		timeline = sw_sync_timeline_create();
+		fence = sw_sync_timeline_create_fence(timeline, 1);
+
+		a = igt_spin_new(i915, A,
+				 .engine = master,
+				 .fence = fence,
+				 .flags = (IGT_SPIN_FENCE_IN |
+					   IGT_SPIN_POLL_RUN |
+					   IGT_SPIN_FENCE_OUT));
+		b = igt_spin_new(i915, B,
+				 .engine = master,
+				 .fence = fence,
+				 .flags = (IGT_SPIN_FENCE_IN |
+					   IGT_SPIN_POLL_RUN |
+					   IGT_SPIN_FENCE_OUT));
+
+		close(fence);
+
+		if (rand() % 1)
+			igt_swap(a, b);
+
+		batch.handle = create_semaphore_to_spinner(i915, a);
+		execbuf.rsvd2 = a->out_fence;
+		execbuf.flags = I915_EXEC_FENCE_SUBMIT;
+		execbuf.flags |= rand() % count + 1;
+		gem_execbuf(i915, &execbuf);
+		gem_close(i915, batch.handle);
+
+		batch.handle = create_semaphore_to_spinner(i915, b);
+		execbuf.rsvd2 = b->out_fence;
+		execbuf.flags = I915_EXEC_FENCE_SUBMIT;
+		execbuf.flags |= rand() % count + 1;
+		gem_execbuf(i915, &execbuf);
+		gem_close(i915, batch.handle);
+
+		close(timeline);
+
+		gem_sync(i915, a->handle);
+		gem_sync(i915, b->handle);
+
+		igt_spin_free(i915, a);
+		igt_spin_free(i915, b);
+	}
+
+	gem_context_destroy(i915, A);
+	gem_context_destroy(i915, B);
+}
+
+static void bonded_dual(int i915)
+{
+	/*
+	 * The purpose of bonded submission is to execute one or more requests
+	 * concurrently. However, the very nature of that requires coordinated
+	 * submission across multiple engines.
+	 */
+	igt_require(gem_scheduler_has_preemption(i915));
+
+	for (int class = 1; class < 32; class++) {
+		struct i915_engine_class_instance *siblings;
+		unsigned int count;
+
+		siblings = list_engines(i915, 1u << class, &count);
+		if (count > 1) {
+			igt_fork(child, count)
+				__bonded_dual(i915, siblings, count);
+			igt_waitchildren();
+		}
+		free(siblings);
+	}
+}
+
 static void __bonded_nohang(int i915, uint32_t ctx,
 			    const struct i915_engine_class_instance *siblings,
 			    unsigned int count,
@@ -2284,6 +2377,9 @@ igt_main
 	igt_subtest("bonded-semaphore")
 		bonded_semaphore(i915);
 
+	igt_subtest("bonded-dual")
+		bonded_dual(i915);
+
 	igt_fixture {
 		igt_stop_hang_detector();
 	}
-- 
2.27.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
