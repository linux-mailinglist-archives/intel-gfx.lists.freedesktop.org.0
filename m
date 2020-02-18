Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C33162560
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 12:16:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BD1C6E223;
	Tue, 18 Feb 2020 11:16:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFF4F6E1D6
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 11:16:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20262319-1500050 
 for multiple; Tue, 18 Feb 2020 11:16:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2020 11:16:24 +0000
Message-Id: <20200218111624.1198504-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200218111624.1198504-1-chris@chris-wilson.co.uk>
References: <20200218111624.1198504-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/gem: Consolidate ctx->engines[]
 release
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

Use the same engine_idle_release() routine for cleaning all old
ctx->engine[] state, closing any potential races with concurrent execbuf
submission.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1241
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 177 +++++++++++---------
 1 file changed, 95 insertions(+), 82 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 3e82739bdbc0..e6d9dced6954 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -243,7 +243,6 @@ static void __free_engines(struct i915_gem_engines *e, unsigned int count)
 		if (!e->engines[count])
 			continue;
 
-		RCU_INIT_POINTER(e->engines[count]->gem_context, NULL);
 		intel_context_put(e->engines[count]);
 	}
 	kfree(e);
@@ -305,7 +304,6 @@ static void i915_gem_context_free(struct i915_gem_context *ctx)
 	list_del(&ctx->link);
 	spin_unlock(&ctx->i915->gem.contexts.lock);
 
-	free_engines(rcu_access_pointer(ctx->engines));
 	mutex_destroy(&ctx->engines_mutex);
 
 	if (ctx->timeline)
@@ -492,30 +490,107 @@ static void kill_engines(struct i915_gem_engines *engines)
 static void kill_stale_engines(struct i915_gem_context *ctx)
 {
 	struct i915_gem_engines *pos, *next;
-	unsigned long flags;
 
-	spin_lock_irqsave(&ctx->stale.lock, flags);
+	spin_lock_irq(&ctx->stale.lock);
+	GEM_BUG_ON(!i915_gem_context_is_closed(ctx));
 	list_for_each_entry_safe(pos, next, &ctx->stale.engines, link) {
-		if (!i915_sw_fence_await(&pos->fence))
+		if (!i915_sw_fence_await(&pos->fence)) {
+			list_del_init(&pos->link);
 			continue;
+		}
 
-		spin_unlock_irqrestore(&ctx->stale.lock, flags);
+		spin_unlock_irq(&ctx->stale.lock);
 
 		kill_engines(pos);
 
-		spin_lock_irqsave(&ctx->stale.lock, flags);
+		spin_lock_irq(&ctx->stale.lock);
+		GEM_BUG_ON(i915_sw_fence_signaled(&pos->fence));
 		list_safe_reset_next(pos, next, link);
 		list_del_init(&pos->link); /* decouple from FENCE_COMPLETE */
 
 		i915_sw_fence_complete(&pos->fence);
 	}
-	spin_unlock_irqrestore(&ctx->stale.lock, flags);
+	spin_unlock_irq(&ctx->stale.lock);
 }
 
 static void kill_context(struct i915_gem_context *ctx)
 {
 	kill_stale_engines(ctx);
-	kill_engines(__context_engines_static(ctx));
+}
+
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
+
+	GEM_BUG_ON(!engines);
+	i915_sw_fence_init(&engines->fence, engines_notify);
+	INIT_LIST_HEAD(&engines->link);
+
+	for_each_gem_engine(ce, engines, it) {
+		int err = 0;
+
+		RCU_INIT_POINTER(ce->gem_context, NULL);
+
+		if (!ce->timeline) { /* XXX serialisation with execbuf? */
+			intel_context_set_banned(ce);
+			continue;
+		}
+
+		mutex_lock(&ce->timeline->mutex);
+		if (!list_empty(&ce->timeline->requests)) {
+			struct i915_request *rq;
+
+			rq = list_last_entry(&ce->timeline->requests,
+					     typeof(*rq),
+					     link);
+
+			err = i915_sw_fence_await_dma_fence(&engines->fence,
+							    &rq->fence, 0,
+							    GFP_KERNEL);
+		}
+		mutex_unlock(&ce->timeline->mutex);
+		if (err < 0)
+			goto kill;
+	}
+
+	spin_lock_irq(&engines->ctx->stale.lock);
+	if (!i915_gem_context_is_closed(engines->ctx))
+		list_add_tail(&engines->link, &engines->ctx->stale.engines);
+	spin_unlock_irq(&engines->ctx->stale.lock);
+
+kill:
+	if (list_empty(&engines->link)) /* raced, already closed */
+		kill_engines(engines);
+
+	i915_sw_fence_commit(&engines->fence);
 }
 
 static void set_closed_name(struct i915_gem_context *ctx)
