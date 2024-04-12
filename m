Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7648A2EEA
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 15:09:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D45510EF11;
	Fri, 12 Apr 2024 13:09:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1DD310F621;
 Fri, 12 Apr 2024 13:09:36 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [CI-only 7/8] drm/xe/display: Prevent overwriting original GGTT when
 taking over initial FB.
Date: Fri, 12 Apr 2024 15:09:43 +0200
Message-ID: <20240412130946.13148-7-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240412130946.13148-1-maarten.lankhorst@linux.intel.com>
References: <20240412130946.13148-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Instead of overwriting the original GGTT mapping accidentally, allocate
a new GGTT mapping above the original GGTT mapping.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c        | 40 ++++++++++++-------
 drivers/gpu/drm/xe/display/xe_fb_pin.h        | 20 ++++++++++
 drivers/gpu/drm/xe/display/xe_plane_initial.c | 15 ++++---
 drivers/gpu/drm/xe/xe_ggtt.c                  | 19 ++-------
 drivers/gpu/drm/xe/xe_ggtt.h                  |  5 +--
 5 files changed, 61 insertions(+), 38 deletions(-)
 create mode 100644 drivers/gpu/drm/xe/display/xe_fb_pin.h

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 16a287cbebc5..dd7a1c4a9430 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -8,6 +8,7 @@
 #include "intel_dpt.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
+#include "xe_fb_pin.h"
 #include "xe_ggtt.h"
 #include "xe_gt.h"
 
@@ -119,12 +120,11 @@ static void xe_fb_dpt_free(struct i915_vma *vma, struct intel_framebuffer *fb)
 	vma->dpt = NULL;
 }
 
