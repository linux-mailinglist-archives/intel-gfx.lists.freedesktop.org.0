Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B98D316C42A
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 15:38:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E2A46EB04;
	Tue, 25 Feb 2020 14:38:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B92106EB01
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 14:38:31 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2020 15:38:18 +0100
Message-Id: <20200225143824.1858038-14-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.0.24.g3f081b084b0
In-Reply-To: <20200225143824.1858038-1-maarten.lankhorst@linux.intel.com>
References: <20200225143824.1858038-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/20] drm/i915: Convert
 i915_gem_object/client_blt.c to use ww locking as well, v2.
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

This is the last part outside of selftests that still don't use the
correct lock ordering of timeline->mutex vs resv_lock.

With gem fixed, there are a few places that still get locking wrong:
- gvt/scheduler.c
- i915_perf.c
- Most if not all selftests.

Changes since v1:
- Add intel_engine_pm_get/put() calls to fix use-after-free when using
  intel_engine_get_pool().

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_client_blt.c    |  80 +++++++--
 .../gpu/drm/i915/gem/i915_gem_object_blt.c    | 156 +++++++++++-------
 .../gpu/drm/i915/gem/i915_gem_object_blt.h    |   3 +
 3 files changed, 165 insertions(+), 74 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
index d92a35163330..e9b45f6b1479 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
@@ -157,6 +157,7 @@ static void clear_pages_worker(struct work_struct *work)
 	struct clear_pages_work *w = container_of(work, typeof(*w), work);
 	struct drm_i915_gem_object *obj = w->sleeve->vma->obj;
 	struct i915_vma *vma = w->sleeve->vma;
+	struct i915_gem_ww_ctx ww;
 	struct i915_request *rq;
 	struct i915_vma *batch;
 	int err = w->dma.error;
@@ -172,17 +173,20 @@ static void clear_pages_worker(struct work_struct *work)
 	obj->read_domains = I915_GEM_GPU_DOMAINS;
 	obj->write_domain = 0;
 
-	err = i915_vma_pin(vma, 0, 0, PIN_USER);
-	if (unlikely(err))
+	i915_gem_ww_ctx_init(&ww, false);
+	intel_engine_pm_get(w->ce->engine);
+retry:
+	err = intel_context_pin_ww(w->ce, &ww);
+	if (err)
 		goto out_signal;
 
-	batch = intel_emit_vma_fill_blt(w->ce, vma, w->value);
+	batch = intel_emit_vma_fill_blt(w->ce, vma, &ww, w->value);
 	if (IS_ERR(batch)) {
 		err = PTR_ERR(batch);
-		goto out_unpin;
+		goto out_ctx;
 	}
 
-	rq = intel_context_create_request(w->ce);
+	rq = i915_request_create(w->ce);
 	if (IS_ERR(rq)) {
 		err = PTR_ERR(rq);
 		goto out_batch;
@@ -224,9 +228,19 @@ static void clear_pages_worker(struct work_struct *work)
 	i915_request_add(rq);
 out_batch:
 	intel_emit_vma_release(w->ce, batch);
-out_unpin:
-	i915_vma_unpin(vma);
+out_ctx:
+	intel_context_unpin(w->ce);
 out_signal:
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
+
+	i915_vma_unpin(w->sleeve->vma);
+	intel_engine_pm_put(w->ce->engine);
+
 	if (unlikely(err)) {
 		dma_fence_set_error(&w->dma, err);
 		dma_fence_signal(&w->dma);
@@ -234,6 +248,45 @@ static void clear_pages_worker(struct work_struct *work)
 	}
 }
 
+static int pin_wait_clear_pages_work(struct clear_pages_work *w,
+				     struct intel_context *ce)
+{
+	struct i915_vma *vma = w->sleeve->vma;
+	struct i915_gem_ww_ctx ww;
+	int err;
+
+	i915_gem_ww_ctx_init(&ww, false);
+retry:
+	err = i915_gem_object_lock(vma->obj, &ww);
+	if (err)
+		goto out;
+
+	err = i915_vma_pin_ww(vma, &ww, 0, 0, PIN_USER);
+	if (unlikely(err))
+		goto out;
+
+	err = i915_sw_fence_await_reservation(&w->wait,
+					      vma->obj->base.resv, NULL,
+					      true, I915_FENCE_TIMEOUT,
+					      I915_FENCE_GFP);
+	if (err)
+		goto err_unpin_vma;
+
+	dma_resv_add_excl_fence(vma->obj->base.resv, &w->dma);
+
+err_unpin_vma:
+	if (err)
+		i915_vma_unpin(vma);
+out:
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
+	return err;
+}
+
 static int __i915_sw_fence_call
 clear_pages_work_notify(struct i915_sw_fence *fence,
 			enum i915_sw_fence_notify state)
