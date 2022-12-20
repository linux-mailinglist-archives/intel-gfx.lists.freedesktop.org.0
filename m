Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC70651C30
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 09:12:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8421810E09C;
	Tue, 20 Dec 2022 08:12:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 924E310E341
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 08:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671523911; x=1703059911;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LVBdmBvGHP/pLpNTRamzp+yHh1UFSEKbNLCpnQvY7Ls=;
 b=hFbWJ+6iDjW7bvyg+ZFQXKRRgYpuEhjri2E4aCZBHJmMqWTnEMb7NdOc
 FeMv9AWpftCzFBTP0fc7MQ/ImI3J3fh63N9/NTsglr+aTF1k7UnWgDHSG
 +Wf+a/hAQqsw/ypJbbaqq2ISYdVjdMRi67dwBPVD3C9xPti3O95wnvi7C
 K5SMUFhbfIoAayo5MLs0q7fOuWx89s5QUPO+bR1zI/uBHT6urT+0SnD09
 2a2SqUlbMVjtidnvXASx5hoGr0BE8ST939sydYYgUvaS4cmeD0Yyqe1wP
 cfS3mz1OK+p7ycYoGhUnP7W2mTOfm7tS3BjhAyd37TTxulvhHBU8D72OV A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="317191943"
X-IronPort-AV: E=Sophos;i="5.96,258,1665471600"; d="scan'208";a="317191943"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 00:11:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="896326191"
X-IronPort-AV: E=Sophos;i="5.96,258,1665471600"; d="scan'208";a="896326191"
Received: from asignori-mobl3.ger.corp.intel.com (HELO
 kveik.ger.corp.intel.com) ([10.252.46.89])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 00:11:49 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Dec 2022 10:11:16 +0200
Message-Id: <20221220081117.169803-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221220081117.169803-1-luciano.coelho@intel.com>
References: <20221220081117.169803-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 1/2] drm/i915/mtl: limit second scaler
 vertical scaling in ver >= 14
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

In v2:
   * fix DRM_PLANE_NO_SCALING renamed macros;

In v3:
   * No changes.

In v4:
   * Got rid of the changes in the general planes max scale code;
   * Added a couple of FIXMEs;
   * Made intel_atomic_setup_scaler() return an int with errors;

In v5:
   * Just resent with a cover letter.

drivers/gpu/drm/i915/display/i9xx_plane.c     |  4 +-
 drivers/gpu/drm/i915/display/intel_atomic.c   | 83 ++++++++++++++++---
 .../gpu/drm/i915/display/intel_atomic_plane.c | 30 ++++++-
 .../gpu/drm/i915/display/intel_atomic_plane.h |  2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |  4 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   | 20 +----
 .../drm/i915/display/skl_universal_plane.c    | 45 +++++-----
 7 files changed, 128 insertions(+), 60 deletions(-)

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
index 6621aa245caf..bf4761a40675 100644
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
@@ -310,11 +311,11 @@ intel_crtc_destroy_state(struct drm_crtc *crtc,
 	kfree(crtc_state);
 }
 
-static void intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_state,
-				      int num_scalers_need, struct intel_crtc *intel_crtc,
-				      const char *name, int idx,
-				      struct intel_plane_state *plane_state,
-				      int *scaler_id)
+static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_state,
+				     int num_scalers_need, struct intel_crtc *intel_crtc,
+				     const char *name, int idx,
+				     struct intel_plane_state *plane_state,
+				     int *scaler_id)
 {
 	struct drm_i915_private *dev_priv = to_i915(intel_crtc->base.dev);
 	int j;
@@ -334,7 +335,7 @@ static void intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_sta
 
 	if (drm_WARN(&dev_priv->drm, *scaler_id < 0,
 		     "Cannot find scaler for %s:%d\n", name, idx))
-		return;
+		return -EBUSY;
 
 	/* set scaler mode */
 	if (plane_state && plane_state->hw.fb &&
@@ -375,9 +376,69 @@ static void intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_sta
 		mode = SKL_PS_SCALER_MODE_DYN;
 	}
 
+	/*
+	 * FIXME: we should also check the scaler factors for pfit, so
+	 * this shouldn't be tied directly to planes.
+	 */
+	if (plane_state && plane_state->hw.fb) {
+		const struct drm_framebuffer *fb = plane_state->hw.fb;
+		struct drm_rect *src = &plane_state->uapi.src;
+		struct drm_rect *dst = &plane_state->uapi.dst;
+		int hscale, vscale, max_vscale, max_hscale;
+
+		/*
+		 * FIXME: When two scalers are needed, but only one of
+		 * them needs to downscale, we should make sure that
+		 * the one that needs downscaling support is assigned
+		 * as the first scaler, so we don't reject downscaling
+		 * unnecessarily.
+		 */
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
+			return -EOPNOTSUPP;
+		}
+	}
+
 	drm_dbg_kms(&dev_priv->drm, "Attached scaler id %u.%u to %s:%d\n",
 		    intel_crtc->pipe, *scaler_id, name, idx);
 	scaler_state->scalers[*scaler_id].mode = mode;
