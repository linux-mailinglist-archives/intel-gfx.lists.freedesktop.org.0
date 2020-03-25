Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E1E19347B
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 00:19:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 596AA6E852;
	Wed, 25 Mar 2020 23:19:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB2B26E852;
 Wed, 25 Mar 2020 23:19:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20694105-1500050 
 for multiple; Wed, 25 Mar 2020 23:19:37 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Mar 2020 23:19:37 +0000
Message-Id: <20200325231938.527211-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/2] i915/gem_ctx_shared: Use dynamic
 subtests
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert over to the new dynamic subtests for the per-engine tests, and
in the process switch over to for-each-physical engine iterators.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_ctx_shared.c | 140 +++++++++++++++++++-----------------
 1 file changed, 75 insertions(+), 65 deletions(-)

diff --git a/tests/i915/gem_ctx_shared.c b/tests/i915/gem_ctx_shared.c
index c04931535..2310f8661 100644
--- a/tests/i915/gem_ctx_shared.c
+++ b/tests/i915/gem_ctx_shared.c
@@ -200,9 +200,6 @@ static void exec_shared_gtt(int i915, unsigned int ring)
 	int timeline;
 	int i;
 
-	gem_require_ring(i915, ring);
-	igt_require(gem_can_store_dword(i915, ring));
-
 	clone = gem_context_clone(i915, 0, I915_CONTEXT_CLONE_VM, 0);
 
 	/* Find a hole big enough for both objects later */
