Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47527235941
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Aug 2020 18:44:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B42F6E1F3;
	Sun,  2 Aug 2020 16:44:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E3536E190
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Aug 2020 16:44:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22010430-1500050 
 for multiple; Sun, 02 Aug 2020 17:44:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  2 Aug 2020 17:43:41 +0100
Message-Id: <20200802164412.2738-12-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200802164412.2738-1-chris@chris-wilson.co.uk>
References: <20200802164412.2738-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/42] drm/i915/gem: Reduce ctx->engines_mutex
 for get_engines()
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

Take a snapshot of the ctx->engines, so we can avoid taking the
ctx->engines_mutex for a mere read in get_engines().

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 39 +++++----------------
 1 file changed, 8 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 6530bd2e634e..56700ddbed47 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1874,27 +1874,6 @@ set_engines(struct i915_gem_context *ctx,
 	return 0;
 }
 
-static struct i915_gem_engines *
-__copy_engines(struct i915_gem_engines *e)
-{
-	struct i915_gem_engines *copy;
-	unsigned int n;
-
-	copy = alloc_engines(e->num_engines);
-	if (!copy)
-		return ERR_PTR(-ENOMEM);
-
-	for (n = 0; n < e->num_engines; n++) {
-		if (e->engines[n])
-			copy->engines[n] = intel_context_get(e->engines[n]);
-		else
-			copy->engines[n] = NULL;
-	}
-	copy->num_engines = n;
-
-	return copy;
-}
-
 static int
 get_engines(struct i915_gem_context *ctx,
 	    struct drm_i915_gem_context_param *args)
@@ -1902,19 +1881,17 @@ get_engines(struct i915_gem_context *ctx,
 	struct i915_context_param_engines __user *user;
 	struct i915_gem_engines *e;
 	size_t n, count, size;
+	bool user_engines;
 	int err = 0;
 
-	err = mutex_lock_interruptible(&ctx->engines_mutex);
-	if (err)
-		return err;
+	e = __context_engines_await(ctx, &user_engines);
+	if (!e)
+		return -ENOENT;
 
-	e = NULL;
-	if (i915_gem_context_user_engines(ctx))
-		e = __copy_engines(i915_gem_context_engines(ctx));
-	mutex_unlock(&ctx->engines_mutex);
-	if (IS_ERR_OR_NULL(e)) {
+	if (!user_engines) {
+		i915_sw_fence_complete(&e->fence);
 		args->size = 0;
-		return PTR_ERR_OR_ZERO(e);
+		return 0;
 	}
 
 	count = e->num_engines;
@@ -1965,7 +1942,7 @@ get_engines(struct i915_gem_context *ctx,
 	args->size = size;
 
 err_free:
-	free_engines(e);
+	i915_sw_fence_complete(&e->fence);
 	return err;
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
