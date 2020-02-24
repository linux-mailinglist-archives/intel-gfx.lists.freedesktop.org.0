Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 309DC16A35B
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 11:00:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C2BD6E3C1;
	Mon, 24 Feb 2020 10:00:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 182C06E3C1
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 10:00:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20328986-1500050 
 for multiple; Mon, 24 Feb 2020 10:00:09 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Feb 2020 09:59:56 +0000
Message-Id: <20200224100007.4024184-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200224100007.4024184-1-chris@chris-wilson.co.uk>
References: <20200224100007.4024184-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/14] drm/i915: Flush idle barriers when waiting
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If we do find ourselves with an idle barrier inside our active while
waiting, attempt to flush it by emitting a pulse using the kernel
context.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Steve Carbonari <steven.carbonari@intel.com>
---
 drivers/gpu/drm/i915/i915_active.c           | 42 ++++++++++++++----
 drivers/gpu/drm/i915/selftests/i915_active.c | 46 ++++++++++++++++++++
 2 files changed, 79 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index 9ccb931a733e..fae7e3820592 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -7,6 +7,7 @@
 #include <linux/debugobjects.h>
 
 #include "gt/intel_context.h"
+#include "gt/intel_engine_heartbeat.h"
 #include "gt/intel_engine_pm.h"
 #include "gt/intel_ring.h"
 
@@ -460,26 +461,49 @@ static void enable_signaling(struct i915_active_fence *active)
 	dma_fence_put(fence);
 }
 
-int i915_active_wait(struct i915_active *ref)
+static int flush_barrier(struct active_node *it)
 {
-	struct active_node *it, *n;
-	int err = 0;
+	struct intel_engine_cs *engine;
 
-	might_sleep();
+	if (!is_barrier(&it->base))
+		return 0;
 
-	if (!i915_active_acquire_if_busy(ref))
+	engine = __barrier_to_engine(it);
+	smp_rmb(); /* serialise with add_active_barriers */
+	if (!is_barrier(&it->base))
 		return 0;
 
-	/* Flush lazy signals */
+	return intel_engine_flush_barriers(engine);
+}
+
+static int flush_lazy_signals(struct i915_active *ref)
+{
+	struct active_node *it, *n;
+	int err = 0;
+
 	enable_signaling(&ref->excl);
 	rbtree_postorder_for_each_entry_safe(it, n, &ref->tree, node) {
-		if (is_barrier(&it->base)) /* unconnected idle barrier */
-			continue;
+		err = flush_barrier(it); /* unconnected idle barrier? */
+		if (err)
+			break;
 
 		enable_signaling(&it->base);
 	}
-	/* Any fence added after the wait begins will not be auto-signaled */
 
+	return err;
+}
+
+int i915_active_wait(struct i915_active *ref)
+{
+	int err;
+
+	might_sleep();
+
+	if (!i915_active_acquire_if_busy(ref))
+		return 0;
+
+	/* Any fence added after the wait begins will not be auto-signaled */
+	err = flush_lazy_signals(ref);
 	i915_active_release(ref);
 	if (err)
 		return err;
diff --git a/drivers/gpu/drm/i915/selftests/i915_active.c b/drivers/gpu/drm/i915/selftests/i915_active.c
index ef572a0c2566..067e30b8927f 100644
--- a/drivers/gpu/drm/i915/selftests/i915_active.c
+++ b/drivers/gpu/drm/i915/selftests/i915_active.c
@@ -201,11 +201,57 @@ static int live_active_retire(void *arg)
 	return err;
 }
 
+static int live_active_barrier(void *arg)
+{
+	struct drm_i915_private *i915 = arg;
+	struct intel_engine_cs *engine;
+	struct live_active *active;
+	int err = 0;
+
+	/* Check that we get a callback when requests retire upon waiting */
+
+	active = __live_alloc(i915);
+	if (!active)
+		return -ENOMEM;
+
+	err = i915_active_acquire(&active->base);
+	if (err)
+		goto out;
+
+	for_each_uabi_engine(engine, i915) {
+		err = i915_active_acquire_preallocate_barrier(&active->base,
+							      engine);
+		if (err)
+			break;
+
+		i915_active_acquire_barrier(&active->base);
+	}
+
+	i915_active_release(&active->base);
+
+	if (err == 0)
+		err = i915_active_wait(&active->base);
+
+	if (err == 0 && !READ_ONCE(active->retired)) {
+		pr_err("i915_active not retired after flushing barriers!\n");
+		err = -EINVAL;
+	}
+
+out:
+	__live_put(active);
+
+	if (igt_flush_test(i915))
+		err = -EIO;
+
+	return err;
+}
+
 int i915_active_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
 		SUBTEST(live_active_wait),
 		SUBTEST(live_active_retire),
+		SUBTEST(live_active_barrier),
 	};
 
 	if (intel_gt_is_wedged(&i915->gt))
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
