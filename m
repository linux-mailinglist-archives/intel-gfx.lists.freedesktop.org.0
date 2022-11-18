Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1140D62F40F
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 12:54:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EC6810E6FE;
	Fri, 18 Nov 2022 11:53:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1939110E700
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 11:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668772434; x=1700308434;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3rQn18Lg+KdDCb/ahMCNFzDt1i2lqEdG8vYdkY67i9I=;
 b=dS94irPiYKCXaQ9fCGLUqpWpT/tKRtIDYv6sLgBXrxzBPxvsHMNT8Szq
 85Ep/JY2zsf01w7UjcuhGMWSPEqv9VgfAL93cu+CgHo4mG8pSDuZNpBxl
 bbiGQ7V9iUPpiWq7XVTTRBstV09tidvoWzL6iLI++Ka25D26Bt/biqPT1
 K5XLQPR9f2dh3NaqJzPejJIOiRJYHGiZnFuE3Z6TrFiogc2lRCpncw7eB
 n0k5vOuO6g/+fQIBBN1dKLYycKhCZ6I8W7ARw5Z3pWpkIzJIm0xcWbRGh
 QmS0MhBff3NW9q5efVacj4T60DwePbxifWKsSUEub8QSpOHrygoi2xzmF g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="300656921"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="300656921"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 03:53:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="590986647"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="590986647"
Received: from gvargas-mobl1.amr.corp.intel.com (HELO
 kveik.ger.corp.intel.com) ([10.251.221.64])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 03:53:52 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Nov 2022 13:53:41 +0200
Message-Id: <20221118115342.641917-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: limit second scaler vertical
 scaling in ver >= 14
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In newer hardware versions (i.e. display version >= 14), the second
scaler doesn't support vertical scaling.

The current implementation of the scaling limits is simplified and
only occurs when the planes are created, so we don't know which scaler
is being used.

In order to handle separate scaling limits for horizontal and vertical
scaling, and different limits per scaler, split the checks in two
phases.  We first do a simple check during plane creation and use the
best-case scenario (because we don't know the scaler that may be used
at a later point) and then do a more specific check when the scalers
are actually being set up.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  4 +-
 drivers/gpu/drm/i915/display/intel_atomic.c   | 47 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_atomic_plane.c | 39 +++++++++++++--
 .../gpu/drm/i915/display/intel_atomic_plane.h |  2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |  4 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   | 19 ++------
 .../drm/i915/display/skl_universal_plane.c    | 26 ++--------
 7 files changed, 91 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index ecaeb7dc196b..390e96f0692b 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -326,9 +326,7 @@ i9xx_plane_check(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
-						DRM_PLANE_NO_SCALING,
-						DRM_PLANE_NO_SCALING,
+	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state, false,
 						i9xx_plane_has_windowing(plane));
 	if (ret)
 		return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 6621aa245caf..43b1c7a227f8 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -38,6 +38,7 @@
 #include "intel_atomic.h"
 #include "intel_cdclk.h"
 #include "intel_display_types.h"
+#include "intel_fb.h"
 #include "intel_global_state.h"
 #include "intel_hdcp.h"
 #include "intel_psr.h"
@@ -375,6 +376,52 @@ static void intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_sta
 		mode = SKL_PS_SCALER_MODE_DYN;
 	}
 
