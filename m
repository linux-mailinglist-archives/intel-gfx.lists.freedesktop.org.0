Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D093153931
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 20:39:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FF4F6E9E4;
	Wed,  5 Feb 2020 19:39:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D57E6E9E4
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 19:39:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20128945-1500050 
 for multiple; Wed, 05 Feb 2020 19:39:23 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Feb 2020 19:39:22 +0000
Message-Id: <20200205193922.1976540-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200205121147.1834445-1-chris@chris-wilson.co.uk>
References: <20200205121147.1834445-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Don't leak non-persistent
 requests on changing engines
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

If we have a set of active engines marked as being non-persistent, we
lose track of those if the user replaces those engines with
I915_CONTEXT_PARAM_ENGINES. As part of our uABI contract is that
non-persistent requests are terminated if they are no longer being
tracked by the user's context (in order to prevent a lost request
causing an untracked and so unstoppable GPU hang), we need to apply the
same context cancellation upon changing engines.

v2: Track stale engines[] so we only reap at context closure.

Fixes: a0e047156cde ("drm/i915/gem: Make context persistence optional")
Testcase: igt/gem_ctx_peristence/replace
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 109 ++++++++++++++++--
 .../gpu/drm/i915/gem/i915_gem_context_types.h |  11 +-
 drivers/gpu/drm/i915/i915_sw_fence.c          |  15 ++-
 drivers/gpu/drm/i915/i915_sw_fence.h          |   2 +-
 4 files changed, 124 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 52a749691a8d..01ffb1d1c6a0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -270,7 +270,8 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx)
 	if (!e)
 		return ERR_PTR(-ENOMEM);
 
-	init_rcu_head(&e->rcu);
+	e->ctx = ctx;
+
 	for_each_engine(engine, gt, id) {
 		struct intel_context *ce;
 
@@ -450,7 +451,7 @@ static struct intel_engine_cs *active_engine(struct intel_context *ce)
 	return engine;
 }
 
