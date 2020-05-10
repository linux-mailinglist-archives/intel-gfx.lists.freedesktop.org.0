Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD451CCA32
	for <lists+intel-gfx@lfdr.de>; Sun, 10 May 2020 12:24:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 069D06E13F;
	Sun, 10 May 2020 10:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A6866E13F
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 May 2020 10:24:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21154793-1500050 
 for multiple; Sun, 10 May 2020 11:24:34 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 10 May 2020 11:24:29 +0100
Message-Id: <20200510102431.21959-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Emit await(batch) before
 MI_BB_START
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

Be consistent and ensure that we always emit the asynchronous waits
prior to issuing instructions that use the address. This ensures that if
we do emit GPU commands to do the await, they are before our use!

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../drm/i915/gem/selftests/i915_gem_context.c | 49 ++++++++++++-------
 .../drm/i915/gem/selftests/igt_gem_utils.c    | 26 ++++------
 drivers/gpu/drm/i915/gt/intel_renderstate.c   | 16 +++---
 drivers/gpu/drm/i915/selftests/i915_request.c | 28 +++++------
 4 files changed, 65 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 87d264fe54b2..b81978890641 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -972,12 +972,6 @@ emit_rpcs_query(struct drm_i915_gem_object *obj,
 		goto err_batch;
 	}
 
-	err = rq->engine->emit_bb_start(rq,
-					batch->node.start, batch->node.size,
-					0);
-	if (err)
-		goto err_request;
-
 	i915_vma_lock(batch);
 	err = i915_request_await_object(rq, batch->obj, false);
 	if (err == 0)
