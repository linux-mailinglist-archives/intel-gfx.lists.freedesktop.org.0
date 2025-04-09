Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 559BBA82E69
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 20:18:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4ADB10E31D;
	Wed,  9 Apr 2025 18:18:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZXrXTfmL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 584E810E2FC;
 Wed,  9 Apr 2025 18:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744222725; x=1775758725;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DhO+clPATRmZIh3ywwx/A64KRCMKsHcIihQib71Wr+M=;
 b=ZXrXTfmLh6MZQaCHcs/VLrLA8hQMO+gVrlOLNCBuehNDhtsEr2DUY30w
 cJnPeNVxAX3mfTJCciYvOYGRaTRVL1cQTXDN+dGyBZAZGM7saM/TUlTBf
 mRw51uTYVxBQnH719IaLHq8JW2GDXFVjc0HSFzS6TKgdM0O1AvkVvrbH3
 X6k2koLwz508PoSN+3o+OkQQzQj3id4plsSD07nJBLbKBXLQd/4uHDj6T
 yc4sUmggrbN14iOs38a54fA2sGL1i7CIdwdpDQFpU8UwLpvp+6fe9yb2K
 TLsY/bPaTxbWHweQoLN56kwqPUkPs/dzEpMXaLO2HxwyTQ+xFrpGzYMOF A==;
X-CSE-ConnectionGUID: wA9ii8SETuq1yD4xOmHMUA==
X-CSE-MsgGUID: gSnxhWJqQ6WmeY79WwvvnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="57088354"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="57088354"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:18:34 -0700
X-CSE-ConnectionGUID: XZc5FD2dT/SgKHxUSN7Kvg==
X-CSE-MsgGUID: oWIZ8YCzSFaShMj3wiXGXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="133785344"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:18:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 05/14] drm/i915/frontbuffer: convert intel_frontbuffer.[ch] to
 struct intel_display
Date: Wed,  9 Apr 2025 21:17:46 +0300
Message-Id: <ef0860583b7d6ad141959f84c25657e0c102d6d2.1744222449.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744222449.git.jani.nikula@intel.com>
References: <cover.1744222449.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Going forward, struct intel_display is the main display device data
pointer. Convert intel_frontbuffer.[ch] to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  7 +--
 .../gpu/drm/i915/display/intel_frontbuffer.c  | 60 +++++++++----------
 .../gpu/drm/i915/display/intel_frontbuffer.h  |  8 +--
 drivers/gpu/drm/i915/display/intel_overlay.c  |  6 +-
 4 files changed, 37 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index db524d01e574..33c09999c42e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1043,14 +1043,13 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
-	intel_frontbuffer_flip(dev_priv, new_crtc_state->fb_bits);
+	intel_frontbuffer_flip(display, new_crtc_state->fb_bits);
 
 	if (new_crtc_state->update_wm_post && new_crtc_state->hw.active)
 		intel_update_watermarks(display);
@@ -1281,7 +1280,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 static void intel_crtc_disable_planes(struct intel_atomic_state *state,
 				      struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	unsigned int update_mask = new_crtc_state->update_planes;
@@ -1303,7 +1302,7 @@ static void intel_crtc_disable_planes(struct intel_atomic_state *state,
 			fb_bits |= plane->frontbuffer_bit;
 	}
 
-	intel_frontbuffer_flip(dev_priv, fb_bits);
+	intel_frontbuffer_flip(display, fb_bits);
 }
 
 static void intel_encoders_update_prepare(struct intel_atomic_state *state)
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index ba2f88ca6117..43be5377ddc1 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -58,7 +58,6 @@
 #include <drm/drm_gem.h>
 
 #include "i915_active.h"
-#include "i915_drv.h"
 #include "i915_vma.h"
 #include "intel_bo.h"
 #include "intel_display_trace.h"
@@ -72,7 +71,7 @@
 
 /**
  * frontbuffer_flush - flush frontbuffer
- * @i915: i915 device
+ * @display: display device
  * @frontbuffer_bits: frontbuffer plane tracking bits
  * @origin: which operation caused the flush
  *
@@ -82,16 +81,14 @@
  *
  * Can be called without any locks held.
  */
