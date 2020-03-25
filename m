Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2350B19347C
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 00:19:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B787B6E866;
	Wed, 25 Mar 2020 23:19:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAAF16E84E;
 Wed, 25 Mar 2020 23:19:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20694106-1500050 
 for multiple; Wed, 25 Mar 2020 23:19:37 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Mar 2020 23:19:38 +0000
Message-Id: <20200325231938.527211-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200325231938.527211-1-chris@chris-wilson.co.uk>
References: <20200325231938.527211-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/2] i915/gem_ctx_isolation: Use dynamic
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
 tests/i915/gem_ctx_isolation.c | 109 ++++++++++++++++++++-------------
 1 file changed, 66 insertions(+), 43 deletions(-)

diff --git a/tests/i915/gem_ctx_isolation.c b/tests/i915/gem_ctx_isolation.c
index eff4b1df2..dadab2870 100644
--- a/tests/i915/gem_ctx_isolation.c
+++ b/tests/i915/gem_ctx_isolation.c
@@ -888,23 +888,28 @@ static unsigned int __has_context_isolation(int fd)
 	return value;
 }
 
+#define test_each_engine(e, i915, mask) \
+	__for_each_physical_engine(i915, e) \
+		for_each_if(mask & (1 << (e)->class)) \
+			igt_dynamic_f("%s", (e)->name)
+
 igt_main
 {
 	unsigned int has_context_isolation = 0;
 	const struct intel_execution_engine2 *e;
-	int fd = -1;
+	int i915 = -1;
 
 	igt_fixture {
 		int gen;
 
-		fd = drm_open_driver(DRIVER_INTEL);
-		igt_require_gem(fd);
-		igt_require(gem_has_contexts(fd));
+		i915 = drm_open_driver(DRIVER_INTEL);
+		igt_require_gem(i915);
+		igt_require(gem_has_contexts(i915));
 
-		has_context_isolation = __has_context_isolation(fd);
+		has_context_isolation = __has_context_isolation(i915);
 		igt_require(has_context_isolation);
 
-		gen = intel_gen(intel_get_drm_devid(fd));
+		gen = intel_gen(intel_get_drm_devid(i915));
 
 		igt_warn_on_f(gen > LAST_KNOWN_GEN,
 			      "GEN not recognized! Test needs to be updated to run.\n");
@@ -913,42 +918,60 @@ igt_main
 
 	/* __for_each_physical_engine switches context to all engines. */
 
-	__for_each_physical_engine(fd, e) {
-		igt_subtest_group {
-			igt_fixture {
-				igt_require(has_context_isolation & (1 << e->class));
-				gem_require_ring(fd, e->flags);
-				igt_fork_hang_detector(fd);
-			}
-
-			igt_subtest_f("%s-nonpriv", e->name)
-				nonpriv(fd, e, 0);
-			igt_subtest_f("%s-nonpriv-switch", e->name)
-				nonpriv(fd, e, DIRTY2);
-
-			igt_subtest_f("%s-clean", e->name)
-				isolation(fd, e, 0);
-			igt_subtest_f("%s-dirty-create", e->name)
-				isolation(fd, e, DIRTY1);
-			igt_subtest_f("%s-dirty-switch", e->name)
-				isolation(fd, e, DIRTY2);
-
-			igt_subtest_f("%s-none", e->name)
-				preservation(fd, e, 0);
-			igt_subtest_f("%s-S3", e->name)
-				preservation(fd, e, S3);
-			igt_subtest_f("%s-S4", e->name)
-				preservation(fd, e, S4);
-
-			igt_fixture {
-				igt_stop_hang_detector();
-			}
-
-			igt_subtest_f("%s-reset", e->name) {
-				igt_hang_t hang = igt_allow_hang(fd, 0, 0);
-				preservation(fd, e, RESET);
-				igt_disallow_hang(fd, hang);
-			}
-		}
+	igt_fixture {
+		igt_fork_hang_detector(i915);
+	}
+
+	igt_subtest_with_dynamic("nonpriv") {
+		test_each_engine(e, i915, has_context_isolation)
+			nonpriv(i915, e, 0);
+	}
+
+	igt_subtest_with_dynamic("nonpriv-switch") {
+		test_each_engine(e, i915, has_context_isolation)
+			nonpriv(i915, e, DIRTY2);
+	}
+
+	igt_subtest_with_dynamic("clean") {
+		test_each_engine(e, i915, has_context_isolation)
+			isolation(i915, e, 0);
+	}
+
+	igt_subtest_with_dynamic("dirty-create") {
+		test_each_engine(e, i915, has_context_isolation)
+			isolation(i915, e, DIRTY1);
+	}
+
+	igt_subtest_with_dynamic("dirty-switch") {
+		test_each_engine(e, i915, has_context_isolation)
+			isolation(i915, e, DIRTY2);
+	}
+
+	igt_subtest_with_dynamic("preservation") {
+		test_each_engine(e, i915, has_context_isolation)
+			preservation(i915, e, 0);
+	}
+
+	igt_subtest_with_dynamic("preservation-S3") {
+		test_each_engine(e, i915, has_context_isolation)
+			preservation(i915, e, S3);
+	}
+
+	igt_subtest_with_dynamic("preservation-S4") {
+		test_each_engine(e, i915, has_context_isolation)
+			preservation(i915, e, S4);
+	}
+
+	igt_fixture {
+		igt_stop_hang_detector();
+	}
+
+	igt_subtest_with_dynamic("preservation-reset") {
+		igt_hang_t hang = igt_allow_hang(i915, 0, 0);
+
+		test_each_engine(e, i915, has_context_isolation)
+			preservation(i915, e, RESET);
+
+		igt_disallow_hang(i915, hang);
 	}
 }
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
