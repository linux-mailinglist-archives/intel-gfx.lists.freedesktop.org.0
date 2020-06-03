Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 988DD1ED2C4
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 16:57:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9A8E89C9B;
	Wed,  3 Jun 2020 14:57:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5CC389C03
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jun 2020 14:57:16 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jun 2020 16:56:51 +0200
Message-Id: <20200603145713.3835124-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200603145713.3835124-1-maarten.lankhorst@linux.intel.com>
References: <20200603145713.3835124-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/24] drm/i915: Add an implementation for
 i915_gem_ww_ctx locking, v2.
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

i915_gem_ww_ctx is used to lock all gem bo's for pinning and memory
eviction. We don't use it yet, but lets start adding the definition
first.

To use it, we have to pass a non-NULL ww to gem_object_lock, and don't
unlock directly. It is done in i915_gem_ww_ctx_fini.

Changes since v1:
- Change ww_ctx and obj order in locking functions (Jonas Lahtinen)

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
 .../gpu/drm/i915/gem/i915_gem_client_blt.c    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    |  4 +-
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    | 10 ++--
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  4 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h    | 38 +++++++++++---
 .../gpu/drm/i915/gem/i915_gem_object_blt.c    |  2 +-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  9 ++++
 drivers/gpu/drm/i915/gem/i915_gem_pm.c        |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |  2 +-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |  2 +-
 .../i915/gem/selftests/i915_gem_client_blt.c  |  2 +-
 .../i915/gem/selftests/i915_gem_coherency.c   | 10 ++--
 .../drm/i915/gem/selftests/i915_gem_context.c |  4 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    |  4 +-
 .../drm/i915/gem/selftests/i915_gem_phys.c    |  2 +-
 .../gpu/drm/i915/gt/selftest_workarounds.c    |  2 +-
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |  2 +-
 drivers/gpu/drm/i915/i915_gem.c               | 52 +++++++++++++++++--
 drivers/gpu/drm/i915/i915_gem.h               | 11 ++++
 drivers/gpu/drm/i915/selftests/i915_gem.c     | 41 +++++++++++++++
 drivers/gpu/drm/i915/selftests/i915_vma.c     |  2 +-
 .../drm/i915/selftests/intel_memory_region.c  |  2 +-
 25 files changed, 174 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a9f752d26b4e..afa4328c3f54 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2309,7 +2309,7 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 
 void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
 {
-	i915_gem_object_lock(vma->obj);
+	i915_gem_object_lock(vma->obj, NULL);
 	if (flags & PLANE_HAS_FENCE)
 		i915_vma_unpin_fence(vma);
 	i915_gem_object_unpin_from_display_plane(vma);
@@ -17112,7 +17112,7 @@ static int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	if (!intel_fb->frontbuffer)
 		return -ENOMEM;
 
-	i915_gem_object_lock(obj);
+	i915_gem_object_lock(obj, NULL);
 	tiling = i915_gem_object_get_tiling(obj);
 	stride = i915_gem_object_get_stride(obj);
 	i915_gem_object_unlock(obj);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
index d3a86a4d5c04..c182091c00ff 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
@@ -286,7 +286,7 @@ int i915_gem_schedule_fill_pages_blt(struct drm_i915_gem_object *obj,
 	dma_fence_init(&work->dma, &clear_pages_work_ops, &fence_lock, 0, 0);
 	i915_sw_fence_init(&work->wait, clear_pages_work_notify);
 
-	i915_gem_object_lock(obj);
+	i915_gem_object_lock(obj, NULL);
 	err = i915_sw_fence_await_reservation(&work->wait,
 					      obj->base.resv, NULL, true, 0,
 					      I915_FENCE_GFP);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index f5d59d18cd5b..46abf903dc8a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -113,7 +113,7 @@ static void lut_close(struct i915_gem_context *ctx)
 			continue;
 
 		rcu_read_unlock();
-		i915_gem_object_lock(obj);
+		i915_gem_object_lock(obj, NULL);
 		list_for_each_entry(lut, &obj->lut_list, obj_link) {
 			if (lut->ctx != ctx)
 				continue;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index 2679380159fc..27fddc22a7c6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -128,7 +128,7 @@ static int i915_gem_begin_cpu_access(struct dma_buf *dma_buf, enum dma_data_dire
 	if (err)
 		return err;
 
-	err = i915_gem_object_lock_interruptible(obj);
+	err = i915_gem_object_lock_interruptible(obj, NULL);
 	if (err)
 		goto out;
 
@@ -149,7 +149,7 @@ static int i915_gem_end_cpu_access(struct dma_buf *dma_buf, enum dma_data_direct
 	if (err)
 		return err;
 
-	err = i915_gem_object_lock_interruptible(obj);
+	err = i915_gem_object_lock_interruptible(obj, NULL);
 	if (err)
 		goto out;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 7f76fc68f498..c0acfc97fae3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -32,7 +32,7 @@ void i915_gem_object_flush_if_display(struct drm_i915_gem_object *obj)
 	if (!i915_gem_object_is_framebuffer(obj))
 		return;
 
-	i915_gem_object_lock(obj);
+	i915_gem_object_lock(obj, NULL);
 	__i915_gem_object_flush_for_display(obj);
 	i915_gem_object_unlock(obj);
 }
@@ -197,7 +197,7 @@ int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
 	if (ret)
 		return ret;
 
-	ret = i915_gem_object_lock_interruptible(obj);
+	ret = i915_gem_object_lock_interruptible(obj, NULL);
 	if (ret)
 		return ret;
 
@@ -536,7 +536,7 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
 	if (err)
 		goto out;
 
-	err = i915_gem_object_lock_interruptible(obj);
+	err = i915_gem_object_lock_interruptible(obj, NULL);
 	if (err)
 		goto out_unpin;
 
@@ -576,7 +576,7 @@ int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
 	if (!i915_gem_object_has_struct_page(obj))
 		return -ENODEV;
 
-	ret = i915_gem_object_lock_interruptible(obj);
+	ret = i915_gem_object_lock_interruptible(obj, NULL);
 	if (ret)
 		return ret;
 
@@ -630,7 +630,7 @@ int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
 	if (!i915_gem_object_has_struct_page(obj))
 		return -ENODEV;
 
-	ret = i915_gem_object_lock_interruptible(obj);
+	ret = i915_gem_object_lock_interruptible(obj, NULL);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index c141ce1156d7..b00b2e49a362 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -815,7 +815,7 @@ static int __eb_add_lut(struct i915_execbuffer *eb,
 		if (err == 0) { /* And nor has this handle */
 			struct drm_i915_gem_object *obj = vma->obj;
 
-			i915_gem_object_lock(obj);
+			i915_gem_object_lock(obj, NULL);
 			if (idr_find(&eb->file->object_idr, handle) == obj) {
 				list_add(&lut->obj_link, &obj->lut_list);
 			} else {
@@ -1178,7 +1178,7 @@ static void *reloc_iomap(struct drm_i915_gem_object *obj,
 		if (use_cpu_reloc(cache, obj))
 			return NULL;
 
-		i915_gem_object_lock(obj);
+		i915_gem_object_lock(obj, NULL);
 		err = i915_gem_object_set_to_gtt_domain(obj, true);
 		i915_gem_object_unlock(obj);
 		if (err)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index b6ec5b50d93b..b59e2d40c347 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -108,7 +108,7 @@ void i915_gem_close_object(struct drm_gem_object *gem, struct drm_file *file)
 	struct i915_lut_handle *lut, *ln;
 	LIST_HEAD(close);
 
-	i915_gem_object_lock(obj);
+	i915_gem_object_lock(obj, NULL);
 	list_for_each_entry_safe(lut, ln, &obj->lut_list, obj_link) {
 		struct i915_gem_context *ctx = lut->ctx;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 2faa481cc18f..5103067269b0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -110,20 +110,44 @@ i915_gem_object_put(struct drm_i915_gem_object *obj)
 
 #define assert_object_held(obj) dma_resv_assert_held((obj)->base.resv)
 
-static inline void i915_gem_object_lock(struct drm_i915_gem_object *obj)
+static inline int __i915_gem_object_lock(struct drm_i915_gem_object *obj,
+					 struct i915_gem_ww_ctx *ww,
+					 bool intr)
 {
-	dma_resv_lock(obj->base.resv, NULL);
+	int ret;
+
+	if (intr)
+		ret = dma_resv_lock_interruptible(obj->base.resv, ww ? &ww->ctx : NULL);
+	else
+		ret = dma_resv_lock(obj->base.resv, ww ? &ww->ctx : NULL);
+
+	if (!ret && ww)
+		list_add_tail(&obj->obj_link, &ww->obj_list);
+	if (ret == -EALREADY)
+		ret = 0;
+
+	if (ret == -EDEADLK)
+		ww->contended = obj;
+
+	return ret;
 }
 
-static inline bool i915_gem_object_trylock(struct drm_i915_gem_object *obj)
+static inline int i915_gem_object_lock(struct drm_i915_gem_object *obj,
+				       struct i915_gem_ww_ctx *ww)
 {
-	return dma_resv_trylock(obj->base.resv);
+	return __i915_gem_object_lock(obj, ww, ww && ww->intr);
 }
 
-static inline int
-i915_gem_object_lock_interruptible(struct drm_i915_gem_object *obj)
+static inline int i915_gem_object_lock_interruptible(struct drm_i915_gem_object *obj,
+						     struct i915_gem_ww_ctx *ww)
 {
-	return dma_resv_lock_interruptible(obj->base.resv, NULL);
+	WARN_ON(ww && !ww->intr);
+	return __i915_gem_object_lock(obj, ww, true);
+}
+
+static inline bool i915_gem_object_trylock(struct drm_i915_gem_object *obj)
+{
+	return dma_resv_trylock(obj->base.resv);
 }
 
 static inline void i915_gem_object_unlock(struct drm_i915_gem_object *obj)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
index f457d7130491..65abc7784009 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
@@ -144,7 +144,7 @@ int i915_gem_object_fill_blt(struct drm_i915_gem_object *obj,
 		return err;
 
 	if (obj->cache_dirty & ~obj->cache_coherent) {
-		i915_gem_object_lock(obj);
+		i915_gem_object_lock(obj, NULL);
 		i915_gem_clflush_object(obj, 0);
 		i915_gem_object_unlock(obj);
 	}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index b1f82a11aef2..3740c0080e38 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -122,6 +122,15 @@ struct drm_i915_gem_object {
 	 */
 	struct list_head lut_list;
 
+	/**
+	 * @obj_link: Link into @i915_gem_ww_ctx.obj_list
+	 *
+	 * When we lock this object through i915_gem_object_lock() with a
+	 * context, we add it to the list to ensure we can unlock everything
+	 * when i915_gem_ww_ctx_backoff() or i915_gem_ww_ctx_fini() are called.
+	 */
+	struct list_head obj_link;
+
 	/** Stolen memory for this object, instead of being backed by shmem. */
 	struct drm_mm_node *stolen;
 	union {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pm.c b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
index 3d215164dd5a..40d3e40500fa 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
@@ -84,7 +84,7 @@ void i915_gem_suspend_late(struct drm_i915_private *i915)
 
 			spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
 
-			i915_gem_object_lock(obj);
+			i915_gem_object_lock(obj, NULL);
 			drm_WARN_ON(&i915->drm,
 			    i915_gem_object_set_to_gtt_domain(obj, false));
 			i915_gem_object_unlock(obj);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
index 0158e49bf9bb..65fbf29c4852 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
@@ -249,7 +249,7 @@ i915_gem_object_set_tiling(struct drm_i915_gem_object *obj,
 	 * whilst executing a fenced command for an untiled object.
 	 */
 
-	i915_gem_object_lock(obj);
+	i915_gem_object_lock(obj, NULL);
 	if (i915_gem_object_is_framebuffer(obj)) {
 		i915_gem_object_unlock(obj);
 		return -EBUSY;
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 8291ede6902c..eb2011ccb92b 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -947,7 +947,7 @@ static int gpu_write(struct intel_context *ce,
 {
 	int err;
 
-	i915_gem_object_lock(vma->obj);
+	i915_gem_object_lock(vma->obj, NULL);
 	err = i915_gem_object_set_to_gtt_domain(vma->obj, true);
 	i915_gem_object_unlock(vma->obj);
 	if (err)
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index 8fe3ad2ee34e..efaa77010d6d 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -75,7 +75,7 @@ static int __igt_client_fill(struct intel_engine_cs *engine)
 		if (err)
 			goto err_unpin;
 
-		i915_gem_object_lock(obj);
+		i915_gem_object_lock(obj, NULL);
 		err = i915_gem_object_set_to_cpu_domain(obj, false);
 		i915_gem_object_unlock(obj);
 		if (err)
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
index 87d7d8aa080f..1de2959b153c 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
@@ -82,7 +82,7 @@ static int gtt_set(struct context *ctx, unsigned long offset, u32 v)
 	u32 __iomem *map;
 	int err = 0;
 
-	i915_gem_object_lock(ctx->obj);
+	i915_gem_object_lock(ctx->obj, NULL);
 	err = i915_gem_object_set_to_gtt_domain(ctx->obj, true);
 	i915_gem_object_unlock(ctx->obj);
 	if (err)
@@ -115,7 +115,7 @@ static int gtt_get(struct context *ctx, unsigned long offset, u32 *v)
 	u32 __iomem *map;
 	int err = 0;
 
-	i915_gem_object_lock(ctx->obj);
+	i915_gem_object_lock(ctx->obj, NULL);
 	err = i915_gem_object_set_to_gtt_domain(ctx->obj, false);
 	i915_gem_object_unlock(ctx->obj);
 	if (err)
@@ -147,7 +147,7 @@ static int wc_set(struct context *ctx, unsigned long offset, u32 v)
 	u32 *map;
 	int err;
 
-	i915_gem_object_lock(ctx->obj);
+	i915_gem_object_lock(ctx->obj, NULL);
 	err = i915_gem_object_set_to_wc_domain(ctx->obj, true);
 	i915_gem_object_unlock(ctx->obj);
 	if (err)
@@ -170,7 +170,7 @@ static int wc_get(struct context *ctx, unsigned long offset, u32 *v)
 	u32 *map;
 	int err;
 
-	i915_gem_object_lock(ctx->obj);
+	i915_gem_object_lock(ctx->obj, NULL);
 	err = i915_gem_object_set_to_wc_domain(ctx->obj, false);
 	i915_gem_object_unlock(ctx->obj);
 	if (err)
@@ -193,7 +193,7 @@ static int gpu_set(struct context *ctx, unsigned long offset, u32 v)
 	u32 *cs;
 	int err;
 
-	i915_gem_object_lock(ctx->obj);
+	i915_gem_object_lock(ctx->obj, NULL);
 	err = i915_gem_object_set_to_gtt_domain(ctx->obj, true);
 	i915_gem_object_unlock(ctx->obj);
 	if (err)
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index b81978890641..438c15ef2184 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -950,7 +950,7 @@ emit_rpcs_query(struct drm_i915_gem_object *obj,
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
 
-	i915_gem_object_lock(obj);
+	i915_gem_object_lock(obj, NULL);
 	err = i915_gem_object_set_to_gtt_domain(obj, false);
 	i915_gem_object_unlock(obj);
 	if (err)
@@ -1706,7 +1706,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 
 	i915_request_add(rq);
 
-	i915_gem_object_lock(obj);
+	i915_gem_object_lock(obj, NULL);
 	err = i915_gem_object_set_to_cpu_domain(obj, false);
 	i915_gem_object_unlock(obj);
 	if (err)
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 9c7402ce5bf9..9fb95a45bcad 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -103,7 +103,7 @@ static int check_partial_mapping(struct drm_i915_gem_object *obj,
 	GEM_BUG_ON(i915_gem_object_get_tiling(obj) != tile->tiling);
 	GEM_BUG_ON(i915_gem_object_get_stride(obj) != tile->stride);
 
-	i915_gem_object_lock(obj);
+	i915_gem_object_lock(obj, NULL);
 	err = i915_gem_object_set_to_gtt_domain(obj, true);
 	i915_gem_object_unlock(obj);
 	if (err) {
@@ -188,7 +188,7 @@ static int check_partial_mappings(struct drm_i915_gem_object *obj,
 	GEM_BUG_ON(i915_gem_object_get_tiling(obj) != tile->tiling);
 	GEM_BUG_ON(i915_gem_object_get_stride(obj) != tile->stride);
 
-	i915_gem_object_lock(obj);
+	i915_gem_object_lock(obj, NULL);
 	err = i915_gem_object_set_to_gtt_domain(obj, true);
 	i915_gem_object_unlock(obj);
 	if (err) {
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c
index 34932871b3a5..a94243dc4c5c 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c
@@ -44,7 +44,7 @@ static int mock_phys_object(void *arg)
 	}
 
 	/* Make the object dirty so that put_pages must do copy back the data */
-	i915_gem_object_lock(obj);
+	i915_gem_object_lock(obj, NULL);
 	err = i915_gem_object_set_to_gtt_domain(obj, true);
 	i915_gem_object_unlock(obj);
 	if (err) {
diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index 32785463ec9e..6e4f7a9099d5 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -214,7 +214,7 @@ static int check_whitelist(struct i915_gem_context *ctx,
 		return PTR_ERR(results);
 
 	err = 0;
-	i915_gem_object_lock(results);
+	i915_gem_object_lock(results, NULL);
 	intel_wedge_on_timeout(&wedge, engine->gt, HZ / 5) /* safety net! */
 		err = i915_gem_object_set_to_cpu_domain(results, false);
 	i915_gem_object_unlock(results);
diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index 8b87f130f7f1..b20db0d965ff 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -2994,7 +2994,7 @@ static int shadow_indirect_ctx(struct intel_shadow_wa_ctx *wa_ctx)
 		goto put_obj;
 	}
 
-	i915_gem_object_lock(obj);
+	i915_gem_object_lock(obj, NULL);
 	ret = i915_gem_object_set_to_cpu_domain(obj, false);
 	i915_gem_object_unlock(obj);
 	if (ret) {
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 0cbcb9f54e7d..3eedd4e0ebab 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -420,7 +420,7 @@ i915_gem_gtt_pread(struct drm_i915_gem_object *obj,
 		GEM_BUG_ON(!drm_mm_node_allocated(&node));
 	}
 
-	ret = i915_gem_object_lock_interruptible(obj);
+	ret = i915_gem_object_lock_interruptible(obj, NULL);
 	if (ret)
 		goto out_unpin;
 
@@ -619,7 +619,7 @@ i915_gem_gtt_pwrite_fast(struct drm_i915_gem_object *obj,
 		GEM_BUG_ON(!drm_mm_node_allocated(&node));
 	}
 
-	ret = i915_gem_object_lock_interruptible(obj);
+	ret = i915_gem_object_lock_interruptible(obj, NULL);
 	if (ret)
 		goto out_unpin;
 
@@ -1272,7 +1272,7 @@ int i915_gem_freeze_late(struct drm_i915_private *i915)
 	i915_gem_drain_freed_objects(i915);
 
 	list_for_each_entry(obj, &i915->mm.shrink_list, mm.link) {
-		i915_gem_object_lock(obj);
+		i915_gem_object_lock(obj, NULL);
 		drm_WARN_ON(&i915->drm,
 			    i915_gem_object_set_to_cpu_domain(obj, true));
 		i915_gem_object_unlock(obj);
@@ -1326,6 +1326,52 @@ int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file)
 	return ret;
 }
 
+void i915_gem_ww_ctx_init(struct i915_gem_ww_ctx *ww, bool intr)
+{
+	ww_acquire_init(&ww->ctx, &reservation_ww_class);
+	INIT_LIST_HEAD(&ww->obj_list);
+	ww->intr = intr;
+	ww->contended = NULL;
+}
+
+static void i915_gem_ww_ctx_unlock_all(struct i915_gem_ww_ctx *ww)
+{
+	struct drm_i915_gem_object *obj;
+
+	while ((obj = list_first_entry_or_null(&ww->obj_list, struct drm_i915_gem_object, obj_link))) {
+		list_del(&obj->obj_link);
+		i915_gem_object_unlock(obj);
+	}
+}
+
+void i915_gem_ww_ctx_fini(struct i915_gem_ww_ctx *ww)
+{
+	i915_gem_ww_ctx_unlock_all(ww);
+	WARN_ON(ww->contended);
+	ww_acquire_fini(&ww->ctx);
+}
+
+int __must_check i915_gem_ww_ctx_backoff(struct i915_gem_ww_ctx *ww)
+{
+	int ret = 0;
+
+	if (WARN_ON(!ww->contended))
+		return -EINVAL;
+
+	i915_gem_ww_ctx_unlock_all(ww);
+	if (ww->intr)
+		ret = dma_resv_lock_slow_interruptible(ww->contended->base.resv, &ww->ctx);
+	else
+		dma_resv_lock_slow(ww->contended->base.resv, &ww->ctx);
+
+	if (!ret)
+		list_add_tail(&ww->contended->obj_link, &ww->obj_list);
+
+	ww->contended = NULL;
+
+	return ret;
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftests/mock_gem_device.c"
 #include "selftests/i915_gem.c"
diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
index 1753c84d6c0d..988755dbf4be 100644
--- a/drivers/gpu/drm/i915/i915_gem.h
+++ b/drivers/gpu/drm/i915/i915_gem.h
@@ -116,4 +116,15 @@ static inline bool __tasklet_is_scheduled(struct tasklet_struct *t)
 	return test_bit(TASKLET_STATE_SCHED, &t->state);
 }
 
+struct i915_gem_ww_ctx {
+	struct ww_acquire_ctx ctx;
+	struct list_head obj_list;
+	bool intr;
+	struct drm_i915_gem_object *contended;
+};
+
+void i915_gem_ww_ctx_init(struct i915_gem_ww_ctx *ctx, bool intr);
+void i915_gem_ww_ctx_fini(struct i915_gem_ww_ctx *ctx);
+int __must_check i915_gem_ww_ctx_backoff(struct i915_gem_ww_ctx *ctx);
+
 #endif /* __I915_GEM_H__ */
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem.c b/drivers/gpu/drm/i915/selftests/i915_gem.c
index 88d400b9df88..23a6132c5f4e 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
@@ -199,11 +199,52 @@ static int igt_gem_hibernate(void *arg)
 	return err;
 }
 
+static int igt_gem_ww_ctx(void *arg)
+{
+	struct drm_i915_private *i915 = arg;
+	struct drm_i915_gem_object *obj, *obj2;
+	struct i915_gem_ww_ctx ww;
+	int err = 0;
+
+	obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
+	if (IS_ERR(obj))
+		return PTR_ERR(obj);
+
+	obj2 = i915_gem_object_create_internal(i915, PAGE_SIZE);
+	if (IS_ERR(obj)) {
+		err = PTR_ERR(obj);
+		goto put1;
+	}
+
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	/* Lock the objects, twice for good measure (-EALREADY handling) */
+	err = i915_gem_object_lock(obj, &ww);
+	if (!err)
+		err = i915_gem_object_lock_interruptible(obj, &ww);
+	if (!err)
+		err = i915_gem_object_lock_interruptible(obj2, &ww);
+	if (!err)
+		err = i915_gem_object_lock(obj2, &ww);
+
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
+	i915_gem_object_put(obj2);
+put1:
+	i915_gem_object_put(obj);
+	return err;
+}
+
 int i915_gem_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
 		SUBTEST(igt_gem_suspend),
 		SUBTEST(igt_gem_hibernate),
+		SUBTEST(igt_gem_ww_ctx),
 	};
 
 	if (intel_gt_is_wedged(&i915->gt))
diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
index af89c7fc8f59..88c5e9acb84c 100644
--- a/drivers/gpu/drm/i915/selftests/i915_vma.c
+++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
@@ -892,7 +892,7 @@ static int igt_vma_remapped_gtt(void *arg)
 			unsigned int x, y;
 			int err;
 
-			i915_gem_object_lock(obj);
+			i915_gem_object_lock(obj, NULL);
 			err = i915_gem_object_set_to_gtt_domain(obj, true);
 			i915_gem_object_unlock(obj);
 			if (err)
diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index 6e80d99048e4..957a7a52def7 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -509,7 +509,7 @@ static int igt_lmem_write_cpu(void *arg)
 	if (err)
 		goto out_unpin;
 
-	i915_gem_object_lock(obj);
+	i915_gem_object_lock(obj, NULL);
 	err = i915_gem_object_set_to_wc_domain(obj, true);
 	i915_gem_object_unlock(obj);
 	if (err)
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
