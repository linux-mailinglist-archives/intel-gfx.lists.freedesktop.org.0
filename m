Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9369D182498
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 23:17:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C88F6E500;
	Wed, 11 Mar 2020 22:17:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DF126E4AD
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 22:17:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20527633-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 22:17:40 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 22:17:39 +0000
Message-Id: <20200311221739.30375-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200311221739.30375-1-chris@chris-wilson.co.uk>
References: <20200311221739.30375-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/gem: Take a copy of the engines for
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
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 114 +++++++++++++-------
 1 file changed, 77 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 5201bb83ba9f..ccb580a99101 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -261,6 +261,46 @@ static void free_engines_rcu(struct rcu_head *rcu)
 	free_engines(engines);
 }
 
+static int __i915_sw_fence_call
+engines_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
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
+static struct i915_gem_engines *alloc_engines(unsigned int count)
+{
+	struct i915_gem_engines *e;
+
+	e = kzalloc(struct_size(e, engines, count), GFP_KERNEL);
+	if (!e)
+		return NULL;
+
+	i915_sw_fence_init(&e->fence, engines_notify);
+	return e;
+}
+
 static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx)
 {
 	const struct intel_gt *gt = &ctx->i915->gt;
@@ -268,7 +308,7 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx)
 	struct i915_gem_engines *e;
 	enum intel_engine_id id;
 
-	e = kzalloc(struct_size(e, engines, I915_NUM_ENGINES), GFP_KERNEL);
+	e = alloc_engines(I915_NUM_ENGINES);
 	if (!e)
 		return ERR_PTR(-ENOMEM);
 
@@ -519,41 +559,12 @@ static void kill_context(struct i915_gem_context *ctx)
 	kill_stale_engines(ctx);
 }
 
-static int __i915_sw_fence_call
-engines_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
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
@@ -1057,6 +1068,30 @@ static void cb_retire(struct i915_active *base)
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
@@ -1067,6 +1102,7 @@ static int context_barrier_task(struct i915_gem_context *ctx,
 {
 	struct context_barrier_task *cb;
 	struct i915_gem_engines_iter it;
+	struct i915_gem_engines *e;
 	struct intel_context *ce;
 	int err = 0;
 
@@ -1083,7 +1119,13 @@ static int context_barrier_task(struct i915_gem_context *ctx,
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
@@ -1114,7 +1156,7 @@ static int context_barrier_task(struct i915_gem_context *ctx,
 		if (err)
 			break;
 	}
-	i915_gem_context_unlock_engines(ctx);
+	i915_sw_fence_complete(&e->fence);
 
 	cb->task = err ? NULL : task; /* caller needs to unwind instead */
 	cb->data = data;
@@ -1741,9 +1783,7 @@ set_engines(struct i915_gem_context *ctx,
 	 * first 64 engines defined here.
 	 */
 	num_engines = (args->size - sizeof(*user)) / sizeof(*user->engines);
-
-	set.engines = kmalloc(struct_size(set.engines, engines, num_engines),
-			      GFP_KERNEL);
+	set.engines = alloc_engines(num_engines);
 	if (!set.engines)
 		return -ENOMEM;
 
@@ -1823,7 +1863,7 @@ __copy_engines(struct i915_gem_engines *e)
 	struct i915_gem_engines *copy;
 	unsigned int n;
 
-	copy = kmalloc(struct_size(e, engines, e->num_engines), GFP_KERNEL);
+	copy = alloc_engines(e->num_engines);
 	if (!copy)
 		return ERR_PTR(-ENOMEM);
 
@@ -2084,7 +2124,7 @@ static int clone_engines(struct i915_gem_context *dst,
 	bool user_engines;
 	unsigned long n;
 
-	clone = kmalloc(struct_size(e, engines, e->num_engines), GFP_KERNEL);
+	clone = alloc_engines(e->num_engines);
 	if (!clone)
 		goto err_unlock;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
