Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 591588C46A2
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 20:00:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95BAE10E900;
	Mon, 13 May 2024 18:00:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hyR6yGn4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA19010E900;
 Mon, 13 May 2024 18:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715623206; x=1747159206;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uZMX0ZYVOGiwMDPi9uYWUJzsghRTCiEMkqgAWa4o8ro=;
 b=hyR6yGn4QR2JRCqy+u48DysKbpQ+KCwFryRCtTdgUA5kfV2ehGaQbnUy
 Pstx6rF1VPRDGjnuXF2wNX7vCr4jkIj1bXW47hHKoefu2nygEHDcgJoUv
 lXcsdH8YKP3xMNbgyOSUOrv2f5oMTBW7JRPlNqO8oPJfXpuzI4e5rSHOH
 nH3bWTHvxplCa9cTuDfGevHup7MsibKHnfULAykO3pUzNTmvXzEocJj66
 i+Qw1vXAXP0m4xf9Igrwl+k4EKCFKb4kUrNDbXf7SmWa5It3fUh5+zURH
 liWEE1Qz9NERu8Sb9Zd2KjFuAcUm5aFteOcsLHU7S9I2DRv8tvHpHOnhm w==;
X-CSE-ConnectionGUID: bzIiw9QlSROZ7WGsp2sDGA==
X-CSE-MsgGUID: Vj9gYhivTOKh1SatfbRgUQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="14517972"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="14517972"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 11:00:05 -0700
X-CSE-ConnectionGUID: lWdE0PAaR+678o1hPgH1+A==
X-CSE-MsgGUID: atv2jBxTSVmjuzWdmdz1KA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30395220"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 May 2024 11:00:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 May 2024 21:00:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Subject: [PATCH 7/9] drm/i915: Move intel_surf_alignment() into
 skl_univerals_plane.c
Date: Mon, 13 May 2024 20:59:40 +0300
Message-ID: <20240513175942.12910-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240513175942.12910-1-ville.syrjala@linux.intel.com>
References: <20240513175942.12910-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Now that all pre-skl platforms have their own .min_alignment()
functions the remainder of intel_surf_alignment() can be hoisted
into skl_univerals_plane.c (and renamed appropriately).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c       | 77 +------------------
 drivers/gpu/drm/i915/display/intel_fb.h       |  4 +-
 .../drm/i915/display/skl_universal_plane.c    | 77 ++++++++++++++++++-
 3 files changed, 78 insertions(+), 80 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index eea93d84a16e..c80f866f3fb6 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -584,7 +584,7 @@ static bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int color_pl
 	return intel_fb_rc_ccs_cc_plane(fb) == color_plane;
 }
 
-static bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int color_plane)
+bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int color_plane)
 {
 	return intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
 		color_plane == 1;
@@ -776,81 +776,6 @@ bool intel_fb_uses_dpt(const struct drm_framebuffer *fb)
 		intel_fb_modifier_uses_dpt(to_i915(fb->dev), fb->modifier);
 }
 
-unsigned int intel_surf_alignment(struct intel_plane *plane,
-				  const struct drm_framebuffer *fb,
-				  int color_plane)
-{
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
-
-	if (intel_fb_uses_dpt(fb)) {
-		/* AUX_DIST needs only 4K alignment */
-		if (intel_fb_is_ccs_aux_plane(fb, color_plane))
-			return 512 * 4096;
-
-		/*
-		 * FIXME ADL sees GGTT/DMAR faults with async
-		 * flips unless we align to 16k at least.
-		 * Figure out what's going on here...
-		 */
-		if (IS_ALDERLAKE_P(dev_priv) &&
-		    !intel_fb_is_ccs_modifier(fb->modifier) &&
-		    HAS_ASYNC_FLIPS(dev_priv))
-			return 512 * 16 * 1024;
-
-		return 512 * 4096;
-	}
-
-	/* AUX_DIST needs only 4K alignment */
-	if (intel_fb_is_ccs_aux_plane(fb, color_plane))
-		return 4096;
-
-	if (is_semiplanar_uv_plane(fb, color_plane)) {
-		/*
-		 * TODO: cross-check wrt. the bspec stride in bytes * 64 bytes
-		 * alignment for linear UV planes on all platforms.
-		 */
-		if (DISPLAY_VER(dev_priv) >= 12) {
-			if (fb->modifier == DRM_FORMAT_MOD_LINEAR)
-				return 256 * 1024;
-
-			return intel_tile_row_size(fb, color_plane);
-		}
-
-		return 4096;
-	}
-
-	drm_WARN_ON(&dev_priv->drm, color_plane != 0);
-
-	switch (fb->modifier) {
-	case DRM_FORMAT_MOD_LINEAR:
-		return 256 * 1024;
-	case I915_FORMAT_MOD_X_TILED:
-		if (HAS_ASYNC_FLIPS(dev_priv))
-			return 256 * 1024;
-		return 0;
-	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
-	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
-	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
-	case I915_FORMAT_MOD_4_TILED_MTL_MC_CCS:
-	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
-	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
-		return 16 * 1024;
-	case I915_FORMAT_MOD_Y_TILED_CCS:
-	case I915_FORMAT_MOD_Yf_TILED_CCS:
-	case I915_FORMAT_MOD_Y_TILED:
-	case I915_FORMAT_MOD_4_TILED:
-	case I915_FORMAT_MOD_Yf_TILED:
-		return 1 * 1024 * 1024;
-	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
-	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
-	case I915_FORMAT_MOD_4_TILED_DG2_MC_CCS:
-		return 16 * 1024;
-	default:
-		MISSING_CASE(fb->modifier);
-		return 0;
-	}
-}
-
 void intel_fb_plane_get_subsampling(int *hsub, int *vsub,
 				    const struct drm_framebuffer *fb,
 				    int color_plane)
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 16ebb573643f..1b1fef2dc39a 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -34,6 +34,7 @@ bool intel_fb_is_ccs_modifier(u64 modifier);
 bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
 bool intel_fb_is_mc_ccs_modifier(u64 modifier);
 
+bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int color_plane);
 bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane);
 int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
 
@@ -60,9 +61,6 @@ unsigned int intel_tile_height(const struct drm_framebuffer *fb, int color_plane
 unsigned int intel_tile_row_size(const struct drm_framebuffer *fb, int color_plane);
 unsigned int intel_fb_align_height(const struct drm_framebuffer *fb,
 				   int color_plane, unsigned int height);
-unsigned int intel_surf_alignment(struct intel_plane *plane,
-				  const struct drm_framebuffer *fb,
-				  int color_plane);
 
 void intel_fb_plane_get_subsampling(int *hsub, int *vsub,
 				    const struct drm_framebuffer *fb,
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 27782f5060ad..1ecd7c691317 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -502,6 +502,81 @@ skl_plane_max_stride(struct intel_plane *plane,
 				max_pixels, max_bytes);
 }
 
+static unsigned int skl_plane_min_alignment(struct intel_plane *plane,
+					    const struct drm_framebuffer *fb,
+					    int color_plane)
+{
+	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+
+	if (intel_fb_uses_dpt(fb)) {
+		/* AUX_DIST needs only 4K alignment */
+		if (intel_fb_is_ccs_aux_plane(fb, color_plane))
+			return 512 * 4096;
+
+		/*
+		 * FIXME ADL sees GGTT/DMAR faults with async
+		 * flips unless we align to 16k at least.
+		 * Figure out what's going on here...
+		 */
+		if (IS_ALDERLAKE_P(dev_priv) &&
+		    !intel_fb_is_ccs_modifier(fb->modifier) &&
+		    HAS_ASYNC_FLIPS(dev_priv))
+			return 512 * 16 * 1024;
+
+		return 512 * 4096;
+	}
+
+	/* AUX_DIST needs only 4K alignment */
+	if (intel_fb_is_ccs_aux_plane(fb, color_plane))
+		return 4096;
+
+	if (is_semiplanar_uv_plane(fb, color_plane)) {
+		/*
+		 * TODO: cross-check wrt. the bspec stride in bytes * 64 bytes
+		 * alignment for linear UV planes on all platforms.
+		 */
+		if (DISPLAY_VER(dev_priv) >= 12) {
+			if (fb->modifier == DRM_FORMAT_MOD_LINEAR)
+				return 256 * 1024;
+
+			return intel_tile_row_size(fb, color_plane);
+		}
+
+		return 4096;
+	}
+
+	drm_WARN_ON(&dev_priv->drm, color_plane != 0);
+
+	switch (fb->modifier) {
+	case DRM_FORMAT_MOD_LINEAR:
+		return 256 * 1024;
+	case I915_FORMAT_MOD_X_TILED:
+		if (HAS_ASYNC_FLIPS(dev_priv))
+			return 256 * 1024;
+		return 0;
+	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
+	case I915_FORMAT_MOD_4_TILED_MTL_MC_CCS:
+	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
+	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
+		return 16 * 1024;
+	case I915_FORMAT_MOD_Y_TILED_CCS:
+	case I915_FORMAT_MOD_Yf_TILED_CCS:
+	case I915_FORMAT_MOD_Y_TILED:
+	case I915_FORMAT_MOD_4_TILED:
+	case I915_FORMAT_MOD_Yf_TILED:
+		return 1 * 1024 * 1024;
+	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
+	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
+	case I915_FORMAT_MOD_4_TILED_DG2_MC_CCS:
+		return 16 * 1024;
+	default:
+		MISSING_CASE(fb->modifier);
+		return 0;
+	}
+}
+
 /* Preoffset values for YUV to RGB Conversion */
 #define PREOFF_YUV_TO_RGB_HI		0x1800
 #define PREOFF_YUV_TO_RGB_ME		0x0000
@@ -2367,7 +2442,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	else
 		plane->max_stride = skl_plane_max_stride;
 
-	plane->min_alignment = intel_surf_alignment;
+	plane->min_alignment = skl_plane_min_alignment;
 
 	if (DISPLAY_VER(dev_priv) >= 11) {
 		plane->update_noarm = icl_plane_update_noarm;
-- 
2.43.2

