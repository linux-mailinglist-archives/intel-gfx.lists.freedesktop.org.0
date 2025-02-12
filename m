Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E78A32517
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 12:35:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60AA110E864;
	Wed, 12 Feb 2025 11:35:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98B3210E864;
 Wed, 12 Feb 2025 11:35:18 +0000 (UTC)
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v2.1] drm/xe/display: Fix fbdev GGTT mapping handling.
Date: Wed, 12 Feb 2025 12:35:08 +0100
Message-ID: <20250212113509.14972-1-dev@lankhorst.se>
X-Mailer: git-send-email 2.45.2
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

The fbdev vma is a normal unrotated VMA, so add ane explicit check
before re-using.

When re-using, we have to restore the GGTT mapping on resume, so add
some code to do that too.

Fixes: 67a98f7e27ba ("drm/xe/display: Re-use display vmas when possible")
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
Changes since v1:
- Handle NULL vma when fbdev is disabled.
---
 drivers/gpu/drm/xe/display/xe_display.c |  6 +++++-
 drivers/gpu/drm/xe/display/xe_fb_pin.c  | 24 +++++++++++++++++++++++-
 drivers/gpu/drm/xe/display/xe_fb_pin.h  | 13 +++++++++++++
 3 files changed, 41 insertions(+), 2 deletions(-)
 create mode 100644 drivers/gpu/drm/xe/display/xe_fb_pin.h

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 651799c946ace..067adec8d49f5 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -29,6 +29,7 @@
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
 #include "intel_opregion.h"
+#include "xe_fb_pin.h"
 #include "xe_module.h"
 
 /* Xe device functions */
@@ -453,8 +454,11 @@ static void __xe_display_pm_resume(struct xe_device *xe, bool runtime)
 		intel_display_driver_enable_user_access(display);
 	}
 
-	if (has_display(xe))
+	if (has_display(xe)) {
+		xe_fb_pin_resume(xe);
+
 		intel_hpd_poll_disable(xe);
+	}
 
 	intel_opregion_resume(display);
 
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 11a6b996d739b..dee1f6531c849 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -12,6 +12,7 @@
 #include "intel_fbdev.h"
 #include "xe_bo.h"
 #include "xe_device.h"
+#include "xe_fb_pin.h"
 #include "xe_ggtt.h"
 #include "xe_pm.h"
 
@@ -398,7 +399,8 @@ static bool reuse_vma(struct intel_plane_state *new_plane_state,
 		goto found;
 	}
 
-	if (fb == intel_fbdev_framebuffer(xe->display.fbdev.fbdev)) {
+	if (fb == intel_fbdev_framebuffer(xe->display.fbdev.fbdev) &&
+	    new_plane_state->view.gtt.type == I915_GTT_VIEW_NORMAL) {
 		vma = intel_fbdev_vma_pointer(xe->display.fbdev.fbdev);
 		if (vma)
 			goto found;
@@ -444,6 +446,26 @@ void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
 	old_plane_state->ggtt_vma = NULL;
 }
 
+void xe_fb_pin_resume(struct xe_device *xe)
+{
+	struct xe_ggtt *ggtt = xe_device_get_root_tile(xe)->mem.ggtt;
+	struct i915_vma *vma = intel_fbdev_vma_pointer(xe->display.fbdev.fbdev);
+	struct xe_bo *bo;
+
+	if (!vma)
+		return;
+
+	bo = vma->bo;
+
+	mutex_lock(&ggtt->lock);
+	for (u32 x = 0; x < bo->ttm.base.size; x += XE_PAGE_SIZE) {
+		u64 pte = ggtt->pt_ops->pte_encode_bo(bo, x, xe->pat.idx[XE_CACHE_NONE]);
+
+		ggtt->pt_ops->ggtt_set_pte(ggtt, vma->node->base.start + x, pte);
+	}
+	mutex_unlock(&ggtt->lock);
+}
+
 /*
  * For Xe introduce dummy intel_dpt_create which just return NULL,
  * intel_dpt_destroy which does nothing, and fake intel_dpt_ofsset returning 0;
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.h b/drivers/gpu/drm/xe/display/xe_fb_pin.h
new file mode 100644
index 0000000000000..39d48ff637002
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2025 Intel Corporation
+ */
+
+#ifndef _XE_FB_PIN_H_
+#define _XE_FB_PIN_H_
+
+struct xe_device;
+
+void xe_fb_pin_resume(struct xe_device *xe);
+
+#endif /* _XE_FB_PIN_H_ */
-- 
2.45.2