-static void frontbuffer_flush(struct drm_i915_private *i915,
+static void frontbuffer_flush(struct intel_display *display,
 			      unsigned int frontbuffer_bits,
 			      enum fb_op_origin origin)
 {
-	struct intel_display *display = &i915->display;
-
 	/* Delay flushing when rings are still busy.*/
-	spin_lock(&i915->display.fb_tracking.lock);
-	frontbuffer_bits &= ~i915->display.fb_tracking.busy_bits;
-	spin_unlock(&i915->display.fb_tracking.lock);
+	spin_lock(&display->fb_tracking.lock);
+	frontbuffer_bits &= ~display->fb_tracking.busy_bits;
+	spin_unlock(&display->fb_tracking.lock);
 
 	if (!frontbuffer_bits)
 		return;
@@ -107,7 +104,7 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
 
 /**
  * intel_frontbuffer_flip_prepare - prepare asynchronous frontbuffer flip
- * @i915: i915 device
+ * @display: display device
  * @frontbuffer_bits: frontbuffer plane tracking bits
  *
  * This function gets called after scheduling a flip on @obj. The actual
@@ -117,19 +114,19 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
  *
  * Can be called without any locks held.
  */
-void intel_frontbuffer_flip_prepare(struct drm_i915_private *i915,
+void intel_frontbuffer_flip_prepare(struct intel_display *display,
 				    unsigned frontbuffer_bits)
 {
-	spin_lock(&i915->display.fb_tracking.lock);
-	i915->display.fb_tracking.flip_bits |= frontbuffer_bits;
+	spin_lock(&display->fb_tracking.lock);
+	display->fb_tracking.flip_bits |= frontbuffer_bits;
 	/* Remove stale busy bits due to the old buffer. */
-	i915->display.fb_tracking.busy_bits &= ~frontbuffer_bits;
-	spin_unlock(&i915->display.fb_tracking.lock);
+	display->fb_tracking.busy_bits &= ~frontbuffer_bits;
+	spin_unlock(&display->fb_tracking.lock);
 }
 
 /**
  * intel_frontbuffer_flip_complete - complete asynchronous frontbuffer flip
- * @i915: i915 device
+ * @display: display device
  * @frontbuffer_bits: frontbuffer plane tracking bits
  *
  * This function gets called after the flip has been latched and will complete
@@ -137,22 +134,22 @@ void intel_frontbuffer_flip_prepare(struct drm_i915_private *i915,
  *
  * Can be called without any locks held.
  */
-void intel_frontbuffer_flip_complete(struct drm_i915_private *i915,
+void intel_frontbuffer_flip_complete(struct intel_display *display,
 				     unsigned frontbuffer_bits)
 {
-	spin_lock(&i915->display.fb_tracking.lock);
+	spin_lock(&display->fb_tracking.lock);
 	/* Mask any cancelled flips. */
-	frontbuffer_bits &= i915->display.fb_tracking.flip_bits;
-	i915->display.fb_tracking.flip_bits &= ~frontbuffer_bits;
-	spin_unlock(&i915->display.fb_tracking.lock);
+	frontbuffer_bits &= display->fb_tracking.flip_bits;
+	display->fb_tracking.flip_bits &= ~frontbuffer_bits;
+	spin_unlock(&display->fb_tracking.lock);
 
 	if (frontbuffer_bits)
-		frontbuffer_flush(i915, frontbuffer_bits, ORIGIN_FLIP);
+		frontbuffer_flush(display, frontbuffer_bits, ORIGIN_FLIP);
 }
 
 /**
  * intel_frontbuffer_flip - synchronous frontbuffer flip
- * @i915: i915 device
+ * @display: display device
  * @frontbuffer_bits: frontbuffer plane tracking bits
  *
  * This function gets called after scheduling a flip on @obj. This is for
@@ -161,15 +158,15 @@ void intel_frontbuffer_flip_complete(struct drm_i915_private *i915,
  *
  * Can be called without any locks held.
  */
-void intel_frontbuffer_flip(struct drm_i915_private *i915,
+void intel_frontbuffer_flip(struct intel_display *display,
 			    unsigned frontbuffer_bits)
 {
-	spin_lock(&i915->display.fb_tracking.lock);
+	spin_lock(&display->fb_tracking.lock);
 	/* Remove stale busy bits due to the old buffer. */
-	i915->display.fb_tracking.busy_bits &= ~frontbuffer_bits;
-	spin_unlock(&i915->display.fb_tracking.lock);
+	display->fb_tracking.busy_bits &= ~frontbuffer_bits;
+	spin_unlock(&display->fb_tracking.lock);
 
-	frontbuffer_flush(i915, frontbuffer_bits, ORIGIN_FLIP);
+	frontbuffer_flush(display, frontbuffer_bits, ORIGIN_FLIP);
 }
 
 void __intel_fb_invalidate(struct intel_frontbuffer *front,
@@ -198,7 +195,6 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
 		      unsigned int frontbuffer_bits)
 {
 	struct intel_display *display = to_intel_display(front->obj->dev);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (origin == ORIGIN_CS) {
 		spin_lock(&display->fb_tracking.lock);
@@ -209,7 +205,7 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
 	}
 
 	if (frontbuffer_bits)
-		frontbuffer_flush(i915, frontbuffer_bits, origin);
+		frontbuffer_flush(display, frontbuffer_bits, origin);
 }
 
 static void intel_frontbuffer_flush_work(struct work_struct *work)
@@ -280,7 +276,7 @@ static void frontbuffer_release(struct kref *ref)
 struct intel_frontbuffer *
 intel_frontbuffer_get(struct drm_gem_object *obj)
 {
-	struct drm_i915_private *i915 = to_i915(obj->dev);
+	struct intel_display *display = to_intel_display(obj->dev);
 	struct intel_frontbuffer *front, *cur;
 
 	front = intel_bo_get_frontbuffer(obj);
@@ -300,9 +296,9 @@ intel_frontbuffer_get(struct drm_gem_object *obj)
 			 I915_ACTIVE_RETIRE_SLEEPS);
 	INIT_WORK(&front->flush_work, intel_frontbuffer_flush_work);
 
-	spin_lock(&i915->display.fb_tracking.lock);
+	spin_lock(&display->fb_tracking.lock);
 	cur = intel_bo_set_frontbuffer(obj, front);
-	spin_unlock(&i915->display.fb_tracking.lock);
+	spin_unlock(&display->fb_tracking.lock);
 	if (cur != front)
 		kfree(front);
 	return cur;
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
index 6237780a9f68..2fee12eaf9b6 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
@@ -31,7 +31,7 @@
 #include "i915_active_types.h"
 
 struct drm_gem_object;
-struct drm_i915_private;
+struct intel_display;
 
 enum fb_op_origin {
 	ORIGIN_CPU = 0,
@@ -68,11 +68,11 @@ struct intel_frontbuffer {
 	GENMASK(INTEL_FRONTBUFFER_BITS_PER_PIPE * ((pipe) + 1) - 1,	\
 		INTEL_FRONTBUFFER_BITS_PER_PIPE * (pipe))
 
-void intel_frontbuffer_flip_prepare(struct drm_i915_private *i915,
+void intel_frontbuffer_flip_prepare(struct intel_display *display,
 				    unsigned frontbuffer_bits);
-void intel_frontbuffer_flip_complete(struct drm_i915_private *i915,
+void intel_frontbuffer_flip_complete(struct intel_display *display,
 				     unsigned frontbuffer_bits);
-void intel_frontbuffer_flip(struct drm_i915_private *i915,
+void intel_frontbuffer_flip(struct intel_display *display,
 			    unsigned frontbuffer_bits);
 
 void intel_frontbuffer_put(struct intel_frontbuffer *front);
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index aff9a3455c1b..12308495afa5 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -291,7 +291,6 @@ static void intel_overlay_flip_prepare(struct intel_overlay *overlay,
 				       struct i915_vma *vma)
 {
 	struct intel_display *display = overlay->display;
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	enum pipe pipe = overlay->crtc->pipe;
 	struct intel_frontbuffer *frontbuffer = NULL;
 
@@ -307,7 +306,7 @@ static void intel_overlay_flip_prepare(struct intel_overlay *overlay,
 		intel_frontbuffer_put(overlay->frontbuffer);
 	overlay->frontbuffer = frontbuffer;
 
-	intel_frontbuffer_flip_prepare(i915, INTEL_FRONTBUFFER_OVERLAY(pipe));
+	intel_frontbuffer_flip_prepare(display, INTEL_FRONTBUFFER_OVERLAY(pipe));
 
 	overlay->old_vma = overlay->vma;
 	if (vma)
@@ -359,14 +358,13 @@ static int intel_overlay_continue(struct intel_overlay *overlay,
 static void intel_overlay_release_old_vma(struct intel_overlay *overlay)
 {
 	struct intel_display *display = overlay->display;
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct i915_vma *vma;
 
 	vma = fetch_and_zero(&overlay->old_vma);
 	if (drm_WARN_ON(display->drm, !vma))
 		return;
 
-	intel_frontbuffer_flip_complete(i915, INTEL_FRONTBUFFER_OVERLAY(overlay->crtc->pipe));
+	intel_frontbuffer_flip_complete(display, INTEL_FRONTBUFFER_OVERLAY(overlay->crtc->pipe));
 
 	i915_vma_unpin(vma);
 	i915_vma_put(vma);
-- 
2.39.5

