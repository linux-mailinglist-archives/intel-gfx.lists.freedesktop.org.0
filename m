Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACF01E9F15
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 09:25:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE7726E125;
	Mon,  1 Jun 2020 07:25:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6442D6E06B
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 07:25:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21356616-1500050 
 for multiple; Mon, 01 Jun 2020 08:24:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jun 2020 08:24:26 +0100
Message-Id: <20200601072446.19548-16-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200601072446.19548-1-chris@chris-wilson.co.uk>
References: <20200601072446.19548-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/36] drm/i915/gem: Mark the buffer pool as
 active for the cmdparser
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

If the execbuf is interrupted after building the cmdparser pipeline, and
before we commit to submitting the request to HW, we would attempt to
clean up the cmdparser early. While we held active references to the vma
being parsed and constructed, we did not hold an active reference for
the buffer pool itself. The result was that an interrupted execbuf could
still have run the cmdparser pipeline, but since the buffer pool was
idle, its target vma could have been recycled.

Note this problem only occurs if the cmdparser is running async due to
pipelined waits on busy fences, and the execbuf is interrupted.

Fixes: 686c7c35abc2 ("drm/i915/gem: Asynchronous cmdparser")
Fixes: 16e87459673a ("drm/i915/gt: Move the batch buffer pool from the engine to the gt")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 56 ++++++++++++++++---
 1 file changed, 48 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 219a36995b96..0829ac8a55bf 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1987,6 +1987,38 @@ static const struct dma_fence_work_ops eb_parse_ops = {
 	.release = __eb_parse_release,
 };
 
+static inline int
+__parser_mark_active(struct i915_vma *vma,
+		     struct intel_timeline *tl,
+		     struct dma_fence *fence)
+{
+	struct intel_gt_buffer_pool_node *node = vma->private;
+
+	return i915_active_ref(&node->active, tl, fence);
+}
+
+static int
+parser_mark_active(struct eb_parse_work *pw, struct intel_timeline *tl)
+{
+	int err;
+
+	mutex_lock(&tl->mutex);
+
+	err = __parser_mark_active(pw->shadow, tl, &pw->base.dma);
+	if (err)
+		goto unlock;
+
+	if (pw->trampoline) {
+		err = __parser_mark_active(pw->trampoline, tl, &pw->base.dma);
+		if (err)
+			goto unlock;
+	}
+
+unlock:
+	mutex_unlock(&tl->mutex);
+	return err;
+}
+
 static int eb_parse_pipeline(struct i915_execbuffer *eb,
 			     struct i915_vma *shadow,
 			     struct i915_vma *trampoline)
@@ -2021,20 +2053,25 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	pw->shadow = shadow;
 	pw->trampoline = trampoline;
 
+	/* Mark active refs for this worker, in case we get interrupted */
+	err = parser_mark_active(pw, eb->context->timeline);
+	if (err)
+		goto err_commit;
+
 	err = dma_resv_lock_interruptible(pw->batch->resv, NULL);
 	if (err)
-		goto err_trampoline;
+		goto err_commit;
 
 	err = dma_resv_reserve_shared(pw->batch->resv, 1);
 	if (err)
-		goto err_batch_unlock;
+		goto err_commit_unlock;
 
 	/* Wait for all writes (and relocs) into the batch to complete */
 	err = i915_sw_fence_await_reservation(&pw->base.chain,
 					      pw->batch->resv, NULL, false,
 					      0, I915_FENCE_GFP);
 	if (err < 0)
-		goto err_batch_unlock;
+		goto err_commit_unlock;
 
 	/* Keep the batch alive and unwritten as we parse */
 	dma_resv_add_shared_fence(pw->batch->resv, &pw->base.dma);
@@ -2049,11 +2086,13 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	dma_fence_work_commit_imm(&pw->base);
 	return 0;
 
-err_batch_unlock:
+err_commit_unlock:
 	dma_resv_unlock(pw->batch->resv);
-err_trampoline:
-	if (trampoline)
-		i915_active_release(&trampoline->active);
+err_commit:
+	i915_sw_fence_set_error_once(&pw->base.chain, err);
+	dma_fence_work_commit_imm(&pw->base);
+	return err;
+
 err_shadow:
 	i915_active_release(&shadow->active);
 err_batch:
@@ -2099,6 +2138,7 @@ static int eb_parse(struct i915_execbuffer *eb)
 		goto err;
 	}
 	i915_gem_object_set_readonly(shadow->obj);
+	shadow->private = pool;
 
 	trampoline = NULL;
 	if (CMDPARSER_USES_GGTT(eb->i915)) {
@@ -2112,6 +2152,7 @@ static int eb_parse(struct i915_execbuffer *eb)
 			shadow = trampoline;
 			goto err_shadow;
 		}
+		shadow->private = pool;
 
 		eb->batch_flags |= I915_DISPATCH_SECURE;
 	}
@@ -2128,7 +2169,6 @@ static int eb_parse(struct i915_execbuffer *eb)
 	eb->trampoline = trampoline;
 	eb->batch_start_offset = 0;
 
-	shadow->private = pool;
 	return 0;
 
 err_trampoline:
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
