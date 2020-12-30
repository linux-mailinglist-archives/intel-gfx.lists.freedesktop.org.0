Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D942E7AD5
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Dec 2020 17:02:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BC938913E;
	Wed, 30 Dec 2020 16:02:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43BEF8913E;
 Wed, 30 Dec 2020 16:02:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23464891-1500050 
 for multiple; Wed, 30 Dec 2020 16:01:59 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Dec 2020 16:01:57 +0000
Message-Id: <20201230160157.1535380-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_fence: Fix legacy ring
 selection
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

Fix the use of the legacy ring selection after the default context had
an engine map installed.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_fence.c | 30 ++++++++++++++++--------------
 1 file changed, 16 insertions(+), 14 deletions(-)

diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
index a149b0227..ae47a73e5 100644
--- a/tests/i915/gem_exec_fence.c
+++ b/tests/i915/gem_exec_fence.c
@@ -26,7 +26,6 @@
 #include <sys/signal.h>
 
 #include "i915/gem.h"
-#include "i915/gem_ring.h"
 #include "igt.h"
 #include "igt_syncobj.h"
 #include "igt_sysfs.h"
@@ -761,7 +760,7 @@ static void test_concurrent(int i915, const struct intel_execution_engine2 *e)
 	batch[++i] = MI_BATCH_BUFFER_END;
 	gem_write(i915, obj[1].handle, 0, batch, sizeof(batch));
 
-	execbuf.rsvd1 = gem_context_create(i915);
+	execbuf.rsvd1 = gem_context_clone_with_engines(i915, 0);
 	execbuf.rsvd2 = spin->out_fence;
 	if (gen < 6)
 		execbuf.flags |= I915_EXEC_SECURE;
@@ -922,6 +921,7 @@ static void test_long_history(int fd, long ring_size, unsigned flags)
 	const uint32_t bbe = MI_BATCH_BUFFER_END;
 	struct drm_i915_gem_exec_object2 obj[2];
 	struct drm_i915_gem_execbuffer2 execbuf;
+	const struct intel_execution_engine2 *e;
 	unsigned int engines[I915_EXEC_RING_MASK + 1], nengine, n, s;
 	unsigned long limit;
 	int all_fences;
@@ -932,8 +932,8 @@ static void test_long_history(int fd, long ring_size, unsigned flags)
 		limit = ring_size / 3;
 
 	nengine = 0;
-	for_each_physical_ring(e, fd)
-		engines[nengine++] = eb_ring(e);
+	__for_each_physical_engine(fd, e)
+		engines[nengine++] = e->flags;
 	igt_require(nengine);
 
 	gem_quiescent_gpu(fd);
@@ -956,7 +956,7 @@ static void test_long_history(int fd, long ring_size, unsigned flags)
 	obj[0].handle = igt_cork_plug(&c, fd);
 
 	igt_until_timeout(5) {
-		execbuf.rsvd1 = gem_context_create(fd);
+		execbuf.rsvd1 = gem_context_clone_with_engines(fd, 0);
 
 		for (n = 0; n < nengine; n++) {
 			struct sync_merge_data merge;
@@ -1265,6 +1265,7 @@ static void test_syncobj_wait(int fd)
 	struct drm_i915_gem_exec_fence fence = {
 		.handle = syncobj_create(fd, 0),
 	};
+	const struct intel_execution_engine2 *e;
 	unsigned handle[I915_EXEC_RING_MASK + 1];
 	igt_spin_t *spin;
 	int n;
@@ -1298,13 +1299,13 @@ static void test_syncobj_wait(int fd)
 	gem_write(fd, obj.handle, 0, &bbe, sizeof(bbe));
 
 	n = 0;
-	for_each_ring(e, fd) {
+	__for_each_physical_engine(fd, e) {
 		obj.handle = gem_create(fd, 4096);
 		gem_write(fd, obj.handle, 0, &bbe, sizeof(bbe));
 
 		/* No inter-engine synchronisation, will complete */
-		if (eb_ring(e) == I915_EXEC_BLT) {
-			execbuf.flags = eb_ring(e);
+		if (e->flags) {
+			execbuf.flags = e->flags;
 			execbuf.cliprects_ptr = 0;
 			execbuf.num_cliprects = 0;
 			gem_execbuf(fd, &execbuf);
@@ -1314,7 +1315,7 @@ static void test_syncobj_wait(int fd)
 		igt_assert(gem_bo_busy(fd, spin->handle));
 
 		/* Now wait upon the blocked engine */
-		execbuf.flags = I915_EXEC_FENCE_ARRAY | eb_ring(e);
+		execbuf.flags = I915_EXEC_FENCE_ARRAY | e->flags;
 		execbuf.cliprects_ptr = to_user_pointer(&fence);
 		execbuf.num_cliprects = 1;
 		fence.flags = I915_EXEC_FENCE_WAIT;
@@ -2018,6 +2019,7 @@ static void test_syncobj_timeline_wait(int fd)
 		.handle = syncobj_create(fd, 0),
 	};
 	unsigned handle[I915_EXEC_RING_MASK + 1];
+	const struct intel_execution_engine2 *e;
 	uint64_t value = 1;
 	igt_spin_t *spin;
 	int n;
@@ -2058,13 +2060,13 @@ static void test_syncobj_timeline_wait(int fd)
 	gem_write(fd, obj.handle, 0, bbe, sizeof(bbe));
 
 	n = 0;
-	for_each_ring(engine, fd) {
+	__for_each_physical_engine(fd, e) {
 		obj.handle = gem_create(fd, 4096);
 		gem_write(fd, obj.handle, 0, bbe, sizeof(bbe));
 
 		/* No inter-engine synchronisation, will complete */
-		if (engine->flags == I915_EXEC_BLT) {
-			execbuf.flags = engine->flags;
+		if (e->flags) {
+			execbuf.flags = e->flags;
 			execbuf.cliprects_ptr = 0;
 			execbuf.num_cliprects = 0;
 			gem_execbuf(fd, &execbuf);
@@ -2074,7 +2076,7 @@ static void test_syncobj_timeline_wait(int fd)
 		igt_assert(gem_bo_busy(fd, spin->handle));
 
 		/* Now wait upon the blocked engine */
-		execbuf.flags = I915_EXEC_USE_EXTENSIONS | engine->flags;
+		execbuf.flags = I915_EXEC_USE_EXTENSIONS | e->flags;
 		execbuf.cliprects_ptr = to_user_pointer(&timeline_fences);
 		execbuf.num_cliprects = 0;
 		fence.flags = I915_EXEC_FENCE_WAIT;
@@ -2688,7 +2690,7 @@ static void setup_timeline_chain_engines(struct inter_engine_context *context, i
 	context->fd = fd;
 	context->engines = engines;
 
-	context->wait_context = gem_context_create(fd);
+	context->wait_context = gem_context_clone_with_engines(fd, 0);
 	context->wait_timeline = syncobj_create(fd, 0);
 
 	context->engine_counter_object.handle = gem_create(fd, 4096);
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