-static void kill_context(struct i915_gem_context *ctx)
+static void kill_engines(struct i915_gem_engines *engines)
 {
 	struct i915_gem_engines_iter it;
 	struct intel_context *ce;
@@ -462,7 +463,7 @@ static void kill_context(struct i915_gem_context *ctx)
 	 * However, we only care about pending requests, so only include
 	 * engines on which there are incomplete requests.
 	 */
-	for_each_gem_engine(ce, __context_engines_static(ctx), it) {
+	for_each_gem_engine(ce, engines, it) {
 		struct intel_engine_cs *engine;
 
 		if (intel_context_set_banned(ce))
@@ -484,8 +485,32 @@ static void kill_context(struct i915_gem_context *ctx)
 			 * the context from the GPU, we have to resort to a full
 			 * reset. We hope the collateral damage is worth it.
 			 */
-			__reset_context(ctx, engine);
+			__reset_context(engines->ctx, engine);
+	}
+}
+
+static void kill_context(struct i915_gem_context *ctx)
+{
+	struct i915_gem_engines *pos, *next;
+
+	spin_lock(&ctx->stale_lock);
+	list_for_each_entry_safe(pos, next, &ctx->stale_list, link) {
+		if (!i915_sw_fence_await(&pos->fence))
+			continue;
+
+		spin_unlock(&ctx->stale_lock);
+
+		kill_engines(pos);
+
+		spin_lock(&ctx->stale_lock);
+		list_safe_reset_next(pos, next, link);
+		list_del_init(&pos->link);
+
+		i915_sw_fence_complete(&pos->fence);
 	}
+	spin_unlock(&ctx->stale_lock);
+
+	kill_engines(__context_engines_static(ctx));
 }
 
 static void set_closed_name(struct i915_gem_context *ctx)
@@ -602,6 +627,9 @@ __create_context(struct drm_i915_private *i915)
 	ctx->sched.priority = I915_USER_PRIORITY(I915_PRIORITY_NORMAL);
 	mutex_init(&ctx->mutex);
 
+	INIT_LIST_HEAD(&ctx->stale_list);
+	spin_lock_init(&ctx->stale_lock);
+
 	mutex_init(&ctx->engines_mutex);
 	e = default_engines(ctx);
 	if (IS_ERR(e)) {
@@ -1529,6 +1557,66 @@ static const i915_user_extension_fn set_engines__extensions[] = {
 	[I915_CONTEXT_ENGINES_EXT_BOND] = set_engines__bond,
 };
 
+static int engines_notify(struct i915_sw_fence *fence,
+			  enum i915_sw_fence_notify state)
+{
+	struct i915_gem_engines *engines =
+		container_of(fence, typeof(*engines), fence);
+
+	switch (state) {
+	case FENCE_COMPLETE:
+		if (!list_empty(&engines->link)) {
+			spin_lock(&engines->ctx->stale_lock);
+			list_del(&engines->link);
+			spin_unlock(&engines->ctx->stale_lock);
+		}
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
+static int engines_listen(struct i915_gem_engines *engines)
+{
+	struct i915_gem_engines_iter it;
+	struct intel_context *ce;
+
+	GEM_BUG_ON(!engines);
+	i915_sw_fence_init(&engines->fence, engines_notify);
+
+	for_each_gem_engine(ce, engines, it) {
+		struct dma_fence *fence;
+		int err;
+
+		if (!ce->timeline)
+			continue;
+
+		fence = i915_active_fence_get(&ce->timeline->last_request);
+		if (!fence)
+			continue;
+
+		err = i915_sw_fence_await_dma_fence(&engines->fence,
+						    fence, 0,
+						    GFP_KERNEL);
+
+		dma_fence_put(fence);
+		if (err < 0)
+			return err;
+	}
+
+	spin_lock(&engines->ctx->stale_lock);
+	list_add(&engines->link, &engines->ctx->stale_list);
+	spin_unlock(&engines->ctx->stale_lock);
+
+	i915_sw_fence_commit(&engines->fence);
+	return 0;
+}
+
 static int
 set_engines(struct i915_gem_context *ctx,
 	    const struct drm_i915_gem_context_param *args)
@@ -1571,7 +1659,8 @@ set_engines(struct i915_gem_context *ctx,
 	if (!set.engines)
 		return -ENOMEM;
 
-	init_rcu_head(&set.engines->rcu);
+	set.engines->ctx = ctx;
+
 	for (n = 0; n < num_engines; n++) {
 		struct i915_engine_class_instance ci;
 		struct intel_engine_cs *engine;
@@ -1631,7 +1720,11 @@ set_engines(struct i915_gem_context *ctx,
 	set.engines = rcu_replace_pointer(ctx->engines, set.engines, 1);
 	mutex_unlock(&ctx->engines_mutex);
 
-	call_rcu(&set.engines->rcu, free_engines_rcu);
+	/* Keep track of old engine sets for kill_context() */
+	if (engines_listen(set.engines)) {
+		kill_engines(set.engines); /* on error, immediately cleanup */
+		engines_notify(&set.engines->fence, FENCE_FREE);
+	}
 
 	return 0;
 }
@@ -1646,7 +1739,6 @@ __copy_engines(struct i915_gem_engines *e)
 	if (!copy)
 		return ERR_PTR(-ENOMEM);
 
-	init_rcu_head(&copy->rcu);
 	for (n = 0; n < e->num_engines; n++) {
 		if (e->engines[n])
 			copy->engines[n] = intel_context_get(e->engines[n]);
@@ -1890,7 +1982,8 @@ static int clone_engines(struct i915_gem_context *dst,
 	if (!clone)
 		goto err_unlock;
 
-	init_rcu_head(&clone->rcu);
+	clone->ctx = dst;
+
 	for (n = 0; n < e->num_engines; n++) {
 		struct intel_engine_cs *engine;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 017ca803ab47..39c2f6189684 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -20,6 +20,7 @@
 #include "gt/intel_context_types.h"
 
 #include "i915_scheduler.h"
+#include "i915_sw_fence.h"
 
 struct pid;
 
@@ -30,7 +31,12 @@ struct intel_timeline;
 struct intel_ring;
 
 struct i915_gem_engines {
-	struct rcu_head rcu;
+	union {
+		struct rcu_head rcu;
+		struct list_head link;
+	};
+	struct i915_sw_fence fence;
+	struct i915_gem_context *ctx;
 	unsigned int num_engines;
 	struct intel_context *engines[];
 };
@@ -173,6 +179,9 @@ struct i915_gem_context {
 	 * context in messages.
 	 */
 	char name[TASK_COMM_LEN + 8];
+
+	struct spinlock stale_lock;
+	struct list_head stale_list;
 };
 
 #endif /* __I915_GEM_CONTEXT_TYPES_H__ */
diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
index 51ba97daf2a0..e47b9cf952c4 100644
--- a/drivers/gpu/drm/i915/i915_sw_fence.c
+++ b/drivers/gpu/drm/i915/i915_sw_fence.c
@@ -211,10 +211,19 @@ void i915_sw_fence_complete(struct i915_sw_fence *fence)
 	__i915_sw_fence_complete(fence, NULL);
 }
 
-void i915_sw_fence_await(struct i915_sw_fence *fence)
+bool i915_sw_fence_await(struct i915_sw_fence *fence)
 {
-	debug_fence_assert(fence);
-	WARN_ON(atomic_inc_return(&fence->pending) <= 1);
+	int old, new;
+
+	new = atomic_read(&fence->pending);
+	do {
+		if (new < 1)
+			return false;
+
+		old = new++;
+	} while((new = atomic_cmpxchg(&fence->pending, old, new)) != old);
+
+	return true;
 }
 
 void __i915_sw_fence_init(struct i915_sw_fence *fence,
diff --git a/drivers/gpu/drm/i915/i915_sw_fence.h b/drivers/gpu/drm/i915/i915_sw_fence.h
index 19e806ce43bc..30a863353ee6 100644
--- a/drivers/gpu/drm/i915/i915_sw_fence.h
+++ b/drivers/gpu/drm/i915/i915_sw_fence.h
@@ -91,7 +91,7 @@ int i915_sw_fence_await_reservation(struct i915_sw_fence *fence,
 				    unsigned long timeout,
 				    gfp_t gfp);
 
-void i915_sw_fence_await(struct i915_sw_fence *fence);
+bool i915_sw_fence_await(struct i915_sw_fence *fence);
 void i915_sw_fence_complete(struct i915_sw_fence *fence);
 
 static inline bool i915_sw_fence_signaled(const struct i915_sw_fence *fence)
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
