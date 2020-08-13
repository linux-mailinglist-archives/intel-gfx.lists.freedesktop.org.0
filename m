Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 630882437A6
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Aug 2020 11:28:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CBA96E984;
	Thu, 13 Aug 2020 09:28:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 103C36E984
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Aug 2020 09:28:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22114544-1500050 
 for multiple; Thu, 13 Aug 2020 10:28:34 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Aug 2020 10:28:33 +0100
Message-Id: <20200813092833.14355-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200812223621.22292-3-chris@chris-wilson.co.uk>
References: <20200812223621.22292-3-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Always test execution status on
 closing the context
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Verify that if a context is active at the time it is closed, that it is
either persistent and preemptible (with hangcheck running) or it shall
be removed from execution.

Fixes: 9a40bddd47ca ("drm/i915/gt: Expose heartbeat interval via sysfs")
Testcase: igt/gem_ctx_persistence/heartbeat-close
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: <stable@vger.kernel.org> # v5.7+
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 48 +++++----------------
 1 file changed, 10 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index db893f6c516b..15d3ccb8f164 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -390,24 +390,6 @@ __context_engines_static(const struct i915_gem_context *ctx)
 	return rcu_dereference_protected(ctx->engines, true);
 }
 
-static bool __reset_engine(struct intel_engine_cs *engine)
-{
-	struct intel_gt *gt = engine->gt;
-	bool success = false;
-
-	if (!intel_has_reset_engine(gt))
-		return false;
-
-	if (!test_and_set_bit(I915_RESET_ENGINE + engine->id,
-			      &gt->reset.flags)) {
-		success = intel_engine_reset(engine, NULL) == 0;
-		clear_and_wake_up_bit(I915_RESET_ENGINE + engine->id,
-				      &gt->reset.flags);
-	}
-
-	return success;
-}
-
 static void __reset_context(struct i915_gem_context *ctx,
 			    struct intel_engine_cs *engine)
 {
@@ -431,12 +413,7 @@ static bool __cancel_engine(struct intel_engine_cs *engine)
 	 * kill the banned context, we fallback to doing a local reset
 	 * instead.
 	 */
-	if (IS_ACTIVE(CONFIG_DRM_I915_PREEMPT_TIMEOUT) &&
-	    !intel_engine_pulse(engine))
-		return true;
-
-	/* If we are unable to send a pulse, try resetting this engine. */
-	return __reset_engine(engine);
+	return intel_engine_pulse(engine) == 0;
 }
 
 static bool
@@ -493,7 +470,7 @@ static struct intel_engine_cs *active_engine(struct intel_context *ce)
 	return engine;
 }
 
-static void kill_engines(struct i915_gem_engines *engines)
+static void kill_engines(struct i915_gem_engines *engines, bool ban)
 {
 	struct i915_gem_engines_iter it;
 	struct intel_context *ce;
@@ -508,7 +485,7 @@ static void kill_engines(struct i915_gem_engines *engines)
 	for_each_gem_engine(ce, engines, it) {
 		struct intel_engine_cs *engine;
 
-		if (intel_context_set_banned(ce))
+		if (ban && intel_context_set_banned(ce))
 			continue;
 
 		/*
@@ -521,7 +498,7 @@ static void kill_engines(struct i915_gem_engines *engines)
 		engine = active_engine(ce);
 
 		/* First attempt to gracefully cancel the context */
-		if (engine && !__cancel_engine(engine))
+		if (engine && !__cancel_engine(engine) && ban)
 			/*
 			 * If we are unable to send a preemptive pulse to bump
 			 * the context from the GPU, we have to resort to a full
@@ -531,8 +508,10 @@ static void kill_engines(struct i915_gem_engines *engines)
 	}
 }
 
-static void kill_stale_engines(struct i915_gem_context *ctx)
+static void kill_context(struct i915_gem_context *ctx)
 {
+	bool ban = (!i915_gem_context_is_persistent(ctx) ||
+		    !ctx->i915->params.enable_hangcheck);
 	struct i915_gem_engines *pos, *next;
 
 	spin_lock_irq(&ctx->stale.lock);
@@ -545,7 +524,7 @@ static void kill_stale_engines(struct i915_gem_context *ctx)
 
 		spin_unlock_irq(&ctx->stale.lock);
 
-		kill_engines(pos);
+		kill_engines(pos, ban);
 
 		spin_lock_irq(&ctx->stale.lock);
 		GEM_BUG_ON(i915_sw_fence_signaled(&pos->fence));
@@ -557,11 +536,6 @@ static void kill_stale_engines(struct i915_gem_context *ctx)
 	spin_unlock_irq(&ctx->stale.lock);
 }
 
-static void kill_context(struct i915_gem_context *ctx)
-{
-	kill_stale_engines(ctx);
-}
-
 static void engines_idle_release(struct i915_gem_context *ctx,
 				 struct i915_gem_engines *engines)
 {
@@ -596,7 +570,7 @@ static void engines_idle_release(struct i915_gem_context *ctx,
 
 kill:
 	if (list_empty(&engines->link)) /* raced, already closed */
-		kill_engines(engines);
+		kill_engines(engines, true);
 
 	i915_sw_fence_commit(&engines->fence);
 }
@@ -654,9 +628,7 @@ static void context_close(struct i915_gem_context *ctx)
 	 * case we opt to forcibly kill off all remaining requests on
 	 * context close.
 	 */
-	if (!i915_gem_context_is_persistent(ctx) ||
-	    !ctx->i915->params.enable_hangcheck)
-		kill_context(ctx);
+	kill_context(ctx);
 
 	i915_gem_context_put(ctx);
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
