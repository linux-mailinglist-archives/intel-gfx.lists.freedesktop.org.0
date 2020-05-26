Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4051B1CDD41
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 16:30:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1D346E4A1;
	Mon, 11 May 2020 14:30:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C99216E497
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 14:29:49 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 May 2020 16:29:35 +0200
Message-Id: <20200511142938.1041006-20-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200511142938.1041006-1-maarten.lankhorst@linux.intel.com>
References: <20200511142938.1041006-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/23] drm/i915: Move i915_vma_lock in the
 selftests to avoid lock inversion, v2.
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

Make sure vma_lock is not used as inner lock when kernel context is used,
and add ww handling where appropriate.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../i915/gem/selftests/i915_gem_coherency.c   | 26 ++++++------
 .../drm/i915/gem/selftests/i915_gem_mman.c    | 41 ++++++++++++++-----
 drivers/gpu/drm/i915/gt/selftest_rps.c        | 30 ++++++++------
 drivers/gpu/drm/i915/selftests/i915_request.c | 18 +++++---
 4 files changed, 75 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
index 99f8466a108a..d93b7d9ad174 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
@@ -199,25 +199,25 @@ static int gpu_set(struct context *ctx, unsigned long offset, u32 v)
 
 	i915_gem_object_lock(ctx->obj, NULL);
 	err = i915_gem_object_set_to_gtt_domain(ctx->obj, true);
-	i915_gem_object_unlock(ctx->obj);
 	if (err)
-		return err;
+		goto out_unlock;
 
 	vma = i915_gem_object_ggtt_pin(ctx->obj, NULL, 0, 0, 0);
-	if (IS_ERR(vma))
-		return PTR_ERR(vma);
+	if (IS_ERR(vma)) {
+		err = PTR_ERR(vma);
+		goto out_unlock;
+	}
 
 	rq = intel_engine_create_kernel_request(ctx->engine);
 	if (IS_ERR(rq)) {
-		i915_vma_unpin(vma);
-		return PTR_ERR(rq);
+		err = PTR_ERR(rq);
+		goto out_unpin;
 	}
 
 	cs = intel_ring_begin(rq, 4);
 	if (IS_ERR(cs)) {
-		i915_request_add(rq);
-		i915_vma_unpin(vma);
-		return PTR_ERR(cs);
+		err = PTR_ERR(cs);
+		goto out_rq;
 	}
 
 	if (INTEL_GEN(ctx->engine->i915) >= 8) {
@@ -238,14 +238,16 @@ static int gpu_set(struct context *ctx, unsigned long offset, u32 v)
 	}
 	intel_ring_advance(rq, cs);
 
-	i915_vma_lock(vma);
 	err = i915_request_await_object(rq, vma->obj, true);
 	if (err == 0)
 		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
-	i915_vma_unlock(vma);
-	i915_vma_unpin(vma);
 
+out_rq:
 	i915_request_add(rq);
+out_unpin:
+	i915_vma_unpin(vma);
+out_unlock:
+	i915_gem_object_unlock(ctx->obj);
 
 	return err;
 }
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 9fb95a45bcad..d27d87a678c8 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -528,31 +528,42 @@ static int make_obj_busy(struct drm_i915_gem_object *obj)
 	for_each_uabi_engine(engine, i915) {
 		struct i915_request *rq;
 		struct i915_vma *vma;
+		struct i915_gem_ww_ctx ww;
 		int err;
 
 		vma = i915_vma_instance(obj, &engine->gt->ggtt->vm, NULL);
 		if (IS_ERR(vma))
 			return PTR_ERR(vma);
 
-		err = i915_vma_pin(vma, 0, 0, PIN_USER);
+		i915_gem_ww_ctx_init(&ww, false);
+retry:
+		err = i915_gem_object_lock(obj, &ww);
+		if (!err)
+			err = i915_vma_pin_ww(vma, &ww, 0, 0, PIN_USER);
 		if (err)
-			return err;
+			goto err;
 
 		rq = intel_engine_create_kernel_request(engine);
 		if (IS_ERR(rq)) {
-			i915_vma_unpin(vma);
-			return PTR_ERR(rq);
+			err = PTR_ERR(rq);
+			goto err_unpin;
 		}
 
-		i915_vma_lock(vma);
 		err = i915_request_await_object(rq, vma->obj, true);
 		if (err == 0)
 			err = i915_vma_move_to_active(vma, rq,
 						      EXEC_OBJECT_WRITE);
-		i915_vma_unlock(vma);
 
 		i915_request_add(rq);
+err_unpin:
 		i915_vma_unpin(vma);
+err:
+		if (err == -EDEADLK) {
+			err = i915_gem_ww_ctx_backoff(&ww);
+			if (!err)
+				goto retry;
+		}
+		i915_gem_ww_ctx_fini(&ww);
 		if (err)
 			return err;
 	}
