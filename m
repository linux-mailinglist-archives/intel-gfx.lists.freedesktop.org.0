Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE8D21F487
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 16:40:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E13836E991;
	Tue, 14 Jul 2020 14:40:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 273CA6E990
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 14:40:52 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2020 16:40:48 +0200
Message-Id: <20200714144048.3274609-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200714114516.3073222-21-maarten.lankhorst@linux.intel.com>
References: <20200714114516.3073222-21-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Move i915_vma_lock in the selftests
 to avoid lock inversion, v2.
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

Ensure that execbuf selftests keep passing by using ww handling.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../i915/gem/selftests/i915_gem_coherency.c   | 26 ++++++------
 .../drm/i915/gem/selftests/i915_gem_mman.c    | 41 ++++++++++++++-----
 drivers/gpu/drm/i915/gt/selftest_rps.c        | 30 ++++++++------
 drivers/gpu/drm/i915/selftests/i915_request.c | 18 +++++---
 4 files changed, 75 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
index dcdfc396f2f8..7049a6bbc03d 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
@@ -201,25 +201,25 @@ static int gpu_set(struct context *ctx, unsigned long offset, u32 v)
 
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
@@ -240,14 +240,16 @@ static int gpu_set(struct context *ctx, unsigned long offset, u32 v)
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
index 8624f5d2a1f3..e0be3840d9ff 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -77,20 +77,20 @@ create_spin_counter(struct intel_engine_cs *engine,
 
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
 
@@ -134,6 +134,14 @@ create_spin_counter(struct intel_engine_cs *engine,
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
@@ -639,7 +647,6 @@ int live_rps_frequency_cs(void *arg)
 			goto err_vma;
 		}
 
-		i915_vma_lock(vma);
 		err = i915_request_await_object(rq, vma->obj, false);
 		if (!err)
 			err = i915_vma_move_to_active(vma, rq, 0);
@@ -647,7 +654,6 @@ int live_rps_frequency_cs(void *arg)
 			err = rq->engine->emit_bb_start(rq,
 							vma->node.start,
 							PAGE_SIZE, 0);
-		i915_vma_unlock(vma);
 		i915_request_add(rq);
 		if (err)
 			goto err_vma;
@@ -708,6 +714,7 @@ int live_rps_frequency_cs(void *arg)
 		i915_gem_object_flush_map(vma->obj);
 		i915_gem_object_unpin_map(vma->obj);
 		i915_vma_unpin(vma);
+		i915_vma_unlock(vma);
 		i915_vma_put(vma);
 
 		st_engine_heartbeat_enable(engine);
@@ -781,7 +788,6 @@ int live_rps_frequency_srm(void *arg)
 			goto err_vma;
 		}
 
-		i915_vma_lock(vma);
 		err = i915_request_await_object(rq, vma->obj, false);
 		if (!err)
 			err = i915_vma_move_to_active(vma, rq, 0);
@@ -789,7 +795,6 @@ int live_rps_frequency_srm(void *arg)
 			err = rq->engine->emit_bb_start(rq,
 							vma->node.start,
 							PAGE_SIZE, 0);
-		i915_vma_unlock(vma);
 		i915_request_add(rq);
 		if (err)
 			goto err_vma;
@@ -849,6 +854,7 @@ int live_rps_frequency_srm(void *arg)
 		i915_gem_object_flush_map(vma->obj);
 		i915_gem_object_unpin_map(vma->obj);
 		i915_vma_unpin(vma);
+		i915_vma_unlock(vma);
 		i915_vma_put(vma);
 
 		st_engine_heartbeat_enable(engine);
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 57dd6f5122ee..12d9e261dd40 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -862,6 +862,8 @@ static int live_all_engines(void *arg)
 		goto out_free;
 	}
 
+	i915_vma_lock(batch);
+
 	idx = 0;
 	for_each_uabi_engine(engine, i915) {
 		request[idx] = intel_engine_create_kernel_request(engine);
@@ -872,11 +874,9 @@ static int live_all_engines(void *arg)
 			goto out_request;
 		}
 
-		i915_vma_lock(batch);
 		err = i915_request_await_object(request[idx], batch->obj, 0);
 		if (err == 0)
 			err = i915_vma_move_to_active(batch, request[idx], 0);
-		i915_vma_unlock(batch);
 		GEM_BUG_ON(err);
 
 		err = engine->emit_bb_start(request[idx],
@@ -891,6 +891,8 @@ static int live_all_engines(void *arg)
 		idx++;
 	}
 
+	i915_vma_unlock(batch);
+
 	idx = 0;
 	for_each_uabi_engine(engine, i915) {
 		if (i915_request_completed(request[idx])) {
@@ -981,12 +983,13 @@ static int live_sequential_engines(void *arg)
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
@@ -996,16 +999,14 @@ static int live_sequential_engines(void *arg)
 				i915_request_add(request[idx]);
 				pr_err("%s: Request await failed for %s with err=%d\n",
 				       __func__, engine->name, err);
-				goto out_request;
+				goto out_unlock;
 			}
 		}
 
-		i915_vma_lock(batch);
 		err = i915_request_await_object(request[idx],
 						batch->obj, false);
 		if (err == 0)
 			err = i915_vma_move_to_active(batch, request[idx], 0);
-		i915_vma_unlock(batch);
 		GEM_BUG_ON(err);
 
 		err = engine->emit_bb_start(request[idx],
@@ -1020,6 +1021,11 @@ static int live_sequential_engines(void *arg)
 
 		prev = request[idx];
 		idx++;
+
+out_unlock:
+		i915_vma_unlock(batch);
+		if (err)
+			goto out_request;
 	}
 
 	idx = 0;

base-commit: 8fb470d7ec8b10c5e4730d554c5ba28b615d0d32
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
