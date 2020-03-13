Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5606D184FE1
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 21:05:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EF646EC5A;
	Fri, 13 Mar 2020 20:05:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AB036EC58;
 Fri, 13 Mar 2020 20:04:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20554236-1500050 
 for multiple; Fri, 13 Mar 2020 20:04:50 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Mar 2020 20:04:51 +0000
Message-Id: <20200313200451.208504-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200313200451.208504-1-chris@chris-wilson.co.uk>
References: <20200313200451.208504-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/2] i915/gem_ctx_persistence: Tune
 reset-timeout
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

When we can control the preempt_timeout_ms property on an engine, we can
specify a much faster timeout and so expect our tests to run much
faster.

Then we can also avoid the embarrassment if the preempt reset is disabled
and the tests start failing because we are not waiting 10+s for the
hangcheck.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1440
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_ctx_persistence.c | 39 ++++++++++++++++++++++++++++----
 1 file changed, 34 insertions(+), 5 deletions(-)

diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
index f6d98f850..3b94ba962 100644
--- a/tests/i915/gem_ctx_persistence.c
+++ b/tests/i915/gem_ctx_persistence.c
@@ -41,7 +41,8 @@
 #include "ioctl_wrappers.h" /* gem_wait()! */
 #include "sw_sync.h"
 
-static unsigned long reset_timeout_ms = 2 * MSEC_PER_SEC; /* default: 640ms */
+#define RESET_TIMEOUT_MS 2 * MSEC_PER_SEC; /* default: 640ms */
+static unsigned long reset_timeout_ms = RESET_TIMEOUT_MS;
 #define NSEC_PER_MSEC (1000 * 1000ull)
 
 static bool has_persistence(int i915)
@@ -1010,6 +1011,28 @@ static void replace_engines_hostile(int i915,
 	gem_quiescent_gpu(i915);
 }
 
+static void do_test(void (*test)(int i915, unsigned int engine),
+		    int i915, unsigned int engine,
+		    const char *name)
+{
+#define ATTR "preempt_timeout_ms"
+	int timeout = -1;
+
+	gem_engine_property_scanf(i915, name, ATTR, "%d", &timeout);
+	if (timeout != -1) {
+		igt_require(gem_engine_property_printf(i915, name,
+						       ATTR, "%d", 50) > 0);
+		reset_timeout_ms = 200;
+	}
+
+	test(i915, engine);
+
+	if (timeout != -1) {
+		gem_engine_property_printf(i915, name, ATTR, "%d", timeout);
+		reset_timeout_ms = RESET_TIMEOUT_MS;
+	}
+}
+
 int i915;
 
 static void exit_handler(int sig)
@@ -1079,8 +1102,11 @@ igt_main
 			igt_subtest_with_dynamic_f("legacy-engines-%s",
 						   test->name) {
 				for_each_engine(e, i915) {
-					igt_dynamic_f("%s", e->name)
-						test->func(i915, eb_ring(e));
+					igt_dynamic_f("%s", e->name) {
+						do_test(test->func,
+							i915, eb_ring(e),
+							e->name);
+					}
 				}
 			}
 		}
@@ -1100,8 +1126,11 @@ igt_main
 		for (test = tests; test->name; test++) {
 			igt_subtest_with_dynamic_f("engines-%s", test->name) {
 				__for_each_physical_engine(i915, e) {
-					igt_dynamic_f("%s", e->name)
-						test->func(i915, e->flags);
+					igt_dynamic_f("%s", e->name) {
+						do_test(test->func,
+							i915, e->flags,
+							e->name);
+					}
 				}
 			}
 		}
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
