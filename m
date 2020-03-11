Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFDE18183F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 13:39:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12A866E146;
	Wed, 11 Mar 2020 12:39:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5CA96E146
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 12:39:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20521261-1500050 
 for multiple; Wed, 11 Mar 2020 12:39:44 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 12:39:43 +0000
Message-Id: <20200311123943.14044-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Prefer unlocked engine iteration
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

In most cases, we can walk the array of engines underneath the context
using plain RCU protection -- we've set a flag on the context, and just
need to propagate that flag to the current engines, if those engines
are replaced as we do so, the new engines will get the new flag.

However, in one case, we need to keep the existing serialisation with
replacing the engines (set_ringsize) and that also needs to be run from
a blocking context.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 42 ++++++++++++++++-----
 1 file changed, 32 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index cb6b6be48978..50ecc0b2b235 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -747,9 +747,31 @@ __create_context(struct drm_i915_private *i915)
 }
 
 static int
-context_apply_all(struct i915_gem_context *ctx,
-		  int (*fn)(struct intel_context *ce, void *data),
-		  void *data)
+context_apply_all_rcu(struct i915_gem_context *ctx,
+		      int (*fn)(struct intel_context *ce, void *data),
+		      void *data)
+{
+	struct i915_gem_engines *engines;
+	struct i915_gem_engines_iter it;
+	struct intel_context *ce;
+	int err = 0;
+
+	rcu_read_lock();
+	engines = rcu_dereference(ctx->engines);
+	for_each_gem_engine(ce, engines, it) {
+		err = fn(ce, data);
+		if (err)
+			break;
+	}
+	rcu_read_unlock();
+
+	return err;
+}
+
+static int
+context_apply_all_locked(struct i915_gem_context *ctx,
+			 int (*fn)(struct intel_context *ce, void *data),
+			 void *data)
 {
 	struct i915_gem_engines_iter it;
 	struct intel_context *ce;
@@ -780,7 +802,7 @@ __set_ppgtt(struct i915_gem_context *ctx, struct i915_address_space *vm)
 	GEM_BUG_ON(old && i915_vm_is_4lvl(vm) != i915_vm_is_4lvl(old));
 
 	rcu_assign_pointer(ctx->vm, i915_vm_open(vm));
-	context_apply_all(ctx, __apply_ppgtt, vm);
+	context_apply_all_rcu(ctx, __apply_ppgtt, vm);
 
 	return old;
 }
@@ -817,7 +839,7 @@ static void __assign_timeline(struct i915_gem_context *ctx,
 			      struct intel_timeline *timeline)
 {
 	__set_timeline(&ctx->timeline, timeline);
-	context_apply_all(ctx, __apply_timeline, timeline);
+	context_apply_all_rcu(ctx, __apply_timeline, timeline);
 }
 
 static struct i915_gem_context *
@@ -1324,9 +1346,9 @@ static int set_ringsize(struct i915_gem_context *ctx,
 	if (args->value > 128 * I915_GTT_PAGE_SIZE)
 		return -EINVAL;
 
-	return context_apply_all(ctx,
-				 __apply_ringsize,
-				 __intel_context_ring_size(args->value));
+	return context_apply_all_locked(ctx,
+					__apply_ringsize,
+					__intel_context_ring_size(args->value));
 }
 
 static int __get_ringsize(struct intel_context *ce, void *arg)
@@ -1350,7 +1372,7 @@ static int get_ringsize(struct i915_gem_context *ctx,
 	if (args->size)
 		return -EINVAL;
 
-	sz = context_apply_all(ctx, __get_ringsize, NULL);
+	sz = context_apply_all_rcu(ctx, __get_ringsize, NULL);
 	if (sz < 0)
 		return sz;
 
@@ -1962,7 +1984,7 @@ static int set_priority(struct i915_gem_context *ctx,
 		return -EPERM;
 
 	ctx->sched.priority = I915_USER_PRIORITY(priority);
-	context_apply_all(ctx, __apply_priority, ctx);
+	context_apply_all_rcu(ctx, __apply_priority, ctx);
 
 	return 0;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
