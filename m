Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E81492E9385
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 11:43:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 420EF89B8F;
	Mon,  4 Jan 2021 10:43:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0271899E7;
 Mon,  4 Jan 2021 10:43:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23494755-1500050 
 for multiple; Mon, 04 Jan 2021 10:43:24 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Jan 2021 10:43:24 +0000
Message-Id: <20210104104324.3125175-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_spin_batch: Convert to dynamic
 engine discovery
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

Only run the tests on the available engines using igt_dynamic. This
prevents flip-flops with SKIP on shards that have a mixture of machine
types (e.g. shard-icl that has some machines with vcs1 and some
without).

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_spin_batch.c | 82 ++++++++++++++++++-------------------
 1 file changed, 39 insertions(+), 43 deletions(-)

diff --git a/tests/i915/gem_spin_batch.c b/tests/i915/gem_spin_batch.c
index 0a5cfdf36..c2ce2373b 100644
--- a/tests/i915/gem_spin_batch.c
+++ b/tests/i915/gem_spin_batch.c
@@ -35,7 +35,7 @@
 		     #x, #ref, (long long)x, tolerance, (long long)ref)
 
 static void spin(int fd,
-		 const struct intel_execution_engine2 *e2,
+		 unsigned int engine,
 		 unsigned int flags,
 		 unsigned int timeout_sec)
 {
@@ -46,10 +46,10 @@ static void spin(int fd,
 	struct timespec itv = { };
 	uint64_t elapsed;
 
-	spin = __igt_spin_new(fd, .engine = e2->flags, .flags = flags);
+	spin = __igt_spin_new(fd, .engine = engine, .flags = flags);
 	while ((elapsed = igt_nsec_elapsed(&tv)) >> 30 < timeout_sec) {
 		igt_spin_t *next =
-			__igt_spin_new(fd, .engine = e2->flags, .flags = flags);
+			__igt_spin_new(fd, .engine = engine, .flags = flags);
 
 		igt_spin_set_timeout(spin,
 				     timeout_100ms - igt_nsec_elapsed(&itv));
@@ -75,14 +75,13 @@ static void spin(int fd,
 #define RESUBMIT_NEW_CTX     (1 << 0)
 #define RESUBMIT_ALL_ENGINES (1 << 1)
 
-static void spin_resubmit(int fd, const struct intel_execution_engine2 *e2,
-			  unsigned int flags)
+static void spin_resubmit(int fd, unsigned int engine, unsigned int flags)
 {
 	const uint32_t ctx0 = gem_context_clone_with_engines(fd, 0);
 	const uint32_t ctx1 =
 		(flags & RESUBMIT_NEW_CTX) ?
 		gem_context_clone_with_engines(fd, 0) : ctx0;
-	igt_spin_t *spin = __igt_spin_new(fd, .ctx = ctx0, .engine = e2->flags);
+	igt_spin_t *spin = __igt_spin_new(fd, .ctx = ctx0, .engine = engine);
 	const struct intel_execution_engine2 *other;
 
 	struct drm_i915_gem_execbuffer2 eb = {
@@ -96,14 +95,14 @@ static void spin_resubmit(int fd, const struct intel_execution_engine2 *e2,
 
 	if (flags & RESUBMIT_ALL_ENGINES) {
 		for_each_context_engine(fd, ctx1, other) {
-			if (gem_engine_is_equal(other, e2))
+			if (other->flags == engine)
 				continue;
 
 			eb.flags = other->flags;
 			gem_execbuf(fd, &eb);
 		}
 	} else {
-		eb.flags = e2->flags;
+		eb.flags = engine;
 		gem_execbuf(fd, &eb);
 	}
 
@@ -132,7 +131,7 @@ spin_on_all_engines(int fd, unsigned long flags, unsigned int timeout_sec)
 	__for_each_physical_engine(fd, e2) {
 		igt_fork(child, 1) {
 			igt_install_exit_handler(spin_exit_handler);
-			spin(fd, e2, flags, timeout_sec);
+			spin(fd, e2->flags, flags, timeout_sec);
 		}
 	}
 
@@ -181,7 +180,6 @@ igt_main
 {
 	const struct intel_execution_engine2 *e2;
 	const struct intel_execution_ring *e;
-	struct intel_execution_engine2 e2__;
 	int fd = -1;
 
 	igt_fixture {
@@ -190,51 +188,49 @@ igt_main
 		igt_fork_hang_detector(fd);
 	}
 
-	for (e = intel_execution_rings; e->name; e++) {
-		e2__ = gem_eb_flags_to_engine(eb_ring(e));
-		if (e2__.flags == -1)
-			continue;
-		e2 = &e2__;
+#define test_each_legacy_ring(test) \
+	igt_subtest_with_dynamic(test) \
+		for (e = intel_execution_rings; e->name; e++) \
+			if (gem_has_ring(fd, eb_ring(e))) \
+				igt_dynamic_f("%s", e->name)
 
-		igt_subtest_f("legacy-%s", e->name) {
-			igt_require(gem_has_ring(fd, eb_ring(e)));
-			spin(fd, e2, 0, 3);
-		}
+	test_each_legacy_ring("legacy")
+		spin(fd, eb_ring(e), 0, 3);
+	test_each_legacy_ring("legacy-resubmit")
+		spin_resubmit(fd, eb_ring(e), 0);
+	test_each_legacy_ring("legacy-resubmit-new")
+		spin_resubmit(fd, eb_ring(e), RESUBMIT_NEW_CTX);
 
-		igt_subtest_f("legacy-resubmit-%s", e->name) {
-			igt_require(gem_has_ring(fd, eb_ring(e)));
-			spin_resubmit(fd, e2, 0);
-		}
-
-		igt_subtest_f("legacy-resubmit-new-%s", e->name) {
-			igt_require(gem_has_ring(fd, eb_ring(e)));
-			spin_resubmit(fd, e2, RESUBMIT_NEW_CTX);
-		}
-	}
+#undef test_each_legcy_ring
 
 	igt_subtest("spin-all")
 		spin_all(fd, 0);
 	igt_subtest("spin-all-new")
 		spin_all(fd, PARALLEL_SPIN_NEW_CTX);
 
-	__for_each_physical_engine(fd, e2) {
-		igt_subtest_f("%s", e2->name)
-			spin(fd, e2, 0, 3);
+#define test_each_engine(test) \
+	igt_subtest_with_dynamic(test) \
+		__for_each_physical_engine(fd, e2) \
+			igt_dynamic_f("%s", e2->name)
 
-		igt_subtest_f("resubmit-%s", e2->name)
-			spin_resubmit(fd, e2, 0);
+	test_each_engine("engines")
+		spin(fd, e2->flags, 0, 3);
 
-		igt_subtest_f("resubmit-new-%s", e2->name)
-			spin_resubmit(fd, e2, RESUBMIT_NEW_CTX);
+	test_each_engine("resubmit")
+		spin_resubmit(fd, e2->flags, 0);
 
-		igt_subtest_f("resubmit-all-%s", e2->name)
-			spin_resubmit(fd, e2, RESUBMIT_ALL_ENGINES);
+	test_each_engine("resubmit-new")
+		spin_resubmit(fd, e2->flags, RESUBMIT_NEW_CTX);
 
-		igt_subtest_f("resubmit-new-all-%s", e2->name)
-			spin_resubmit(fd, e2,
-				      RESUBMIT_NEW_CTX |
-				      RESUBMIT_ALL_ENGINES);
-	}
+	test_each_engine("resubmit-all")
+		spin_resubmit(fd, e2->flags, RESUBMIT_ALL_ENGINES);
+
+	test_each_engine("resubmit-new-all")
+		spin_resubmit(fd, e2->flags,
+			      RESUBMIT_NEW_CTX |
+			      RESUBMIT_ALL_ENGINES);
+
+#undef test_each_engine
 
 	igt_subtest("spin-each")
 		spin_on_all_engines(fd, 0, 3);
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
