Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 571689E5EF2
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 20:39:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED8E610EF9A;
	Thu,  5 Dec 2024 19:39:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 745B210EF99;
 Thu,  5 Dec 2024 19:39:04 +0000 (UTC)
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH] drm/xe/display: Re-use display vmas when possible
Date: Thu,  5 Dec 2024 20:39:34 +0100
Message-ID: <20241205193934.49526-1-dev@lankhorst.se>
X-Mailer: git-send-email 2.45.2
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

i915 has this really nice, infrastructure where everything becomes
complicated, GGTT needs eviction, etc..

Lets not do that, and make the dumbest possible interface instead.
Try to retrieve the VMA from old_plane_state, or intel_fbdev if kernel
fb.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.h   |  3 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  5 ++
 drivers/gpu/drm/i915/display/intel_fbdev.h    |  8 ++++
 .../gpu/drm/xe/compat-i915-headers/i915_vma.h |  3 ++
 drivers/gpu/drm/xe/display/xe_fb_pin.c        | 48 +++++++++++++++++--
 8 files changed, 65 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index d89630b2d5c19..632b2b0723dd7 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -1144,7 +1144,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 	if (!obj)
 		return 0;
 
-	ret = intel_plane_pin_fb(new_plane_state);
+	ret = intel_plane_pin_fb(new_plane_state, old_plane_state);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index ed88a28a3afae..5984310982e73 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -864,7 +864,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	if (ret)
 		goto out_free;
 
-	ret = intel_plane_pin_fb(new_plane_state);
+	ret = intel_plane_pin_fb(new_plane_state, old_plane_state);
 	if (ret)
 		goto out_free;
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index d3a86f9c6bc86..dd3ac7f98dfcc 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -252,7 +252,8 @@ intel_plane_fb_min_phys_alignment(const struct intel_plane_state *plane_state)
 	return plane->min_alignment(plane, fb, 0);
 }
 
-int intel_plane_pin_fb(struct intel_plane_state *plane_state)
+int intel_plane_pin_fb(struct intel_plane_state *plane_state,
+		       const struct intel_plane_state *old_plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	const struct intel_framebuffer *fb =
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/drm/i915/display/intel_fb_pin.h
index ac0319b53af08..0fc6d90446381 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
@@ -23,7 +23,8 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 
 void intel_fb_unpin_vma(struct i915_vma *vma, unsigned long flags);
 
-int intel_plane_pin_fb(struct intel_plane_state *plane_state);
+int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
+		       const struct intel_plane_state *old_plane_state);
 void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 00852ff5b2470..6c08081333976 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -695,3 +695,8 @@ struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev)
 
 	return to_intel_framebuffer(fbdev->helper.fb);
 }
+
+struct i915_vma *intel_fbdev_vma_pointer(struct intel_fbdev *fbdev)
+{
+	return fbdev ? fbdev->vma : NULL;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.h b/drivers/gpu/drm/i915/display/intel_fbdev.h
index 08de2d5b34338..24a3434558cb6 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.h
@@ -17,6 +17,8 @@ struct intel_framebuffer;
 void intel_fbdev_setup(struct drm_i915_private *dev_priv);
 void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous);
 struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev);