@@ -994,6 +988,18 @@ emit_rpcs_query(struct drm_i915_gem_object *obj,
 	if (err)
 		goto skip_request;
 
+	if (rq->engine->emit_init_breadcrumb) {
+		err = rq->engine->emit_init_breadcrumb(rq);
+		if (err)
+			goto skip_request;
+	}
+
+	err = rq->engine->emit_bb_start(rq,
+					batch->node.start, batch->node.size,
+					0);
+	if (err)
+		goto skip_request;
+
 	i915_vma_unpin_and_release(&batch, 0);
 	i915_vma_unpin(vma);
 
@@ -1005,7 +1011,6 @@ emit_rpcs_query(struct drm_i915_gem_object *obj,
 
 skip_request:
 	i915_request_set_error_once(rq, err);
-err_request:
 	i915_request_add(rq);
 err_batch:
 	i915_vma_unpin_and_release(&batch, 0);
@@ -1541,10 +1546,6 @@ static int write_to_scratch(struct i915_gem_context *ctx,
 		goto err_unpin;
 	}
 
-	err = engine->emit_bb_start(rq, vma->node.start, vma->node.size, 0);
-	if (err)
-		goto err_request;
-
 	i915_vma_lock(vma);
 	err = i915_request_await_object(rq, vma->obj, false);
 	if (err == 0)
@@ -1553,6 +1554,16 @@ static int write_to_scratch(struct i915_gem_context *ctx,
 	if (err)
 		goto skip_request;
 
+	if (rq->engine->emit_init_breadcrumb) {
+		err = rq->engine->emit_init_breadcrumb(rq);
+		if (err)
+			goto skip_request;
+	}
+
+	err = engine->emit_bb_start(rq, vma->node.start, vma->node.size, 0);
+	if (err)
+		goto skip_request;
+
 	i915_vma_unpin(vma);
 
 	i915_request_add(rq);
@@ -1560,7 +1571,6 @@ static int write_to_scratch(struct i915_gem_context *ctx,
 	goto out_vm;
 skip_request:
 	i915_request_set_error_once(rq, err);
-err_request:
 	i915_request_add(rq);
 err_unpin:
 	i915_vma_unpin(vma);
@@ -1674,10 +1684,6 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 		goto err_unpin;
 	}
 
-	err = engine->emit_bb_start(rq, vma->node.start, vma->node.size, flags);
-	if (err)
-		goto err_request;
-
 	i915_vma_lock(vma);
 	err = i915_request_await_object(rq, vma->obj, true);
 	if (err == 0)
@@ -1686,6 +1692,16 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 	if (err)
 		goto skip_request;
 
+	if (rq->engine->emit_init_breadcrumb) {
+		err = rq->engine->emit_init_breadcrumb(rq);
+		if (err)
+			goto skip_request;
+	}
+
+	err = engine->emit_bb_start(rq, vma->node.start, vma->node.size, flags);
+	if (err)
+		goto skip_request;
+
 	i915_vma_unpin(vma);
 
 	i915_request_add(rq);
@@ -1708,7 +1724,6 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 	goto out_vm;
 skip_request:
 	i915_request_set_error_once(rq, err);
-err_request:
 	i915_request_add(rq);
 err_unpin:
 	i915_vma_unpin(vma);
diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
index 772d8cba7da9..e21b5023ca7d 100644
--- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
+++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
@@ -83,6 +83,8 @@ igt_emit_store_dw(struct i915_vma *vma,
 		offset += PAGE_SIZE;
 	}
 	*cmd = MI_BATCH_BUFFER_END;
+
+	i915_gem_object_flush_map(obj);
 	i915_gem_object_unpin_map(obj);
 
 	intel_gt_chipset_flush(vma->vm->gt);
@@ -126,16 +128,6 @@ int igt_gpu_fill_dw(struct intel_context *ce,
 		goto err_batch;
 	}
 
-	flags = 0;
-	if (INTEL_GEN(ce->vm->i915) <= 5)
-		flags |= I915_DISPATCH_SECURE;
-
-	err = rq->engine->emit_bb_start(rq,
-					batch->node.start, batch->node.size,
-					flags);
-	if (err)
-		goto err_request;
-
 	i915_vma_lock(batch);
 	err = i915_request_await_object(rq, batch->obj, false);
 	if (err == 0)
@@ -152,15 +144,17 @@ int igt_gpu_fill_dw(struct intel_context *ce,
 	if (err)
 		goto skip_request;
 
-	i915_request_add(rq);
-
-	i915_vma_unpin_and_release(&batch, 0);
+	flags = 0;
+	if (INTEL_GEN(ce->vm->i915) <= 5)
+		flags |= I915_DISPATCH_SECURE;
 
-	return 0;
+	err = rq->engine->emit_bb_start(rq,
+					batch->node.start, batch->node.size,
+					flags);
 
 skip_request:
-	i915_request_set_error_once(rq, err);
-err_request:
+	if (err)
+		i915_request_set_error_once(rq, err);
 	i915_request_add(rq);
 err_batch:
 	i915_vma_unpin_and_release(&batch, 0);
diff --git a/drivers/gpu/drm/i915/gt/intel_renderstate.c b/drivers/gpu/drm/i915/gt/intel_renderstate.c
index 708cb7808865..f59e7875cc5e 100644
--- a/drivers/gpu/drm/i915/gt/intel_renderstate.c
+++ b/drivers/gpu/drm/i915/gt/intel_renderstate.c
@@ -219,6 +219,14 @@ int intel_renderstate_emit(struct intel_renderstate *so,
 	if (!so->vma)
 		return 0;
 
+	i915_vma_lock(so->vma);
+	err = i915_request_await_object(rq, so->vma->obj, false);
+	if (err == 0)
+		err = i915_vma_move_to_active(so->vma, rq, 0);
+	i915_vma_unlock(so->vma);
+	if (err)
+		return err;
+
 	err = engine->emit_bb_start(rq,
 				    so->batch_offset, so->batch_size,
 				    I915_DISPATCH_SECURE);
@@ -233,13 +241,7 @@ int intel_renderstate_emit(struct intel_renderstate *so,
 			return err;
 	}
 
-	i915_vma_lock(so->vma);
-	err = i915_request_await_object(rq, so->vma->obj, false);
-	if (err == 0)
-		err = i915_vma_move_to_active(so->vma, rq, 0);
-	i915_vma_unlock(so->vma);
-
-	return err;
+	return 0;
 }
 
 void intel_renderstate_fini(struct intel_renderstate *so)
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 15b1ca9f7a01..ffdfcb3805b5 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -865,13 +865,6 @@ static int live_all_engines(void *arg)
 			goto out_request;
 		}
 
-		err = engine->emit_bb_start(request[idx],
-					    batch->node.start,
-					    batch->node.size,
-					    0);
-		GEM_BUG_ON(err);
-		request[idx]->batch = batch;
-
 		i915_vma_lock(batch);
 		err = i915_request_await_object(request[idx], batch->obj, 0);
 		if (err == 0)
@@ -879,6 +872,13 @@ static int live_all_engines(void *arg)
 		i915_vma_unlock(batch);
 		GEM_BUG_ON(err);
 
+		err = engine->emit_bb_start(request[idx],
+					    batch->node.start,
+					    batch->node.size,
+					    0);
+		GEM_BUG_ON(err);
+		request[idx]->batch = batch;
+
 		i915_request_get(request[idx]);
 		i915_request_add(request[idx]);
 		idx++;
@@ -993,13 +993,6 @@ static int live_sequential_engines(void *arg)
 			}
 		}
 
-		err = engine->emit_bb_start(request[idx],
-					    batch->node.start,
-					    batch->node.size,
-					    0);
-		GEM_BUG_ON(err);
-		request[idx]->batch = batch;
-
 		i915_vma_lock(batch);
 		err = i915_request_await_object(request[idx],
 						batch->obj, false);
@@ -1008,6 +1001,13 @@ static int live_sequential_engines(void *arg)
 		i915_vma_unlock(batch);
 		GEM_BUG_ON(err);
 
+		err = engine->emit_bb_start(request[idx],
+					    batch->node.start,
+					    batch->node.size,
+					    0);
+		GEM_BUG_ON(err);
+		request[idx]->batch = batch;
+
 		i915_request_get(request[idx]);
 		i915_request_add(request[idx]);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
