Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C0B229AFB
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jul 2020 17:07:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FD9D6E0F0;
	Wed, 22 Jul 2020 15:07:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C66246E0F0
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jul 2020 15:07:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21897260-1500050 
 for multiple; Wed, 22 Jul 2020 16:07:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jul 2020 16:07:14 +0100
Message-Id: <20200722150714.3918-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Reduce ctx->engine_mutex for
 reading the clone source
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
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 23 +++++++++++++--------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index d0bdb6d447ed..f0543b9904f1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -752,7 +752,8 @@ __create_context(struct drm_i915_private *i915)
 }
 
 static inline struct i915_gem_engines *
-__context_engines_await(const struct i915_gem_context *ctx)
+__context_engines_await(const struct i915_gem_context *ctx,
+			bool *user_engines)
 {
 	struct i915_gem_engines *engines;
 
@@ -764,6 +765,9 @@ __context_engines_await(const struct i915_gem_context *ctx)
 		if (unlikely(!i915_sw_fence_await(&engines->fence)))
 			continue;
 
+		if (user_engines) /* successful await => strong mb */
+			*user_engines = i915_gem_context_user_engines(ctx);
+
 		if (likely(engines == rcu_access_pointer(ctx->engines)))
 			break;
 
@@ -784,7 +788,7 @@ context_apply_all(struct i915_gem_context *ctx,
 	struct intel_context *ce;
 	int err = 0;
 
-	e = __context_engines_await(ctx);
+	e = __context_engines_await(ctx, NULL);
 	for_each_gem_engine(ce, e, it) {
 		err = fn(ce, data);
 		if (err)
@@ -1117,7 +1121,7 @@ static int context_barrier_task(struct i915_gem_context *ctx,
 		return err;
 	}
 
-	e = __context_engines_await(ctx);
+	e = __context_engines_await(ctx, NULL);
 	if (!e) {
 		i915_active_release(&cb->base);
 		return -ENOENT;
@@ -2114,11 +2118,14 @@ static int copy_ring_size(struct intel_context *dst,
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
@@ -2160,9 +2167,7 @@ static int clone_engines(struct i915_gem_context *dst,
 		}
 	}
 	clone->num_engines = n;
-
-	user_engines = i915_gem_context_user_engines(src);
-	i915_gem_context_unlock_engines(src);
+	i915_sw_fence_complete(&e->fence);
 
 	/* Serialised by constructor */
 	engines_idle_release(dst, rcu_replace_pointer(dst->engines, clone, 1));
@@ -2173,7 +2178,7 @@ static int clone_engines(struct i915_gem_context *dst,
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
