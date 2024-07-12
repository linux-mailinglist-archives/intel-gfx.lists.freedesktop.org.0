Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FC592F9A5
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2024 13:41:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2148210ECBA;
	Fri, 12 Jul 2024 11:41:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 350 seconds by postgrey-1.36 at gabe;
 Fri, 12 Jul 2024 11:41:23 UTC
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACAEE10ECBD
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2024 11:41:23 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH] drm/xe/display: Re-use display vmas when possible
Date: Fri, 12 Jul 2024 13:35:42 +0200
Message-ID: <20240712113542.153478-1-maarten.lankhorst@linux.intel.com>
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

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.h   |  3 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  5 ++
 drivers/gpu/drm/i915/display/intel_fbdev.h    |  8 ++++
 .../gpu/drm/xe/compat-i915-headers/i915_vma.h |  3 ++
 drivers/gpu/drm/xe/display/xe_fb_pin.c        | 46 +++++++++++++++++--
 8 files changed, 64 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index e979786aa5cf..fb1b3b909efd 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -1145,7 +1145,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 	if (!obj)
 		return 0;
 
-	ret = intel_plane_pin_fb(new_plane_state);
+	ret = intel_plane_pin_fb(new_plane_state, old_plane_state);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 9ad53e1cbbd0..55a424de90ac 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -859,7 +859,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	if (ret)
 		goto out_free;
 
-	ret = intel_plane_pin_fb(new_plane_state);
+	ret = intel_plane_pin_fb(new_plane_state, old_plane_state);
 	if (ret)
 		goto out_free;
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 575b271e012b..6244433ed94b 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -250,7 +250,8 @@ intel_plane_fb_min_phys_alignment(const struct intel_plane_state *plane_state)
 	return plane->min_alignment(plane, fb, 0);
 }
 
-int intel_plane_pin_fb(struct intel_plane_state *plane_state)
+int intel_plane_pin_fb(struct intel_plane_state *plane_state,
+		       const struct intel_plane_state *old_plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	const struct intel_framebuffer *fb =
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/drm/i915/display/intel_fb_pin.h
index ac0319b53af0..0fc6d9044638 100644
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
index 49a1ac4f5491..1b25c7b63b55 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -698,3 +698,8 @@ struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev)
 
 	return to_intel_framebuffer(fbdev->helper.fb);
 }
+
+struct i915_vma *intel_fbdev_vma_pointer(struct intel_fbdev *fbdev)
+{
+	return fbdev ? fbdev->vma : NULL;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.h b/drivers/gpu/drm/i915/display/intel_fbdev.h
index 08de2d5b3433..24a3434558cb 100644
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
index a20d2638ea7a..193382f97823 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h
@@ -9,6 +9,8 @@
 #include <uapi/drm/i915_drm.h>
 #include <drm/drm_mm.h>
 
+#include <linux/refcount.h>
+
 /* We don't want these from i915_drm.h in case of Xe */
 #undef I915_TILING_X
 #undef I915_TILING_Y
@@ -18,6 +20,7 @@
 struct xe_bo;
 
 struct i915_vma {
+	refcount_t ref;
 	struct xe_bo *bo, *dpt;
 	struct drm_mm_node node;
 };
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index d7db44e79eaf..04043cc9fc15 100644
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
@@ -262,6 +263,7 @@ static struct i915_vma *__xe_pin_fb_vma(const struct intel_framebuffer *fb,
 	if (!vma)
 		return ERR_PTR(-ENODEV);
 
+	refcount_set(&vma->ref, 1);
 	if (IS_DGFX(to_xe_device(bo->ttm.base.dev)) &&
 	    intel_fb_rc_ccs_cc_plane(&fb->base) >= 0 &&
 	    !(bo->flags & XE_BO_FLAG_NEEDS_CPU_ACCESS)) {
@@ -323,6 +325,9 @@ static void __xe_unpin_fb_vma(struct i915_vma *vma)
 	struct xe_device *xe = to_xe_device(vma->bo->ttm.base.dev);
 	struct xe_ggtt *ggtt = xe_device_get_root_tile(xe)->mem.ggtt;
 
+	if (!refcount_dec_and_test(&vma->ref))
+		return;
+
 	if (vma->dpt)
 		xe_bo_unpin_map_no_vm(vma->dpt);
 	else if (!drm_mm_node_allocated(&vma->bo->ggtt_node) ||
@@ -353,20 +358,53 @@ void intel_fb_unpin_vma(struct i915_vma *vma, unsigned long flags)
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
 	struct xe_bo *bo = intel_fb_obj(fb);
 	struct i915_vma *vma;
 
+	if (reuse_vma(new_plane_state, old_plane_state))
+		return 0;
+
 	/* We reject creating !SCANOUT fb's, so this is weird.. */
 	drm_WARN_ON(bo->ttm.base.dev, !(bo->flags & XE_BO_FLAG_SCANOUT));
 
-	vma = __xe_pin_fb_vma(to_intel_framebuffer(fb), &plane_state->view.gtt);
+	vma = __xe_pin_fb_vma(to_intel_framebuffer(fb), &new_plane_state->view.gtt);
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
 
-	plane_state->ggtt_vma = vma;
+	new_plane_state->ggtt_vma = vma;
 	return 0;
 }
 
-- 
2.45.2