@@ -287,18 +340,9 @@ int i915_gem_schedule_fill_pages_blt(struct drm_i915_gem_object *obj,
 	dma_fence_init(&work->dma, &clear_pages_work_ops, &fence_lock, 0, 0);
 	i915_sw_fence_init(&work->wait, clear_pages_work_notify);
 
-	i915_gem_object_lock(obj, NULL);
-	err = i915_sw_fence_await_reservation(&work->wait,
-					      obj->base.resv, NULL,
-					      true, I915_FENCE_TIMEOUT,
-					      I915_FENCE_GFP);
-	if (err < 0) {
+	err = pin_wait_clear_pages_work(work, ce);
+	if (err < 0)
 		dma_fence_set_error(&work->dma, err);
-	} else {
-		dma_resv_add_excl_fence(obj->base.resv, &work->dma);
-		err = 0;
-	}
-	i915_gem_object_unlock(obj);
 
 	dma_fence_get(&work->dma);
 	i915_sw_fence_commit(&work->wait);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
index 2b23e000bb57..8ce4aa9cc949 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
@@ -14,6 +14,7 @@
 
 struct i915_vma *intel_emit_vma_fill_blt(struct intel_context *ce,
 					 struct i915_vma *vma,
+					 struct i915_gem_ww_ctx *ww,
 					 u32 value)
 {
 	struct drm_i915_private *i915 = ce->vm->i915;
@@ -39,10 +40,24 @@ struct i915_vma *intel_emit_vma_fill_blt(struct intel_context *ce,
 		goto out_pm;
 	}
 
+	err = i915_gem_object_lock(pool->obj, ww);
+	if (err)
+		goto out_put;
+
+	batch = i915_vma_instance(pool->obj, ce->vm, NULL);
+	if (IS_ERR(batch)) {
+		err = PTR_ERR(batch);
+		goto out_put;
+	}
+
+	err = i915_vma_pin_ww(batch, ww, 0, 0, PIN_USER);
+	if (unlikely(err))
+		goto out_put;
+
 	cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_WC);
 	if (IS_ERR(cmd)) {
 		err = PTR_ERR(cmd);
-		goto out_put;
+		goto out_unpin;
 	}
 
 	rem = vma->size;
@@ -82,19 +97,11 @@ struct i915_vma *intel_emit_vma_fill_blt(struct intel_context *ce,
 
 	i915_gem_object_unpin_map(pool->obj);
 
-	batch = i915_vma_instance(pool->obj, ce->vm, NULL);
-	if (IS_ERR(batch)) {
-		err = PTR_ERR(batch);
-		goto out_put;
-	}
-
-	err = i915_vma_pin(batch, 0, 0, PIN_USER);
-	if (unlikely(err))
-		goto out_put;
-
 	batch->private = pool;
 	return batch;
 
+out_unpin:
+	i915_vma_unpin(batch);
 out_put:
 	intel_engine_pool_put(pool);
 out_pm:
@@ -106,11 +113,9 @@ int intel_emit_vma_mark_active(struct i915_vma *vma, struct i915_request *rq)
 {
 	int err;
 
-	i915_vma_lock(vma);
 	err = i915_request_await_object(rq, vma->obj, false);
 	if (err == 0)
 		err = i915_vma_move_to_active(vma, rq, 0);
-	i915_vma_unlock(vma);
 	if (unlikely(err))
 		return err;
 
@@ -128,6 +133,7 @@ int i915_gem_object_fill_blt(struct drm_i915_gem_object *obj,
 			     struct intel_context *ce,
 			     u32 value)
 {
+	struct i915_gem_ww_ctx ww;
 	struct i915_request *rq;
 	struct i915_vma *batch;
 	struct i915_vma *vma;
@@ -137,23 +143,31 @@ int i915_gem_object_fill_blt(struct drm_i915_gem_object *obj,
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
 
-	err = i915_vma_pin(vma, 0, 0, PIN_USER);
-	if (unlikely(err))
-		return err;
+	i915_gem_ww_ctx_init(&ww, true);
+	intel_engine_pm_get(ce->engine);
+retry:
+	err = i915_gem_object_lock(obj, &ww);
+	if (err)
+		goto out;
+
+	err = intel_context_pin_ww(ce, &ww);
+	if (err)
+		goto out;
 
-	if (obj->cache_dirty & ~obj->cache_coherent) {
-		i915_gem_object_lock(obj, NULL);
+	err = i915_vma_pin_ww(vma, &ww, 0, 0, PIN_USER);
+	if (err)
+		goto out_ctx;
+
+	if (obj->cache_dirty & ~obj->cache_coherent)
 		i915_gem_clflush_object(obj, 0);
-		i915_gem_object_unlock(obj);
-	}
 
-	batch = intel_emit_vma_fill_blt(ce, vma, value);
+	batch = intel_emit_vma_fill_blt(ce, vma, &ww, value);
 	if (IS_ERR(batch)) {
 		err = PTR_ERR(batch);
-		goto out_unpin;
+		goto out_vma;
 	}
 
-	rq = intel_context_create_request(ce);
+	rq = i915_request_create(ce);
 	if (IS_ERR(rq)) {
 		err = PTR_ERR(rq);
 		goto out_batch;
@@ -173,11 +187,9 @@ int i915_gem_object_fill_blt(struct drm_i915_gem_object *obj,
 			goto out_request;
 	}
 
-	i915_vma_lock(vma);
 	err = i915_request_await_object(rq, vma->obj, true);
 	if (err == 0)
 		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
-	i915_vma_unlock(vma);
 	if (unlikely(err))
 		goto out_request;
 
@@ -191,12 +203,23 @@ int i915_gem_object_fill_blt(struct drm_i915_gem_object *obj,
 	i915_request_add(rq);
 out_batch:
 	intel_emit_vma_release(ce, batch);
-out_unpin:
+out_vma:
 	i915_vma_unpin(vma);
+out_ctx:
+	intel_context_unpin(ce);
+out:
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
+	intel_engine_pm_put(ce->engine);
 	return err;
 }
 
 struct i915_vma *intel_emit_vma_copy_blt(struct intel_context *ce,
+					 struct i915_gem_ww_ctx *ww,
 					 struct i915_vma *src,
 					 struct i915_vma *dst)
 {
@@ -223,10 +246,24 @@ struct i915_vma *intel_emit_vma_copy_blt(struct intel_context *ce,
 		goto out_pm;
 	}
 
+	err = i915_gem_object_lock(pool->obj, ww);
+	if (err)
+		goto out_put;
+
+	batch = i915_vma_instance(pool->obj, ce->vm, NULL);
+	if (IS_ERR(batch)) {
+		err = PTR_ERR(batch);
+		goto out_put;
+	}
+
+	err = i915_vma_pin_ww(batch, ww, 0, 0, PIN_USER);
+	if (unlikely(err))
+		goto out_put;
+
 	cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_WC);
 	if (IS_ERR(cmd)) {
 		err = PTR_ERR(cmd);
-		goto out_put;
+		goto out_unpin;
 	}
 
 	rem = src->size;
@@ -281,19 +318,11 @@ struct i915_vma *intel_emit_vma_copy_blt(struct intel_context *ce,
 
 	i915_gem_object_unpin_map(pool->obj);
 
-	batch = i915_vma_instance(pool->obj, ce->vm, NULL);
-	if (IS_ERR(batch)) {
-		err = PTR_ERR(batch);
-		goto out_put;
-	}
-
-	err = i915_vma_pin(batch, 0, 0, PIN_USER);
-	if (unlikely(err))
-		goto out_put;
-
 	batch->private = pool;
 	return batch;
 
+out_unpin:
+	i915_vma_unpin(batch);
 out_put:
 	intel_engine_pool_put(pool);
 out_pm:
@@ -315,10 +344,9 @@ int i915_gem_object_copy_blt(struct drm_i915_gem_object *src,
 			     struct drm_i915_gem_object *dst,
 			     struct intel_context *ce)
 {
-	struct drm_gem_object *objs[] = { &src->base, &dst->base };
 	struct i915_address_space *vm = ce->vm;
 	struct i915_vma *vma[2], *batch;
-	struct ww_acquire_ctx acquire;
+	struct i915_gem_ww_ctx ww;
 	struct i915_request *rq;
 	int err, i;
 
@@ -326,25 +354,36 @@ int i915_gem_object_copy_blt(struct drm_i915_gem_object *src,
 	if (IS_ERR(vma[0]))
 		return PTR_ERR(vma[0]);
 
-	err = i915_vma_pin(vma[0], 0, 0, PIN_USER);
-	if (unlikely(err))
-		return err;
-
 	vma[1] = i915_vma_instance(dst, vm, NULL);
 	if (IS_ERR(vma[1]))
-		goto out_unpin_src;
+		return PTR_ERR(vma);
 
-	err = i915_vma_pin(vma[1], 0, 0, PIN_USER);
+	i915_gem_ww_ctx_init(&ww, true);
+	intel_engine_pm_get(ce->engine);
+retry:
+	err = i915_gem_object_lock(src, &ww);
+	if (!err)
+		err = i915_gem_object_lock(dst, &ww);
+	if (!err)
+		err = intel_context_pin_ww(ce, &ww);
+	if (err)
+		goto out;
+
+	err = i915_vma_pin_ww(vma[0], &ww, 0, 0, PIN_USER);
+	if (err)
+		goto out_ctx;
+
+	err = i915_vma_pin_ww(vma[1], &ww, 0, 0, PIN_USER);
 	if (unlikely(err))
 		goto out_unpin_src;
 
-	batch = intel_emit_vma_copy_blt(ce, vma[0], vma[1]);
+	batch = intel_emit_vma_copy_blt(ce, &ww, vma[0], vma[1]);
 	if (IS_ERR(batch)) {
 		err = PTR_ERR(batch);
 		goto out_unpin_dst;
 	}
 
-	rq = intel_context_create_request(ce);
+	rq = i915_request_create(ce);
 	if (IS_ERR(rq)) {
 		err = PTR_ERR(rq);
 		goto out_batch;
@@ -354,14 +393,10 @@ int i915_gem_object_copy_blt(struct drm_i915_gem_object *src,
 	if (unlikely(err))
 		goto out_request;
 
-	err = drm_gem_lock_reservations(objs, ARRAY_SIZE(objs), &acquire);
-	if (unlikely(err))
-		goto out_request;
-
 	for (i = 0; i < ARRAY_SIZE(vma); i++) {
 		err = move_to_gpu(vma[i], rq, i);
 		if (unlikely(err))
-			goto out_unlock;
+			goto out_request;
 	}
 
 	for (i = 0; i < ARRAY_SIZE(vma); i++) {
@@ -369,20 +404,19 @@ int i915_gem_object_copy_blt(struct drm_i915_gem_object *src,
 
 		err = i915_vma_move_to_active(vma[i], rq, flags);
 		if (unlikely(err))
-			goto out_unlock;
+			goto out_request;
 	}
 
 	if (rq->engine->emit_init_breadcrumb) {
 		err = rq->engine->emit_init_breadcrumb(rq);
 		if (unlikely(err))
-			goto out_unlock;
+			goto out_request;
 	}
 
 	err = rq->engine->emit_bb_start(rq,
 					batch->node.start, batch->node.size,
 					0);
-out_unlock:
-	drm_gem_unlock_reservations(objs, ARRAY_SIZE(objs), &acquire);
+
 out_request:
 	if (unlikely(err))
 		i915_request_skip(rq, err);
@@ -394,6 +428,16 @@ int i915_gem_object_copy_blt(struct drm_i915_gem_object *src,
 	i915_vma_unpin(vma[1]);
 out_unpin_src:
 	i915_vma_unpin(vma[0]);
+out_ctx:
+	intel_context_unpin(ce);
+out:
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
+	intel_engine_pm_put(ce->engine);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.h b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.h
index 243a43a87824..cdb537076752 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.h
@@ -14,12 +14,15 @@
 #include "i915_vma.h"
 
 struct drm_i915_gem_object;
+struct i915_gem_ww_ctx;
 
 struct i915_vma *intel_emit_vma_fill_blt(struct intel_context *ce,
 					 struct i915_vma *vma,
+					 struct i915_gem_ww_ctx *ww,
 					 u32 value);
 
 struct i915_vma *intel_emit_vma_copy_blt(struct intel_context *ce,
+					 struct i915_gem_ww_ctx *ww,
 					 struct i915_vma *src,
 					 struct i915_vma *dst);
 
-- 
2.25.0.24.g3f081b084b0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
