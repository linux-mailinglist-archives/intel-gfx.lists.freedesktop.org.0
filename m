Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EA436715F
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Apr 2021 19:32:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2142F6E0D2;
	Wed, 21 Apr 2021 17:32:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D7EB6E0D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Apr 2021 17:32:29 +0000 (UTC)
IronPort-SDR: baxqXs/gSDnyssApHG2fCxummvFLfhm3PXKaE0msNzkMEyH9PYxXVHAPe6TxL3QSHErwJ7wuTT
 NjcpzyptsByQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="175228109"
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="175228109"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 10:32:24 -0700
IronPort-SDR: 7vC0zCGW3XAjAGsvz00pnd5fZCRCYJYX0actULkH0dho57qL53rgMwf3hSsHht+0CHc5vqerjm
 kIHH4l3MPlNA==
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="524365530"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 10:32:23 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Apr 2021 20:32:20 +0300
Message-Id: <20210421173220.3587009-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210421121959.3577881-1-imre.deak@intel.com>
References: <20210421121959.3577881-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Simplify CCS and UV plane
 alignment handling
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We can handle the surface alignment of CCS and UV color planes for all
modifiers at one place, so do this. An AUX color plane can be a CCS or a
UV plane, use only the more specific query functions and remove
is_aux_plane() becoming redundant.

While at it add a TODO for linear UV color plane alignments. The spec
requires this to be stride-in-bytes * 64 on all platforms, whereas the
driver uses an alignment of 4k for gen<12 and 256k for gen>=12 for
linear UV planes.

v2:
- Restore previous alignment for linear UV surfaces.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 27 +++++++++++++-------
 drivers/gpu/drm/i915/display/intel_fb.c      |  8 ------
 drivers/gpu/drm/i915/display/intel_fb.h      |  1 -
 3 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a10e26380ef3d..e246e5cf75866 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -973,10 +973,26 @@ unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
 	struct drm_i915_private *dev_priv = to_i915(fb->dev);
 
 	/* AUX_DIST needs only 4K alignment */
-	if ((DISPLAY_VER(dev_priv) < 12 && is_aux_plane(fb, color_plane)) ||
-	    is_ccs_plane(fb, color_plane))
+	if (is_ccs_plane(fb, color_plane))
 		return 4096;
 
+	if (is_semiplanar_uv_plane(fb, color_plane)) {
+		/*
+		 * TODO: cross-check wrt. the bspec stride in bytes * 64 bytes
+		 * alignment for linear UV planes on all platforms.
+		 */
+		if (DISPLAY_VER(dev_priv) >= 12) {
+			if (fb->modifier == DRM_FORMAT_MOD_LINEAR)
+				return intel_linear_alignment(dev_priv);
+
+			return intel_tile_row_size(fb, color_plane);
+		}
+
+		return 4096;
+	}
+
+	drm_WARN_ON(&dev_priv->drm, color_plane != 0);
+
 	switch (fb->modifier) {
 	case DRM_FORMAT_MOD_LINEAR:
 		return intel_linear_alignment(dev_priv);
@@ -985,19 +1001,12 @@ unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
 			return 256 * 1024;
 		return 0;
 	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
-		if (is_semiplanar_uv_plane(fb, color_plane))
-			return intel_tile_row_size(fb, color_plane);
-		fallthrough;
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
 		return 16 * 1024;
 	case I915_FORMAT_MOD_Y_TILED_CCS:
 	case I915_FORMAT_MOD_Yf_TILED_CCS:
 	case I915_FORMAT_MOD_Y_TILED:
-		if (DISPLAY_VER(dev_priv) >= 12 &&
-		    is_semiplanar_uv_plane(fb, color_plane))
-			return intel_tile_row_size(fb, color_plane);
-		fallthrough;
 	case I915_FORMAT_MOD_Yf_TILED:
 		return 1 * 1024 * 1024;
 	default:
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 0ec9ad7220a14..c8aaca3e79e97 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -30,14 +30,6 @@ bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane)
 	       plane == 2;
 }
 
-bool is_aux_plane(const struct drm_framebuffer *fb, int plane)
-{
-	if (is_ccs_modifier(fb->modifier))
-		return is_ccs_plane(fb, plane);
-
-	return plane == 1;
-}
-
 bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int color_plane)
 {
 	return intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 6acf792a8c44a..13244ec1ad214 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -19,7 +19,6 @@ struct intel_plane_state;
 bool is_ccs_plane(const struct drm_framebuffer *fb, int plane);
 bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane);
 bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane);
-bool is_aux_plane(const struct drm_framebuffer *fb, int plane);
 bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int color_plane);
 
 bool is_surface_linear(const struct drm_framebuffer *fb, int color_plane);
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
