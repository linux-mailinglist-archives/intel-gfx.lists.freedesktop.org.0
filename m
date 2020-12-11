Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D514F2D6C86
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 01:32:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 898716E5B4;
	Fri, 11 Dec 2020 00:32:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61AB86E5B0;
 Fri, 11 Dec 2020 00:32:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23287204-1500050 
 for multiple; Fri, 11 Dec 2020 00:32:27 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Fri, 11 Dec 2020 00:32:27 +0000
Message-Id: <20201211003227.2658253-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_fence: Check a submit chain
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Submit a chain of spinners across all the engines, using the submit
fence to launch them in parallel.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 lib/igt_dummyload.c         |  7 +++++-
 lib/igt_dummyload.h         | 15 ++++++------
 tests/i915/gem_exec_fence.c | 46 +++++++++++++++++++++++++++++++++++++
 3 files changed, 60 insertions(+), 8 deletions(-)

diff --git a/lib/igt_dummyload.c b/lib/igt_dummyload.c
index 891e4eaab..4ef79cc4a 100644
--- a/lib/igt_dummyload.c
+++ b/lib/igt_dummyload.c
@@ -326,11 +326,16 @@ emit_recursive_batch(igt_spin_t *spin,
 	if (opts->flags & IGT_SPIN_FENCE_OUT)
 		execbuf->flags |= I915_EXEC_FENCE_OUT;
 
-	if (opts->flags & IGT_SPIN_FENCE_IN) {
+	if (opts->flags & IGT_SPIN_FENCE_IN && opts->fence != -1) {
 		execbuf->flags |= I915_EXEC_FENCE_IN;
 		execbuf->rsvd2 = opts->fence;
 	}
 
+	if (opts->flags & IGT_SPIN_FENCE_SUBMIT && opts->fence != -1) {
+		execbuf->flags |= I915_EXEC_FENCE_SUBMIT;
+		execbuf->rsvd2 = opts->fence;
+	}
+
 	for (i = 0; i < nengine; i++) {
 		execbuf->flags &= ~ENGINE_MASK;
 		execbuf->flags |= flags[i];
diff --git a/lib/igt_dummyload.h b/lib/igt_dummyload.h
index b8baaa6b4..3ece70a50 100644
--- a/lib/igt_dummyload.h
+++ b/lib/igt_dummyload.h
@@ -65,13 +65,14 @@ struct igt_spin_factory {
 };
 
 #define IGT_SPIN_FENCE_IN      (1 << 0)
-#define IGT_SPIN_FENCE_OUT     (1 << 1)
-#define IGT_SPIN_POLL_RUN      (1 << 2)
-#define IGT_SPIN_FAST          (1 << 3)
-#define IGT_SPIN_NO_PREEMPTION (1 << 4)
-#define IGT_SPIN_INVALID_CS    (1 << 5)
-#define IGT_SPIN_USERPTR       (1 << 6)
-#define IGT_SPIN_SOFTDEP       (1 << 7)
+#define IGT_SPIN_FENCE_SUBMIT  (1 << 1)
+#define IGT_SPIN_FENCE_OUT     (1 << 2)
+#define IGT_SPIN_POLL_RUN      (1 << 3)
+#define IGT_SPIN_FAST          (1 << 4)
+#define IGT_SPIN_NO_PREEMPTION (1 << 5)
+#define IGT_SPIN_INVALID_CS    (1 << 6)
+#define IGT_SPIN_USERPTR       (1 << 7)
+#define IGT_SPIN_SOFTDEP       (1 << 8)
 
 igt_spin_t *
 __igt_spin_factory(int fd, const struct igt_spin_factory *opts);
diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
index 6eea050d8..ba454fcdb 100644
--- a/tests/i915/gem_exec_fence.c
+++ b/tests/i915/gem_exec_fence.c
@@ -796,6 +796,47 @@ static void test_concurrent(int i915, const struct intel_execution_engine2 *e)
 	igt_spin_free(i915, spin);
 }
 
+static void test_submit_chain(int i915)
+{
+	const struct intel_execution_engine2 *e;
+	igt_spin_t *spin, *sn;
+	IGT_LIST_HEAD(list);
+	IGT_CORK_FENCE(cork);
+	int fence;
+
+	/* Check that we can simultaneously launch spinners on each engine */
+
+	fence = igt_cork_plug(&cork, i915);
+	__for_each_physical_engine(i915, e) {
+		spin = igt_spin_new(i915,
+				    .engine = e->flags,
+				    .fence = fence,
+				    .flags = (IGT_SPIN_POLL_RUN |
+					      IGT_SPIN_FENCE_OUT |
+					      IGT_SPIN_FENCE_SUBMIT));
+
+		fence = spin->out_fence;
+		igt_list_move(&spin->link, &list);
+	}
+
+	/* Nothing shall run until we pop the cork */
+	igt_list_for_each_entry(spin, &list, link) {
+		igt_assert(gem_bo_busy(i915, spin->handle));
+		igt_assert(!igt_spin_has_started(spin));
+	}
+
+	igt_cork_unplug(&cork);
+
+	/* Then everything shall run in parallel */
+	igt_list_for_each_entry_safe(spin, sn, &list, link) {
+		igt_spin_busywait_until_started(spin);
+		igt_spin_end(spin);
+		igt_assert_eq(sync_fence_wait(spin->out_fence, 50), 0);
+		igt_assert_eq(sync_fence_status(spin->out_fence), 1);
+		igt_spin_free(i915, spin);
+	}
+}
+
 static uint32_t batch_create(int fd)
 {
 	const uint32_t bbe = MI_BATCH_BUFFER_END;
@@ -3032,6 +3073,11 @@ igt_main
 				}
 			}
 
+			igt_subtest("submit-chain") {
+				igt_require(has_submit_fence(i915));
+				test_submit_chain(i915);
+			}
+
 			igt_fixture {
 				igt_stop_hang_detector();
 			}
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
