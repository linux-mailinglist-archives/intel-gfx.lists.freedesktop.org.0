Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB0B1977BC
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 11:21:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C9F78992E;
	Mon, 30 Mar 2020 09:21:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D1608992E;
 Mon, 30 Mar 2020 09:21:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20737345-1500050 
 for multiple; Mon, 30 Mar 2020 10:21:19 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 10:21:15 +0100
Message-Id: <20200330092117.810776-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200330092117.810776-1-chris@chris-wilson.co.uk>
References: <20200330092117.810776-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/4] i915/gem_exec_async: Dynamise
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
 tests/i915/gem_exec_async.c | 37 ++++++++++++++++---------------------
 1 file changed, 16 insertions(+), 21 deletions(-)

diff --git a/tests/i915/gem_exec_async.c b/tests/i915/gem_exec_async.c
index 623493963..3187b4f63 100644
--- a/tests/i915/gem_exec_async.c
+++ b/tests/i915/gem_exec_async.c
@@ -80,9 +80,10 @@ static void store_dword(int fd, unsigned ring,
 	gem_close(fd, obj[1].handle);
 }
 
-static void one(int fd, unsigned ring, uint32_t flags)
+static void one(int fd, unsigned engine)
 {
 	const int gen = intel_gen(intel_get_drm_devid(fd));
+	const struct intel_execution_engine2 *e;
 	struct drm_i915_gem_exec_object2 obj[2];
 #define SCRATCH 0
 #define BATCH 1
@@ -137,22 +138,20 @@ static void one(int fd, unsigned ring, uint32_t flags)
 	memset(&execbuf, 0, sizeof(execbuf));
 	execbuf.buffers_ptr = to_user_pointer(obj);
 	execbuf.buffer_count = 2;
-	execbuf.flags = ring | flags;
-
-	igt_require(gem_engine_has_mutable_submission(fd, ring));
+	execbuf.flags = engine;
 
 	igt_require(__gem_execbuf(fd, &execbuf) == 0);
 	gem_close(fd, obj[BATCH].handle);
 
 	i = 0;
-	for_each_physical_engine(e, fd) {
-		if (eb_ring(e) == ring)
+	__for_each_physical_engine(fd, e) {
+		if (e->flags == engine)
 			continue;
 
-		if (!gem_can_store_dword(fd, eb_ring(e)))
+		if (!gem_class_can_store_dword(fd, e->class))
 			continue;
 
-		store_dword(fd, eb_ring(e), obj[SCRATCH].handle, 4*i, i);
+		store_dword(fd, e->flags, obj[SCRATCH].handle, 4*i, i);
 		i++;
 	}
 
@@ -185,9 +184,15 @@ static bool has_async_execbuf(int fd)
 	return async > 0;
 }
 
+#define test_each_engine(T, i915, e) \
+	igt_subtest_with_dynamic(T) __for_each_physical_engine(i915, e) \
+		for_each_if(gem_class_can_store_dword(i915, (e)->class) && \
+			    gem_class_has_mutable_submission(i915, (e)->class))\
+			igt_dynamic_f("%s", (e)->name)
+
 igt_main
 {
-	const struct intel_execution_engine *e;
+	const struct intel_execution_engine2 *e;
 	int fd = -1;
 
 	igt_fixture {
@@ -195,21 +200,11 @@ igt_main
 		igt_require_gem(fd);
 		gem_require_mmap_wc(fd);
 		igt_require(has_async_execbuf(fd));
-		igt_require(gem_can_store_dword(fd, 0));
 		igt_fork_hang_detector(fd);
 	}
 
-	for (e = intel_execution_engines; e->name; e++) {
-		/* default exec-id is purely symbolic */
-		if (e->exec_id == 0)
-			continue;
-
-		igt_subtest_f("concurrent-writes-%s", e->name) {
-			igt_require(gem_ring_has_physical_engine(fd, eb_ring(e)));
-			igt_require(gem_can_store_dword(fd, eb_ring(e)));
-			one(fd, e->exec_id, e->flags);
-		}
-	}
+	test_each_engine("concurrent-writes", fd, e)
+		one(fd, e->flags);
 
 	igt_fixture {
 		igt_stop_hang_detector();
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
