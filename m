Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E72AF155673
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 12:11:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 134CC6EA92;
	Fri,  7 Feb 2020 11:11:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from spamshield.firefly-cloud.com
 (ec2-52-211-27-78.eu-west-1.compute.amazonaws.com [52.211.27.78])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9DAE16EA92
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 11:11:45 +0000 (UTC)
Received: from spamshield.firefly-cloud.com (localhost [127.0.0.1])
 by spamshield.firefly-cloud.com (Postfix) with ESMTP id C71231CC614
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 11:11:44 +0000 (GMT)
Received: from localhost (localhost [127.0.0.1])
 by spamshield.firefly-cloud.com (Postfix) with ESMTP id C2DAF1CC611
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 11:11:44 +0000 (GMT)
X-Virus-Scanned: by SpamTitan at eu-west-1.compute.internal
Received: from spamshield.firefly-cloud.com (localhost [127.0.0.1])
 by spamshield.firefly-cloud.com (Postfix) with ESMTP id 27FB11CC61B
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 11:11:39 +0000 (GMT)
Authentication-Results: spamshield.firefly-cloud.com; none
Received: from fireflyinternet.com (unknown [77.68.26.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by spamshield.firefly-cloud.com (Postfix) with ESMTPS id A17A71CC614
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 11:11:37 +0000 (GMT)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20146972-1500050 
 for multiple; Fri, 07 Feb 2020 11:11:25 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Feb 2020 11:11:22 +0000
Message-Id: <20200207111124.2762388-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/gem: Don't leak non-persistent
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
Cc: matthew.auld@intel.com
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
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 118 ++++++++++++++++--
 .../gpu/drm/i915/gem/i915_gem_context_types.h |  13 +-
 drivers/gpu/drm/i915/i915_sw_fence.c          |  15 ++-
 drivers/gpu/drm/i915/i915_sw_fence.h          |   2 +-
 4 files changed, 135 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 52a749691a8d..579215161c21 100644
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
@@ -484,10 +485,41 @@ static void kill_context(struct i915_gem_context *ctx)
 			 * the context from the GPU, we have to resort to a full
 			 * reset. We hope the collateral damage is worth it.
 			 */
-			__reset_context(ctx, engine);
+			__reset_context(engines->ctx, engine);
 	}
 }
 
+static void kill_stale_engines(struct i915_gem_context *ctx)
+{
+	struct i915_gem_engines *pos, *next;
+	unsigned long flags;
+
+	spin_lock_irqsave(&ctx->stale.lock, flags);
+	list_for_each_entry_safe(pos, next, &ctx->stale.engines, link) {
+		if (!i915_sw_fence_await(&pos->fence))
+			continue;
+
+		spin_unlock_irqrestore(&ctx->stale.lock, flags);
+
+		kill_engines(pos);
+
+		spin_lock_irqsave(&ctx->stale.lock, flags);
+		list_safe_reset_next(pos, next, link);
+		list_del_init(&pos->link);
+
+		i915_sw_fence_complete(&pos->fence);
+	}
+	spin_unlock_irqrestore(&ctx->stale.lock, flags);
+}
+
+static void kill_context(struct i915_gem_context *ctx)
+{
+	if (!list_empty(&ctx->stale.engines))
+		kill_stale_engines(ctx);
+
+	kill_engines(__context_engines_static(ctx));
+}
+
 static void set_closed_name(struct i915_gem_context *ctx)
 {
 	char *s;
@@ -602,6 +634,9 @@ __create_context(struct drm_i915_private *i915)
 	ctx->sched.priority = I915_USER_PRIORITY(I915_PRIORITY_NORMAL);
 	mutex_init(&ctx->mutex);
 
+	spin_lock_init(&ctx->stale.lock);
+	INIT_LIST_HEAD(&ctx->stale.engines);
+
 	mutex_init(&ctx->engines_mutex);
 	e = default_engines(ctx);
 	if (IS_ERR(e)) {
@@ -1529,6 +1564,71 @@ static const i915_user_extension_fn set_engines__extensions[] = {
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
+			struct i915_gem_context *ctx = engines->ctx;
+			unsigned long flags;
+
+			spin_lock_irqsave(&ctx->stale.lock, flags);
+			list_del(&engines->link);
+			spin_unlock_irqrestore(&ctx->stale.lock, flags);
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
+static void engines_idle_release(struct i915_gem_engines *engines)
+{
+	struct i915_gem_engines_iter it;
+	struct intel_context *ce;
+	unsigned long flags;
+
+	GEM_BUG_ON(!engines);
+	i915_sw_fence_init(&engines->fence, engines_notify);
+
+	spin_lock_irqsave(&engines->ctx->stale.lock, flags);
+	list_add(&engines->link, &engines->ctx->stale.engines);
+	spin_unlock_irqrestore(&engines->ctx->stale.lock, flags);
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
+		if (err < 0) {
+			kill_engines(engines);
+			break;
+		}
+	}
+
+	i915_sw_fence_commit(&engines->fence);
+}
+
 static int
 set_engines(struct i915_gem_context *ctx,
 	    const struct drm_i915_gem_context_param *args)
@@ -1571,7 +1671,8 @@ set_engines(struct i915_gem_context *ctx,
 	if (!set.engines)
 		return -ENOMEM;
 
-	init_rcu_head(&set.engines->rcu);
+	set.engines->ctx = ctx;
+
 	for (n = 0; n < num_engines; n++) {
 		struct i915_engine_class_instance ci;
 		struct intel_engine_cs *engine;
@@ -1631,7 +1732,8 @@ set_engines(struct i915_gem_context *ctx,
 	set.engines = rcu_replace_pointer(ctx->engines, set.engines, 1);
 	mutex_unlock(&ctx->engines_mutex);
 
-	call_rcu(&set.engines->rcu, free_engines_rcu);
+	/* Keep track of old engine sets for kill_context() */
+	engines_idle_release(set.engines);
 
 	return 0;
 }
@@ -1646,7 +1748,6 @@ __copy_engines(struct i915_gem_engines *e)
 	if (!copy)
 		return ERR_PTR(-ENOMEM);
 
-	init_rcu_head(&copy->rcu);
 	for (n = 0; n < e->num_engines; n++) {
 		if (e->engines[n])
 			copy->engines[n] = intel_context_get(e->engines[n]);
@@ -1890,7 +1991,8 @@ static int clone_engines(struct i915_gem_context *dst,
 	if (!clone)
 		goto err_unlock;
 
-	init_rcu_head(&clone->rcu);
+	clone->ctx = dst;
+
 	for (n = 0; n < e->num_engines; n++) {
 		struct intel_engine_cs *engine;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 017ca803ab47..8d996dde8046 100644
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
@@ -173,6 +179,11 @@ struct i915_gem_context {
 	 * context in messages.
 	 */
 	char name[TASK_COMM_LEN + 8];
+
+	struct {
+		struct spinlock lock;
+		struct list_head engines;
+	} stale;
 };
 
 #endif /* __I915_GEM_CONTEXT_TYPES_H__ */
diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
index 51ba97daf2a0..9a20b7246f91 100644
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
+	} while ((new = atomic_cmpxchg(&fence->pending, old, new)) != old);
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
