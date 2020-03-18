Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4B1189EC5
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 16:04:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE26E6E297;
	Wed, 18 Mar 2020 15:04:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76DEE6E297
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 15:04:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20604490-1500050 
 for multiple; Wed, 18 Mar 2020 15:04:09 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Mar 2020 15:04:07 +0000
Message-Id: <20200318150407.17083-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Wait until the context is finally
 retired before releasing engines
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

If we want to percolate information back from the HW, up through the GEM
context, we need to wait until the intel_context is scheduled out for
the last time. This is handled by the retirement of the intel_context's
barrier, i.e. by listening to the pulse after the notional unpin.

To accommodate this, we need to be able to flush the i915_active's
barriers before awaiting on them.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 17 +++++------
 drivers/gpu/drm/i915/i915_active.c          | 34 +++++++++++++++------
 drivers/gpu/drm/i915/i915_active.h          |  3 +-
 3 files changed, 34 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index c0e476fcd1fa..05fed8797d37 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -570,23 +570,20 @@ static void engines_idle_release(struct i915_gem_context *ctx,
 	engines->ctx = i915_gem_context_get(ctx);
 
 	for_each_gem_engine(ce, engines, it) {
-		struct dma_fence *fence;
-		int err = 0;
+		int err;
 
 		/* serialises with execbuf */
 		RCU_INIT_POINTER(ce->gem_context, NULL);
 		if (!intel_context_pin_if_active(ce))
 			continue;
 
-		fence = i915_active_fence_get(&ce->timeline->last_request);
-		if (fence) {
-			err = i915_sw_fence_await_dma_fence(&engines->fence,
-							    fence, 0,
-							    GFP_KERNEL);
-			dma_fence_put(fence);
-		}
+		/* Wait until context is finally scheduled out and retired */
+		err = i915_sw_fence_await_active(&engines->fence,
+						 &ce->active,
+						 I915_ACTIVE_AWAIT_ACTIVE |
+						 I915_ACTIVE_AWAIT_BARRIER);
 		intel_context_unpin(ce);
-		if (err < 0)
+		if (err)
 			goto kill;
 	}
 
diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index c4048628188a..400362912386 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -518,19 +518,18 @@ int i915_active_wait(struct i915_active *ref)
 	return 0;
 }
 
-static int __await_active(struct i915_active_fence *active,
-			  int (*fn)(void *arg, struct dma_fence *fence),
-			  void *arg)
+static int __await_fence(struct i915_active_fence *active,
+			 int (*fn)(void *arg, struct dma_fence *fence),
+			 void *arg)
 {
 	struct dma_fence *fence;
+	int err;
 
-	if (is_barrier(active)) /* XXX flush the barrier? */
+	if (is_barrier(active))
 		return 0;
 
 	fence = i915_active_fence_get(active);
 	if (fence) {
-		int err;
-
 		err = fn(arg, fence);
 		dma_fence_put(fence);
 		if (err < 0)
@@ -540,6 +539,22 @@ static int __await_active(struct i915_active_fence *active,
 	return 0;
 }
 
+static int __await_active(struct active_node *it,
+			  unsigned int flags,
+			  int (*fn)(void *arg, struct dma_fence *fence),
+			  void *arg)
+{
+	int err;
+
+	if (flags & I915_ACTIVE_AWAIT_BARRIER) {
+		err = flush_barrier(it);
+		if (err)
+			return err;
+	}
+
+	return __await_fence(&it->base, fn, arg);
+}
+
 static int await_active(struct i915_active *ref,
 			unsigned int flags,
 			int (*fn)(void *arg, struct dma_fence *fence),
@@ -549,16 +564,17 @@ static int await_active(struct i915_active *ref,
 
 	/* We must always wait for the exclusive fence! */
 	if (rcu_access_pointer(ref->excl.fence)) {
-		err = __await_active(&ref->excl, fn, arg);
+		err = __await_fence(&ref->excl, fn, arg);
 		if (err)
 			return err;
 	}
 
-	if (flags & I915_ACTIVE_AWAIT_ALL && i915_active_acquire_if_busy(ref)) {
+	if (flags & I915_ACTIVE_AWAIT_ACTIVE &&
+	    i915_active_acquire_if_busy(ref)) {
 		struct active_node *it, *n;
 
 		rbtree_postorder_for_each_entry_safe(it, n, &ref->tree, node) {
-			err = __await_active(&it->base, fn, arg);
+			err = __await_active(it, flags, fn, arg);
 			if (err)
 				break;
 		}
diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
index b3282ae7913c..9697592235fa 100644
--- a/drivers/gpu/drm/i915/i915_active.h
+++ b/drivers/gpu/drm/i915/i915_active.h
@@ -189,7 +189,8 @@ int i915_sw_fence_await_active(struct i915_sw_fence *fence,
 int i915_request_await_active(struct i915_request *rq,
 			      struct i915_active *ref,
 			      unsigned int flags);
-#define I915_ACTIVE_AWAIT_ALL BIT(0)
+#define I915_ACTIVE_AWAIT_ACTIVE BIT(0)
+#define I915_ACTIVE_AWAIT_BARRIER BIT(1)
 
 int i915_active_acquire(struct i915_active *ref);
 bool i915_active_acquire_if_busy(struct i915_active *ref);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
