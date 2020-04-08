Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0641A1F8E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 13:10:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C5456EA3B;
	Wed,  8 Apr 2020 11:10:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AE046EA2E
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 11:10:43 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Apr 2020 13:10:28 +0200
Message-Id: <20200408111031.2330026-20-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200408111031.2330026-1-maarten.lankhorst@linux.intel.com>
References: <20200408111031.2330026-1-maarten.lankhorst@linux.intel.com>
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
 drivers/gpu/drm/i915/selftests/i915_request.c | 18 +++++---
 3 files changed, 57 insertions(+), 28 deletions(-)

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
index eec58da734bd..c8b9343cc88c 100644
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
@@ -1000,6 +1011,7 @@ static int __igt_mmap_gpu(struct drm_i915_private *i915,
 	for_each_uabi_engine(engine, i915) {
 		struct i915_request *rq;
 		struct i915_vma *vma;
+		struct i915_gem_ww_ctx ww;
 
 		vma = i915_vma_instance(obj, engine->kernel_context->vm, NULL);
 		if (IS_ERR(vma)) {
@@ -1007,9 +1019,13 @@ static int __igt_mmap_gpu(struct drm_i915_private *i915,
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
@@ -1017,11 +1033,9 @@ static int __igt_mmap_gpu(struct drm_i915_private *i915,
 			goto out_unpin;
 		}
 
-		i915_vma_lock(vma);
 		err = i915_request_await_object(rq, vma->obj, false);
 		if (err == 0)
 			err = i915_vma_move_to_active(vma, rq, 0);
-		i915_vma_unlock(vma);
 
 		err = engine->emit_bb_start(rq, vma->node.start, 0, 0);
 		i915_request_get(rq);
@@ -1043,6 +1057,13 @@ static int __igt_mmap_gpu(struct drm_i915_private *i915,
 
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
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 1dab0360f76a..19f8177f817d 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -854,6 +854,8 @@ static int live_all_engines(void *arg)
 		goto out_free;
 	}
 
+	i915_vma_lock(batch);
+
 	idx = 0;
 	for_each_uabi_engine(engine, i915) {
 		request[idx] = intel_engine_create_kernel_request(engine);
@@ -871,11 +873,9 @@ static int live_all_engines(void *arg)
 		GEM_BUG_ON(err);
 		request[idx]->batch = batch;
 
-		i915_vma_lock(batch);
 		err = i915_request_await_object(request[idx], batch->obj, 0);
 		if (err == 0)
 			err = i915_vma_move_to_active(batch, request[idx], 0);
-		i915_vma_unlock(batch);
 		GEM_BUG_ON(err);
 
 		i915_request_get(request[idx]);
@@ -883,6 +883,8 @@ static int live_all_engines(void *arg)
 		idx++;
 	}
 
+	i915_vma_unlock(batch);
+
 	idx = 0;
 	for_each_uabi_engine(engine, i915) {
 		if (i915_request_completed(request[idx])) {
@@ -973,12 +975,13 @@ static int live_sequential_engines(void *arg)
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
@@ -988,7 +991,7 @@ static int live_sequential_engines(void *arg)
 				i915_request_add(request[idx]);
 				pr_err("%s: Request await failed for %s with err=%d\n",
 				       __func__, engine->name, err);
-				goto out_request;
+				goto out_unlock;
 			}
 		}
 
@@ -999,12 +1002,10 @@ static int live_sequential_engines(void *arg)
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
@@ -1012,6 +1013,11 @@ static int live_sequential_engines(void *arg)
 
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
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
