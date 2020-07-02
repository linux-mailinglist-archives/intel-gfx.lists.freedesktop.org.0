Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8848212F5B
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 00:15:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DBE06E3A8;
	Thu,  2 Jul 2020 22:15:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 980796E3A8
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 22:15:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21695913-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Jul 2020 23:15:34 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jul 2020 23:15:37 +0100
Message-Id: <20200702221537.1232-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gem: Split the context's obj:vma lut into
 its own mutex
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

Rather than reuse the common ctx->mutex for locking the execbuffer LUT,
split it into its own lock to avoid being taken [as part of ctx->mutex]
at inappropriate times. In particular to avoid the inversion from taking
the timeline->mutex for the whole execbuf submission in the next patch.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c       | 11 +++++++----
 drivers/gpu/drm/i915/gem/i915_gem_context_types.h |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c    | 11 +++++++----
 drivers/gpu/drm/i915/gem/i915_gem_object.c        |  4 ++--
 drivers/gpu/drm/i915/gem/selftests/mock_context.c |  4 +++-
 5 files changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 6675447a47b9..41784df51e58 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -101,8 +101,7 @@ static void lut_close(struct i915_gem_context *ctx)
 	struct radix_tree_iter iter;
 	void __rcu **slot;
 
-	lockdep_assert_held(&ctx->mutex);
-
+	mutex_lock(&ctx->lut_mutex);
 	rcu_read_lock();
 	radix_tree_for_each_slot(slot, &ctx->handles_vma, &iter, 0) {
 		struct i915_vma *vma = rcu_dereference_raw(*slot);
@@ -135,6 +134,7 @@ static void lut_close(struct i915_gem_context *ctx)
 		i915_gem_object_put(obj);
 	}
 	rcu_read_unlock();
+	mutex_unlock(&ctx->lut_mutex);
 }
 
 static struct intel_context *
@@ -342,6 +342,7 @@ static void i915_gem_context_free(struct i915_gem_context *ctx)
 	spin_unlock(&ctx->i915->gem.contexts.lock);
 
 	mutex_destroy(&ctx->engines_mutex);
+	mutex_destroy(&ctx->lut_mutex);
 
 	if (ctx->timeline)
 		intel_timeline_put(ctx->timeline);
@@ -725,6 +726,7 @@ __create_context(struct drm_i915_private *i915)
 	RCU_INIT_POINTER(ctx->engines, e);
 
 	INIT_RADIX_TREE(&ctx->handles_vma, GFP_KERNEL);
+	mutex_init(&ctx->lut_mutex);
 
 	/* NB: Mark all slices as needing a remap so that when the context first
 	 * loads it will restore whatever remap state already exists. If there
@@ -1312,11 +1314,11 @@ static int set_ppgtt(struct drm_i915_file_private *file_priv,
 	if (vm == rcu_access_pointer(ctx->vm))
 		goto unlock;
 
+	old = __set_ppgtt(ctx, vm);
+
 	/* Teardown the existing obj:vma cache, it will have to be rebuilt. */
 	lut_close(ctx);
 
-	old = __set_ppgtt(ctx, vm);
-
 	/*
 	 * We need to flush any requests using the current ppgtt before
 	 * we release it as the requests do not hold a reference themselves,
@@ -1330,6 +1332,7 @@ static int set_ppgtt(struct drm_i915_file_private *file_priv,
 	if (err) {
 		i915_vm_close(__set_ppgtt(ctx, old));
 		i915_vm_close(old);
+		lut_close(ctx); /* force a rebuild of the old obj:vma cache */
 	}
 
 unlock:
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 28760bd03265..ae14ca24a11f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -170,6 +170,7 @@ struct i915_gem_context {
 	 * per vm, which may be one per context or shared with the global GTT)
 	 */
 	struct radix_tree_root handles_vma;
+	struct mutex lut_mutex;
 
 	/**
 	 * @name: arbitrary name, used for user debug
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index b4862afaaf28..0253c403d2e3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -782,10 +782,13 @@ static int __eb_add_lut(struct i915_execbuffer *eb,
 
 	/* Check that the context hasn't been closed in the meantime */
 	err = -EINTR;
-	if (!mutex_lock_interruptible(&ctx->mutex)) {
-		err = -ENOENT;
-		if (likely(!i915_gem_context_is_closed(ctx)))
+	if (!mutex_lock_interruptible(&ctx->lut_mutex)) {
+		if (unlikely(vma->vm != ctx->vm))
+			err = -EAGAIN; /* user racing with ctx set-vm */
+		else if (likely(!i915_gem_context_is_closed(ctx)))
 			err = radix_tree_insert(&ctx->handles_vma, handle, vma);
+		else
+			err = -ENOENT;
 		if (err == 0) { /* And nor has this handle */
 			struct drm_i915_gem_object *obj = vma->obj;
 
@@ -798,7 +801,7 @@ static int __eb_add_lut(struct i915_execbuffer *eb,
 			}
 			spin_unlock(&obj->lut_lock);
 		}
-		mutex_unlock(&ctx->mutex);
+		mutex_unlock(&ctx->lut_mutex);
 	}
 	if (unlikely(err))
 		goto err;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index eb35bdd10c09..c8421fd9d2dc 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -143,14 +143,14 @@ void i915_gem_close_object(struct drm_gem_object *gem, struct drm_file *file)
 		 * vma, in the same fd namespace, by virtue of flink/open.
 		 */
 
-		mutex_lock(&ctx->mutex);
+		mutex_lock(&ctx->lut_mutex);
 		vma = radix_tree_delete(&ctx->handles_vma, lut->handle);
 		if (vma) {
 			GEM_BUG_ON(vma->obj != obj);
 			GEM_BUG_ON(!atomic_read(&vma->open_count));
 			i915_vma_close(vma);
 		}
-		mutex_unlock(&ctx->mutex);
+		mutex_unlock(&ctx->lut_mutex);
 
 		i915_gem_context_put(lut->ctx);
 		i915_lut_handle_free(lut);
diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
index aa0d06cf1903..51b5a3421b40 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
@@ -23,6 +23,8 @@ mock_context(struct drm_i915_private *i915,
 	INIT_LIST_HEAD(&ctx->link);
 	ctx->i915 = i915;
 
+	mutex_init(&ctx->mutex);
+
 	spin_lock_init(&ctx->stale.lock);
 	INIT_LIST_HEAD(&ctx->stale.engines);
 
@@ -35,7 +37,7 @@ mock_context(struct drm_i915_private *i915,
 	RCU_INIT_POINTER(ctx->engines, e);
 
 	INIT_RADIX_TREE(&ctx->handles_vma, GFP_KERNEL);
-	mutex_init(&ctx->mutex);
+	mutex_init(&ctx->lut_mutex);
 
 	if (name) {
 		struct i915_ppgtt *ppgtt;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
