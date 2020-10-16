Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4214C290326
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 12:45:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 189E46EABC;
	Fri, 16 Oct 2020 10:44:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 499F86EAC7
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Oct 2020 10:44:52 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Oct 2020 12:44:17 +0200
Message-Id: <20201016104444.1492028-35-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 34/61] drm/i915: Increase ww locking for perf.
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

We need to lock a few more objects, some temporarily,
add ww lock where needed.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 56 ++++++++++++++++++++++++--------
 1 file changed, 43 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index e94976976571..281af1fdf514 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1579,7 +1579,7 @@ static int alloc_oa_buffer(struct i915_perf_stream *stream)
 	stream->oa_buffer.vma = vma;
 
 	stream->oa_buffer.vaddr =
-		i915_gem_object_pin_map(bo, I915_MAP_WB);
+		i915_gem_object_pin_map_unlocked(bo, I915_MAP_WB);
 	if (IS_ERR(stream->oa_buffer.vaddr)) {
 		ret = PTR_ERR(stream->oa_buffer.vaddr);
 		goto err_unpin;
@@ -1632,6 +1632,7 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 	const u32 base = stream->engine->mmio_base;
 #define CS_GPR(x) GEN8_RING_CS_GPR(base, x)
 	u32 *batch, *ts0, *cs, *jump;
+	struct i915_gem_ww_ctx ww;
 	int ret, i;
 	enum {
 		START_TS,
@@ -1649,15 +1650,21 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 		return PTR_ERR(bo);
 	}
 
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	ret = i915_gem_object_lock(bo, &ww);
+	if (ret)
+		goto out_ww;
+
 	/*
 	 * We pin in GGTT because we jump into this buffer now because
 	 * multiple OA config BOs will have a jump to this address and it
 	 * needs to be fixed during the lifetime of the i915/perf stream.
 	 */
-	vma = i915_gem_object_ggtt_pin(bo, NULL, 0, 0, PIN_HIGH);
+	vma = i915_gem_object_ggtt_pin_ww(bo, &ww, NULL, 0, 0, PIN_HIGH);
 	if (IS_ERR(vma)) {
 		ret = PTR_ERR(vma);
-		goto err_unref;
+		goto out_ww;
 	}
 
 	batch = cs = i915_gem_object_pin_map(bo, I915_MAP_WB);
@@ -1791,12 +1798,19 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 	__i915_gem_object_release_map(bo);
 
 	stream->noa_wait = vma;
-	return 0;
+	goto out_ww;
 
 err_unpin:
 	i915_vma_unpin_and_release(&vma, 0);
-err_unref:
-	i915_gem_object_put(bo);
+out_ww:
+	if (ret == -EDEADLK) {
+		ret = i915_gem_ww_ctx_backoff(&ww);
+		if (!ret)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
+	if (ret)
+		i915_gem_object_put(bo);
 	return ret;
 }
 
@@ -1839,6 +1853,7 @@ alloc_oa_config_buffer(struct i915_perf_stream *stream,
 {
 	struct drm_i915_gem_object *obj;
 	struct i915_oa_config_bo *oa_bo;
+	struct i915_gem_ww_ctx ww;
 	size_t config_length = 0;
 	u32 *cs;
 	int err;
@@ -1859,10 +1874,16 @@ alloc_oa_config_buffer(struct i915_perf_stream *stream,
 		goto err_free;
 	}
 
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	err = i915_gem_object_lock(obj, &ww);
+	if (err)
+		goto out_ww;
+
 	cs = i915_gem_object_pin_map(obj, I915_MAP_WB);
 	if (IS_ERR(cs)) {
 		err = PTR_ERR(cs);
-		goto err_oa_bo;
+		goto out_ww;
 	}
 
 	cs = write_cs_mi_lri(cs,
@@ -1890,19 +1911,28 @@ alloc_oa_config_buffer(struct i915_perf_stream *stream,
 				       NULL);
 	if (IS_ERR(oa_bo->vma)) {
 		err = PTR_ERR(oa_bo->vma);
-		goto err_oa_bo;
+		goto out_ww;
 	}
 
 	oa_bo->oa_config = i915_oa_config_get(oa_config);
 	llist_add(&oa_bo->node, &stream->oa_config_bos);
 
-	return oa_bo;
+out_ww:
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
 
-err_oa_bo:
-	i915_gem_object_put(obj);
+	if (err)
+		i915_gem_object_put(obj);
 err_free:
-	kfree(oa_bo);
-	return ERR_PTR(err);
+	if (err) {
+		kfree(oa_bo);
+		return ERR_PTR(err);
+	}
+	return oa_bo;
 }
 
 static struct i915_vma *
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
