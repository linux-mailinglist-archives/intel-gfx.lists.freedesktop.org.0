Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B582F18F965
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 17:12:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 096096E288;
	Mon, 23 Mar 2020 16:12:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 995C76E288
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 16:12:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20663343-1500050 
 for multiple; Mon, 23 Mar 2020 16:11:56 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Mar 2020 16:11:56 +0000
Message-Id: <20200323161156.9732-1-chris@chris-wilson.co.uk>
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
barrier, i.e. by listening to the pulse after the notional unpin. So
wait until the intel_context is finally retired before releasing the
engine, so that we can inspect the final context state and pass it on.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 16 +++---
 drivers/gpu/drm/i915/i915_active.c          | 57 ++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_active.h          |  3 +-
 3 files changed, 64 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index dffe0daee0d2..55f7879f6db4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -570,23 +570,19 @@ static void engines_idle_release(struct i915_gem_context *ctx,
 	engines->ctx = i915_gem_context_get(ctx);
 
 	for_each_gem_engine(ce, engines, it) {
-		struct dma_fence *fence;
-		int err = 0;
+		int err;
 
 		/* serialises with execbuf */
 		set_bit(CONTEXT_CLOSED_BIT, &ce->flags);
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
+						 I915_ACTIVE_AWAIT_BARRIER);
 		intel_context_unpin(ce);
-		if (err < 0)
+		if (err)
 			goto kill;
 	}
 
diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index 7b685032cc1e..c01bf25c8e5e 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -542,6 +542,54 @@ static int __await_active(struct i915_active_fence *active,
 	return 0;
 }
 
+struct wait_barrier {
+	struct wait_queue_entry base;
+	struct i915_active *ref;
+};
+
+static int
+barrier_wake(wait_queue_entry_t *wq, unsigned mode, int flags, void *key)
+{
+	struct wait_barrier *wb = container_of(wq, typeof(*wb), base);
+
+	if (i915_active_is_idle(wb->ref)) { /* shared waitqueue, must check! */
+		list_del(&wq->entry);
+		i915_sw_fence_complete(wq->private);
+		kfree(wq);
+	}
+
+	return 0;
+}
+
+static int __await_barrier(struct i915_active *ref, struct i915_sw_fence *fence)
+{
+	struct wait_barrier *wb;
+
+	wb = kmalloc(sizeof(*wb), GFP_NOWAIT | __GFP_NOWARN);
+	if (unlikely(!wb))
+		return -ENOMEM;
+
+	if (!i915_active_acquire_if_busy(ref)) {
+		kfree(wb);
+		return 0;
+	}
+
+	if (!i915_sw_fence_await(fence)) {
+		kfree(wb);
+		i915_active_release(ref);
+		return -EINVAL;
+	}
+
+	wb->base.flags = 0;
+	wb->base.func = barrier_wake;
+	wb->base.private = fence;
+
+	add_wait_queue(__var_waitqueue(ref), &wb->base);
+
+	i915_active_release(ref);
+	return 0;
+}
+
 static int await_active(struct i915_active *ref,
 			unsigned int flags,
 			int (*fn)(void *arg, struct dma_fence *fence),
@@ -556,7 +604,8 @@ static int await_active(struct i915_active *ref,
 			return err;
 	}
 
-	if (flags & I915_ACTIVE_AWAIT_ALL && i915_active_acquire_if_busy(ref)) {
+	if (flags & I915_ACTIVE_AWAIT_ACTIVE &&
+	    i915_active_acquire_if_busy(ref)) {
 		struct active_node *it, *n;
 
 		rbtree_postorder_for_each_entry_safe(it, n, &ref->tree, node) {
@@ -569,6 +618,12 @@ static int await_active(struct i915_active *ref,
 			return err;
 	}
 
+	if (flags & I915_ACTIVE_AWAIT_BARRIER) {
+		err = __await_barrier(ref, arg);
+		if (err)
+			return err;
+	}
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
index 4f9aa7bab514..c7d54d2302a2 100644
--- a/drivers/gpu/drm/i915/i915_active.h
+++ b/drivers/gpu/drm/i915/i915_active.h
@@ -193,7 +193,8 @@ int i915_sw_fence_await_active(struct i915_sw_fence *fence,
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
