Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4BD14E463
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 22:01:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40BED6FA2A;
	Thu, 30 Jan 2020 21:01:31 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5AC86FA2A;
 Thu, 30 Jan 2020 21:01:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 13:01:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,382,1574150400"; d="scan'208";a="218402865"
Received: from lodierna-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.22.225])
 by orsmga007.jf.intel.com with ESMTP; 30 Jan 2020 13:01:27 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 30 Jan 2020 21:01:25 +0000
Message-Id: <20200130210125.5623-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200130204124.29907-1-tvrtko.ursulin@linux.intel.com>
References: <20200130204124.29907-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v3] tests/i915/gem_ctx_persistence:
 Convert engine subtests to dynamic
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
Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>,
 Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Converts all per-engine tests into dynamic subtests and in the process:

 * Put back I915_EXEC_BSD legacy coverage.
 * Remove one added static engine list usage.
 * Compact code by driving two groups of the name/func table.

v2:
 * Convert smoketest to proper all engines.

v3:
 * Undo subgroup mistake. (Chris)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
---
 tests/i915/gem_ctx_persistence.c | 110 ++++++++++++++-----------------
 1 file changed, 50 insertions(+), 60 deletions(-)

diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
index 8b9633b214ff..67bee72da6ca 100644
--- a/tests/i915/gem_ctx_persistence.c
+++ b/tests/i915/gem_ctx_persistence.c
@@ -693,6 +693,7 @@ static void __smoker(int i915, unsigned int engine, int expected)
 	int fd, extra;
 
 	fd = gem_reopen_driver(i915);
+	gem_context_copy_engines(i915, 0, fd, 0);
 	gem_context_set_persistence(fd, 0, expected > 0);
 	spin = igt_spin_new(fd, .engine = engine, .flags = IGT_SPIN_FENCE_OUT);
 
@@ -721,7 +722,7 @@ static void __smoker(int i915, unsigned int engine, int expected)
 	}
 
 	spin->handle = 0;
-	igt_spin_free(i915, spin);
+	igt_spin_free(fd, spin);
 }
 
 static void smoker(int i915, unsigned int engine, unsigned int *ctl)
@@ -734,6 +735,7 @@ static void smoker(int i915, unsigned int engine, unsigned int *ctl)
 
 static void smoketest(int i915)
 {
+	const struct intel_execution_engine2 *e;
 	uint32_t *ctl;
 
 	/*
@@ -744,9 +746,9 @@ static void smoketest(int i915)
 	ctl = mmap(0, 4096, PROT_WRITE, MAP_SHARED | MAP_ANON, -1, 0);
 	igt_assert(ctl != MAP_FAILED);
 
-	for_each_physical_engine(e, i915) {
+	__for_each_physical_engine(i915, e) {
 		igt_fork(child, 4)
-			smoker(i915, eb_ring(e), ctl);
+			smoker(i915, e->flags, ctl);
 	}
 
 	sleep(20);
@@ -759,7 +761,20 @@ static void smoketest(int i915)
 
 igt_main
 {
-	const struct intel_execution_engine2 *e;
+	struct {
+		const char *name;
+		void (*func)(int fd, unsigned int engine);
+	} *test, tests[] = {
+		{ "persistence", test_persistence },
+		{ "cleanup", test_nonpersistent_cleanup },
+		{ "queued", test_nonpersistent_queued },
+		{ "mixed", test_nonpersistent_mixed },
+		{ "mixed-process", test_process_mixed },
+		{ "hostile", test_nonpersistent_hostile },
+		{ "hostile-preempt", test_nonpersistent_hostile_preempt },
+		{ "hang", test_nonpersistent_hang },
+		{ NULL, NULL },
+	};
 	int i915;
 
 	igt_fixture {
@@ -772,6 +787,8 @@ igt_main
 		igt_allow_hang(i915, 0, 0);
 	}
 
+	/* Legacy execbuf engine selection flags. */
+
 	igt_subtest("idempotent")
 		test_idempotent(i915);
 
@@ -792,71 +809,44 @@ igt_main
 	igt_subtest("hang")
 		test_nohangcheck_hang(i915);
 
-	__for_each_static_engine(e) {
-		igt_subtest_group {
-			igt_fixture {
-				gem_require_ring(i915, e->flags);
-				gem_require_contexts(i915);
+	igt_subtest_group {
+		igt_fixture
+			gem_require_contexts(i915);
+
+		for (test = tests; test->name; test++) {
+			igt_subtest_with_dynamic_f("legacy-engines-%s",
+						   test->name) {
+				for_each_engine(e, i915) {
+					igt_dynamic_f("%s", e->name)
+						test->func(i915, eb_ring(e));
+				}
 			}
-
-			igt_subtest_f("legacy-%s-persistence", e->name)
-				test_persistence(i915, e->flags);
-
-			igt_subtest_f("legacy-%s-cleanup", e->name)
-				test_nonpersistent_cleanup(i915, e->flags);
-
-			igt_subtest_f("legacy-%s-queued", e->name)
-				test_nonpersistent_queued(i915, e->flags);
-
-			igt_subtest_f("legacy-%s-mixed", e->name)
-				test_nonpersistent_mixed(i915, e->flags);
-
-			igt_subtest_f("legacy-%s-mixed-process", e->name)
-				test_process_mixed(i915, e->flags);
-
-			igt_subtest_f("legacy-%s-hostile", e->name)
-				test_nonpersistent_hostile(i915, e->flags);
-
-			igt_subtest_f("legacy-%s-hostile-preempt", e->name)
-				test_nonpersistent_hostile_preempt(i915,
-								   e->flags);
 		}
-	}
-
-        __for_each_physical_engine(i915, e) {
-                igt_subtest_group {
-                        igt_fixture
-                                gem_require_contexts(i915);
-
-			igt_subtest_f("%s-persistence", e->name)
-				test_persistence(i915, e->flags);
-
-			igt_subtest_f("%s-cleanup", e->name)
-				test_nonpersistent_cleanup(i915, e->flags);
 
-			igt_subtest_f("%s-queued", e->name)
-				test_nonpersistent_queued(i915, e->flags);
-
-			igt_subtest_f("%s-mixed", e->name)
-				test_nonpersistent_mixed(i915, e->flags);
+		/* Assert things are under control. */
+		igt_assert(!gem_context_has_engine_map(i915, 0));
+	}
 
-			igt_subtest_f("%s-mixed-process", e->name)
-				test_process_mixed(i915, e->flags);
+	/* New way of selecting engines. */
 
-			igt_subtest_f("%s-hostile", e->name)
-				test_nonpersistent_hostile(i915, e->flags);
+	igt_subtest_group {
+		const struct intel_execution_engine2 *e;
 
-			igt_subtest_f("%s-hostile-preempt", e->name)
-				test_nonpersistent_hostile_preempt(i915,
-								   e->flags);
+		igt_fixture
+			gem_require_contexts(i915);
 
-			igt_subtest_f("%s-hang", e->name)
-				test_nonpersistent_hang(i915, e->flags);
+		for (test = tests; test->name; test++) {
+			igt_subtest_with_dynamic_f("engines-%s", test->name) {
+				__for_each_physical_engine(i915, e) {
+					igt_dynamic_f("%s", e->name)
+						test->func(i915, e->flags);
+				}
+			}
 		}
-	}
 
-	igt_subtest("smoketest")
-		smoketest(i915);
+		igt_subtest("smoketest")
+			smoketest(i915);
+	}
 
 	igt_fixture {
 		close(i915);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
