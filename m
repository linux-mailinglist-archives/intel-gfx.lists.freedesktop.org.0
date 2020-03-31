Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FF819A0E1
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 23:31:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 865B989B95;
	Tue, 31 Mar 2020 21:31:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8697789956
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 21:31:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20757569-1500050 
 for multiple; Tue, 31 Mar 2020 22:31:10 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Mar 2020 22:31:02 +0100
Message-Id: <20200331213108.11340-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200331213108.11340-1-chris@chris-wilson.co.uk>
References: <20200331213108.11340-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/11] drm/i915/gem: Utilize rcu iteration of
 context engines
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that we can peek at GEM->engines[] and obtain a reference to them
using RCU, do so for instances where we can safely iterate the
potentially old copy of the engines. For setting, we can do this when we
know the engine properties are copied over before swapping, so we know
the new engines already have the global property and we update the old
before they are discarded. For reading, we only need to be safe; as we
do so on behalf of the user, their races are their own problem.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 56 ++++++++++-----------
 1 file changed, 27 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 50e7580f9337..a8780ddc07c0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -757,21 +757,46 @@ __create_context(struct drm_i915_private *i915)
 	return ERR_PTR(err);
 }
 
+static inline struct i915_gem_engines *
+__context_engines_await(const struct i915_gem_context *ctx)
+{
+	struct i915_gem_engines *engines;
+
+	rcu_read_lock();
+	do {
+		engines = rcu_dereference(ctx->engines);
+		GEM_BUG_ON(!engines);
+
+		if (unlikely(!i915_sw_fence_await(&engines->fence)))
+			continue;
+
+		if (likely(engines == rcu_access_pointer(ctx->engines)))
+			break;
+
+		i915_sw_fence_complete(&engines->fence);
+	} while (1);
+	rcu_read_unlock();
+
+	return engines;
+}
+
 static int
 context_apply_all(struct i915_gem_context *ctx,
 		  int (*fn)(struct intel_context *ce, void *data),
 		  void *data)
 {
 	struct i915_gem_engines_iter it;
+	struct i915_gem_engines *e;
 	struct intel_context *ce;
 	int err = 0;
 
-	for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
+	e = __context_engines_await(ctx);
+	for_each_gem_engine(ce, e, it) {
 		err = fn(ce, data);
 		if (err)
 			break;
 	}
-	i915_gem_context_unlock_engines(ctx);
+	i915_sw_fence_complete(&e->fence);
 
 	return err;
 }
@@ -858,10 +883,7 @@ i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
 			return ERR_CAST(ppgtt);
 		}
 
-		mutex_lock(&ctx->mutex);
 		__assign_ppgtt(ctx, &ppgtt->vm);
-		mutex_unlock(&ctx->mutex);
-
 		i915_vm_put(&ppgtt->vm);
 	}
 
@@ -1069,30 +1091,6 @@ static void cb_retire(struct i915_active *base)
 	kfree(cb);
 }
 
-static inline struct i915_gem_engines *
-__context_engines_await(const struct i915_gem_context *ctx)
-{
-	struct i915_gem_engines *engines;
-
-	rcu_read_lock();
-	do {
-		engines = rcu_dereference(ctx->engines);
-		if (unlikely(!engines))
-			break;
-
-		if (unlikely(!i915_sw_fence_await(&engines->fence)))
-			continue;
-
-		if (likely(engines == rcu_access_pointer(ctx->engines)))
-			break;
-
-		i915_sw_fence_complete(&engines->fence);
-	} while (1);
-	rcu_read_unlock();
-
-	return engines;
-}
-
 I915_SELFTEST_DECLARE(static intel_engine_mask_t context_barrier_inject_fault);
 static int context_barrier_task(struct i915_gem_context *ctx,
 				intel_engine_mask_t engines,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
