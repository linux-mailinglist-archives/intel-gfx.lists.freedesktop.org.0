Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE082E649B
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Dec 2020 16:53:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76B5E89A35;
	Mon, 28 Dec 2020 15:52:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51D87899DB
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Dec 2020 15:52:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23448184-1500050 
 for multiple; Mon, 28 Dec 2020 15:52:33 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Dec 2020 15:51:42 +0000
Message-Id: <20201228155229.9516-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201228155229.9516-1-chris@chris-wilson.co.uk>
References: <20201228155229.9516-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/54] drm/i915/gem: Reduce ctx->engine_mutex
 for reading the clone source
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

When cloning the engines from the source context, we need to ensure that
the engines are not freed as we copy them, and that the flags we clone
from the source correspond with the engines we copy across. To do this
we need only take a reference to the src->engines, rather than hold the
src->engine_mutex, so long as we verify that nothing changed under the
read.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 24 +++++++++++++--------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index cac0c52fc681..4a709c625ccb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -717,7 +717,8 @@ __create_context(struct drm_i915_private *i915)
 }
 
 static inline struct i915_gem_engines *
-__context_engines_await(const struct i915_gem_context *ctx)
+__context_engines_await(const struct i915_gem_context *ctx,
+			bool *user_engines)
 {
 	struct i915_gem_engines *engines;
 
@@ -726,6 +727,10 @@ __context_engines_await(const struct i915_gem_context *ctx)
 		engines = rcu_dereference(ctx->engines);
 		GEM_BUG_ON(!engines);
 
+		if (user_engines)
+			*user_engines = i915_gem_context_user_engines(ctx);
+
+		/* successful await => strong mb */
 		if (unlikely(!i915_sw_fence_await(&engines->fence)))
 			continue;
 
@@ -749,7 +754,7 @@ context_apply_all(struct i915_gem_context *ctx,
 	struct intel_context *ce;
 	int err = 0;
 
-	e = __context_engines_await(ctx);
+	e = __context_engines_await(ctx, NULL);
 	for_each_gem_engine(ce, e, it) {
 		err = fn(ce, data);
 		if (err)
@@ -1075,7 +1080,7 @@ static int context_barrier_task(struct i915_gem_context *ctx,
 		return err;
 	}
 
-	e = __context_engines_await(ctx);
+	e = __context_engines_await(ctx, NULL);
 	if (!e) {
 		i915_active_release(&cb->base);
 		return -ENOENT;
@@ -2095,11 +2100,14 @@ static int copy_ring_size(struct intel_context *dst,
 static int clone_engines(struct i915_gem_context *dst,
 			 struct i915_gem_context *src)
 {
-	struct i915_gem_engines *e = i915_gem_context_lock_engines(src);
-	struct i915_gem_engines *clone;
+	struct i915_gem_engines *clone, *e;
 	bool user_engines;
 	unsigned long n;
 
+	e = __context_engines_await(src, &user_engines);
+	if (!e)
+		return -ENOENT;
+
 	clone = alloc_engines(e->num_engines);
 	if (!clone)
 		goto err_unlock;
@@ -2141,9 +2149,7 @@ static int clone_engines(struct i915_gem_context *dst,
 		}
 	}
 	clone->num_engines = n;
-
-	user_engines = i915_gem_context_user_engines(src);
-	i915_gem_context_unlock_engines(src);
+	i915_sw_fence_complete(&e->fence);
 
 	/* Serialised by constructor */
 	engines_idle_release(dst, rcu_replace_pointer(dst->engines, clone, 1));
@@ -2154,7 +2160,7 @@ static int clone_engines(struct i915_gem_context *dst,
 	return 0;
 
 err_unlock:
-	i915_gem_context_unlock_engines(src);
+	i915_sw_fence_complete(&e->fence);
 	return -ENOMEM;
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
