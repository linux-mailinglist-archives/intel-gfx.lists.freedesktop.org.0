Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9541A2E7B03
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Dec 2020 17:20:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2EAA8914C;
	Wed, 30 Dec 2020 16:20:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8B6189138;
 Wed, 30 Dec 2020 16:20:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23465050-1500050 
 for multiple; Wed, 30 Dec 2020 16:19:53 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Dec 2020 16:19:52 +0000
Message-Id: <20201230161952.1658206-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_suspend: Remove legacy ring
 abi
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

Cover all engines with the engine map API.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_suspend.c | 69 +++++++++++++----------------------
 1 file changed, 25 insertions(+), 44 deletions(-)

diff --git a/tests/i915/gem_exec_suspend.c b/tests/i915/gem_exec_suspend.c
index 42b0ab705..a31dd6625 100644
--- a/tests/i915/gem_exec_suspend.c
+++ b/tests/i915/gem_exec_suspend.c
@@ -31,7 +31,6 @@
 #include <unistd.h>
 
 #include "i915/gem.h"
-#include "i915/gem_ring.h"
 #include "igt.h"
 #include "igt_dummyload.h"
 #include "igt_gt.h"
@@ -51,7 +50,7 @@
 #define CACHED (1<<8)
 #define HANG (2<<8)
 
-static void run_test(int fd, unsigned ring, unsigned flags);
+static void run_test(int fd, unsigned engine, unsigned flags);
 
 static void check_bo(int fd, uint32_t handle)
 {
@@ -68,24 +67,7 @@ static void check_bo(int fd, uint32_t handle)
 
 static void test_all(int fd, unsigned flags)
 {
-	for_each_physical_ring(e, fd)
-		if (gem_can_store_dword(fd, eb_ring(e)))
-			run_test(fd, eb_ring(e), flags & ~0xff);
-}
-
-static bool has_semaphores(int fd)
-{
-	struct drm_i915_getparam gp;
-	int val = -1;
-
-	memset(&gp, 0, sizeof(gp));
-	gp.param = I915_PARAM_HAS_SEMAPHORES;
-	gp.value = &val;
-
-	drmIoctl(fd, DRM_IOCTL_I915_GETPARAM, &gp);
-	errno = 0;
-
-	return val > 0;
+	run_test(fd, ALL_ENGINES, flags & ~0xff);
 }
 
 static void run_test(int fd, unsigned engine, unsigned flags)
@@ -101,25 +83,13 @@ static void run_test(int fd, unsigned engine, unsigned flags)
 
 	nengine = 0;
 	if (engine == ALL_ENGINES) {
-		/* If we don't have semaphores, then every ring switch
-		 * will result in a CPU stall until the previous write
-		 * has finished. This is likely to hide any issue with
-		 * the GPU being active across the suspend (because the
-		 * GPU is then unlikely to be active!)
-		 */
-		if (has_semaphores(fd)) {
-			for_each_physical_ring(e, fd) {
-				if (gem_can_store_dword(fd, eb_ring(e)))
-					engines[nengine++] = eb_ring(e);
-			}
-		} else {
-			igt_require(gem_has_ring(fd, 0));
-			igt_require(gem_can_store_dword(fd, 0));
-			engines[nengine++] = 0;
+		const struct intel_execution_engine2 *e;
+
+		__for_each_physical_engine(fd, e) {
+			if (gem_class_can_store_dword(fd, e->class))
+				engines[nengine++] = e->flags;
 		}
 	} else {
-		igt_require(gem_has_ring(fd, engine));
-		igt_require(gem_can_store_dword(fd, engine));
 		engines[nengine++] = engine;
 	}
 	igt_require(nengine);
@@ -301,7 +271,7 @@ igt_main
 		{ "-S4", HIBERNATE },
 		{ NULL, 0 }
 	}, *m;
-	const struct intel_execution_ring *e;
+	const struct intel_execution_engine2 *e;
 	igt_hang_t hang;
 	int fd;
 
@@ -326,12 +296,23 @@ igt_main
 	igt_subtest("basic-S4")
 		run_test(fd, ALL_ENGINES, HIBERNATE);
 
-	for (e = intel_execution_rings; e->name; e++) {
-		for (m = modes; m->suffix; m++) {
-			igt_subtest_f("%s-uncached%s", e->name, m->suffix)
-				run_test(fd, eb_ring(e), m->mode | UNCACHED);
-			igt_subtest_f("%s-cached%s", e->name, m->suffix)
-				run_test(fd, eb_ring(e), m->mode | CACHED);
+	for (m = modes; m->suffix; m++) {
+		igt_subtest_with_dynamic_f("uncached-%s", m->suffix) {
+			__for_each_physical_engine(fd, e) {
+				if (!gem_class_can_store_dword(fd, e->class))
+					continue;
+				igt_dynamic_f("%s", e->name)
+					run_test(fd, e->flags, m->mode | UNCACHED);
+			}
+		}
+
+		igt_subtest_with_dynamic_f("cached-%s", m->suffix) {
+			__for_each_physical_engine(fd, e) {
+				if (!gem_class_can_store_dword(fd, e->class))
+					continue;
+				igt_dynamic_f("%s", e->name)
+					run_test(fd, e->flags, m->mode | CACHED);
+			}
 		}
 	}
 
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
