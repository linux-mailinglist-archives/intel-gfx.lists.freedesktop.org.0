Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 553EF22B5C1
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jul 2020 20:34:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8A7789C5E;
	Thu, 23 Jul 2020 18:34:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ACFF89C5E
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jul 2020 18:34:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21911333-1500050 
 for multiple; Thu, 23 Jul 2020 19:33:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jul 2020 19:33:48 +0100
Message-Id: <20200723183348.4037-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Delay tracking the GEM context
 until it is registered
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

Avoid exposing a partially constructed context by deferring the
list_add() from the initial construction to the end of registration.
Otherwise, if we peek into the list of contexts from inside debugfs, we
may see the partially constructed context and change down some dangling
incomplete pointers.

Reported-by: CQ Tang <cq.tang@intel.com>
Fixes: b91715417244 ("drm/i915: Extend CONTEXT_CREATE to set parameters upon construction")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: CQ Tang <cq.tang@intel.com>
Cc: <stable@vger.kernel.org> # v5.2+
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index d0bdb6d447ed..efc4ba34c06e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -713,6 +713,7 @@ __create_context(struct drm_i915_private *i915)
 	ctx->i915 = i915;
 	ctx->sched.priority = I915_USER_PRIORITY(I915_PRIORITY_NORMAL);
 	mutex_init(&ctx->mutex);
+	INIT_LIST_HEAD(&ctx->link);
 
 	spin_lock_init(&ctx->stale.lock);
 	INIT_LIST_HEAD(&ctx->stale.engines);
@@ -740,10 +741,6 @@ __create_context(struct drm_i915_private *i915)
 	for (i = 0; i < ARRAY_SIZE(ctx->hang_timestamp); i++)
 		ctx->hang_timestamp[i] = jiffies - CONTEXT_FAST_HANG_JIFFIES;
 
-	spin_lock(&i915->gem.contexts.lock);
-	list_add_tail(&ctx->link, &i915->gem.contexts.list);
-	spin_unlock(&i915->gem.contexts.lock);
-
 	return ctx;
 
 err_free:
@@ -931,6 +928,7 @@ static int gem_context_register(struct i915_gem_context *ctx,
 				struct drm_i915_file_private *fpriv,
 				u32 *id)
 {
+	struct drm_i915_private *i915 = ctx->i915;
 	struct i915_address_space *vm;
 	int ret;
 
@@ -949,8 +947,16 @@ static int gem_context_register(struct i915_gem_context *ctx,
 	/* And finally expose ourselves to userspace via the idr */
 	ret = xa_alloc(&fpriv->context_xa, id, ctx, xa_limit_32b, GFP_KERNEL);
 	if (ret)
-		put_pid(fetch_and_zero(&ctx->pid));
+		goto err_pid;
+
+	spin_lock(&i915->gem.contexts.lock);
+	list_add_tail(&ctx->link, &i915->gem.contexts.list);
+	spin_unlock(&i915->gem.contexts.lock);
+
+	return 0;
 
+err_pid:
+	put_pid(fetch_and_zero(&ctx->pid));
 	return ret;
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