+struct i915_vma *intel_fbdev_vma_pointer(struct intel_fbdev *fbdev);
+
 #else
 static inline void intel_fbdev_setup(struct drm_i915_private *dev_priv)
 {
@@ -30,6 +32,12 @@ static inline struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbd
 {
 	return NULL;
 }
+
+static inline struct i915_vma *intel_fbdev_vma_pointer(struct intel_fbdev *fbdev)
+{
+	return NULL;
+}
+
 #endif
 
 #endif /* __INTEL_FBDEV_H__ */
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h
index bdae8392e1253..4465c40f81341 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h
@@ -10,6 +10,8 @@
 
 #include "xe_ggtt_types.h"
 
+#include <linux/refcount.h>
+
 /* We don't want these from i915_drm.h in case of Xe */
 #undef I915_TILING_X
 #undef I915_TILING_Y
@@ -19,6 +21,7 @@
 struct xe_bo;
 
 struct i915_vma {
+	refcount_t ref;
 	struct xe_bo *bo, *dpt;
 	struct xe_ggtt_node *node;
 };
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 761510ae06904..8c3a5debe0953 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -9,6 +9,7 @@
 #include "intel_dpt.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
+#include "intel_fbdev.h"
 #include "xe_bo.h"
 #include "xe_device.h"
 #include "xe_ggtt.h"
@@ -287,6 +288,7 @@ static struct i915_vma *__xe_pin_fb_vma(const struct intel_framebuffer *fb,
 	if (!vma)
 		return ERR_PTR(-ENODEV);
 
+	refcount_set(&vma->ref, 1);
 	if (IS_DGFX(to_xe_device(bo->ttm.base.dev)) &&
 	    intel_fb_rc_ccs_cc_plane(&fb->base) >= 0 &&
 	    !(bo->flags & XE_BO_FLAG_NEEDS_CPU_ACCESS)) {
@@ -345,6 +347,9 @@ static struct i915_vma *__xe_pin_fb_vma(const struct intel_framebuffer *fb,
 
 static void __xe_unpin_fb_vma(struct i915_vma *vma)
 {
+	if (!refcount_dec_and_test(&vma->ref))
+		return;
+
 	if (vma->dpt)
 		xe_bo_unpin_map_no_vm(vma->dpt);
 	else if (!xe_ggtt_node_allocated(vma->bo->ggtt_node) ||
@@ -375,25 +380,58 @@ void intel_fb_unpin_vma(struct i915_vma *vma, unsigned long flags)
 	__xe_unpin_fb_vma(vma);
 }
 
-int intel_plane_pin_fb(struct intel_plane_state *plane_state)
+static bool reuse_vma(struct intel_plane_state *new_plane_state,
+		      const struct intel_plane_state *old_plane_state)
 {
-	struct drm_framebuffer *fb = plane_state->hw.fb;
+	struct intel_framebuffer *fb = to_intel_framebuffer(new_plane_state->hw.fb);
+	struct xe_device *xe = to_xe_device(fb->base.dev);
+	struct i915_vma *vma;
+
+	if (old_plane_state->hw.fb == new_plane_state->hw.fb &&
+	    !memcmp(&old_plane_state->view.gtt,
+		    &new_plane_state->view.gtt,
+	            sizeof(new_plane_state->view.gtt))) {
+		vma = old_plane_state->ggtt_vma;
+		goto found;
+	}
+
+	if (fb == intel_fbdev_framebuffer(xe->display.fbdev.fbdev)) {
+		vma = intel_fbdev_vma_pointer(xe->display.fbdev.fbdev);
+		if (vma)
+			goto found;
+	}
+
+	return false;
+
+found:
+	refcount_inc(&vma->ref);
+	new_plane_state->ggtt_vma = vma;
+	return true;
+}
+
+int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
+		       const struct intel_plane_state *old_plane_state)
+{
+	struct drm_framebuffer *fb = new_plane_state->hw.fb;
 	struct drm_gem_object *obj = intel_fb_bo(fb);
 	struct xe_bo *bo = gem_to_xe_bo(obj);
 	struct i915_vma *vma;
 	struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
-	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+	struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
 	u64 phys_alignment = plane->min_alignment(plane, fb, 0);
 
+	if (reuse_vma(new_plane_state, old_plane_state))
+		return 0;
+
 	/* We reject creating !SCANOUT fb's, so this is weird.. */
 	drm_WARN_ON(bo->ttm.base.dev, !(bo->flags & XE_BO_FLAG_SCANOUT));
 
-	vma = __xe_pin_fb_vma(intel_fb, &plane_state->view.gtt, phys_alignment);
+	vma = __xe_pin_fb_vma(intel_fb, &new_plane_state->view.gtt, phys_alignment);
 
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
 
-	plane_state->ggtt_vma = vma;
+	new_plane_state->ggtt_vma = vma;
 	return 0;
 }
 
-- 
2.45.2