@@ -1123,6 +1134,7 @@ static int __igt_mmap_gpu(struct drm_i915_private *i915,
 	for_each_uabi_engine(engine, i915) {
 		struct i915_request *rq;
 		struct i915_vma *vma;
+		struct i915_gem_ww_ctx ww;
 
 		vma = i915_vma_instance(obj, engine->kernel_context->vm, NULL);
 		if (IS_ERR(vma)) {
@@ -1130,9 +1142,13 @@ static int __igt_mmap_gpu(struct drm_i915_private *i915,
 			goto out_unmap;
 		}
 
-		err = i915_vma_pin(vma, 0, 0, PIN_USER);
+		i915_gem_ww_ctx_init(&ww, false);
+retry:
+		err = i915_gem_object_lock(obj, &ww);
+		if (!err)
+			err = i915_vma_pin_ww(vma, &ww, 0, 0, PIN_USER);
 		if (err)
-			goto out_unmap;
+			goto out_ww;
 
 		rq = i915_request_create(engine->kernel_context);
 		if (IS_ERR(rq)) {
@@ -1140,11 +1156,9 @@ static int __igt_mmap_gpu(struct drm_i915_private *i915,
 			goto out_unpin;
 		}
 
-		i915_vma_lock(vma);
 		err = i915_request_await_object(rq, vma->obj, false);
 		if (err == 0)
 			err = i915_vma_move_to_active(vma, rq, 0);
-		i915_vma_unlock(vma);
 
 		err = engine->emit_bb_start(rq, vma->node.start, 0, 0);
 		i915_request_get(rq);
@@ -1166,6 +1180,13 @@ static int __igt_mmap_gpu(struct drm_i915_private *i915,
 
 out_unpin:
 		i915_vma_unpin(vma);
+out_ww:
+		if (err == -EDEADLK) {
+			err = i915_gem_ww_ctx_backoff(&ww);
+			if (!err)
+				goto retry;
+		}
+		i915_gem_ww_ctx_fini(&ww);
 		if (err)
 			goto out_unmap;
 	}
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index bfa1a15564f7..7876984662b1 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -96,20 +96,20 @@ create_spin_counter(struct intel_engine_cs *engine,
 
 	vma = i915_vma_instance(obj, vm, NULL);
 	if (IS_ERR(vma)) {
-		i915_gem_object_put(obj);
-		return vma;
+		err = PTR_ERR(vma);
+		goto err_put;
 	}
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER);
-	if (err) {
-		i915_vma_put(vma);
-		return ERR_PTR(err);
-	}
+	if (err)
+		goto err_unlock;
+
+	i915_vma_lock(vma);
 
 	base = i915_gem_object_pin_map(obj, I915_MAP_WC);
 	if (IS_ERR(base)) {
-		i915_gem_object_put(obj);
-		return ERR_CAST(base);
+		err = PTR_ERR(base);
+		goto err_unpin;
 	}
 	cs = base;
 
@@ -153,6 +153,14 @@ create_spin_counter(struct intel_engine_cs *engine,
 	*cancel = base + loop;
 	*counter = srm ? memset32(base + end, 0, 1) : NULL;
 	return vma;
+
+err_unpin:
+	i915_vma_unpin(vma);
+err_unlock:
+	i915_vma_unlock(vma);
+err_put:
+	i915_gem_object_put(obj);
+	return ERR_PTR(err);
 }
 
 static u8 wait_for_freq(struct intel_rps *rps, u8 freq, int timeout_ms)
@@ -661,7 +669,6 @@ int live_rps_frequency_cs(void *arg)
 			goto err_vma;
 		}
 
-		i915_vma_lock(vma);
 		err = i915_request_await_object(rq, vma->obj, false);
 		if (!err)
 			err = i915_vma_move_to_active(vma, rq, 0);
@@ -669,7 +676,6 @@ int live_rps_frequency_cs(void *arg)
 			err = rq->engine->emit_bb_start(rq,
 							vma->node.start,
 							PAGE_SIZE, 0);
-		i915_vma_unlock(vma);
 		i915_request_add(rq);
 		if (err)
 			goto err_vma;
@@ -729,6 +735,7 @@ int live_rps_frequency_cs(void *arg)
 		*cancel = MI_BATCH_BUFFER_END;
 		i915_gem_object_unpin_map(vma->obj);
 		i915_vma_unpin(vma);
+		i915_vma_unlock(vma);
 		i915_vma_put(vma);
 
 		engine_heartbeat_enable(engine, saved_heartbeat);
@@ -803,7 +810,6 @@ int live_rps_frequency_srm(void *arg)
 			goto err_vma;
 		}
 
-		i915_vma_lock(vma);
 		err = i915_request_await_object(rq, vma->obj, false);
 		if (!err)
 			err = i915_vma_move_to_active(vma, rq, 0);
@@ -811,7 +817,6 @@ int live_rps_frequency_srm(void *arg)
 			err = rq->engine->emit_bb_start(rq,
 							vma->node.start,
 							PAGE_SIZE, 0);
-		i915_vma_unlock(vma);
 		i915_request_add(rq);
 		if (err)
 			goto err_vma;
@@ -870,6 +875,7 @@ int live_rps_frequency_srm(void *arg)
 		*cancel = MI_BATCH_BUFFER_END;
 		i915_gem_object_unpin_map(vma->obj);
 		i915_vma_unpin(vma);
+		i915_vma_unlock(vma);
 		i915_vma_put(vma);
 
 		engine_heartbeat_enable(engine, saved_heartbeat);
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 15b1ca9f7a01..577f368412da 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -855,6 +855,8 @@ static int live_all_engines(void *arg)
 		goto out_free;
 	}
 
+	i915_vma_lock(batch);
+
 	idx = 0;
 	for_each_uabi_engine(engine, i915) {
 		request[idx] = intel_engine_create_kernel_request(engine);
@@ -872,11 +874,9 @@ static int live_all_engines(void *arg)
 		GEM_BUG_ON(err);
 		request[idx]->batch = batch;
 
-		i915_vma_lock(batch);
 		err = i915_request_await_object(request[idx], batch->obj, 0);
 		if (err == 0)
 			err = i915_vma_move_to_active(batch, request[idx], 0);
-		i915_vma_unlock(batch);
 		GEM_BUG_ON(err);
 
 		i915_request_get(request[idx]);
@@ -884,6 +884,8 @@ static int live_all_engines(void *arg)
 		idx++;
 	}
 
+	i915_vma_unlock(batch);
+
 	idx = 0;
 	for_each_uabi_engine(engine, i915) {
 		if (i915_request_completed(request[idx])) {
@@ -974,12 +976,13 @@ static int live_sequential_engines(void *arg)
 			goto out_free;
 		}
 
+		i915_vma_lock(batch);
 		request[idx] = intel_engine_create_kernel_request(engine);
 		if (IS_ERR(request[idx])) {
 			err = PTR_ERR(request[idx]);
 			pr_err("%s: Request allocation failed for %s with err=%d\n",
 			       __func__, engine->name, err);
-			goto out_request;
+			goto out_unlock;
 		}
 
 		if (prev) {
@@ -989,7 +992,7 @@ static int live_sequential_engines(void *arg)
 				i915_request_add(request[idx]);
 				pr_err("%s: Request await failed for %s with err=%d\n",
 				       __func__, engine->name, err);
-				goto out_request;
+				goto out_unlock;
 			}
 		}
 
@@ -1000,12 +1003,10 @@ static int live_sequential_engines(void *arg)
 		GEM_BUG_ON(err);
 		request[idx]->batch = batch;
 
-		i915_vma_lock(batch);
 		err = i915_request_await_object(request[idx],
 						batch->obj, false);
 		if (err == 0)
 			err = i915_vma_move_to_active(batch, request[idx], 0);
-		i915_vma_unlock(batch);
 		GEM_BUG_ON(err);
 
 		i915_request_get(request[idx]);
@@ -1013,6 +1014,11 @@ static int live_sequential_engines(void *arg)
 
 		prev = request[idx];
 		idx++;
+
+out_unlock:
+		i915_vma_unlock(batch);
+		if (err)
+			goto out_request;
 	}
 
 	idx = 0;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
