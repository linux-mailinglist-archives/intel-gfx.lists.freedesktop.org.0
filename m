Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4CA243142
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Aug 2020 00:59:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59A516E2E2;
	Wed, 12 Aug 2020 22:59:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B20E36E2E2
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Aug 2020 22:59:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22111066-1500050 
 for multiple; Wed, 12 Aug 2020 23:59:17 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Aug 2020 23:59:14 +0100
Message-Id: <20200812225914.25973-1-chris@chris-wilson.co.uk>
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
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 26 ++++++++-------------
 1 file changed, 10 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index db893f6c516b..ba8ef1225f58 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -431,8 +431,7 @@ static bool __cancel_engine(struct intel_engine_cs *engine)
 	 * kill the banned context, we fallback to doing a local reset
 	 * instead.
 	 */
-	if (IS_ACTIVE(CONFIG_DRM_I915_PREEMPT_TIMEOUT) &&
-	    !intel_engine_pulse(engine))
+	if (intel_engine_pulse(engine) == 0)
 		return true;
 
 	/* If we are unable to send a pulse, try resetting this engine. */
@@ -493,7 +492,7 @@ static struct intel_engine_cs *active_engine(struct intel_context *ce)
 	return engine;
 }
 
-static void kill_engines(struct i915_gem_engines *engines)
+static void kill_engines(struct i915_gem_engines *engines, bool ban)
 {
 	struct i915_gem_engines_iter it;
 	struct intel_context *ce;
@@ -508,7 +507,7 @@ static void kill_engines(struct i915_gem_engines *engines)
 	for_each_gem_engine(ce, engines, it) {
 		struct intel_engine_cs *engine;
 
-		if (intel_context_set_banned(ce))
+		if (ban && intel_context_set_banned(ce))
 			continue;
 
 		/*
@@ -521,7 +520,7 @@ static void kill_engines(struct i915_gem_engines *engines)
 		engine = active_engine(ce);
 
 		/* First attempt to gracefully cancel the context */
-		if (engine && !__cancel_engine(engine))
+		if (engine && !__cancel_engine(engine) && ban)
 			/*
 			 * If we are unable to send a preemptive pulse to bump
 			 * the context from the GPU, we have to resort to a full
@@ -531,8 +530,10 @@ static void kill_engines(struct i915_gem_engines *engines)
 	}
 }
 
-static void kill_stale_engines(struct i915_gem_context *ctx)
+static void kill_context(struct i915_gem_context *ctx)
 {
+	bool ban = (!i915_gem_context_is_persistent(ctx) ||
+		    !ctx->i915->params.enable_hangcheck);
 	struct i915_gem_engines *pos, *next;
 
 	spin_lock_irq(&ctx->stale.lock);
@@ -545,7 +546,7 @@ static void kill_stale_engines(struct i915_gem_context *ctx)
 
 		spin_unlock_irq(&ctx->stale.lock);
 
-		kill_engines(pos);
+		kill_engines(pos, ban);
 
 		spin_lock_irq(&ctx->stale.lock);
 		GEM_BUG_ON(i915_sw_fence_signaled(&pos->fence));
@@ -557,11 +558,6 @@ static void kill_stale_engines(struct i915_gem_context *ctx)
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
@@ -596,7 +592,7 @@ static void engines_idle_release(struct i915_gem_context *ctx,
 
 kill:
 	if (list_empty(&engines->link)) /* raced, already closed */
-		kill_engines(engines);
+		kill_engines(engines, true);
 
 	i915_sw_fence_commit(&engines->fence);
 }
@@ -654,9 +650,7 @@ static void context_close(struct i915_gem_context *ctx)
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
