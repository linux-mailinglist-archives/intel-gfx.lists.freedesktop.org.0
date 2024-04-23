Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECD38AE1C7
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 12:06:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1107F11327C;
	Tue, 23 Apr 2024 10:06:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F35911327A;
 Tue, 23 Apr 2024 10:06:11 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH v2 1/3] drm/xe/display: Preparations for preallocating dpt bo
Date: Tue, 23 Apr 2024 11:54:39 +0200
Message-ID: <20240423095441.227953-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240423095441.227953-1-maarten.lankhorst@linux.intel.com>
References: <20240423095441.227953-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The DPT bo should not be allocated when pinning, but in advance when
creating the framebuffer. Split allocation from bo pinning and GGTT
insertion.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 159 +++++++++++++++++++------
 1 file changed, 123 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 3e1ae37c4c8b..5a8d6857fb89 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -77,47 +77,130 @@ write_dpt_remapped(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs,
 	*dpt_ofs = ALIGN(*dpt_ofs, 4096);
 }
 
-static int __xe_pin_fb_vma_dpt(struct intel_framebuffer *fb,
-			       const struct i915_gtt_view *view,
-			       struct i915_vma *vma)
+static struct xe_bo *xe_fb_dpt_alloc(struct intel_framebuffer *fb)
 {
 	struct xe_device *xe = to_xe_device(fb->base.dev);
 	struct xe_tile *tile0 = xe_device_get_root_tile(xe);
-	struct xe_ggtt *ggtt = tile0->mem.ggtt;
 	struct xe_bo *bo = intel_fb_obj(&fb->base), *dpt;
 	u32 dpt_size, size = bo->ttm.base.size;
 
-	if (view->type == I915_GTT_VIEW_NORMAL)
+	if (!intel_fb_needs_pot_stride_remap(fb))
 		dpt_size = ALIGN(size / XE_PAGE_SIZE * 8, XE_PAGE_SIZE);
-	else if (view->type == I915_GTT_VIEW_REMAPPED)
-		dpt_size = ALIGN(intel_remapped_info_size(&fb->remapped_view.gtt.remapped) * 8,
-				 XE_PAGE_SIZE);
 	else
-		/* display uses 4K tiles instead of bytes here, convert to entries.. */
-		dpt_size = ALIGN(intel_rotation_info_size(&view->rotated) * 8,
+		dpt_size = ALIGN(intel_remapped_info_size(&fb->remapped_view.gtt.remapped) * 8,
 				 XE_PAGE_SIZE);
 
 	if (IS_DGFX(xe))
-		dpt = xe_bo_create_pin_map(xe, tile0, NULL, dpt_size,
-					   ttm_bo_type_kernel,
-					   XE_BO_FLAG_VRAM0 |
-					   XE_BO_FLAG_GGTT |
-					   XE_BO_FLAG_PAGETABLE);
-	else
-		dpt = xe_bo_create_pin_map(xe, tile0, NULL, dpt_size,
-					   ttm_bo_type_kernel,
-					   XE_BO_FLAG_STOLEN |
-					   XE_BO_FLAG_GGTT |
-					   XE_BO_FLAG_PAGETABLE);
+		return xe_bo_create(xe, tile0, NULL, dpt_size,
+				    ttm_bo_type_kernel,
+				    XE_BO_FLAG_NEEDS_CPU_ACCESS |
+				    XE_BO_FLAG_VRAM0 |
+				    XE_BO_FLAG_PAGETABLE);
+
+	dpt = xe_bo_create(xe, tile0, NULL, dpt_size,
+			   ttm_bo_type_kernel,
+			   XE_BO_FLAG_NEEDS_CPU_ACCESS |
+			   XE_BO_FLAG_STOLEN |
+			   XE_BO_FLAG_PAGETABLE);
 	if (IS_ERR(dpt))
-		dpt = xe_bo_create_pin_map(xe, tile0, NULL, dpt_size,
-					   ttm_bo_type_kernel,
-					   XE_BO_FLAG_SYSTEM |
-					   XE_BO_FLAG_GGTT |
-					   XE_BO_FLAG_PAGETABLE);
+		dpt = xe_bo_create(xe, tile0, NULL, dpt_size,
+				   ttm_bo_type_kernel,
+				   XE_BO_FLAG_NEEDS_CPU_ACCESS |
+				   XE_BO_FLAG_SYSTEM |
+				   XE_BO_FLAG_PAGETABLE);
+
+	return dpt;
+}
+
+static void xe_fb_dpt_free(struct i915_vma *vma)
+{
+	xe_bo_put(vma->dpt);
+	vma->dpt = NULL;
+}
+
+static int xe_fb_dpt_map_ggtt(struct xe_bo *dpt)
+{
+	struct xe_device *xe = xe_bo_device(dpt);
+	struct xe_tile *tile0 = xe_device_get_root_tile(xe);
+	struct xe_ggtt *ggtt = tile0->mem.ggtt;
+	u64 start = 0, end = U64_MAX;
+	u64 alignment = XE_PAGE_SIZE;
+	int err;
+
+	if (dpt->flags & XE_BO_FLAG_INTERNAL_64K)
+		alignment = SZ_64K;
+
+	if (XE_WARN_ON(dpt->ggtt_node.size))
+		return -EINVAL;
+
+	xe_pm_runtime_get_noresume(xe);
+	err = mutex_lock_interruptible(&ggtt->lock);
+	if (err)
+		goto out_put;
+
+	err = drm_mm_insert_node_in_range(&ggtt->mm, &dpt->ggtt_node, dpt->size,
+					  alignment, 0, start, end, 0);
+	if (!err)
+		xe_ggtt_map_bo(ggtt, dpt);
+	mutex_unlock(&ggtt->lock);
+
+out_put:
+	xe_pm_runtime_put(xe);
+	return err;
+}
+
+static int
+xe_fb_dpt_alloc_pinned(struct i915_vma *vma, struct intel_framebuffer *fb)
+{
+	struct xe_bo *dpt;
+	int err;
+
+	dpt = xe_fb_dpt_alloc(fb);
 	if (IS_ERR(dpt))
 		return PTR_ERR(dpt);
 
+	vma->dpt = dpt;
+
+	err = ttm_bo_reserve(&dpt->ttm, true, false, NULL);
+	if (!err) {
+		err = xe_bo_validate(dpt, NULL, true);
+		if (!err)
+			err = xe_bo_vmap(dpt);
+		if (!err)
+			ttm_bo_pin(&dpt->ttm);
+		ttm_bo_unreserve(&dpt->ttm);
+	}
+	if (err)
+		xe_fb_dpt_free(vma);
+	return err;
+}
+
+static void xe_fb_dpt_unpin_free(struct i915_vma *vma)
+{
+	ttm_bo_reserve(&vma->dpt->ttm, false, false, NULL);
+	ttm_bo_unpin(&vma->dpt->ttm);
+	ttm_bo_unreserve(&vma->dpt->ttm);
+
+	xe_fb_dpt_free(vma);
+}
+
+static int __xe_pin_fb_vma_dpt(struct intel_framebuffer *fb,
+			       const struct i915_gtt_view *view,
+			       struct i915_vma *vma)
+{
+	struct xe_device *xe = to_xe_device(fb->base.dev);
+	struct xe_tile *tile0 = xe_device_get_root_tile(xe);
+	struct xe_ggtt *ggtt = tile0->mem.ggtt;
+	struct xe_bo *bo = intel_fb_obj(&fb->base), *dpt;
+	u32 size = bo->ttm.base.size;
+	int ret;
+
+	ret = xe_fb_dpt_alloc_pinned(vma, fb);
+	if (ret)
+		return ret;
+	dpt = vma->dpt;
+
+	/* Create GGTT mapping.. */
 	if (view->type == I915_GTT_VIEW_NORMAL) {
 		u32 x;
 
@@ -152,9 +235,10 @@ static int __xe_pin_fb_vma_dpt(struct intel_framebuffer *fb,
 					  rot_info->plane[i].dst_stride);
 	}
 
-	vma->dpt = dpt;
-	vma->node = dpt->ggtt_node;
-	return 0;
+	ret = xe_fb_dpt_map_ggtt(dpt);
+	if (ret)
+		xe_fb_dpt_unpin_free(vma);
+	return ret;
 }
 
 static void
@@ -259,7 +343,7 @@ static struct i915_vma *__xe_pin_fb_vma(struct intel_framebuffer *fb,
 	int ret;
 
 	if (!vma)
-		return ERR_PTR(-ENODEV);
+		return ERR_PTR(-ENOMEM);
 
 	if (IS_DGFX(to_xe_device(bo->ttm.base.dev)) &&
 	    intel_fb_rc_ccs_cc_plane(&fb->base) >= 0 &&
@@ -282,7 +366,7 @@ static struct i915_vma *__xe_pin_fb_vma(struct intel_framebuffer *fb,
 	 * Pin the framebuffer, we can't use xe_bo_(un)pin functions as the
 	 * assumptions are incorrect for framebuffers
 	 */
-	ret = ttm_bo_reserve(&bo->ttm, false, false, NULL);
+	ret = ttm_bo_reserve(&bo->ttm, true, false, NULL);
 	if (ret)
 		goto err;
 
@@ -320,11 +404,14 @@ static void __xe_unpin_fb_vma(struct i915_vma *vma)
 	struct xe_device *xe = to_xe_device(vma->bo->ttm.base.dev);
 	struct xe_ggtt *ggtt = xe_device_get_root_tile(xe)->mem.ggtt;
 
-	if (vma->dpt)
-		xe_bo_unpin_map_no_vm(vma->dpt);
-	else if (!drm_mm_node_allocated(&vma->bo->ggtt_node) ||
-		 vma->bo->ggtt_node.start != vma->node.start)
-		xe_ggtt_remove_node(ggtt, &vma->node, false);
+	if (vma->dpt) {
+		xe_ggtt_remove_bo(ggtt, vma->dpt);
+		xe_fb_dpt_unpin_free(vma);
+	} else {
+		if (!drm_mm_node_allocated(&vma->bo->ggtt_node) ||
+		    vma->bo->ggtt_node.start != vma->node.start)
+			xe_ggtt_remove_node(ggtt, &vma->node, false);
+	}
 
 	ttm_bo_reserve(&vma->bo->ttm, false, false, NULL);
 	ttm_bo_unpin(&vma->bo->ttm);
-- 
2.43.0

