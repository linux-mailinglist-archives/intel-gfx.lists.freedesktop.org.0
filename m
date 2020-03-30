Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C58F31977BD
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 11:21:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3F248999C;
	Mon, 30 Mar 2020 09:21:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74E608992E;
 Mon, 30 Mar 2020 09:21:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20737348-1500050 
 for multiple; Mon, 30 Mar 2020 10:21:19 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 10:21:17 +0100
Message-Id: <20200330092117.810776-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200330092117.810776-1-chris@chris-wilson.co.uk>
References: <20200330092117.810776-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 4/4] i915/gem_exec_parallel: Dynamise
 per-engine tests
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

Convert the per-engine tests into a dynamic subtest.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_parallel.c        | 28 ++++++++++++++-------------
 tests/intel-ci/fast-feedback.testlist |  4 +---
 2 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/tests/i915/gem_exec_parallel.c b/tests/i915/gem_exec_parallel.c
index 98316af40..66fe18534 100644
--- a/tests/i915/gem_exec_parallel.c
+++ b/tests/i915/gem_exec_parallel.c
@@ -196,7 +196,6 @@ static void all(int fd, struct intel_execution_engine2 *engine, unsigned flags)
 				engines[nengine++] = e->flags;
 		}
 	} else {
-		igt_require(gem_class_can_store_dword(fd, engine->class));
 		engines[nengine++] = engine->flags;
 	}
 	igt_require(nengine);
@@ -254,7 +253,7 @@ igt_main
 		const char *name;
 		unsigned flags;
 	} modes[] = {
-		{ "", 0 },
+		{ "basic", 0 },
 		{ "contexts", CONTEXTS },
 		{ "fds", FDS },
 		{ NULL }
@@ -268,18 +267,21 @@ igt_main
 		igt_fork_hang_detector(fd);
 	}
 
-	for (const struct mode *m = modes; m->name; m++)
-		igt_subtest_f("%s", *m->name ? m->name : "basic")
-			/* NULL value means all engines */
-			all(fd, NULL, m->flags);
-
-	__for_each_physical_engine(fd, e) {
+	igt_subtest_with_dynamic("engines") {
 		for (const struct mode *m = modes; m->name; m++)
-			igt_subtest_f("%s%s%s",
-				      e->name,
-				      *m->name ? "-" : "",
-				      m->name)
-				all(fd, e, m->flags);
+			igt_dynamic(m->name)
+				/* NULL value means all engines */
+				all(fd, NULL, m->flags);
+	}
+
+	for (const struct mode *m = modes; m->name; m++) {
+		igt_subtest_with_dynamic(m->name) {
+			__for_each_physical_engine(fd, e) {
+				if (gem_class_can_store_dword(fd, e->class))
+					igt_dynamic(e->name)
+						all(fd, e, m->flags);
+			}
+		}
 	}
 
 	igt_fixture {
diff --git a/tests/intel-ci/fast-feedback.testlist b/tests/intel-ci/fast-feedback.testlist
index b41fb4a01..06367f822 100644
--- a/tests/intel-ci/fast-feedback.testlist
+++ b/tests/intel-ci/fast-feedback.testlist
@@ -21,9 +21,7 @@ igt@gem_exec_fence@basic-wait
 igt@gem_exec_fence@basic-await
 igt@gem_exec_fence@nb-await
 igt@gem_exec_gttfill@basic
-igt@gem_exec_parallel@basic
-igt@gem_exec_parallel@contexts
-igt@gem_exec_parallel@fds
+igt@gem_exec_parallel@engines
 igt@gem_exec_store@basic-all
 igt@gem_exec_suspend@basic
 igt@gem_exec_suspend@basic-s0
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
