Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F70215287
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 08:19:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE4526E11B;
	Mon,  6 Jul 2020 06:19:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 200AB6E0F7
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 06:19:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21724458-1500050 
 for multiple; Mon, 06 Jul 2020 07:19:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jul 2020 07:19:21 +0100
Message-Id: <20200706061926.6687-16-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200706061926.6687-1-chris@chris-wilson.co.uk>
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/20] drm/i915/gem: Include secure batch in
 common execbuf pinning
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

Pull the GGTT binding for the secure batch dispatch into the common vma
pinning routine for execbuf, so that there is just a single central
place for all i915_vma_pin().

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 88 +++++++++++--------
 1 file changed, 51 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 8e4681427ce3..629b736adf2c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1648,6 +1648,48 @@ static int eb_alloc_cmdparser(struct i915_execbuffer *eb)
 	return err;
 }
 
+static int eb_secure_batch(struct i915_execbuffer *eb)
+{
+	struct i915_vma *vma = eb->batch->vma;
+
+	/*
+	 * snb/ivb/vlv conflate the "batch in ppgtt" bit with the "non-secure
+	 * batch" bit. Hence we need to pin secure batches into the global gtt.
+	 * hsw should have this fixed, but bdw mucks it up again.
+	 */
+	if (!(eb->batch_flags & I915_DISPATCH_SECURE))
+		return 0;
+
+	if (GEM_WARN_ON(vma->vm != &eb->engine->gt->ggtt->vm)) {
+		struct eb_vma *ev;
+
+		ev = kzalloc(sizeof(*ev), GFP_KERNEL);
+		if (!ev)
+			return -ENOMEM;
+
+		vma = i915_vma_instance(vma->obj,
+					&eb->engine->gt->ggtt->vm,
+					NULL);
+		if (IS_ERR(vma)) {
+			kfree(ev);
+			return PTR_ERR(vma);
+		}
+
+		ev->vma = i915_vma_get(vma);
+		ev->exec = &no_entry;
+
+		list_add(&ev->submit_link, &eb->submit_list);
+		list_add(&ev->reloc_link, &eb->array->aux_list);
+		list_add(&ev->bind_link, &eb->bind_list);
+
+		GEM_BUG_ON(eb->batch->vma->private);
+		eb->batch = ev;
+	}
+
+	eb->batch->flags |= EXEC_OBJECT_NEEDS_GTT;
+	return 0;
+}
+
 static unsigned int eb_batch_index(const struct i915_execbuffer *eb)
 {
 	if (eb->args->flags & I915_EXEC_BATCH_FIRST)
@@ -2442,6 +2484,10 @@ static int eb_relocate(struct i915_execbuffer *eb)
 	if (err)
 		return err;
 
+	err = eb_secure_batch(eb);
+	if (err)
+		return err;
+
 	err = eb_reserve_vm(eb);
 	if (err)
 		return err;
@@ -2796,7 +2842,7 @@ add_to_client(struct i915_request *rq, struct drm_file *file)
 	spin_unlock(&file_priv->mm.lock);
 }
 
-static int eb_submit(struct i915_execbuffer *eb, struct i915_vma *batch)
+static int eb_submit(struct i915_execbuffer *eb)
 {
 	int err;
 
@@ -2823,7 +2869,7 @@ static int eb_submit(struct i915_execbuffer *eb, struct i915_vma *batch)
 	}
 
 	err = eb->engine->emit_bb_start(eb->request,
-					batch->node.start +
+					eb->batch->vma->node.start +
 					eb->batch_start_offset,
 					eb->batch_len,
 					eb->batch_flags);
@@ -3296,7 +3342,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	struct i915_execbuffer eb;
 	struct dma_fence *in_fence = NULL;
 	struct sync_file *out_fence = NULL;
-	struct i915_vma *batch;
 	int out_fence_fd = -1;
 	int err;
 
@@ -3388,34 +3433,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (err)
 		goto err_vma;
 
-	/*
-	 * snb/ivb/vlv conflate the "batch in ppgtt" bit with the "non-secure
-	 * batch" bit. Hence we need to pin secure batches into the global gtt.
-	 * hsw should have this fixed, but bdw mucks it up again. */
-	batch = i915_vma_get(eb.batch->vma);
-	if (eb.batch_flags & I915_DISPATCH_SECURE) {
-		struct i915_vma *vma;
-
-		/*
-		 * So on first glance it looks freaky that we pin the batch here
-		 * outside of the reservation loop. But:
-		 * - The batch is already pinned into the relevant ppgtt, so we
-		 *   already have the backing storage fully allocated.
-		 * - No other BO uses the global gtt (well contexts, but meh),
-		 *   so we don't really have issues with multiple objects not
-		 *   fitting due to fragmentation.
-		 * So this is actually safe.
-		 */
-		vma = i915_gem_object_ggtt_pin(batch->obj, NULL, 0, 0, 0);
-		if (IS_ERR(vma)) {
-			err = PTR_ERR(vma);
-			goto err_vma;
-		}
-
-		GEM_BUG_ON(vma->obj != batch->obj);
-		batch = vma;
-	}
-
 	/* All GPU relocation batches must be submitted prior to the user rq */
 	GEM_BUG_ON(eb.reloc_cache.rq);
 
@@ -3423,7 +3440,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	eb.request = __i915_request_create(eb.context, GFP_KERNEL);
 	if (IS_ERR(eb.request)) {
 		err = PTR_ERR(eb.request);
-		goto err_batch_unpin;
+		goto err_vma;
 	}
 	eb.request->cookie = lockdep_pin_lock(&eb.context->timeline->mutex);
 
@@ -3460,13 +3477,13 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	 * inactive_list and lose its active reference. Hence we do not need
 	 * to explicitly hold another reference here.
 	 */
-	eb.request->batch = batch;
+	eb.request->batch = eb.batch->vma;
 	if (eb.parser.shadow)
 		intel_gt_buffer_pool_mark_active(eb.parser.shadow->vma->private,
 						 eb.request);
 
 	trace_i915_request_queue(eb.request, eb.batch_flags);
-	err = eb_submit(&eb, batch);
+	err = eb_submit(&eb);
 err_request:
 	add_to_client(eb.request, file);
 	i915_request_get(eb.request);
@@ -3487,9 +3504,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	}
 	i915_request_put(eb.request);
 
-err_batch_unpin:
-	if (eb.batch_flags & I915_DISPATCH_SECURE)
-		i915_vma_unpin(batch);
 err_vma:
 	if (eb.parser.shadow)
 		intel_gt_buffer_pool_put(eb.parser.shadow->vma->private);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