@@ -329,6 +326,7 @@ static bool has_single_timeline(int i915)
 
 static void single_timeline(int i915)
 {
+	const struct intel_execution_engine2 *e;
 	struct sync_fence_info rings[64];
 	struct sync_file_info sync_file_info = {
 		.num_fences = 1,
@@ -351,8 +349,8 @@ static void single_timeline(int i915)
 		gem_context_clone(i915, 0, 0,
 				  I915_CONTEXT_CREATE_FLAGS_SINGLE_TIMELINE);
 	n = 0;
-	for_each_engine(e, i915) {
-		spin->execbuf.flags = eb_ring(e) | I915_EXEC_FENCE_OUT;
+	__for_each_physical_engine(i915, e) {
+		spin->execbuf.flags = e->flags | I915_EXEC_FENCE_OUT;
 
 		gem_execbuf_wr(i915, &spin->execbuf);
 		sync_file_info.sync_fence_info = to_user_pointer(&rings[n]);
@@ -374,29 +372,27 @@ static void single_timeline(int i915)
 
 static void exec_single_timeline(int i915, unsigned int engine)
 {
+	const struct intel_execution_engine2 *e;
 	igt_spin_t *spin;
 	uint32_t ctx;
 
-	igt_require(gem_ring_has_physical_engine(i915, engine));
-	igt_require(has_single_timeline(i915));
-
 	/*
 	 * On an ordinary context, a blockage on one engine doesn't prevent
 	 * execution on an other.
 	 */
 	ctx = 0;
 	spin = NULL;
-	for_each_physical_engine(e, i915) {
-		if (eb_ring(e) == engine)
+	__for_each_physical_engine(i915, e) {
+		if (e->flags == engine)
 			continue;
 
 		if (spin == NULL) {
-			spin = __igt_spin_new(i915, .ctx = ctx, .engine = eb_ring(e));
+			spin = __igt_spin_new(i915, .ctx = ctx, .engine = e->flags);
 		} else {
 			struct drm_i915_gem_execbuffer2 execbuf = {
 				.buffers_ptr = spin->execbuf.buffers_ptr,
 				.buffer_count = spin->execbuf.buffer_count,
-				.flags = eb_ring(e),
+				.flags = e->flags,
 				.rsvd1 = ctx,
 			};
 			gem_execbuf(i915, &execbuf);
@@ -414,17 +410,17 @@ static void exec_single_timeline(int i915, unsigned int engine)
 	ctx = gem_context_clone(i915, 0, 0,
 				I915_CONTEXT_CREATE_FLAGS_SINGLE_TIMELINE);
 	spin = NULL;
-	for_each_physical_engine(e, i915) {
-		if (eb_ring(e) == engine)
+	__for_each_physical_engine(i915, e) {
+		if (e->flags == engine)
 			continue;
 
 		if (spin == NULL) {
-			spin = __igt_spin_new(i915, .ctx = ctx, .engine = eb_ring(e));
+			spin = __igt_spin_new(i915, .ctx = ctx, .engine = e->flags);
 		} else {
 			struct drm_i915_gem_execbuffer2 execbuf = {
 				.buffers_ptr = spin->execbuf.buffers_ptr,
 				.buffer_count = spin->execbuf.buffer_count,
-				.flags = eb_ring(e),
+				.flags = e->flags,
 				.rsvd1 = ctx,
 			};
 			gem_execbuf(i915, &execbuf);
@@ -731,10 +727,11 @@ static void smoketest(int i915, unsigned ring, unsigned timeout)
 
 	nengine = 0;
 	if (ring == -1) {
-		for_each_physical_engine(e, i915)
-			engines[nengine++] = eb_ring(e);
+		const struct intel_execution_engine2 *e;
+
+		__for_each_physical_engine(i915, e)
+			engines[nengine++] = e->flags;
 	} else {
-		gem_require_ring(i915, ring);
 		engines[nengine++] = ring;
 	}
 	igt_require(nengine);
@@ -784,9 +781,14 @@ static void smoketest(int i915, unsigned ring, unsigned timeout)
 	munmap(ptr, 4096);
 }
 
+#define for_each_queue(e, i915) \
+	__for_each_physical_engine(i915, e) \
+		for_each_if(gem_class_can_store_dword(i915, (e)->class)) \
+			igt_dynamic_f("%s", e->name)
+
 igt_main
 {
-	const struct intel_execution_engine *e;
+	const struct intel_execution_engine2 *e;
 	int i915 = -1;
 
 	igt_fixture {
@@ -812,57 +814,65 @@ igt_main
 		igt_subtest("single-timeline")
 			single_timeline(i915);
 
-		igt_subtest("exhaust-shared-gtt")
-			exhaust_shared_gtt(i915, 0);
+		igt_subtest_with_dynamic("exec-shared-gtt") {
+			for_each_queue(e, i915)
+				exec_shared_gtt(i915, e->flags);
+		}
 
-		igt_subtest("exhaust-shared-gtt-lrc")
-			exhaust_shared_gtt(i915, EXHAUST_LRC);
+		igt_subtest_with_dynamic("exec-single-timeline") {
+			igt_require(has_single_timeline(i915));
+			for_each_queue(e, i915)
+				exec_single_timeline(i915, e->flags);
+		}
 
-		for (e = intel_execution_engines; e->name; e++) {
-			igt_subtest_f("exec-shared-gtt-%s", e->name)
-				exec_shared_gtt(i915, eb_ring(e));
-
-			igt_subtest_f("exec-single-timeline-%s", e->name)
-				exec_single_timeline(i915, eb_ring(e));
-
-			/*
-			 * Check that the shared contexts operate independently,
-			 * that is requests on one ("queue") can be scheduled
-			 * around another queue. We only check the basics here,
-			 * enough to reduce the queue into just another context,
-			 * and so rely on gem_exec_schedule to prove the rest.
-			 */
-			igt_subtest_group {
-				igt_fixture {
-					gem_require_ring(i915, eb_ring(e));
-					igt_require(gem_can_store_dword(i915, eb_ring(e)));
-					igt_require(gem_scheduler_enabled(i915));
-					igt_require(gem_scheduler_has_ctx_priority(i915));
-				}
-
-				igt_subtest_f("Q-independent-%s", e->name)
-					independent(i915, eb_ring(e), 0);
-
-				igt_subtest_f("Q-in-order-%s", e->name)
-					reorder(i915, eb_ring(e), EQUAL);
-
-				igt_subtest_f("Q-out-order-%s", e->name)
-					reorder(i915, eb_ring(e), 0);
-
-				igt_subtest_f("Q-promotion-%s", e->name)
-					promotion(i915, eb_ring(e));
-
-				igt_subtest_f("Q-smoketest-%s", e->name)
-					smoketest(i915, eb_ring(e), 5);
+		/*
+		 * Check that the shared contexts operate independently,
+		 * that is requests on one ("queue") can be scheduled
+		 * around another queue. We only check the basics here,
+		 * enough to reduce the queue into just another context,
+		 * and so rely on gem_exec_schedule to prove the rest.
+		 */
+		igt_subtest_group {
+			igt_fixture {
+				igt_require(gem_scheduler_enabled(i915));
+				igt_require(gem_scheduler_has_ctx_priority(i915));
+			}
+
+			igt_subtest_with_dynamic("Q-independent") {
+				for_each_queue(e, i915)
+					independent(i915, e->flags, 0);
+			}
+
+			igt_subtest_with_dynamic("Q-in-order") {
+				for_each_queue(e, i915)
+					reorder(i915, e->flags, EQUAL);
+			}
+
+			igt_subtest_with_dynamic("Q-out-order") {
+				for_each_queue(e, i915)
+					reorder(i915, e->flags, 0);
+			}
+
+			igt_subtest_with_dynamic("Q-promotion") {
+				for_each_queue(e, i915)
+					promotion(i915, e->flags);
 			}
-		}
 
-		igt_subtest("Q-smoketest-all") {
-			igt_require(gem_scheduler_enabled(i915));
-			igt_require(gem_scheduler_has_ctx_priority(i915));
-			smoketest(i915, -1, 30);
+			igt_subtest_with_dynamic("Q-smoketest") {
+				for_each_queue(e, i915)
+					smoketest(i915, e->flags, 5);
+			}
+
+			igt_subtest("Q-smoketest-all")
+				smoketest(i915, -1, 30);
 		}
 
+		igt_subtest("exhaust-shared-gtt")
+			exhaust_shared_gtt(i915, 0);
+
+		igt_subtest("exhaust-shared-gtt-lrc")
+			exhaust_shared_gtt(i915, EXHAUST_LRC);
+
 		igt_fixture {
 			igt_stop_hang_detector();
 		}
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
