Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 191EC2E1B9B
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Dec 2020 12:12:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C91D6E934;
	Wed, 23 Dec 2020 11:12:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DE126E90C
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Dec 2020 11:11:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23412191-1500050 
 for multiple; Wed, 23 Dec 2020 11:11:30 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Dec 2020 11:10:39 +0000
Message-Id: <20201223111126.3338-15-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201223111126.3338-1-chris@chris-wilson.co.uk>
References: <20201223111126.3338-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/62] drm/i915/gem: Reduce ctx->engines_mutex
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
index d117fc039702..db8901cc2c8e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1840,27 +1840,6 @@ set_engines(struct i915_gem_context *ctx,
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
@@ -1868,19 +1847,17 @@ get_engines(struct i915_gem_context *ctx,
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
@@ -1931,7 +1908,7 @@ get_engines(struct i915_gem_context *ctx,
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
