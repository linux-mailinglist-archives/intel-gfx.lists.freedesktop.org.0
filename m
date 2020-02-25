Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DB516C42B
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 15:38:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 596A86EAFC;
	Tue, 25 Feb 2020 14:38:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22F726EAF9
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 14:38:30 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2020 15:38:08 +0100
Message-Id: <20200225143824.1858038-4-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.0.24.g3f081b084b0
In-Reply-To: <20200225143824.1858038-1-maarten.lankhorst@linux.intel.com>
References: <20200225143824.1858038-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/20] drm/i915: Add an implementation for
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
 drivers/gpu/drm/i915/gt/intel_gt.c            |  2 +-
 .../gpu/drm/i915/gt/selftest_workarounds.c    |  2 +-
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |  2 +-
 drivers/gpu/drm/i915/i915_gem.c               | 52 +++++++++++++++++--
 drivers/gpu/drm/i915/i915_gem.h               | 11 ++++
 drivers/gpu/drm/i915/selftests/i915_gem.c     | 41 +++++++++++++++
 drivers/gpu/drm/i915/selftests/i915_vma.c     |  2 +-
 .../drm/i915/selftests/intel_memory_region.c  |  2 +-
 26 files changed, 175 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3031e64ee518..8af0272a5318 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2306,7 +2306,7 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 
 void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
 {
-	i915_gem_object_lock(vma->obj);
+	i915_gem_object_lock(vma->obj, NULL);
 	if (flags & PLANE_HAS_FENCE)
 		i915_vma_unpin_fence(vma);
 	i915_gem_object_unpin_from_display_plane(vma);
@@ -17126,7 +17126,7 @@ static int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	if (!intel_fb->frontbuffer)
 		return -ENOMEM;
 
-	i915_gem_object_lock(obj);
+	i915_gem_object_lock(obj, NULL);
 	tiling = i915_gem_object_get_tiling(obj);
 	stride = i915_gem_object_get_stride(obj);
 	i915_gem_object_unlock(obj);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
index 81366aa4812b..d92a35163330 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
@@ -287,7 +287,7 @@ int i915_gem_schedule_fill_pages_blt(struct drm_i915_gem_object *obj,
 	dma_fence_init(&work->dma, &clear_pages_work_ops, &fence_lock, 0, 0);
 	i915_sw_fence_init(&work->wait, clear_pages_work_notify);
 
-	i915_gem_object_lock(obj);
+	i915_gem_object_lock(obj, NULL);
 	err = i915_sw_fence_await_reservation(&work->wait,
 					      obj->base.resv, NULL,
 					      true, I915_FENCE_TIMEOUT,
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index adcebf22a3d3..af734ded602d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -114,7 +114,7 @@ static void lut_close(struct i915_gem_context *ctx)
 			continue;
 
 		rcu_read_unlock();
-		i915_gem_object_lock(obj);
+		i915_gem_object_lock(obj, NULL);
 		list_for_each_entry(lut, &obj->lut_list, obj_link) {
 			if (lut->ctx != ctx)
 				continue;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index 7db5a793739d..cfadccfc2990 100644
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
index 0cc40e77bbd2..f4602faa8db9 100644
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
 
@@ -541,7 +541,7 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
 	if (err)
 		goto out;
 
-	err = i915_gem_object_lock_interruptible(obj);
+	err = i915_gem_object_lock_interruptible(obj, NULL);
 	if (err)
 		goto out_unpin;
 
@@ -581,7 +581,7 @@ int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
 	if (!i915_gem_object_has_struct_page(obj))
 		return -ENODEV;
 
-	ret = i915_gem_object_lock_interruptible(obj);
+	ret = i915_gem_object_lock_interruptible(obj, NULL);
 	if (ret)
 		return ret;
 
@@ -635,7 +635,7 @@ int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
 	if (!i915_gem_object_has_struct_page(obj))
 		return -ENODEV;
 
-	ret = i915_gem_object_lock_interruptible(obj);
+	ret = i915_gem_object_lock_interruptible(obj, NULL);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 9970f5111daa..f567e4c99e29 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -759,7 +759,7 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 		lut->handle = handle;
 		lut->ctx = eb->gem_context;
 
-		i915_gem_object_lock(obj);
+		i915_gem_object_lock(obj, NULL);
 		list_add(&lut->obj_link, &obj->lut_list);
 		i915_gem_object_unlock(obj);
 
@@ -1013,7 +1013,7 @@ static void *reloc_iomap(struct drm_i915_gem_object *obj,
 		if (use_cpu_reloc(cache, obj))
 			return NULL;
 
-		i915_gem_object_lock(obj);
+		i915_gem_object_lock(obj, NULL);
 		err = i915_gem_object_set_to_gtt_domain(obj, true);
 		i915_gem_object_unlock(obj);
 		if (err)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 5da9f9e534b9..03fdbaa94c46 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -104,7 +104,7 @@ void i915_gem_close_object(struct drm_gem_object *gem, struct drm_file *file)
 	struct i915_lut_handle *lut, *ln;
 	LIST_HEAD(close);
 
-	i915_gem_object_lock(obj);
+	i915_gem_object_lock(obj, NULL);
 	list_for_each_entry_safe(lut, ln, &obj->lut_list, obj_link) {
 		struct i915_gem_context *ctx = lut->ctx;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index e44a2f40b520..95e732f83d06 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -112,20 +112,44 @@ i915_gem_object_put(struct drm_i915_gem_object *obj)
 
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
index 70809d8897cd..2b23e000bb57 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
@@ -142,7 +142,7 @@ int i915_gem_object_fill_blt(struct drm_i915_gem_object *obj,
 		return err;
 
 	if (obj->cache_dirty & ~obj->cache_coherent) {
-		i915_gem_object_lock(obj);
+		i915_gem_object_lock(obj, NULL);
 		i915_gem_clflush_object(obj, 0);
 		i915_gem_object_unlock(obj);
 	}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index a0b10bcd8d8a..26350defc44b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -120,6 +120,15 @@ struct drm_i915_gem_object {
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
index 6c7825a2dc2a..b63da25f3497 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
@@ -236,7 +236,7 @@ i915_gem_object_set_tiling(struct drm_i915_gem_object *obj,
 	 * whilst executing a fenced command for an untiled object.
 	 */
 
-	i915_gem_object_lock(obj);
+	i915_gem_object_lock(obj, NULL);
 	if (i915_gem_object_is_framebuffer(obj)) {
 		i915_gem_object_unlock(obj);
 		return -EBUSY;
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 2d0fd50c5312..2a2f33228b3d 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -974,7 +974,7 @@ static int gpu_write(struct intel_context *ce,
 {
 	int err;
 
-	i915_gem_object_lock(vma->obj);
+	i915_gem_object_lock(vma->obj, NULL);
 	err = i915_gem_object_set_to_gtt_domain(vma->obj, true);
 	i915_gem_object_unlock(vma->obj);
 	if (err)
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index b972be165e85..a4bf026b2988 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -72,7 +72,7 @@ static int __igt_client_fill(struct intel_engine_cs *engine)
 		if (err)
 			goto err_unpin;
 
-		i915_gem_object_lock(obj);
+		i915_gem_object_lock(obj, NULL);
 		err = i915_gem_object_set_to_cpu_domain(obj, false);
 		i915_gem_object_unlock(obj);
 		if (err)
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
index 3f6079e1dfb6..f5a0c7b1e113 100644
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
@@ -168,7 +168,7 @@ static int wc_get(struct context *ctx, unsigned long offset, u32 *v)
 	u32 *map;
 	int err;
 
-	i915_gem_object_lock(ctx->obj);
+	i915_gem_object_lock(ctx->obj, NULL);
 	err = i915_gem_object_set_to_wc_domain(ctx->obj, false);
 	i915_gem_object_unlock(ctx->obj);
 	if (err)
@@ -191,7 +191,7 @@ static int gpu_set(struct context *ctx, unsigned long offset, u32 v)
 	u32 *cs;
 	int err;
 
-	i915_gem_object_lock(ctx->obj);
+	i915_gem_object_lock(ctx->obj, NULL);
 	err = i915_gem_object_set_to_gtt_domain(ctx->obj, true);
 	i915_gem_object_unlock(ctx->obj);
 	if (err)
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 375d864736f3..3eb58a28fa6e 100644
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
@@ -1691,7 +1691,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 
 	i915_request_add(rq);
 
-	i915_gem_object_lock(obj);
+	i915_gem_object_lock(obj, NULL);
 	err = i915_gem_object_set_to_cpu_domain(obj, false);
 	i915_gem_object_unlock(obj);
 	if (err)
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index ef7c74cff28a..533d65b9b9e8 100644
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
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 3dea8881e915..d3e36a3b1d93 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -485,7 +485,7 @@ static int __engines_record_defaults(struct intel_gt *gt)
 		if (err)
 			goto out;
 
-		i915_gem_object_lock(state->obj);
+		i915_gem_object_lock(state->obj, NULL);
 		err = i915_gem_object_set_to_cpu_domain(state->obj, false);
 		i915_gem_object_unlock(state->obj);
 		if (err)
diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index 5ed323254ee1..282f51feacd5 100644
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
index 21a176cd8acc..a54d96a144be 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -2954,7 +2954,7 @@ static int shadow_indirect_ctx(struct intel_shadow_wa_ctx *wa_ctx)
 		goto put_obj;
 	}
 
-	i915_gem_object_lock(obj);
+	i915_gem_object_lock(obj, NULL);
 	ret = i915_gem_object_set_to_cpu_domain(obj, false);
 	i915_gem_object_unlock(obj);
 	if (ret) {
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index d92cf966fa3f..7ea845be76b3 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -416,7 +416,7 @@ i915_gem_gtt_pread(struct drm_i915_gem_object *obj,
 		GEM_BUG_ON(!drm_mm_node_allocated(&node));
 	}
 
-	ret = i915_gem_object_lock_interruptible(obj);
+	ret = i915_gem_object_lock_interruptible(obj, NULL);
 	if (ret)
 		goto out_unpin;
 
@@ -615,7 +615,7 @@ i915_gem_gtt_pwrite_fast(struct drm_i915_gem_object *obj,
 		GEM_BUG_ON(!drm_mm_node_allocated(&node));
 	}
 
-	ret = i915_gem_object_lock_interruptible(obj);
+	ret = i915_gem_object_lock_interruptible(obj, NULL);
 	if (ret)
 		goto out_unpin;
 
@@ -1271,7 +1271,7 @@ int i915_gem_freeze_late(struct drm_i915_private *i915)
 	i915_gem_drain_freed_objects(i915);
 
 	list_for_each_entry(obj, &i915->mm.shrink_list, mm.link) {
-		i915_gem_object_lock(obj);
+		i915_gem_object_lock(obj, NULL);
 		drm_WARN_ON(&i915->drm,
 			    i915_gem_object_set_to_cpu_domain(obj, true));
 		i915_gem_object_unlock(obj);
@@ -1325,6 +1325,52 @@ int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file)
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
index 623759b73bb4..6444b7558cc0 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
@@ -201,11 +201,52 @@ static int igt_gem_hibernate(void *arg)
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
index 58b5f40a07dd..9bc00c724b0e 100644
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
index 2a1d4ba1f9f3..feab1852e2e3 100644
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
2.25.0.24.g3f081b084b0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