-static int xe_fb_dpt_map_ggtt(struct xe_bo *dpt)
+static int xe_fb_dpt_map_ggtt(struct xe_bo *dpt, u64 ggtt_start)
 {
 	struct xe_device *xe = xe_bo_device(dpt);
 	struct xe_tile *tile0 = xe_device_get_root_tile(xe);
 	struct xe_ggtt *ggtt = tile0->mem.ggtt;
-	u64 start = 0, end = U64_MAX;
 	u64 alignment = XE_PAGE_SIZE;
 	int err;
 
@@ -139,8 +139,9 @@ static int xe_fb_dpt_map_ggtt(struct xe_bo *dpt)
 	if (err)
 		goto out_put;
 
-	err = drm_mm_insert_node_in_range(&ggtt->mm, &dpt->ggtt_node, dpt->size,
-					  alignment, 0, start, end, 0);
+	err = xe_ggtt_insert_special_node_locked(ggtt, &dpt->ggtt_node, dpt->size,
+						 alignment, ggtt_start, U64_MAX,
+						 ggtt_start ? DRM_MM_INSERT_HIGH : 0);
 	if (!err)
 		xe_ggtt_map_bo(ggtt, dpt);
 	mutex_unlock(&ggtt->lock);
@@ -188,7 +189,7 @@ static void xe_fb_dpt_unpin_free(struct i915_vma *vma, struct intel_framebuffer
 
 static int __xe_pin_fb_vma_dpt(struct intel_framebuffer *fb,
 			       const struct i915_gtt_view *view,
-			       struct i915_vma *vma)
+			       struct i915_vma *vma, u64 ggtt_start)
 {
 	struct xe_device *xe = to_xe_device(fb->base.dev);
 	struct xe_tile *tile0 = xe_device_get_root_tile(xe);
@@ -237,7 +238,7 @@ static int __xe_pin_fb_vma_dpt(struct intel_framebuffer *fb,
 					  rot_info->plane[i].dst_stride);
 	}
 
-	ret = xe_fb_dpt_map_ggtt(dpt);
+	ret = xe_fb_dpt_map_ggtt(dpt, ggtt_start);
 	if (ret)
 		xe_fb_dpt_unpin_free(vma, fb);
 	return ret;
@@ -269,7 +270,7 @@ write_ggtt_rotated(struct xe_bo *bo, struct xe_ggtt *ggtt, u32 *ggtt_ofs, u32 bo
 
 static int __xe_pin_fb_vma_ggtt(struct intel_framebuffer *fb,
 				const struct i915_gtt_view *view,
-				struct i915_vma *vma)
+				struct i915_vma *vma, u64 ggtt_start)
 {
 	struct xe_bo *bo = intel_fb_obj(&fb->base);
 	struct xe_device *xe = to_xe_device(fb->base.dev);
@@ -295,7 +296,8 @@ static int __xe_pin_fb_vma_ggtt(struct intel_framebuffer *fb,
 		u32 x, size = bo->ttm.base.size;
 
 		ret = xe_ggtt_insert_special_node_locked(ggtt, &vma->node, size,
-							 align, 0);
+							 align, ggtt_start, U64_MAX,
+							 ggtt_start ? DRM_MM_INSERT_HIGH : 0);
 		if (ret)
 			goto out_unlock;
 
@@ -313,7 +315,7 @@ static int __xe_pin_fb_vma_ggtt(struct intel_framebuffer *fb,
 		u32 size = intel_rotation_info_size(rot_info) * XE_PAGE_SIZE;
 
 		ret = xe_ggtt_insert_special_node_locked(ggtt, &vma->node, size,
-							 align, 0);
+							 align, ggtt_start, U64_MAX, 0);
 		if (ret)
 			goto out_unlock;
 
@@ -336,7 +338,8 @@ static int __xe_pin_fb_vma_ggtt(struct intel_framebuffer *fb,
 }
 
 static struct i915_vma *__xe_pin_fb_vma(struct intel_framebuffer *fb,
-					const struct i915_gtt_view *view)
+					const struct i915_gtt_view *view,
+					u64 ggtt_start)
 {
 	struct drm_device *dev = fb->base.dev;
 	struct xe_device *xe = to_xe_device(dev);
@@ -384,9 +387,9 @@ static struct i915_vma *__xe_pin_fb_vma(struct intel_framebuffer *fb,
 
 	vma->bo = bo;
 	if (intel_fb_uses_dpt(&fb->base))
-		ret = __xe_pin_fb_vma_dpt(fb, view, vma);
+		ret = __xe_pin_fb_vma_dpt(fb, view, vma, ggtt_start);
 	else
-		ret = __xe_pin_fb_vma_ggtt(fb, view, vma);
+		ret = __xe_pin_fb_vma_ggtt(fb, view, vma, ggtt_start);
 	if (ret)
 		goto err_unpin;
 
@@ -430,7 +433,16 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 {
 	*out_flags = 0;
 
-	return __xe_pin_fb_vma(to_intel_framebuffer(fb), view);
+	return __xe_pin_fb_vma(to_intel_framebuffer(fb), view, 0);
+}
+
+
+struct i915_vma *
+xe_pin_and_fence_fb_obj_initial(struct drm_framebuffer *fb,
+				const struct i915_gtt_view *view,
+				u64 ggtt_start)
+{
+	return __xe_pin_fb_vma(to_intel_framebuffer(fb), view, ggtt_start);
 }
 
 void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
@@ -447,7 +459,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state)
 	/* We reject creating !SCANOUT fb's, so this is weird.. */
 	drm_WARN_ON(bo->ttm.base.dev, !(bo->flags & XE_BO_FLAG_SCANOUT));
 
-	vma = __xe_pin_fb_vma(to_intel_framebuffer(fb), &plane_state->view.gtt);
+	vma = __xe_pin_fb_vma(to_intel_framebuffer(fb), &plane_state->view.gtt, 0);
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
 
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.h b/drivers/gpu/drm/xe/display/xe_fb_pin.h
new file mode 100644
index 000000000000..f22960138691
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __XE_FB_PIN_H__
+#define __XE_FB_PIN_H__
+
+#include <linux/types.h>
+
+struct i915_vma;
+struct drm_framebuffer;
+struct i915_gtt_view;
+
+struct i915_vma *
+xe_pin_and_fence_fb_obj_initial(struct drm_framebuffer *fb,
+				const struct i915_gtt_view *view,
+				u64 ggtt_start);
+
+#endif
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 9693c56d386b..fdb05043add1 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -18,6 +18,7 @@
 #include "intel_fb_pin.h"
 #include "intel_frontbuffer.h"
 #include "intel_plane_initial.h"
+#include "xe_fb_pin.h"
 
 static bool
 intel_reuse_initial_plane_obj(struct intel_crtc *this,
@@ -63,7 +64,7 @@ initial_plane_bo(struct xe_device *xe,
 	if (plane_config->size == 0)
 		return NULL;
 
-	flags = XE_BO_FLAG_PINNED | XE_BO_FLAG_SCANOUT | XE_BO_FLAG_GGTT;
+	flags = XE_BO_FLAG_PINNED | XE_BO_FLAG_SCANOUT;
 
 	base = round_down(plane_config->base, page_size);
 	if (IS_DGFX(xe)) {
@@ -193,6 +194,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 		to_intel_crtc_state(crtc->base.state);
 	struct drm_framebuffer *fb;
 	struct i915_vma *vma;
+	u64 ggtt_start = 0;
 
 	/*
 	 * TODO:
@@ -202,17 +204,20 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	if (!plane_config->fb)
 		return;
 
-	if (intel_alloc_initial_plane_obj(crtc, plane_config))
+	if (intel_alloc_initial_plane_obj(crtc, plane_config)) {
 		fb = &plane_config->fb->base;
-	else if (!intel_reuse_initial_plane_obj(crtc, plane_configs, &fb))
+
+		/* Ensure that new GGTT mapping is not overwriting the original mapping */
+		ggtt_start = plane_config->base + intel_fb_obj(fb)->ttm.base.size;
+	} else if (!intel_reuse_initial_plane_obj(crtc, plane_configs, &fb)) {
 		goto nofb;
+	}
 
 	plane_state->uapi.rotation = plane_config->rotation;
 	intel_fb_fill_view(to_intel_framebuffer(fb),
 			   plane_state->uapi.rotation, &plane_state->view);
 
-	vma = intel_pin_and_fence_fb_obj(fb, false, &plane_state->view.gtt,
-					 false, &plane_state->flags);
+	vma = xe_pin_and_fence_fb_obj_initial(fb, &plane_state->view.gtt, ggtt_start);
 	if (IS_ERR(vma))
 		goto nofb;
 
diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
index ff2239c0eda5..95c3ea946bba 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.c
+++ b/drivers/gpu/drm/xe/xe_ggtt.c
@@ -354,23 +354,10 @@ void xe_ggtt_deballoon(struct xe_ggtt *ggtt, struct drm_mm_node *node)
 }
 
 int xe_ggtt_insert_special_node_locked(struct xe_ggtt *ggtt, struct drm_mm_node *node,
-				       u32 size, u32 align, u32 mm_flags)
+				       u32 size, u32 align, u64 start, u64 end, u32 mm_flags)
 {
-	return drm_mm_insert_node_generic(&ggtt->mm, node, size, align, 0,
-					  mm_flags);
-}
-
-int xe_ggtt_insert_special_node(struct xe_ggtt *ggtt, struct drm_mm_node *node,
-				u32 size, u32 align)
-{
-	int ret;
-
-	mutex_lock(&ggtt->lock);
-	ret = xe_ggtt_insert_special_node_locked(ggtt, node, size,
-						 align, DRM_MM_INSERT_HIGH);
-	mutex_unlock(&ggtt->lock);
-
-	return ret;
+	return drm_mm_insert_node_in_range(&ggtt->mm, node, size, align, 0,
+					   start, end, mm_flags);
 }
 
 void xe_ggtt_map_bo(struct xe_ggtt *ggtt, struct xe_bo *bo)
diff --git a/drivers/gpu/drm/xe/xe_ggtt.h b/drivers/gpu/drm/xe/xe_ggtt.h
index 8306ef74abc6..81bba456b2f0 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.h
+++ b/drivers/gpu/drm/xe/xe_ggtt.h
@@ -18,11 +18,10 @@ void xe_ggtt_printk(struct xe_ggtt *ggtt, const char *prefix);
 int xe_ggtt_balloon(struct xe_ggtt *ggtt, u64 start, u64 size, struct drm_mm_node *node);
 void xe_ggtt_deballoon(struct xe_ggtt *ggtt, struct drm_mm_node *node);
 
-int xe_ggtt_insert_special_node(struct xe_ggtt *ggtt, struct drm_mm_node *node,
-				u32 size, u32 align);
 int xe_ggtt_insert_special_node_locked(struct xe_ggtt *ggtt,
 				       struct drm_mm_node *node,
-				       u32 size, u32 align, u32 mm_flags);
+				       u32 size, u32 align,
+				       u64 start, u64 end, u32 mm_flags);
 void xe_ggtt_remove_node(struct xe_ggtt *ggtt, struct drm_mm_node *node,
 			 bool invalidate);
 void xe_ggtt_map_bo(struct xe_ggtt *ggtt, struct xe_bo *bo);
-- 
2.43.0