@@ -559,6 +634,11 @@ static void context_close(struct i915_gem_context *ctx)
 
 	mutex_unlock(&ctx->mutex);
 
+	/* Flush any concurrent set_engines() */
+	mutex_lock(&ctx->engines_mutex);
+	engines_idle_release(rcu_replace_pointer(ctx->engines, NULL, 1));
+	mutex_unlock(&ctx->engines_mutex);
+
 	/*
 	 * If the user has disabled hangchecking, we can not be sure that
 	 * the batches will ever complete after the context is closed,
@@ -1562,77 +1642,6 @@ static const i915_user_extension_fn set_engines__extensions[] = {
 	[I915_CONTEXT_ENGINES_EXT_BOND] = set_engines__bond,
 };
 
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
-static void engines_idle_release(struct i915_gem_engines *engines)
-{
-	struct i915_gem_engines_iter it;
-	struct intel_context *ce;
-	unsigned long flags;
-
-	GEM_BUG_ON(!engines);
-	i915_sw_fence_init(&engines->fence, engines_notify);
-
-	INIT_LIST_HEAD(&engines->link);
-	spin_lock_irqsave(&engines->ctx->stale.lock, flags);
-	if (!i915_gem_context_is_closed(engines->ctx))
-		list_add(&engines->link, &engines->ctx->stale.engines);
-	spin_unlock_irqrestore(&engines->ctx->stale.lock, flags);
-	if (list_empty(&engines->link)) /* raced, already closed */
-		goto kill;
-
-	for_each_gem_engine(ce, engines, it) {
-		struct dma_fence *fence;
-		int err;
-
-		if (!ce->timeline)
-			continue;
-
-		fence = i915_active_fence_get(&ce->timeline->last_request);
-		if (!fence)
-			continue;
-
-		err = i915_sw_fence_await_dma_fence(&engines->fence,
-						    fence, 0,
-						    GFP_KERNEL);
-
-		dma_fence_put(fence);
-		if (err < 0)
-			goto kill;
-	}
-	goto out;
-
-kill:
-	kill_engines(engines);
-out:
-	i915_sw_fence_commit(&engines->fence);
-}
-
 static int
 set_engines(struct i915_gem_context *ctx,
 	    const struct drm_i915_gem_context_param *args)
@@ -1729,6 +1738,11 @@ set_engines(struct i915_gem_context *ctx,
 
 replace:
 	mutex_lock(&ctx->engines_mutex);
+	if (i915_gem_context_is_closed(ctx)) {
+		mutex_unlock(&ctx->engines_mutex);
+		free_engines(set.engines);
+		return -ENOENT;
+	}
 	if (args->size)
 		i915_gem_context_set_user_engines(ctx);
 	else
@@ -2033,8 +2047,7 @@ static int clone_engines(struct i915_gem_context *dst,
 	i915_gem_context_unlock_engines(src);
 
 	/* Serialised by constructor */
-	free_engines(__context_engines_static(dst));
-	RCU_INIT_POINTER(dst->engines, clone);
+	engines_idle_release(rcu_replace_pointer(dst->engines, clone, 1));
 	if (user_engines)
 		i915_gem_context_set_user_engines(dst);
 	else
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
