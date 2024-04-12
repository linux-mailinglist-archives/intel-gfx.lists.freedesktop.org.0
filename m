Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C754B8A2EF1
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 15:09:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1177110F61F;
	Fri, 12 Apr 2024 13:09:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DF9E10EF11;
 Fri, 12 Apr 2024 13:09:37 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [CI-only 8/8] drm/xe/display: Re-use display vmas when possible
Date: Fri, 12 Apr 2024 15:09:44 +0200
Message-ID: <20240412130946.13148-8-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240412130946.13148-1-maarten.lankhorst@linux.intel.com>
References: <20240412130946.13148-1-maarten.lankhorst@linux.intel.com>
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
 drivers/gpu/drm/i915/display/intel_fbdev.h    |  9 ++++
 .../gpu/drm/xe/compat-i915-headers/i915_vma.h |  3 ++
 drivers/gpu/drm/xe/display/xe_fb_pin.c        | 46 +++++++++++++++++--
 8 files changed, 65 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index ab01c2d15afd..dcb9b7751261 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -1107,7 +1107,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 	if (!obj)
 		return 0;
 
-	ret = intel_plane_pin_fb(new_plane_state);
+	ret = intel_plane_pin_fb(new_plane_state, old_plane_state);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index f08fce0de713..9153a1cdb1f2 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -772,7 +772,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	if (ret)
 		goto out_free;
 
-	ret = intel_plane_pin_fb(new_plane_state);
+	ret = intel_plane_pin_fb(new_plane_state, old_plane_state);
 	if (ret)
 		goto out_free;
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index b6df9baf481b..7b8a1825ccfc 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -236,7 +236,8 @@ void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
 	i915_vma_put(vma);
 }
 
-int intel_plane_pin_fb(struct intel_plane_state *plane_state)
+int intel_plane_pin_fb(struct intel_plane_state *plane_state,
+		       const struct intel_plane_state *old_plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/drm/i915/display/intel_fb_pin.h
index de0efaa25905..48675e6233f0 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
@@ -22,7 +22,8 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 
 void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags);
 
-int intel_plane_pin_fb(struct intel_plane_state *plane_state);
+int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
+		       const struct intel_plane_state *old_plane_state);
 void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 43855c6c3509..a010b7a8a468 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -668,3 +668,8 @@ struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev)
 
 	return to_intel_framebuffer(fbdev->helper.fb);
 }
+
+struct i915_vma *intel_fbdev_vma_pointer(struct intel_fbdev *fbdev)
+{
+	return fbdev ? fbdev->vma : NULL;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.h b/drivers/gpu/drm/i915/display/intel_fbdev.h
index 04fd523a5023..fa6c0c1ae936 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.h
@@ -22,6 +22,8 @@ void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous
 void intel_fbdev_output_poll_changed(struct drm_device *dev);
 void intel_fbdev_restore_mode(struct drm_i915_private *dev_priv);
 struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev);
+struct i915_vma *intel_fbdev_vma_pointer(struct intel_fbdev *fbdev);
+
 #else
 static inline int intel_fbdev_init(struct drm_device *dev)
 {
@@ -51,10 +53,17 @@ static inline void intel_fbdev_output_poll_changed(struct drm_device *dev)
 static inline void intel_fbdev_restore_mode(struct drm_i915_private *i915)
 {
 }
+
 static inline struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev)
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
index dd7a1c4a9430..10114c575e5a 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -8,6 +8,7 @@
 #include "intel_dpt.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
+#include "intel_fbdev.h"
 #include "xe_fb_pin.h"
 #include "xe_ggtt.h"
 #include "xe_gt.h"
@@ -350,6 +351,7 @@ static struct i915_vma *__xe_pin_fb_vma(struct intel_framebuffer *fb,
 	if (!vma)
 		return ERR_PTR(-ENOMEM);
 
+	refcount_set(&vma->ref, 1);
 	if (IS_DGFX(to_xe_device(bo->ttm.base.dev)) &&
 	    intel_fb_rc_ccs_cc_plane(&fb->base) >= 0 &&
 	    !(bo->flags & XE_BO_FLAG_NEEDS_CPU_ACCESS)) {
@@ -409,6 +411,9 @@ static void __xe_unpin_fb_vma(struct i915_vma *vma, struct intel_framebuffer *fb
 	struct xe_device *xe = to_xe_device(vma->bo->ttm.base.dev);
 	struct xe_ggtt *ggtt = xe_device_get_root_tile(xe)->mem.ggtt;
 
+	if (!refcount_dec_and_test(&vma->ref))
+		return;
+
 	if (vma->dpt) {
 		xe_ggtt_remove_bo(ggtt, vma->dpt);
 		xe_fb_dpt_unpin_free(vma, fb);
@@ -450,20 +455,53 @@ void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
 	__xe_unpin_fb_vma(vma, NULL);
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
 
-	vma = __xe_pin_fb_vma(to_intel_framebuffer(fb), &plane_state->view.gtt, 0);
+	vma = __xe_pin_fb_vma(to_intel_framebuffer(fb), &new_plane_state->view.gtt, 0);
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
 
-	plane_state->ggtt_vma = vma;
+	new_plane_state->ggtt_vma = vma;
 	return 0;
 }
 
-- 
2.43.0

