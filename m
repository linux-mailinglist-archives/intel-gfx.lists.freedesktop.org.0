Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6A2181916
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 14:05:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34B2C6E455;
	Wed, 11 Mar 2020 13:05:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 699826E455
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 13:05:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20521597-1500050 
 for multiple; Wed, 11 Mar 2020 13:04:45 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 13:04:44 +0000
Message-Id: <20200311130444.9627-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200311124933.8649-1-chris@chris-wilson.co.uk>
References: <20200311124933.8649-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915/gem: Take a copy of the engines for
 context_barrier_task
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

When applying the context-barrier, we only care about the current
engines, as the next set of engines will be naturally after the barrier.
So we can skip holding the ctx->engines_mutex while constructing the
request by taking a sneaky reference to the i915_gem_engines instead.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 94 ++++++++++++++-------
 1 file changed, 63 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 50ecc0b2b235..8283ad8b2d11 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -261,6 +261,34 @@ static void free_engines_rcu(struct rcu_head *rcu)
 	free_engines(engines);
 }
 
+static int engines_notify(struct i915_sw_fence *fence,
+			  enum i915_sw_fence_notify state)
+{
+	struct i915_gem_engines *engines =
+		container_of(fence, typeof(*engines), fence);
+
+	switch (state) {
+	case FENCE_COMPLETE:
+		if (!list_empty(&engines->link)) {
+			struct i915_gem_context *ctx = engines->ctx;
+			unsigned long flags;
+
+			spin_lock_irqsave(&ctx->stale.lock, flags);
+			list_del(&engines->link);
+			spin_unlock_irqrestore(&ctx->stale.lock, flags);
+		}
+		i915_gem_context_put(engines->ctx);
+		break;
+
+	case FENCE_FREE:
+		init_rcu_head(&engines->rcu);
+		call_rcu(&engines->rcu, free_engines_rcu);
+		break;
+	}
+
+	return NOTIFY_DONE;
+}
+
 static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx)
 {
 	const struct intel_gt *gt = &ctx->i915->gt;
@@ -272,6 +300,8 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx)
 	if (!e)
 		return ERR_PTR(-ENOMEM);
 
+	i915_sw_fence_init(&e->fence, engines_notify);
+
 	for_each_engine(engine, gt, id) {
 		struct intel_context *ce;
 
@@ -519,41 +549,12 @@ static void kill_context(struct i915_gem_context *ctx)
 	kill_stale_engines(ctx);
 }
 
-static int engines_notify(struct i915_sw_fence *fence,
-			  enum i915_sw_fence_notify state)
-{
-	struct i915_gem_engines *engines =
-		container_of(fence, typeof(*engines), fence);
-
-	switch (state) {
-	case FENCE_COMPLETE:
-		if (!list_empty(&engines->link)) {
-			struct i915_gem_context *ctx = engines->ctx;
-			unsigned long flags;
-
-			spin_lock_irqsave(&ctx->stale.lock, flags);
-			list_del(&engines->link);
-			spin_unlock_irqrestore(&ctx->stale.lock, flags);
-		}
-		i915_gem_context_put(engines->ctx);
-		break;
-
-	case FENCE_FREE:
-		init_rcu_head(&engines->rcu);
-		call_rcu(&engines->rcu, free_engines_rcu);
-		break;
-	}
-
-	return NOTIFY_DONE;
-}
-
 static void engines_idle_release(struct i915_gem_context *ctx,
 				 struct i915_gem_engines *engines)
 {
 	struct i915_gem_engines_iter it;
 	struct intel_context *ce;
 
-	i915_sw_fence_init(&engines->fence, engines_notify);
 	INIT_LIST_HEAD(&engines->link);
 
 	engines->ctx = i915_gem_context_get(ctx);
@@ -1079,6 +1080,30 @@ static void cb_retire(struct i915_active *base)
 	kfree(cb);
 }
 
+static inline struct i915_gem_engines *
+__context_engines_await(const struct i915_gem_context *ctx)
+{
+	struct i915_gem_engines *engines;
+
+	rcu_read_lock();
+	do {
+		engines = rcu_dereference(ctx->engines);
+		if (unlikely(!engines))
+			break;
+
+		if (unlikely(!i915_sw_fence_await(&engines->fence)))
+			continue;
+
+		if (likely(engines == rcu_access_pointer(ctx->engines)))
+			break;
+
+		i915_sw_fence_complete(&engines->fence);
+	} while(1);
+	rcu_read_unlock();
+
+	return engines;
+}
+
 I915_SELFTEST_DECLARE(static intel_engine_mask_t context_barrier_inject_fault);
 static int context_barrier_task(struct i915_gem_context *ctx,
 				intel_engine_mask_t engines,
@@ -1089,6 +1114,7 @@ static int context_barrier_task(struct i915_gem_context *ctx,
 {
 	struct context_barrier_task *cb;
 	struct i915_gem_engines_iter it;
+	struct i915_gem_engines *e;
 	struct intel_context *ce;
 	int err = 0;
 
@@ -1105,7 +1131,13 @@ static int context_barrier_task(struct i915_gem_context *ctx,
 		return err;
 	}
 
-	for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
+	e = __context_engines_await(ctx);
+	if (!e) {
+		i915_active_release(&cb->base);
+		return -ENOENT;
+	}
+
+	for_each_gem_engine(ce, e, it) {
 		struct i915_request *rq;
 
 		if (I915_SELFTEST_ONLY(context_barrier_inject_fault &
@@ -1136,7 +1168,7 @@ static int context_barrier_task(struct i915_gem_context *ctx,
 		if (err)
 			break;
 	}
-	i915_gem_context_unlock_engines(ctx);
+	i915_sw_fence_complete(&e->fence);
 
 	cb->task = err ? NULL : task; /* caller needs to unwind instead */
 	cb->data = data;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