+
+	return 0;
 }
 
 /**
@@ -437,7 +498,7 @@ int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
 	for (i = 0; i < sizeof(scaler_state->scaler_users) * 8; i++) {
 		int *scaler_id;
 		const char *name;
-		int idx;
+		int idx, ret;
 
 		/* skip if scaler not required */
 		if (!(scaler_state->scaler_users & (1 << i)))
@@ -494,9 +555,11 @@ int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
 			scaler_id = &plane_state->scaler_id;
 		}
 
-		intel_atomic_setup_scaler(scaler_state, num_scalers_need,
-					  intel_crtc, name, idx,
-					  plane_state, scaler_id);
+		ret = intel_atomic_setup_scaler(scaler_state, num_scalers_need,
+						intel_crtc, name, idx,
+						plane_state, scaler_id);
+		if (ret)
+			return ret;
 	}
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 10e1fc9d0698..50a05ccd2dda 100644
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
@@ -897,19 +897,41 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
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
+	if (!allow_scaling) {
+		min_hscale = DRM_PLANE_NO_SCALING;
+		max_hscale = DRM_PLANE_NO_SCALING;
+		min_vscale = DRM_PLANE_NO_SCALING;
+		max_vscale = DRM_PLANE_NO_SCALING;
+	} else {
+		skl_plane_max_scale(i915, fb,
+				    &max_hscale, &min_hscale,
+				    &max_vscale, &min_vscale);
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
index e6b4d24b9cd0..4aa247e190a5 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -1355,22 +1355,12 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state,
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
+						g4x_fb_scalable(plane_state->hw.fb) &&
+						DISPLAY_VER,
+						true);
 	if (ret)
 		return ret;
 
@@ -1426,9 +1416,7 @@ vlv_sprite_check(struct intel_crtc_state *crtc_state,
 		return ret;
 
 	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
-						DRM_PLANE_NO_SCALING,
-						DRM_PLANE_NO_SCALING,
-						true);
+						false, true);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 76490cc59d8f..c3e6e45a0d4b 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -388,6 +388,25 @@ static int glk_plane_max_width(const struct drm_framebuffer *fb,
 	}
 }
 
+static void skl_plane_max_scale(struct drm_i915_private *i915,
+				struct drm_framebuffer *fb,
+				int *max_hscale, int *min_hscale,
+				int *max_vscale, int *min_vscale)
+{
+	*min_vscale = 1;
+	*min_hscale = 1;
+
+	if (DISPLAY_VER(i915) < 10 ||
+	    intel_format_info_is_yuv_semiplanar(fb->format,
+						fb->modifier)) {
+		*max_vscale = 0x20000 - 1;
+		*max_hscale = 0x20000 - 1;
+	} else {
+		*max_vscale = 0x30000 - 1;
+		*max_hscale = 0x30000 - 1;
+	}
+}
+
 static int icl_plane_min_width(const struct drm_framebuffer *fb,
 			       int color_plane,
 			       unsigned int rotation)
@@ -1463,22 +1482,6 @@ static int skl_plane_check_nv12_rotation(const struct intel_plane_state *plane_s
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
@@ -1862,8 +1865,7 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
-	int min_scale = DRM_PLANE_NO_SCALING;
-	int max_scale = DRM_PLANE_NO_SCALING;
+	bool allow_scaling;
 	int ret;
 
 	ret = skl_plane_check_fb(crtc_state, plane_state);
@@ -1871,13 +1873,10 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
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
2.38.1