+	if (plane_state && plane_state->hw.fb) {
+		const struct drm_framebuffer *fb = plane_state->hw.fb;
+		struct drm_rect *src = &plane_state->uapi.src;
+		struct drm_rect *dst = &plane_state->uapi.dst;
+		int hscale, vscale, max_vscale, max_hscale;
+
+		if (DISPLAY_VER(dev_priv) >= 14) {
+			/*
+			 * On versions 14 and up, only the first
+			 * scaler supports a vertical scaling factor
+			 * of more than 1.0, while a horizontal
+			 * scaling factor of 3.0 is supported.
+			 */
+			max_hscale = 0x30000 - 1;
+			if (*scaler_id == 0)
+				max_vscale = 0x30000 - 1;
+			else
+				max_vscale = 0x10000;
+
+		} else if (DISPLAY_VER(dev_priv) >= 10 ||
+			   !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier)) {
+			max_hscale = 0x30000 - 1;
+			max_vscale = 0x30000 - 1;
+		} else {
+			max_hscale = 0x20000 - 1;
+			max_vscale = 0x20000 - 1;
+		}
+
+		/* Check if required scaling is within limits */
+		hscale = drm_rect_calc_hscale(src, dst, 1, max_hscale);
+		vscale = drm_rect_calc_vscale(src, dst, 1, max_vscale);
+
+		if (hscale < 0 || vscale < 0) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "Scaler %d doesn't support required plane scaling\n",
+				    *scaler_id);
+			drm_rect_debug_print("src: ", src, true);
+			drm_rect_debug_print("dst: ", dst, false);
+
+			scaler_state->scalers[*scaler_id].in_use = 0;
+			*scaler_id = -1;
+
+			return;
+		}
+	}
+
 	drm_dbg_kms(&dev_priv->drm, "Attached scaler id %u.%u to %s:%d\n",
 		    intel_crtc->pipe, *scaler_id, name, idx);
 	scaler_state->scalers[*scaler_id].mode = mode;
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 10e1fc9d0698..9f50e6c98918 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -887,7 +887,7 @@ void intel_crtc_planes_update_arm(struct intel_atomic_state *state,
 
 int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 				      struct intel_crtc_state *crtc_state,
-				      int min_scale, int max_scale,
+				      bool allow_scaling,
 				      bool can_position)
 {
 	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
@@ -897,19 +897,50 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 	const struct drm_rect *clip = &crtc_state->pipe_src;
 	unsigned int rotation = plane_state->hw.rotation;
 	int hscale, vscale;
+	int max_hscale, min_hscale, max_vscale, min_vscale;
 
 	if (!fb) {
 		plane_state->uapi.visible = false;
 		return 0;
 	}
 
+	/*
+	 * At this point we don't really know the HW limitations, so
+	 * we just sanitize the values against the maximum supported
+	 * scaling.
+	 */
+	if (allow_scaling) {
+		min_vscale = 1;
+		min_hscale = 1;
+
+		if (DISPLAY_VER(i915) < 10 ||
+		    intel_format_info_is_yuv_semiplanar(fb->format,
+							fb->modifier)) {
+			max_vscale = 0x20000 - 1;
+			max_hscale = 0x20000 - 1;
+		} else {
+			max_vscale = 0x30000 - 1;
+			max_hscale = 0x30000 - 1;
+		}
+	} else {
+		min_hscale = DRM_PLANE_HELPER_NO_SCALING;
+		max_hscale = DRM_PLANE_HELPER_NO_SCALING;
+		min_vscale = DRM_PLANE_HELPER_NO_SCALING;
+		max_vscale = DRM_PLANE_HELPER_NO_SCALING;
+	}
+
 	drm_rect_rotate(src, fb->width << 16, fb->height << 16, rotation);
 
 	/* Check scaling */
-	hscale = drm_rect_calc_hscale(src, dst, min_scale, max_scale);
-	vscale = drm_rect_calc_vscale(src, dst, min_scale, max_scale);
+	hscale = drm_rect_calc_hscale(src, dst, min_hscale, max_hscale);
+	vscale = drm_rect_calc_vscale(src, dst, min_vscale, max_vscale);
 	if (hscale < 0 || vscale < 0) {
-		drm_dbg_kms(&i915->drm, "Invalid scaling of plane\n");
+		drm_dbg_kms(&i915->drm,
+			    "Invalid scaling of plane: hscale 0x%x vscale 0x%x\n",
+			    hscale, vscale);
+		drm_dbg_kms(&i915->drm,
+			    "min_hscale 0x%0x max_hscale 0x%0x min_vscale 0x%0x max_vscale 0x%0x\n",
+			    min_hscale, max_hscale, min_vscale, max_vscale);
 		drm_rect_debug_print("src: ", src, true);
 		drm_rect_debug_print("dst: ", dst, false);
 		return -ERANGE;
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index 74b6d3b169a7..441ef8165212 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -60,7 +60,7 @@ int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
 			       bool *need_cdclk_calc);
 int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 				      struct intel_crtc_state *crtc_state,
-				      int min_scale, int max_scale,
+				      bool check_scaling,
 				      bool can_position);
 void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
 			       struct intel_plane_state *plane_state);
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index d190fa0d393b..741ec74f54f6 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -144,9 +144,7 @@ static int intel_check_cursor(struct intel_crtc_state *crtc_state,
 	}
 
 	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
-						DRM_PLANE_NO_SCALING,
-						DRM_PLANE_NO_SCALING,
-						true);
+						false, true);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index e6b4d24b9cd0..9ad1173a0551 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -1355,22 +1355,11 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state,
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
-	int min_scale = DRM_PLANE_NO_SCALING;
-	int max_scale = DRM_PLANE_NO_SCALING;
 	int ret;
 
-	if (g4x_fb_scalable(plane_state->hw.fb)) {
-		if (DISPLAY_VER(dev_priv) < 7) {
-			min_scale = 1;
-			max_scale = 16 << 16;
-		} else if (IS_IVYBRIDGE(dev_priv)) {
-			min_scale = 1;
-			max_scale = 2 << 16;
-		}
-	}
-
 	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
-						min_scale, max_scale, true);
+						g4x_fb_scalable(plane_state->hw.fb),
+						true);
 	if (ret)
 		return ret;
 
@@ -1426,9 +1415,7 @@ vlv_sprite_check(struct intel_crtc_state *crtc_state,
 		return ret;
 
 	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
-						DRM_PLANE_NO_SCALING,
-						DRM_PLANE_NO_SCALING,
-						true);
+						false, true);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 76490cc59d8f..e2ae6624378f 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1463,22 +1463,6 @@ static int skl_plane_check_nv12_rotation(const struct intel_plane_state *plane_s
 	return 0;
 }
 
-static int skl_plane_max_scale(struct drm_i915_private *dev_priv,
-			       const struct drm_framebuffer *fb)
-{
-	/*
-	 * We don't yet know the final source width nor
-	 * whether we can use the HQ scaler mode. Assume
-	 * the best case.
-	 * FIXME need to properly check this later.
-	 */
-	if (DISPLAY_VER(dev_priv) >= 10 ||
-	    !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
-		return 0x30000 - 1;
-	else
-		return 0x20000 - 1;
-}
-
 static int intel_plane_min_width(struct intel_plane *plane,
 				 const struct drm_framebuffer *fb,
 				 int color_plane,
@@ -1862,8 +1846,7 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
-	int min_scale = DRM_PLANE_NO_SCALING;
-	int max_scale = DRM_PLANE_NO_SCALING;
+	bool allow_scaling;
 	int ret;
 
 	ret = skl_plane_check_fb(crtc_state, plane_state);
@@ -1871,13 +1854,10 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
 		return ret;
 
 	/* use scaler when colorkey is not required */
-	if (!plane_state->ckey.flags && skl_fb_scalable(fb)) {
-		min_scale = 1;
-		max_scale = skl_plane_max_scale(dev_priv, fb);
-	}
+	allow_scaling = !plane_state->ckey.flags && skl_fb_scalable(fb);
 
 	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
-						min_scale, max_scale, true);
+						allow_scaling, true);
 	if (ret)
 		return ret;
 
-- 
2.37.2

